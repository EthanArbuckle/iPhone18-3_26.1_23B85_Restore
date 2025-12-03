@interface CHIPAttestationCertificateRecord
- (CHIPAttestationCertificateRecord)initWithCKRecord:(id)record;
- (CHIPAttestationCertificateRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CHIPAttestationCertificateRecord

- (CHIPAttestationCertificateRecord)initWithCKRecord:(id)record
{
  recordCopy = record;
  if (recordCopy && (v30.receiver = self, v30.super_class = CHIPAttestationCertificateRecord, (self = [(CHIPAttestationCertificateRecord *)&v30 init]) != 0))
  {
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

    v13 = [recordCopy objectForKey:@"signature"];
    v14 = [v13 copy];
    signature = self->_signature;
    self->_signature = v14;

    v16 = [recordCopy objectForKey:@"verificationCertificateKey"];
    v17 = [v16 copy];
    verificationCertificateID = self->_verificationCertificateID;
    self->_verificationCertificateID = v17;

    v19 = [recordCopy objectForKey:@"rootCertificate"];
    v20 = [v19 copy];
    rootCertificate = self->_rootCertificate;
    self->_rootCertificate = v20;

    v22 = [recordCopy objectForKey:@"intermediateCertificates"];
    v23 = [v22 copy];
    intermediateCertificates = self->_intermediateCertificates;
    self->_intermediateCertificates = v23;

    v25 = [recordCopy objectForKey:@"recordStatus"];
    v26 = [v25 copy];
    recordStatus = self->_recordStatus;
    self->_recordStatus = v26;

    if (!self->_signature || !self->_verificationCertificateID || !self->_rootCertificate || !self->_recordStatus)
    {

      self = 0;
    }

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHIPAttestationCertificateRecord alloc];
  ckRecord = self->_ckRecord;

  return [(CHIPAttestationCertificateRecord *)v4 initWithCKRecord:ckRecord];
}

- (CHIPAttestationCertificateRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"record"];

  v6 = [(CHIPAttestationCertificateRecord *)self initWithCKRecord:v5];
  return v6;
}

@end