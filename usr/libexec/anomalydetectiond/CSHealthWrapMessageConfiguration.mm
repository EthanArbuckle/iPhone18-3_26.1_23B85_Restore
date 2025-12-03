@interface CSHealthWrapMessageConfiguration
- (CSHealthWrapMessageConfiguration)initWithCertificate:(__SecCertificate *)certificate messageUUID:(id)d subjectUUID:(id)iD studyUUID:(id)uID channel:(id)channel payloadType:(id)type;
- (void)dealloc;
@end

@implementation CSHealthWrapMessageConfiguration

- (CSHealthWrapMessageConfiguration)initWithCertificate:(__SecCertificate *)certificate messageUUID:(id)d subjectUUID:(id)iD studyUUID:(id)uID channel:(id)channel payloadType:(id)type
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  channelCopy = channel;
  typeCopy = type;
  if (!certificate)
  {
    sub_100357F98();
  }

  v31.receiver = self;
  v31.super_class = CSHealthWrapMessageConfiguration;
  v19 = [(CSHealthWrapMessageConfiguration *)&v31 init];
  if (v19)
  {
    if (dCopy)
    {
      v20 = [dCopy copy];
    }

    else
    {
      v20 = +[NSUUID UUID];
    }

    messageUUID = v19->_messageUUID;
    v19->_messageUUID = v20;

    v22 = [iDCopy copy];
    subjectUUID = v19->_subjectUUID;
    v19->_subjectUUID = v22;

    v24 = [uIDCopy copy];
    studyUUID = v19->_studyUUID;
    v19->_studyUUID = v24;

    v26 = [channelCopy copy];
    channel = v19->_channel;
    v19->_channel = v26;

    v28 = [typeCopy copy];
    payloadType = v19->_payloadType;
    v19->_payloadType = v28;

    CFRetain(certificate);
    v19->_certificate = certificate;
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