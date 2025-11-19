@interface PKSecTrustWrapper
- (PKSecTrustWrapper)initWithTrust:(__SecTrust *)a3;
- (void)dealloc;
@end

@implementation PKSecTrustWrapper

- (PKSecTrustWrapper)initWithTrust:(__SecTrust *)a3
{
  v7.receiver = self;
  v7.super_class = PKSecTrustWrapper;
  v4 = [(PKSecTrustWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_trustRef = a3;
    CFRetain(a3);
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_trustRef);
  v3.receiver = self;
  v3.super_class = PKSecTrustWrapper;
  [(PKSecTrustWrapper *)&v3 dealloc];
}

@end