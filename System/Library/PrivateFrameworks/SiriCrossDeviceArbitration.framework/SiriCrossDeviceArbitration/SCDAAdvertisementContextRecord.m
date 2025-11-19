@interface SCDAAdvertisementContextRecord
- (BOOL)compareAdvertisementPayload:(id)a3;
- (BOOL)isSaneForVoiceTriggerEndTime:(double)a3 endtimeDistanceThreshold:(double)a4;
- (SCDAAdvertisementContextRecord)initWithAdvertisementRecordType:(int64_t)a3 voiceTriggerEndTime:(double)a4 advertisementPayload:(id)a5 deviceID:(id)a6 electionParticipantId:(id)a7;
- (SCDAAdvertisementContextRecord)initWithMyriadAdvertisementContextRecordData:(id)a3;
- (char)_getAdvertisementRecordTypeForVersion:(unsigned __int8)a3 data:(id)a4;
- (double)_getVoiceTriggerEndTimeForVersion:(unsigned __int8)a3 data:(id)a4;
- (id)_UUIDFromBytes:(const unsigned __int8 *)(a3;
- (id)_getDeviceIdForVersion:(unsigned __int8)a3 data:(id)a4;
- (id)_getElectionParticipantIdForVersion:(unsigned __int8)a3 data:(id)a4;
- (id)_getMyriadAdvertisementDataForVersion:(unsigned __int8)a3 data:(id)a4;
- (id)description;
- (id)myriadAdvertisementContextAsData;
- (id)recordForDeviceId:(id)a3;
- (unint64_t)_advertisementPayloadSizeForVersion:(unsigned __int8)a3;
- (void)_initializeMyriadAdvertisementContextRecordFromData:(id)a3;
@end

@implementation SCDAAdvertisementContextRecord

- (id)_UUIDFromBytes:(const unsigned __int8 *)(a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (uuid_is_null(a3))
  {
    goto LABEL_2;
  }

  memset(out, 0, 37);
  uuid_unparse_upper(a3, out);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", out];
  if (![v5 length])
  {

LABEL_2:
    v4 = 0;
    goto LABEL_5;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)compareAdvertisementPayload:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_advertisementPayload && (v6 = [v4 length], v6 == -[NSData length](self->_advertisementPayload, "length")))
  {
    v7 = [v5 isEqual:self->_advertisementPayload];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)recordForDeviceId:(id)a3
{
  v4 = a3;
  if (v4 && self->_advertisementPayload)
  {
    v5 = [[SCDARecord alloc] initWithDeviceID:v4 data:self->_advertisementPayload electionParticipantId:self->_electionParticipantId];
    [(SCDARecord *)v5 setIsCollectedFromContextCollector:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_initializeMyriadAdvertisementContextRecordFromData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 length];
  if (v4 && v5)
  {
    [v4 getBytes:&self->_advertisementContextVersion range:{0, 1}];
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      advertisementContextVersion = self->_advertisementContextVersion;
      v17 = 136315394;
      v18 = "[SCDAAdvertisementContextRecord _initializeMyriadAdvertisementContextRecordFromData:]";
      v19 = 1024;
      LODWORD(v20) = advertisementContextVersion;
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s Initializing Myriad advertisement context (version: %d)", &v17, 0x12u);
    }

    self->_advertisementRecordType = [(SCDAAdvertisementContextRecord *)self _getAdvertisementRecordTypeForVersion:self->_advertisementContextVersion data:v4];
    [(SCDAAdvertisementContextRecord *)self _getVoiceTriggerEndTimeForVersion:self->_advertisementContextVersion data:v4];
    self->_voiceTriggerEndTime = v8;
    v9 = [(SCDAAdvertisementContextRecord *)self _getMyriadAdvertisementDataForVersion:self->_advertisementContextVersion data:v4];
    advertisementPayload = self->_advertisementPayload;
    self->_advertisementPayload = v9;

    v11 = [(SCDAAdvertisementContextRecord *)self _getDeviceIdForVersion:self->_advertisementContextVersion data:v4];
    deviceID = self->_deviceID;
    self->_deviceID = v11;

    v13 = [(SCDAAdvertisementContextRecord *)self _getElectionParticipantIdForVersion:self->_advertisementContextVersion data:v4];
    electionParticipantId = self->_electionParticipantId;
    self->_electionParticipantId = v13;
  }

  else
  {
    v15 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[SCDAAdvertisementContextRecord _initializeMyriadAdvertisementContextRecordFromData:]";
      v19 = 2112;
      v20 = v4;
      _os_log_error_impl(&dword_1DA758000, v15, OS_LOG_TYPE_ERROR, "%s #scda-advertisementcontext: Received wedged Myriad advertisement context record %@", &v17, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_getElectionParticipantIdForVersion:(unsigned __int8)a3 data:(id)a4
{
  v4 = a3;
  v12[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  v12[0] = 0;
  v12[1] = 0;
  if ((v4 - 1) < 3 || [v6 length] < 0x32)
  {
    v8 = 0;
  }

  else
  {
    [v7 getBytes:v12 range:{34, 16}];
    v8 = [(SCDAAdvertisementContextRecord *)self _UUIDFromBytes:v12];
  }

  v9 = [v8 copy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_getDeviceIdForVersion:(unsigned __int8)a3 data:(id)a4
{
  v4 = a3;
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13[0] = 0;
  v13[1] = 0;
  v7 = [v6 length];
  if ((v4 - 1) > 1)
  {
    if (v7 >= 0x22)
    {
      v8 = 18;
      goto LABEL_6;
    }
  }

  else if (v7 > 0x20)
  {
    v8 = 17;
LABEL_6:
    [v6 getBytes:v13 range:{v8, 16}];
    v9 = [(SCDAAdvertisementContextRecord *)self _UUIDFromBytes:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  v10 = [v9 copy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_getMyriadAdvertisementDataForVersion:(unsigned __int8)a3 data:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SCDAAdvertisementContextRecord *)self _advertisementPayloadSizeForVersion:self->_advertisementContextVersion];
  MEMORY[0x1EEE9AC00]();
  v8 = v12 - v7;
  bzero(v12 - v7, v6);
  if ([v5 length] >= v6 + 10)
  {
    [v5 getBytes:v8 range:{10, v6}];
  }

  v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:v6];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (double)_getVoiceTriggerEndTimeForVersion:(unsigned __int8)a3 data:(id)a4
{
  v4 = a4;
  v7 = 0.0;
  v5 = 0.0;
  if ([v4 length] >= 0xA)
  {
    [v4 getBytes:&v7 range:{2, 8}];
    v5 = v7;
  }

  return v5;
}

- (char)_getAdvertisementRecordTypeForVersion:(unsigned __int8)a3 data:(id)a4
{
  v4 = a4;
  v5 = 10;
  v7 = 10;
  if ([v4 length] >= 2)
  {
    [v4 getBytes:&v7 range:{1, 1}];
    v5 = v7;
  }

  return v5;
}

- (unint64_t)_advertisementPayloadSizeForVersion:(unsigned __int8)a3
{
  if ((a3 - 1) < 2)
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

- (BOOL)isSaneForVoiceTriggerEndTime:(double)a3 endtimeDistanceThreshold:(double)a4
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3 <= 0.0)
  {
    v12 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[SCDAAdvertisementContextRecord isSaneForVoiceTriggerEndTime:endtimeDistanceThreshold:]";
      v17 = 2048;
      *v18 = a3;
      _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s Invalid Voicetrigger endtime: %f", &v15, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v6 = fmin(a4, 0.5);
    voiceTriggerEndTime = self->_voiceTriggerEndTime;
    if (voiceTriggerEndTime - a3 >= 0.0)
    {
      v8 = voiceTriggerEndTime - a3;
    }

    else
    {
      v8 = -(voiceTriggerEndTime - a3);
    }

    v9 = v8 <= v6;
    v10 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      advertisementPayload = self->_advertisementPayload;
      v15 = 136316674;
      v16 = "[SCDAAdvertisementContextRecord isSaneForVoiceTriggerEndTime:endtimeDistanceThreshold:]";
      v17 = 1024;
      *v18 = v8 <= v6;
      *&v18[4] = 2048;
      *&v18[6] = v6;
      v19 = 2048;
      v20 = a3;
      v21 = 2048;
      v22 = voiceTriggerEndTime;
      v23 = 2048;
      v24 = v8;
      v25 = 2112;
      v26 = advertisementPayload;
      _os_log_impl(&dword_1DA758000, v10, OS_LOG_TYPE_INFO, "%s VoicetriggerEndtime isSane: %d (threshold: %f, me: %f, other: %f, abs-diff: %f adv: %@)", &v15, 0x44u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)myriadAdvertisementContextAsData
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF88] data];
  v4 = [(SCDAAdvertisementContextRecord *)self _advertisementPayloadSizeForVersion:self->_advertisementContextVersion];
  v5 = &buf[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v5, v4);
  advertisementPayload = self->_advertisementPayload;
  if (advertisementPayload && [(NSData *)advertisementPayload length]== v4)
  {
    [(NSData *)self->_advertisementPayload getBytes:v5 length:v4];
  }

  v18[0] = 0;
  v18[1] = 0;
  deviceID = self->_deviceID;
  if (deviceID)
  {
    [(NSUUID *)deviceID getUUIDBytes:v18];
  }

  v17[0] = 0;
  v17[1] = 0;
  [(NSUUID *)self->_electionParticipantId getUUIDBytes:v17];
  [v3 appendBytes:&self->_advertisementContextVersion length:1];
  [v3 appendBytes:&self->_advertisementRecordType length:1];
  [v3 appendBytes:&self->_voiceTriggerEndTime length:8];
  [v3 appendBytes:v5 length:v4];
  [v3 appendBytes:v18 length:16];
  [v3 appendBytes:v17 length:16];
  v8 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v3 length];
    *buf = 136315394;
    v14 = "[SCDAAdvertisementContextRecord myriadAdvertisementContextAsData]";
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_1DA758000, v9, OS_LOG_TYPE_INFO, "%s Generated Myriad advertisement context data: %lu bytes", buf, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([(NSData *)self->_advertisementPayload length])
  {
    v4 = [(NSData *)self->_advertisementPayload bytes];
    if ([(NSData *)self->_advertisementPayload length])
    {
      v5 = 0;
      do
      {
        [v3 appendFormat:@"%02x", v4[v5++]];
      }

      while (v5 < [(NSData *)self->_advertisementPayload length]);
    }
  }

  v6 = MEMORY[0x1E696AEC0];
  advertisementContextVersion = self->_advertisementContextVersion;
  voiceTriggerEndTime = self->_voiceTriggerEndTime;
  advertisementRecordType = self->_advertisementRecordType;
  deviceID = self->_deviceID;
  v11 = [(NSUUID *)self->_electionParticipantId UUIDString];
  v12 = [v6 stringWithFormat:@"SCDAAdvertisementContextRecord: contextVersion=%ld vtEndTime=%f advRecordType=%ld advPayload=0x%@ deviceID=%@ electionParticipantId=%@", advertisementContextVersion, *&voiceTriggerEndTime, advertisementRecordType, v3, deviceID, v11];

  return v12;
}

- (SCDAAdvertisementContextRecord)initWithMyriadAdvertisementContextRecordData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SCDAAdvertisementContextRecord;
  v5 = [(SCDAAdvertisementContextRecord *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SCDAAdvertisementContextRecord *)v5 _initializeMyriadAdvertisementContextRecordFromData:v4];
  }

  return v6;
}

- (SCDAAdvertisementContextRecord)initWithAdvertisementRecordType:(int64_t)a3 voiceTriggerEndTime:(double)a4 advertisementPayload:(id)a5 deviceID:(id)a6 electionParticipantId:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = SCDAAdvertisementContextRecord;
  v15 = [(SCDAAdvertisementContextRecord *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_advertisementContextVersion = kSCDAAdvertisementContextRecordVersion;
    v15->_advertisementRecordType = a3;
    v15->_voiceTriggerEndTime = a4;
    v17 = [v12 copy];
    advertisementPayload = v16->_advertisementPayload;
    v16->_advertisementPayload = v17;

    v19 = [v13 copy];
    deviceID = v16->_deviceID;
    v16->_deviceID = v19;

    v21 = [v14 copy];
    electionParticipantId = v16->_electionParticipantId;
    v16->_electionParticipantId = v21;
  }

  return v16;
}

@end