@interface CHIPAccessoryFirmwareRecord
- (CHIPAccessoryFirmwareRecord)initWithCKRecord:(id)record;
- (CHIPAccessoryFirmwareRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)calculateDigestFromCKRecord:(id)record;
@end

@implementation CHIPAccessoryFirmwareRecord

- (CHIPAccessoryFirmwareRecord)initWithCKRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_14;
  }

  v50.receiver = self;
  v50.super_class = CHIPAccessoryFirmwareRecord;
  self = [(CHIPAccessoryFirmwareRecord *)&v50 init];
  if (!self)
  {
    goto LABEL_14;
  }

  v5 = os_log_create("com.apple.accessoryupdater.uarp", "iCloudAssetManager");
  log = self->_log;
  self->_log = v5;

  v7 = [recordCopy copy];
  ckRecord = self->_ckRecord;
  self->_ckRecord = v7;

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v11 = [recordName copy];
  recordName = self->_recordName;
  self->_recordName = v11;

  v13 = [recordCopy objectForKey:@"signatureV2"];
  v14 = [v13 copy];
  signature = self->_signature;
  self->_signature = v14;

  if (!self->_signature)
  {
    goto LABEL_14;
  }

  v16 = [recordCopy objectForKey:@"verificationCertificateKey"];
  v17 = [v16 copy];
  verificationCertificateID = self->_verificationCertificateID;
  self->_verificationCertificateID = v17;

  if (!self->_verificationCertificateID)
  {
    goto LABEL_14;
  }

  v19 = [recordCopy objectForKey:@"firmwareVersionString"];
  v20 = [v19 copy];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = v20;

  v22 = [recordCopy objectForKey:@"firmwareVersionNumber"];
  firmwareVersionNumber = self->_firmwareVersionNumber;
  self->_firmwareVersionNumber = v22;

  if (!self->_firmwareVersionNumber)
  {
    goto LABEL_14;
  }

  v24 = [recordCopy objectForKey:@"minFirmwareVersionNumber"];
  minFirmwareVersionNumber = self->_minFirmwareVersionNumber;
  self->_minFirmwareVersionNumber = v24;

  v26 = [recordCopy objectForKey:@"maxFirmwareVersionNumber"];
  maxFirmwareVersionNumber = self->_maxFirmwareVersionNumber;
  self->_maxFirmwareVersionNumber = v26;

  v28 = [recordCopy objectForKey:@"firmwareURL"];
  v29 = [v28 copy];
  firmwareURL = self->_firmwareURL;
  self->_firmwareURL = v29;

  v31 = [recordCopy objectForKey:@"firmwareBinaryHash"];
  v32 = [v31 copy];
  firmwareBinaryHash = self->_firmwareBinaryHash;
  self->_firmwareBinaryHash = v32;

  if (self->_firmwareURL)
  {
    if (!self->_firmwareBinaryHash)
    {
      goto LABEL_14;
    }
  }

  v34 = [recordCopy objectForKey:@"firmwareFileSize"];
  v35 = [v34 copy];
  firmwareFileSize = self->_firmwareFileSize;
  self->_firmwareFileSize = v35;

  if (self->_firmwareURL)
  {
    if (!self->_firmwareFileSize)
    {
      goto LABEL_14;
    }
  }

  v37 = [recordCopy objectForKey:@"hashAlgorithmType"];
  hashAlgorithmType = self->_hashAlgorithmType;
  self->_hashAlgorithmType = v37;

  if (self->_firmwareURL)
  {
    if (!self->_hashAlgorithmType)
    {
      goto LABEL_14;
    }
  }

  v39 = [recordCopy objectForKey:@"cdVersionNumber"];
  cdVersionNumber = self->_cdVersionNumber;
  self->_cdVersionNumber = v39;

  v41 = [recordCopy objectForKey:@"releaseNotesURL"];
  releaseNotesURL = self->_releaseNotesURL;
  self->_releaseNotesURL = v41;

  modificationDate = [recordCopy modificationDate];
  v44 = [modificationDate copy];
  releaseDate = self->_releaseDate;
  self->_releaseDate = v44;

  v46 = [recordCopy objectForKey:@"recordStatus"];
  recordStatus = self->_recordStatus;
  self->_recordStatus = v46;

  if (self->_recordStatus)
  {
    [(CHIPAccessoryFirmwareRecord *)self calculateDigestFromCKRecord:recordCopy];
    self = self;
    selfCopy = self;
  }

  else
  {
LABEL_14:
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHIPAccessoryFirmwareRecord alloc];
  ckRecord = self->_ckRecord;

  return [(CHIPAccessoryFirmwareRecord *)v4 initWithCKRecord:ckRecord];
}

- (CHIPAccessoryFirmwareRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"record"];

  v6 = [(CHIPAccessoryFirmwareRecord *)self initWithCKRecord:v5];
  return v6;
}

- (void)calculateDigestFromCKRecord:(id)record
{
  v31 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  digest = self->_digest;
  self->_digest = 0;

  allKeys = [recordCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
    for (i = *v26; ; i = *v26)
    {
      if (i != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v25 + 1) + 8 * v11);
      if (([v14 isEqualToString:@"firmwareVersionNumber"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"minFirmwareVersionNumber") & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"maxFirmwareVersionNumber"))
      {
        break;
      }

      if ([v14 isEqualToString:@"hashAlgorithmType"])
      {
        v15 = [recordCopy objectForKey:v14];
        data = bswap64([v15 unsignedLongLongValue]);
        v16 = 8;
        goto LABEL_9;
      }

      if ([v14 isEqualToString:@"cdVersionNumber"])
      {
        v15 = [recordCopy objectForKey:v14];
        LOWORD(data) = __rev16([v15 unsignedShortValue]);
        v16 = 2;
        goto LABEL_9;
      }

      if (([v14 isEqualToString:@"verificationCertificateKey"] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"signature") & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"signatureV2") & 1) == 0)
      {
        v15 = [recordCopy objectForKey:v14];
        [v15 dataUsingEncoding:4];
        v18 = v23 = self;
        CC_SHA256_Update(&c, [v18 bytes], objc_msgSend(v18, "length"));

        self = v23;
        goto LABEL_10;
      }

LABEL_11:
      if (++v11 >= v10)
      {
        v17 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (!v17)
        {
          goto LABEL_23;
        }

        v10 = v17;
        v11 = 0;
      }
    }

    v15 = [recordCopy objectForKey:v14];
    LODWORD(data) = bswap32([v15 unsignedIntValue]);
    v16 = 4;
LABEL_9:
    CC_SHA256_Update(&c, &data, v16);
LABEL_10:

    goto LABEL_11;
  }

LABEL_23:

  v19 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256_Final([v19 mutableBytes], &c);
  v20 = [MEMORY[0x277CBEA90] dataWithData:v19];
  v21 = self->_digest;
  self->_digest = v20;

  v22 = *MEMORY[0x277D85DE8];
}

@end