@interface _SFCertificate
- (NSString)issuerName;
- (NSString)subject;
- (_SFCertificate)initWithSecCertificate:(__SecCertificate *)certificate;
- (void)dealloc;
@end

@implementation _SFCertificate

- (_SFCertificate)initWithSecCertificate:(__SecCertificate *)certificate
{
  v8.receiver = self;
  v8.super_class = _SFCertificate;
  v4 = [(_SFCertificate *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(SFCertificate_Ivars);
    certificateInternal = v4->_certificateInternal;
    v4->_certificateInternal = v5;

    *(v4->_certificateInternal + 5) = certificate;
    CFRetain(*(v4->_certificateInternal + 5));
  }

  return v4;
}

- (NSString)subject
{
  v2 = [*(self->_certificateInternal + 2) copy];

  return v2;
}

- (NSString)issuerName
{
  v2 = [*(self->_certificateInternal + 3) copy];

  return v2;
}

- (void)dealloc
{
  v3 = *(self->_certificateInternal + 5);
  if (v3)
  {
    CFRelease(v3);
    *(self->_certificateInternal + 5) = 0;
  }

  v4.receiver = self;
  v4.super_class = _SFCertificate;
  [(_SFCertificate *)&v4 dealloc];
}

@end