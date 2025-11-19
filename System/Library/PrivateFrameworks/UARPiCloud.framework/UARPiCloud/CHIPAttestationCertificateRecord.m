@interface CHIPAttestationCertificateRecord
- (CHIPAttestationCertificateRecord)initWithCKRecord:(id)a3;
- (CHIPAttestationCertificateRecord)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CHIPAttestationCertificateRecord

- (CHIPAttestationCertificateRecord)initWithCKRecord:(id)a3
{
  v4 = a3;
  if (v4 && (v30.receiver = self, v30.super_class = CHIPAttestationCertificateRecord, (self = [(CHIPAttestationCertificateRecord *)&v30 init]) != 0))
  {
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

    v13 = [v4 objectForKey:@"signature"];
    v14 = [v13 copy];
    signature = self->_signature;
    self->_signature = v14;

    v16 = [v4 objectForKey:@"verificationCertificateKey"];
    v17 = [v16 copy];
    verificationCertificateID = self->_verificationCertificateID;
    self->_verificationCertificateID = v17;

    v19 = [v4 objectForKey:@"rootCertificate"];
    v20 = [v19 copy];
    rootCertificate = self->_rootCertificate;
    self->_rootCertificate = v20;

    v22 = [v4 objectForKey:@"intermediateCertificates"];
    v23 = [v22 copy];
    intermediateCertificates = self->_intermediateCertificates;
    self->_intermediateCertificates = v23;

    v25 = [v4 objectForKey:@"recordStatus"];
    v26 = [v25 copy];
    recordStatus = self->_recordStatus;
    self->_recordStatus = v26;

    if (!self->_signature || !self->_verificationCertificateID || !self->_rootCertificate || !self->_recordStatus)
    {

      self = 0;
    }

    self = self;
    v28 = self;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHIPAttestationCertificateRecord alloc];
  ckRecord = self->_ckRecord;

  return [(CHIPAttestationCertificateRecord *)v4 initWithCKRecord:ckRecord];
}

- (CHIPAttestationCertificateRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"record"];

  v6 = [(CHIPAttestationCertificateRecord *)self initWithCKRecord:v5];
  return v6;
}

@end