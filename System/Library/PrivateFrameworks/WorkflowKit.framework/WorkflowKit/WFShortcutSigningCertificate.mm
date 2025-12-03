@interface WFShortcutSigningCertificate
- (NSString)commonName;
- (WFShortcutSigningCertificate)initWithCertificate:(__SecCertificate *)certificate;
- (WFShortcutSigningCertificate)initWithCertificateData:(id)data;
- (__SecKey)copyPublicKey;
- (id)generateAuthData;
- (void)dealloc;
@end

@implementation WFShortcutSigningCertificate

- (void)dealloc
{
  CFRelease(self->_certificate);
  v3.receiver = self;
  v3.super_class = WFShortcutSigningCertificate;
  [(WFShortcutSigningCertificate *)&v3 dealloc];
}

- (WFShortcutSigningCertificate)initWithCertificateData:(id)data
{
  v4 = SecCertificateCreateWithData(0, data);
  if (v4)
  {
    self = [(WFShortcutSigningCertificate *)self initWithCertificate:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFShortcutSigningCertificate)initWithCertificate:(__SecCertificate *)certificate
{
  v7.receiver = self;
  v7.super_class = WFShortcutSigningCertificate;
  v4 = [(WFShortcutSigningCertificate *)&v7 init];
  if (v4)
  {
    v4->_certificate = CFRetain(certificate);
    v5 = v4;
  }

  return v4;
}

- (id)generateAuthData
{
  v2 = SecCertificateCopyData([(WFShortcutSigningCertificate *)self certificate]);

  return v2;
}

- (__SecKey)copyPublicKey
{
  certificate = [(WFShortcutSigningCertificate *)self certificate];

  return SecCertificateCopyKey(certificate);
}

- (NSString)commonName
{
  commonName = 0;
  if (SecCertificateCopyCommonName([(WFShortcutSigningCertificate *)self certificate], &commonName))
  {
    v2 = 0;
  }

  else
  {
    v2 = commonName;
  }

  return v2;
}

@end