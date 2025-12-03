@interface VMCarrierStateResponseError
+ (id)errorWithCode:(int64_t)code userInfo:(id)info;
+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
- (VMCarrierStateResponseError)initWithCode:(int64_t)code userInfo:(id)info;
- (VMCarrierStateResponseError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
@end

@implementation VMCarrierStateResponseError

+ (id)errorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v6 = [[VMCarrierStateResponseError alloc] initWithCode:code userInfo:infoCopy];

  return v6;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  domainCopy = domain;
  [self doesNotRecognizeSelector:a2];
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___VMCarrierStateResponseError;
  v11 = objc_msgSendSuper2(&v13, "errorWithDomain:code:userInfo:", domainCopy, code, infoCopy);

  return v11;
}

- (VMCarrierStateResponseError)initWithCode:(int64_t)code userInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = VMCarrierStateResponseError;
  return [(VMCarrierStateResponseError *)&v5 initWithDomain:off_10010D678 code:code userInfo:info];
}

- (VMCarrierStateResponseError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  [(VMCarrierStateResponseError *)self doesNotRecognizeSelector:a2];
  v9 = [(VMCarrierStateResponseError *)self initWithCode:code userInfo:infoCopy];

  return v9;
}

@end