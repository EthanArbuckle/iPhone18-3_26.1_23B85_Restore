@interface WFShortcutSigningCertificate
- (NSString)commonName;
- (WFShortcutSigningCertificate)initWithCertificate:(__SecCertificate *)a3;
- (WFShortcutSigningCertificate)initWithCertificateData:(id)a3;
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

- (WFShortcutSigningCertificate)initWithCertificateData:(id)a3
{
  v4 = SecCertificateCreateWithData(0, a3);
  if (v4)
  {
    self = [(WFShortcutSigningCertificate *)self initWithCertificate:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (WFShortcutSigningCertificate)initWithCertificate:(__SecCertificate *)a3
{
  v7.receiver = self;
  v7.super_class = WFShortcutSigningCertificate;
  v4 = [(WFShortcutSigningCertificate *)&v7 init];
  if (v4)
  {
    v4->_certificate = CFRetain(a3);
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
  v2 = [(WFShortcutSigningCertificate *)self certificate];

  return SecCertificateCopyKey(v2);
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