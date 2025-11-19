@interface UARPiCloudAccessoryRecord
- (UARPiCloudAccessoryRecord)initWithCKRecord:(id)a3;
- (UARPiCloudAccessoryRecord)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPiCloudAccessoryRecord

- (UARPiCloudAccessoryRecord)initWithCKRecord:(id)a3
{
  v4 = a3;
  v60.receiver = self;
  v60.super_class = UARPiCloudAccessoryRecord;
  v5 = [(UARPiCloudAccessoryRecord *)&v60 init];
  if (!v5)
  {
    v58 = 0;
    goto LABEL_18;
  }

  v6 = [v4 copy];
  ckRecord = v5->_ckRecord;
  v5->_ckRecord = v6;

  v8 = [v4 recordID];
  v9 = [v8 recordName];
  v10 = [v9 copy];
  recordName = v5->_recordName;
  v5->_recordName = v10;

  if (!v5->_recordName)
  {
    goto LABEL_20;
  }

  v12 = [v4 objectForKey:@"manufacturer"];
  v13 = [v12 copy];
  manufacturer = v5->_manufacturer;
  v5->_manufacturer = v13;

  if (!v5->_manufacturer)
  {
    goto LABEL_20;
  }

  v15 = [v4 objectForKey:@"recordStatus"];
  v16 = [v15 copy];
  recordStatus = v5->_recordStatus;
  v5->_recordStatus = v16;

  if (!v5->_recordStatus)
  {
    goto LABEL_20;
  }

  v18 = [v4 objectForKey:@"model"];
  v19 = [v18 copy];
  model = v5->_model;
  v5->_model = v19;

  if (!v5->_model)
  {
    goto LABEL_20;
  }

  v21 = [v4 objectForKey:@"firmwareVersion"];
  v22 = [v21 copy];
  firmwareVersion = v5->_firmwareVersion;
  v5->_firmwareVersion = v22;

  if (!v5->_firmwareVersion)
  {
    goto LABEL_20;
  }

  v24 = [v4 objectForKey:@"firmwareURL"];
  v25 = [v24 copy];
  firmwareURL = v5->_firmwareURL;
  v5->_firmwareURL = v25;

  if (!v5->_firmwareURL)
  {
    goto LABEL_20;
  }

  v27 = [v4 objectForKey:@"releaseType"];
  v28 = [v27 copy];
  releaseType = v5->_releaseType;
  v5->_releaseType = v28;

  v30 = [v4 objectForKey:@"updateClassification"];
  v31 = [v30 copy];
  updateClassification = v5->_updateClassification;
  v5->_updateClassification = v31;

  v33 = [v4 objectForKey:@"releaseNotesURL"];
  v34 = [v33 copy];
  releaseNotesURL = v5->_releaseNotesURL;
  v5->_releaseNotesURL = v34;

  if (!v5->_releaseNotesURL)
  {
    goto LABEL_20;
  }

  v36 = [v4 objectForKey:@"firmwareBinaryHash"];
  v37 = [v36 copy];
  firmwareBinaryHash = v5->_firmwareBinaryHash;
  v5->_firmwareBinaryHash = v37;

  if (!v5->_firmwareBinaryHash)
  {
    goto LABEL_20;
  }

  v39 = [v4 objectForKey:@"releaseNotesHash"];
  v40 = [v39 copy];
  releaseNotesHash = v5->_releaseNotesHash;
  v5->_releaseNotesHash = v40;

  if (!v5->_releaseNotesHash)
  {
    goto LABEL_20;
  }

  v42 = [v4 objectForKey:@"signature"];
  v43 = [v42 copy];
  signature = v5->_signature;
  v5->_signature = v43;

  if (!v5->_signature)
  {
    goto LABEL_20;
  }

  v45 = [v4 objectForKey:@"releaseDate"];
  v46 = [v45 copy];
  releaseDate = v5->_releaseDate;
  v5->_releaseDate = v46;

  if (!v5->_releaseDate)
  {
    goto LABEL_20;
  }

  v48 = [v4 objectForKey:@"firmwareFileSize"];
  v49 = [v48 copy];
  firmwareFileSize = v5->_firmwareFileSize;
  v5->_firmwareFileSize = v49;

  if (!v5->_firmwareFileSize || ([v4 objectForKey:@"releaseNotesFileSize"], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "copy"), releaseNotesFileSize = v5->_releaseNotesFileSize, v5->_releaseNotesFileSize = v52, releaseNotesFileSize, v51, !v5->_releaseNotesFileSize))
  {
LABEL_20:
    v58 = v5;
    v5 = 0;
    goto LABEL_18;
  }

  v54 = [v4 objectForKey:@"deploymentList"];
  v55 = [v54 copy];
  deploymentStr = v5->_deploymentStr;
  v5->_deploymentStr = v55;

  v57 = v5->_deploymentStr;
  if (v57)
  {
    [(UARPiCloudAccessoryRecord *)v57 initWithCKRecord:v5, &v61];
    v58 = v61;
LABEL_18:
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UARPiCloudAccessoryRecord alloc];
  ckRecord = self->_ckRecord;

  return [(UARPiCloudAccessoryRecord *)v4 initWithCKRecord:ckRecord];
}

- (void)encodeWithCoder:(id)a3
{
  ckRecord = self->_ckRecord;
  v5 = a3;
  [v5 encodeObject:ckRecord forKey:@"record"];
  [v5 encodeObject:self->_manufacturer forKey:@"manufacturer"];
  [v5 encodeObject:self->_recordStatus forKey:@"recordStatus"];
  [v5 encodeObject:self->_firmwareVersion forKey:@"model"];
  [v5 encodeObject:self->_firmwareURL forKey:@"firmwareURL"];
  [v5 encodeObject:self->_releaseType forKey:@"releaseType"];
  [v5 encodeObject:self->_updateClassification forKey:@"updateClassification"];
  [v5 encodeObject:self->_releaseNotesURL forKey:@"releaseNotesURL"];
  [v5 encodeObject:self->_firmwareBinaryHash forKey:@"firmwareBinaryHash"];
  [v5 encodeObject:self->_releaseNotesHash forKey:@"releaseNotesHash"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeObject:self->_deploymentList forKey:@"deploymentList"];
}

- (UARPiCloudAccessoryRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"record"];

  v6 = [(UARPiCloudAccessoryRecord *)self initWithCKRecord:v5];
  return v6;
}

- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4
{
  v7 = a4;
  [v7 appendWithTabDepth:a3 format:{@"Name: %@\n", self->_recordName}];
  [v7 appendWithTabDepth:a3 + 1 format:{@"Status: %@\n", self->_recordStatus}];
  [v7 appendWithTabDepth:a3 + 1 format:{@"Manufacturer: %@\n", self->_manufacturer}];
  [v7 appendWithTabDepth:a3 + 1 format:{@"Model: %@\n", self->_model}];
  [v7 appendWithTabDepth:a3 + 1 format:{@"Firmware Version: %@\n", self->_firmwareVersion}];
  [v7 appendWithTabDepth:a3 + 1 format:{@"Firmware URL: %@\n", self->_firmwareURL}];
  [v7 appendWithTabDepth:a3 + 1 format:{@"Release Type: %@\n", self->_releaseType}];
  [v7 appendWithTabDepth:a3 + 1 format:{@"Update Classification: %@\n", self->_updateClassification}];
  if (self->_deploymentStr)
  {
    [v7 appendWithTabDepth:a3 + 1 format:{@"Deployment String: %@\n", self->_deploymentStr}];
  }

  if (self->_deploymentList)
  {
    [v7 appendWithTabDepth:a3 + 1 format:{@"Deployment List: %@\n", self->_deploymentList}];
  }

  [v7 appendWithTabDepth:a3 + 1 format:{@"Release Notes URL: %@\n", self->_releaseNotesURL}];
  [v7 appendWithTabDepth:a3 + 1 format:{@"Firmware Binary Hash: %@\n", self->_firmwareBinaryHash}];
  [v7 appendWithTabDepth:a3 + 1 format:{@"Release Notes Hash: %@\n", self->_releaseNotesHash}];
  [v7 appendWithTabDepth:a3 + 1 format:{@"Signature: %@\n", self->_signature}];
  if (self->_releaseDate)
  {
    [v7 appendWithTabDepth:a3 + 1 format:{@"Release Date: %@\n", self->_releaseDate}];
  }

  if (self->_releaseNotesFileSize)
  {
    [v7 appendWithTabDepth:a3 + 1 format:{@"Release Notes File Size: %@\n", self->_releaseNotesFileSize}];
  }

  v6 = v7;
  if (self->_firmwareFileSize)
  {
    [v7 appendWithTabDepth:a3 + 1 format:{@"Firmware File Size: %@\n", self->_firmwareFileSize}];
    v6 = v7;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  recordName = self->_recordName;
  firmwareBinaryHash = self->_firmwareBinaryHash;
  v8 = [v3 stringWithFormat:@"<%@: recordName=%@, firmwareVersion=%@, firmwareURL=%@, releaseNotesURL=%@, firmwareBinaryHash=%@, releaseNotesHash=%@>", v5, recordName, self->_firmwareVersion, self->_firmwareURL, self->_releaseNotesURL, firmwareBinaryHash, self->_releaseNotesHash];

  return v8;
}

- (void)initWithCKRecord:(uint64_t *)a3 .cold.1(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = MEMORY[0x277CCAAA0];
  v6 = [a1 dataUsingEncoding:4];
  *a3 = v6;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:0];
  v8 = *(a2 + 80);
  *(a2 + 80) = v7;
}

@end