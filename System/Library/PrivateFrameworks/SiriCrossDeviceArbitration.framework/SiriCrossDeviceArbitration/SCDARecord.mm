@interface SCDARecord
+ (unsigned)_generateRandomHash;
- (BOOL)hasEqualAdvertisementData:(id)a3;
- (BOOL)isALateSuppressionTrumpFor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSane;
- (BOOL)isValid;
- (SCDARecord)initWithAlertFiringTrigger:(id)a3 device:(id)a4;
- (SCDARecord)initWithCarPlayTrigger:(id)a3 device:(id)a4;
- (SCDARecord)initWithContinuation:(id)a3;
- (SCDARecord)initWithDeviceID:(id)a3 data:(id)a4 electionParticipantId:(id)a5;
- (SCDARecord)initWithDirectTrigger:(id)a3 device:(id)a4;
- (SCDARecord)initWithEmergency:(id)a3;
- (SCDARecord)initWithEmergencyHandled:(id)a3;
- (SCDARecord)initWithEmpty:(id)a3;
- (SCDARecord)initWithInEarTrigger:(id)a3 device:(id)a4;
- (SCDARecord)initWithInTaskTrigger:(id)a3 device:(id)a4;
- (SCDARecord)initWithLateSuppression:(unsigned __int16)a3 device:(id)a4;
- (SCDARecord)initWithOutgoing:(id)a3 device:(id)a4;
- (SCDARecord)initWithOverrideTrigger:(id)a3 device:(id)a4;
- (SCDARecord)initWithPHS:(id)a3;
- (SCDARecord)initWithRTS:(id)a3;
- (SCDARecord)initWithRealityTrigger:(id)a3 device:(id)a4;
- (SCDARecord)initWithResponse:(unsigned __int16)a3 device:(id)a4;
- (SCDARecord)initWithSlowdown:(unsigned __int16)a3 device:(id)a4;
- (SCDARecord)initWithThreshold:(id)a3 isLoudnessMissing:(BOOL)a4 device:(id)a5;
- (id)_initWithPerceptualAudioHash:(id)a3 type:(int64_t)a4 device:(id)a5;
- (id)_initWithRecordType:(int64_t)a3 device:(id)a4;
- (id)_initWithVoiceTriggerTime:(unint64_t)a3;
- (id)asAdvertisementData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)deviceName;
- (id)winReason;
- (int)slowdownDelay;
- (unint64_t)hash;
- (void)_assignDeviceDetails:(id)a3;
- (void)_generateConfidenceWithinLowerBound:(unsigned __int8)a3 andUpperBound:(unsigned __int8)a4;
- (void)adjustByAdding:(int)a3;
- (void)generateTiebreaker;
- (void)setDeviceClass:(unsigned __int8)a3;
- (void)setDeviceGroup:(unsigned __int8)a3;
- (void)setPHash:(unsigned __int16)a3;
- (void)setProductType:(unsigned __int8)a3;
- (void)setRawAudioGoodnessScore:(unsigned __int8)a3 withBump:(unsigned __int8)a4;
- (void)setTieBreaker:(unsigned __int8)a3;
- (void)setUserConfidence:(unsigned __int8)a3;
- (void)updateVoiceTriggerTime:(id)a3;
@end

@implementation SCDARecord

+ (unsigned)_generateRandomHash
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = arc4random_uniform(0x10000u);
  if (!v2)
  {
    do
    {
      v2 = arc4random_uniform(0x10000u);
      if (v2)
      {
        v3 = v2 == 63993;
      }

      else
      {
        v3 = 1;
      }
    }

    while (v3 || v2 == 0xFFFF);
  }

  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "+[SCDARecord _generateRandomHash]";
    v10 = 1024;
    v11 = v2;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s Generated myriad hash: %hu", &v8, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)generateTiebreaker
{
  tieBreaker = self->_tieBreaker;
  do
  {
    v4 = arc4random_uniform(0x100u);
    self->_tieBreaker = v4;
  }

  while (tieBreaker == v4);
  self->_advertisementDataIsDirty = 1;
}

- (id)description
{
  if (self->_isMe)
  {
    v3 = @"TRUE";
  }

  else
  {
    v3 = @"FALSE";
  }

  v4 = MEMORY[0x1E696AEC0];
  deviceClass = self->_deviceClass;
  productType = self->_productType;
  v7 = v3;
  v8 = [SCDADevice debugStringForSCDADeviceClass:deviceClass andProductType:productType];
  v9 = [v4 stringWithFormat:@"%02d (%@)", deviceClass, v8];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cc=%d epId=%@ MyriadRecord: hash=%#06X, good=%03d, conf=%d, dc=%@, pt=%d, tb=%d, isMe=%@, g=%d", self->_isCollectedFromContextCollector, self->_electionParticipantId, self->_pHash, self->_goodness, self->_userConfidence, v9, self->_productType, self->_tieBreaker, v7, self->_deviceGroup];

  return v10;
}

- (id)asAdvertisementData
{
  if (self->_advertisementDataIsDirty || (v3 = self->_advertisementData) == 0)
  {
    v4 = [MEMORY[0x1E695DF88] dataWithCapacity:7];
    [v4 appendBytes:&self->_pHash length:2];
    [v4 appendBytes:&self->_goodness length:1];
    [v4 appendBytes:&self->_userConfidence length:1];
    [v4 appendBytes:&self->_deviceGroup length:1];
    [v4 appendBytes:&self->_deviceClass length:1];
    [v4 appendBytes:&self->_tieBreaker length:1];
    [v4 appendBytes:&self->_productType length:1];
    v5 = [v4 copy];
    advertisementData = self->_advertisementData;
    self->_advertisementData = v5;

    self->_advertisementDataIsDirty = 0;
    v3 = self->_advertisementData;
  }

  v7 = [(NSData *)v3 copy];

  return v7;
}

- (void)updateVoiceTriggerTime:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v4 = [[SCDAPerceptualAudioHash alloc] initWithData:0];
    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SCDARecord updateVoiceTriggerTime:]";
      v9 = 2112;
      v10 = v4;
      _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s Perceptual audio hash was missing, trying to update from file with result: %@", &v7, 0x16u);
    }
  }

  self->_voiceTriggerMachTime = [(SCDAPerceptualAudioHash *)v4 voiceTriggerTime];

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    deviceID = self->_deviceID;
    v7 = [v5 deviceID];
    if (![(NSUUID *)deviceID isEqual:v7])
    {
      goto LABEL_16;
    }

    pHash = self->_pHash;
    if (pHash != [v5 pHash])
    {
      goto LABEL_16;
    }

    goodness = self->_goodness;
    if (goodness != [v5 goodness])
    {
      goto LABEL_16;
    }

    rawAudioGoodnessScore = self->_rawAudioGoodnessScore;
    if (rawAudioGoodnessScore != [v5 rawAudioGoodnessScore])
    {
      goto LABEL_16;
    }

    bump = self->_bump;
    if (bump == [v5 bump] && (userConfidence = self->_userConfidence, userConfidence == objc_msgSend(v5, "userConfidence")) && (deviceGroup = self->_deviceGroup, deviceGroup == objc_msgSend(v5, "deviceGroup")) && (deviceClass = self->_deviceClass, deviceClass == objc_msgSend(v5, "deviceClass")) && (tieBreaker = self->_tieBreaker, tieBreaker == objc_msgSend(v5, "tieBreaker")) && (productType = self->_productType, productType == objc_msgSend(v5, "productType")) && (isMe = self->_isMe, isMe == objc_msgSend(v5, "isMe")))
    {
      isCollectedFromContextCollector = self->_isCollectedFromContextCollector;
      v19 = isCollectedFromContextCollector == [v5 isCollectedFromContextCollector];
    }

    else
    {
LABEL_16:
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_deviceID hash];
  v4 = [(SCDARecord *)self asAdvertisementData];
  v5 = [v4 hash] ^ self->_isMe ^ v3;
  v6 = self->_isCollectedFromContextCollector ^ self->_rawAudioGoodnessScore ^ self->_bump;

  return v5 ^ v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SCDARecord allocWithZone:?], "_initWithVoiceTriggerTime:", self->_voiceTriggerMachTime];
  [v4 setDeviceID:self->_deviceID];
  [v4 setPHash:self->_pHash];
  [v4 setGoodness:self->_goodness];
  [v4 setRawAudioGoodnessScore:self->_rawAudioGoodnessScore];
  [v4 setBump:self->_bump];
  [v4 setUserConfidence:self->_userConfidence];
  [v4 setDeviceGroup:self->_deviceGroup];
  [v4 setDeviceClass:self->_deviceClass];
  [v4 setTieBreaker:self->_tieBreaker];
  [v4 setProductType:self->_productType];
  [v4 setIsMe:self->_isMe];
  [v4 setElectionParticipantId:self->_electionParticipantId];
  [v4 setIsCollectedFromContextCollector:self->_isCollectedFromContextCollector];
  [v4 setRecordType:self->_recordType];
  return v4;
}

- (id)_initWithVoiceTriggerTime:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SCDARecord;
  result = [(SCDARecord *)&v5 init];
  if (result)
  {
    *(result + 6) = a3;
    *(result + 7) = 10;
  }

  return result;
}

- (BOOL)hasEqualAdvertisementData:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    pHash = self->_pHash;
    v13 = 0;
    if (pHash == [v5 pHash])
    {
      goodness = self->_goodness;
      if (goodness == [v5 goodness])
      {
        userConfidence = self->_userConfidence;
        if (userConfidence == [v5 userConfidence])
        {
          deviceGroup = self->_deviceGroup;
          if (deviceGroup == [v5 deviceGroup])
          {
            deviceClass = self->_deviceClass;
            if (deviceClass == [v5 deviceClass])
            {
              tieBreaker = self->_tieBreaker;
              if (tieBreaker == [v5 tieBreaker])
              {
                productType = self->_productType;
                if (productType == [v5 productType])
                {
                  v13 = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int)slowdownDelay
{
  result = [(SCDARecord *)self isSlowdown];
  if (result)
  {
    return 8 * self->_userConfidence;
  }

  return result;
}

- (BOOL)isValid
{
  recordType = self->_recordType;
  result = 1;
  if (recordType <= 0x14)
  {
    if (((1 << recordType) & 0x1C3996) != 0)
    {
      if (self->_goodness && self->_pHash)
      {
        return self->_tieBreaker != 0;
      }

      return 0;
    }

    if (recordType == 3)
    {
      if (self->_goodness)
      {
        return 0;
      }

      return self->_pHash == -1;
    }
  }

  return result;
}

- (BOOL)isSane
{
  v16 = *MEMORY[0x1E69E9840];
  goodness = self->_goodness;
  v6 = goodness == 224 || goodness == 208 || goodness > -18;
  deviceClass = self->_deviceClass;
  if (deviceClass <= 0x1F && v6)
  {
    v8 = 1;
  }

  else
  {
    v9 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[SCDARecord isSane]";
      v14 = 2112;
      v15 = self;
      _os_log_error_impl(&dword_1DA758000, v9, OS_LOG_TYPE_ERROR, "%s SCDARecord %@ sanity: NO", &v12, 0x16u);
      deviceClass = self->_deviceClass;
    }

    v8 = deviceClass < 0x20;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6 && v8;
}

- (BOOL)isALateSuppressionTrumpFor:(id)a3
{
  v4 = a3;
  pHash = self->_pHash;
  v6 = pHash == [v4 pHash] && !-[SCDARecord isAContinuation](self, "isAContinuation") && !-[SCDARecord isATrump](self, "isATrump") && self->_goodness == 255 && objc_msgSend(v4, "goodness") != 255;

  return v6;
}

- (void)setTieBreaker:(unsigned __int8)a3
{
  if (self->_tieBreaker != a3)
  {
    self->_tieBreaker = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)setProductType:(unsigned __int8)a3
{
  if (self->_productType != a3)
  {
    self->_productType = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)setDeviceClass:(unsigned __int8)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_deviceClass != a3)
  {
    v3 = a3;
    self->_deviceClass = a3;
    if (a3 >= 0x20u)
    {
      v5 = a3 & 0x1F;
      v6 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v8 = 136315650;
        v9 = "[SCDARecord setDeviceClass:]";
        v10 = 1024;
        v11 = v3;
        v12 = 1024;
        v13 = v5;
        _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s #scda Error: Unexpected device class %du masked to: %du", &v8, 0x18u);
      }

      self->_deviceClass = v5;
    }

    self->_advertisementDataIsDirty = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setDeviceGroup:(unsigned __int8)a3
{
  if (self->_deviceGroup != a3)
  {
    self->_deviceGroup = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)_generateConfidenceWithinLowerBound:(unsigned __int8)a3 andUpperBound:(unsigned __int8)a4
{
  v6 = a4 - a3;
  v7 = arc4random_uniform(a4 - a3 + 1) + a3;
  self->_userConfidence = v7;
  while (_lastRandomConfidenceGenerated == v7)
  {
    v7 = arc4random_uniform(v6 + 1) + a3;
    self->_userConfidence = v7;
  }

  _lastRandomConfidenceGenerated = v7;
  self->_advertisementDataIsDirty = 1;
}

- (void)setUserConfidence:(unsigned __int8)a3
{
  if (self->_userConfidence != a3)
  {
    self->_userConfidence = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)adjustByAdding:(int)a3
{
  v14 = *MEMORY[0x1E69E9840];
  goodness = self->_goodness;
  v5 = goodness + a3;
  v6 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[SCDARecord adjustByAdding:]";
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s #scda newGoodness: %d", &v10, 0x12u);
    goodness = self->_goodness;
  }

  if (goodness < 0xF0)
  {
    v8 = v5 & ~(v5 >> 31);
    if (v8 >= 127)
    {
      LOBYTE(v8) = 127;
    }

    if (v5 <= 254)
    {
      LOBYTE(goodness) = v8;
    }

    else
    {
      LOBYTE(goodness) = -1;
    }
  }

  else
  {
    v7 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[SCDARecord adjustByAdding:]";
      v12 = 1024;
      v13 = goodness;
      _os_log_impl(&dword_1DA758000, v7, OS_LOG_TYPE_INFO, "%s #scda leaving existing trump signal intact %d", &v10, 0x12u);
      LOBYTE(goodness) = self->_goodness;
    }
  }

  self->_bump = goodness;
  [(SCDARecord *)self setGoodness:goodness];
  self->_advertisementDataIsDirty = 1;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setRawAudioGoodnessScore:(unsigned __int8)a3 withBump:(unsigned __int8)a4
{
  v22 = *MEMORY[0x1E69E9840];
  self->_rawAudioGoodnessScore = a3;
  self->_bump = a4;
  v5 = a4 + a3;
  if ((a4 + a3) >= 0x100)
  {
    v6 = a4;
    v7 = a3;
    v8 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "[SCDARecord setRawAudioGoodnessScore:withBump:]";
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = v6;
      _os_log_error_impl(&dword_1DA758000, v8, OS_LOG_TYPE_ERROR, "%s [(rawAudioGoodnessScore + bump) overflow] rawAudioGoodnessScore: %d, bump: %d. Overwriting goodness score to 0xff", &v14, 0x18u);
    }

    v5 = -1;
  }

  [(SCDARecord *)self setGoodness:v5];
  self->_advertisementDataIsDirty = 1;
  v9 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    rawAudioGoodnessScore = self->_rawAudioGoodnessScore;
    bump = self->_bump;
    goodness = self->_goodness;
    v14 = 136315906;
    v15 = "[SCDARecord setRawAudioGoodnessScore:withBump:]";
    v16 = 1024;
    v17 = rawAudioGoodnessScore;
    v18 = 1024;
    v19 = bump;
    v20 = 1024;
    v21 = goodness;
    _os_log_impl(&dword_1DA758000, v9, OS_LOG_TYPE_INFO, "%s rawAudioGoodnessScore: %d, bump: %d goodness: %d", &v14, 0x1Eu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setPHash:(unsigned __int16)a3
{
  if (self->_pHash != a3)
  {
    self->_pHash = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)_assignDeviceDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 designatedSelfID];
  deviceID = self->_deviceID;
  self->_deviceID = v5;

  self->_deviceGroup = [v4 deviceGroup];
  self->_deviceClass = [v4 deviceClass];
  v7 = [v4 productType];

  self->_productType = v7;
}

- (SCDARecord)initWithEmpty:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SCDARecord;
  v5 = [(SCDARecord *)&v10 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 7) = 0;
    v5[8] = 0;
    *(v5 + 10) = 0;
    *(v5 + 13) = 256;
    v7 = +[SCDAElectionParticipantIdVendor nullId];
    electionParticipantId = v6->_electionParticipantId;
    v6->_electionParticipantId = v7;

    [(SCDARecord *)v6 generateRandomConfidence];
    [(SCDARecord *)v6 _assignDeviceDetails:v4];
  }

  return v6;
}

- (SCDARecord)initWithSlowdown:(unsigned __int16)a3 device:(id)a4
{
  v4 = a3;
  v6 = a4;
  v11.receiver = self;
  v11.super_class = SCDARecord;
  v7 = [(SCDARecord *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v9 = v4 >> 3;
    v7->_recordType = 16;
    if (v4 >> 3 >= 0xFF)
    {
      LOBYTE(v9) = -1;
    }

    v7->_goodness = -48;
    v7->_pHash = 0;
    v7->_isMe = 1;
    v7->_userConfidence = v9;
    [(SCDARecord *)v7 generateTiebreaker];
    [(SCDARecord *)v8 _assignDeviceDetails:v6];
  }

  return v8;
}

- (SCDARecord)initWithResponse:(unsigned __int16)a3 device:(id)a4
{
  result = [(SCDARecord *)self _initWithRecordType:14 device:a4];
  if (result)
  {
    result->_goodness = -1;
    result->_pHash = a3;
  }

  return result;
}

- (SCDARecord)initWithEmergencyHandled:(id)a3
{
  result = [(SCDARecord *)self _initWithRecordType:6 device:a3];
  if (result)
  {
    result->_goodness = -32;
    result->_pHash = 0;
  }

  return result;
}

- (SCDARecord)initWithEmergency:(id)a3
{
  result = [(SCDARecord *)self _initWithRecordType:5 device:a3];
  if (result)
  {
    result->_goodness = -17;
    result->_pHash = 0;
  }

  return result;
}

- (SCDARecord)initWithContinuation:(id)a3
{
  result = [(SCDARecord *)self _initWithRecordType:3 device:a3];
  if (result)
  {
    result->_goodness = 0;
    result->_pHash = -1;
  }

  return result;
}

- (SCDARecord)initWithLateSuppression:(unsigned __int16)a3 device:(id)a4
{
  result = [(SCDARecord *)self _initWithRecordType:17 device:a4];
  if (result)
  {
    *&result->_goodness = -513;
    result->_pHash = a3;
  }

  return result;
}

- (SCDARecord)initWithRTS:(id)a3
{
  result = [(SCDARecord *)self _initWithRecordType:13 device:a3];
  if (result)
  {
    result->_goodness = -14;
    result->_pHash = -1;
  }

  return result;
}

- (SCDARecord)initWithOutgoing:(id)a3 device:(id)a4
{
  result = [(SCDARecord *)self _initWithPerceptualAudioHash:a3 type:11 device:a4];
  if (result)
  {
    *&result->_goodness = -3841;
  }

  return result;
}

- (SCDARecord)initWithInEarTrigger:(id)a3 device:(id)a4
{
  result = [(SCDARecord *)self _initWithPerceptualAudioHash:a3 type:7 device:a4];
  if (result)
  {
    result->_goodness = -8;
  }

  return result;
}

- (SCDARecord)initWithAlertFiringTrigger:(id)a3 device:(id)a4
{
  result = [(SCDARecord *)self _initWithPerceptualAudioHash:a3 type:1 device:a4];
  if (result)
  {
    *&result->_goodness = -1281;
  }

  return result;
}

- (SCDARecord)initWithInTaskTrigger:(id)a3 device:(id)a4
{
  v4 = [(SCDARecord *)self _initWithPerceptualAudioHash:a3 type:8 device:a4];
  v5 = v4;
  if (v4)
  {
    v4->_goodness = -1;
    [(SCDARecord *)v4 generateUIShowingConfidence];
  }

  return v5;
}

- (SCDARecord)initWithCarPlayTrigger:(id)a3 device:(id)a4
{
  v4 = [(SCDARecord *)self _initWithPerceptualAudioHash:a3 type:2 device:a4];
  v5 = v4;
  if (v4)
  {
    v4->_goodness = -1;
    [(SCDARecord *)v4 generateCarPlayConfidence];
  }

  return v5;
}

- (SCDARecord)initWithOverrideTrigger:(id)a3 device:(id)a4
{
  result = [(SCDARecord *)self _initWithPerceptualAudioHash:a3 type:12 device:a4];
  if (result)
  {
    *&result->_goodness = -769;
    result->_pHash = -1;
  }

  return result;
}

- (SCDARecord)initWithRealityTrigger:(id)a3 device:(id)a4
{
  v4 = [(SCDARecord *)self _initWithPerceptualAudioHash:a3 type:4 device:a4];
  v5 = v4;
  if (v4)
  {
    v4->_goodness = -1;
    [(SCDARecord *)v4 generateVisionProConfidence];
    v5->_pHash = -1;
  }

  return v5;
}

- (SCDARecord)initWithDirectTrigger:(id)a3 device:(id)a4
{
  result = [(SCDARecord *)self _initWithPerceptualAudioHash:a3 type:4 device:a4];
  if (result)
  {
    *&result->_goodness = -1;
    result->_pHash = -1;
  }

  return result;
}

- (SCDARecord)initWithPHS:(id)a3
{
  result = [(SCDARecord *)self _initWithRecordType:15 device:a3];
  if (result)
  {
    result->_goodness = -7;
    result->_pHash = -1543;
  }

  return result;
}

- (SCDARecord)initWithThreshold:(id)a3 isLoudnessMissing:(BOOL)a4 device:(id)a5
{
  v5 = a4;
  v6 = [(SCDARecord *)self _initWithPerceptualAudioHash:a3 type:18 device:a5];
  v7 = v6;
  if (v6)
  {
    v6->_goodness = -12;
    if (v5)
    {
      v6->_recordType = 19;
      v6->_userConfidence = -5;
    }

    else if (v6->_userConfidence == 251)
    {
      [(SCDARecord *)v6 _generateConfidenceWithinLowerBound:1 andUpperBound:250];
    }
  }

  return v7;
}

- (id)_initWithRecordType:(int64_t)a3 device:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SCDARecord;
  v7 = [(SCDARecord *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_recordType = a3;
    v7->_isMe = 1;
    [(SCDARecord *)v7 generateTiebreaker];
    [(SCDARecord *)v8 generateRandomConfidence];
    [(SCDARecord *)v8 _assignDeviceDetails:v6];
  }

  return v8;
}

- (id)_initWithPerceptualAudioHash:(id)a3 type:(int64_t)a4 device:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = SCDARecord;
  v10 = [(SCDARecord *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(SCDARecord *)v10 setRecordType:a4];
    if (!v8)
    {
      v8 = [[SCDAPerceptualAudioHash alloc] initWithData:0];
    }

    [(SCDARecord *)v11 setPHash:+[SCDARecord _generateRandomHash]];
    [(SCDARecord *)v11 setUserConfidence:[(SCDAPerceptualAudioHash *)v8 userConfidence]];
    v11->_voiceTriggerMachTime = [(SCDAPerceptualAudioHash *)v8 voiceTriggerTime];
    [(SCDARecord *)v11 setTieBreaker:[(SCDAPerceptualAudioHash *)v8 frac]];
    if (([(SCDAPerceptualAudioHash *)v8 scoreAudioIntensity]& 0x80) != 0)
    {
      v12 = 127;
    }

    else
    {
      v12 = [(SCDAPerceptualAudioHash *)v8 scoreAudioIntensity];
    }

    [(SCDARecord *)v11 setGoodness:v12];
    [(SCDARecord *)v11 setRawAudioGoodnessScore:[(SCDARecord *)v11 goodness]];
    if (!v11->_tieBreaker)
    {
      [(SCDARecord *)v11 generateTiebreaker];
    }

    v11->_isMe = 1;
    [(SCDARecord *)v11 _assignDeviceDetails:v9];
  }

  return v11;
}

- (SCDARecord)initWithDeviceID:(id)a3 data:(id)a4 electionParticipantId:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29.receiver = self;
  v29.super_class = SCDARecord;
  v12 = [(SCDARecord *)&v29 init];
  v13 = v12;
  if (v12)
  {
    advertisementData = v12->_advertisementData;
    v12->_advertisementData = 0;

    v13->_productType = 0;
    objc_storeStrong(&v13->_deviceID, a3);
    v15 = [v10 length];
    if (v15 < 7)
    {
      if (v10)
      {
        v20 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
        {
          v26 = MEMORY[0x1E696AD98];
          v27 = v20;
          v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v10, "length")}];
          *buf = 136315650;
          v31 = "[SCDARecord initWithDeviceID:data:electionParticipantId:]";
          v32 = 2112;
          *v33 = v28;
          *&v33[8] = 2112;
          v34 = v10;
          _os_log_error_impl(&dword_1DA758000, v27, OS_LOG_TYPE_ERROR, "%s Bad data of unexpected length %@ : %@", buf, 0x20u);
        }
      }

      v13->_pHash = 0;
      *&v13->_goodness = 0;
      *&v13->_productType = 0;
    }

    else
    {
      v16 = v15;
      [v10 getBytes:&v13->_pHash range:{0, 2}];
      [v10 getBytes:&v13->_goodness range:{2, 1}];
      [v10 getBytes:&v13->_userConfidence range:{3, 1}];
      [v10 getBytes:&v13->_deviceGroup range:{4, 1}];
      [v10 getBytes:&v13->_deviceClass range:{5, 1}];
      [v10 getBytes:&v13->_tieBreaker range:{6, 1}];
      deviceClass = v13->_deviceClass;
      if (deviceClass >= 0x20)
      {
        v18 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v31 = "[SCDARecord initWithDeviceID:data:electionParticipantId:]";
          v32 = 1024;
          *v33 = deviceClass;
          *&v33[4] = 1024;
          *&v33[6] = deviceClass & 0x1F;
          _os_log_impl(&dword_1DA758000, v18, OS_LOG_TYPE_INFO, "%s #scda Error: Unexpected device class %du masked to: %du", buf, 0x18u);
        }

        v13->_deviceClass = deviceClass & 0x1F;
      }

      if (v16 == 7 || ([v10 getBytes:&v13->_productType range:{7, 1}], v16 == 8))
      {
        v19 = [v10 copy];
      }

      else
      {
        v21 = v10;
        v19 = [v21 initWithBytes:objc_msgSend(v21 length:{"bytes"), 8}];
      }

      v22 = v13->_advertisementData;
      v13->_advertisementData = v19;

      objc_storeStrong(&v13->_electionParticipantId, a5);
    }

    v23 = v13;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)winReason
{
  if (SCDAIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
  }

  if (SCDAIsInternalInstall_isInternal != 1)
  {
    v5 = &stru_1F5626F50;
    goto LABEL_15;
  }

  goodness = self->_goodness;
  if (goodness <= 0xF1)
  {
    if (self->_goodness > 0xDFu)
    {
      if (goodness == 224)
      {
        v5 = @"Emergency being handled";
        goto LABEL_15;
      }

      if (goodness == 239)
      {
        v5 = @"Emergency";
        goto LABEL_15;
      }
    }

    else
    {
      if (!self->_goodness)
      {
        v5 = @"stay awake signal (for potentially handling emergencies)";
        goto LABEL_15;
      }

      if (goodness == 208)
      {
        v5 = @"Slow Decision";
        goto LABEL_15;
      }
    }

LABEL_33:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Loudness (G: %03d)", self->_goodness, v8, v9];
    v5 = LABEL_34:;
    goto LABEL_15;
  }

  if (self->_goodness <= 0xF7u)
  {
    if (goodness == 242)
    {
      v5 = @"Raise to Speak";
      goto LABEL_15;
    }

    if (goodness == 244)
    {
      v5 = @"Watch Loudness Threshold";
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  if (goodness == 248)
  {
    v5 = @"In-Ear Override";
    goto LABEL_15;
  }

  if (goodness == 249)
  {
    v5 = @"Personalized Siri Setup";
    goto LABEL_15;
  }

  if (goodness != 255)
  {
    goto LABEL_33;
  }

  userConfidence = self->_userConfidence;
  v5 = @"Button Press";
  if (self->_userConfidence > 0xFCu)
  {
    if ((userConfidence - 254) < 2)
    {
      goto LABEL_15;
    }

    if (userConfidence == 253)
    {
      v5 = @"this device arriving late to the election";
      goto LABEL_15;
    }
  }

  else
  {
    switch(userConfidence)
    {
      case 0xF0:
        v5 = @"Trigger Phrase played by other device";
        goto LABEL_15;
      case 0xFA:
        v5 = @"Timer or Alarm firing";
        goto LABEL_15;
      case 0xFC:
        goto LABEL_15;
    }
  }

  v7 = userConfidence & 0xF0;
  switch(v7)
  {
    case 144:
      v5 = @"Carplay Override";
      goto LABEL_15;
    case 208:
      v5 = @"Siri Speaking";
      goto LABEL_15;
    case 176:
      v5 = @"Vision Pro Override";
      goto LABEL_15;
  }

  if ((userConfidence - 1) >= 9)
  {
    if ((userConfidence - 10) > 0x1E)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Better Device\n(G: %03d, C: %03d, H: %#06x)", 255, userConfidence, self->_pHash];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Attention (probably) (C: %03d)", self->_userConfidence, v8, v9];
    }

    goto LABEL_34;
  }

  v5 = @"UI Showing (In Task)";
LABEL_15:

  return v5;
}

- (id)deviceName
{
  if (SCDAIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
  }

  if (SCDAIsInternalInstall_isInternal == 1)
  {
    v3 = [SCDADevice debugStringForSCDADeviceClass:self->_deviceClass andProductType:self->_productType];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end