@interface CSHealthWrapMessageConfiguration
- (CSHealthWrapMessageConfiguration)initWithCertificate:(__SecCertificate *)a3 messageUUID:(id)a4 subjectUUID:(id)a5 studyUUID:(id)a6 channel:(id)a7 payloadType:(id)a8;
- (void)dealloc;
@end

@implementation CSHealthWrapMessageConfiguration

- (CSHealthWrapMessageConfiguration)initWithCertificate:(__SecCertificate *)a3 messageUUID:(id)a4 subjectUUID:(id)a5 studyUUID:(id)a6 channel:(id)a7 payloadType:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!a3)
  {
    sub_100357F98();
  }

  v31.receiver = self;
  v31.super_class = CSHealthWrapMessageConfiguration;
  v19 = [(CSHealthWrapMessageConfiguration *)&v31 init];
  if (v19)
  {
    if (v14)
    {
      v20 = [v14 copy];
    }

    else
    {
      v20 = +[NSUUID UUID];
    }

    messageUUID = v19->_messageUUID;
    v19->_messageUUID = v20;

    v22 = [v15 copy];
    subjectUUID = v19->_subjectUUID;
    v19->_subjectUUID = v22;

    v24 = [v16 copy];
    studyUUID = v19->_studyUUID;
    v19->_studyUUID = v24;

    v26 = [v17 copy];
    channel = v19->_channel;
    v19->_channel = v26;

    v28 = [v18 copy];
    payloadType = v19->_payloadType;
    v19->_payloadType = v28;

    CFRetain(a3);
    v19->_certificate = a3;
  }

  return v19;
}

- (void)dealloc
{
  certificate = self->_certificate;
  if (certificate)
  {
    CFRelease(certificate);
  }

  v4.receiver = self;
  v4.super_class = CSHealthWrapMessageConfiguration;
  [(CSHealthWrapMessageConfiguration *)&v4 dealloc];
}

@end