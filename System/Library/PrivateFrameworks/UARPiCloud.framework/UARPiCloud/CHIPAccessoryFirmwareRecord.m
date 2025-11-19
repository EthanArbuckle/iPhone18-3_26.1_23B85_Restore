@interface CHIPAccessoryFirmwareRecord
- (CHIPAccessoryFirmwareRecord)initWithCKRecord:(id)a3;
- (CHIPAccessoryFirmwareRecord)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)calculateDigestFromCKRecord:(id)a3;
@end

@implementation CHIPAccessoryFirmwareRecord

- (CHIPAccessoryFirmwareRecord)initWithCKRecord:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v7 = [v4 copy];
  ckRecord = self->_ckRecord;
  self->_ckRecord = v7;

  v9 = [v4 recordID];
  v10 = [v9 recordName];
  v11 = [v10 copy];
  recordName = self->_recordName;
  self->_recordName = v11;

  v13 = [v4 objectForKey:@"signatureV2"];
  v14 = [v13 copy];
  signature = self->_signature;
  self->_signature = v14;

  if (!self->_signature)
  {
    goto LABEL_14;
  }

  v16 = [v4 objectForKey:@"verificationCertificateKey"];
  v17 = [v16 copy];
  verificationCertificateID = self->_verificationCertificateID;
  self->_verificationCertificateID = v17;

  if (!self->_verificationCertificateID)
  {
    goto LABEL_14;
  }

  v19 = [v4 objectForKey:@"firmwareVersionString"];
  v20 = [v19 copy];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = v20;

  v22 = [v4 objectForKey:@"firmwareVersionNumber"];
  firmwareVersionNumber = self->_firmwareVersionNumber;
  self->_firmwareVersionNumber = v22;

  if (!self->_firmwareVersionNumber)
  {
    goto LABEL_14;
  }

  v24 = [v4 objectForKey:@"minFirmwareVersionNumber"];
  minFirmwareVersionNumber = self->_minFirmwareVersionNumber;
  self->_minFirmwareVersionNumber = v24;

  v26 = [v4 objectForKey:@"maxFirmwareVersionNumber"];
  maxFirmwareVersionNumber = self->_maxFirmwareVersionNumber;
  self->_maxFirmwareVersionNumber = v26;

  v28 = [v4 objectForKey:@"firmwareURL"];
  v29 = [v28 copy];
  firmwareURL = self->_firmwareURL;
  self->_firmwareURL = v29;

  v31 = [v4 objectForKey:@"firmwareBinaryHash"];
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

  v34 = [v4 objectForKey:@"firmwareFileSize"];
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

  v37 = [v4 objectForKey:@"hashAlgorithmType"];
  hashAlgorithmType = self->_hashAlgorithmType;
  self->_hashAlgorithmType = v37;

  if (self->_firmwareURL)
  {
    if (!self->_hashAlgorithmType)
    {
      goto LABEL_14;
    }
  }

  v39 = [v4 objectForKey:@"cdVersionNumber"];
  cdVersionNumber = self->_cdVersionNumber;
  self->_cdVersionNumber = v39;

  v41 = [v4 objectForKey:@"releaseNotesURL"];
  releaseNotesURL = self->_releaseNotesURL;
  self->_releaseNotesURL = v41;

  v43 = [v4 modificationDate];
  v44 = [v43 copy];
  releaseDate = self->_releaseDate;
  self->_releaseDate = v44;

  v46 = [v4 objectForKey:@"recordStatus"];
  recordStatus = self->_recordStatus;
  self->_recordStatus = v46;

  if (self->_recordStatus)
  {
    [(CHIPAccessoryFirmwareRecord *)self calculateDigestFromCKRecord:v4];
    self = self;
    v48 = self;
  }

  else
  {
LABEL_14:
    v48 = 0;
  }

  return v48;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHIPAccessoryFirmwareRecord alloc];
  ckRecord = self->_ckRecord;

  return [(CHIPAccessoryFirmwareRecord *)v4 initWithCKRecord:ckRecord];
}

- (CHIPAccessoryFirmwareRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"record"];

  v6 = [(CHIPAccessoryFirmwareRecord *)self initWithCKRecord:v5];
  return v6;
}

- (void)calculateDigestFromCKRecord:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  digest = self->_digest;
  self->_digest = 0;

  v6 = [v4 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

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
        v15 = [v4 objectForKey:v14];
        data = bswap64([v15 unsignedLongLongValue]);
        v16 = 8;
        goto LABEL_9;
      }

      if ([v14 isEqualToString:@"cdVersionNumber"])
      {
        v15 = [v4 objectForKey:v14];
        LOWORD(data) = __rev16([v15 unsignedShortValue]);
        v16 = 2;
        goto LABEL_9;
      }

      if (([v14 isEqualToString:@"verificationCertificateKey"] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"signature") & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"signatureV2") & 1) == 0)
      {
        v15 = [v4 objectForKey:v14];
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

    v15 = [v4 objectForKey:v14];
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