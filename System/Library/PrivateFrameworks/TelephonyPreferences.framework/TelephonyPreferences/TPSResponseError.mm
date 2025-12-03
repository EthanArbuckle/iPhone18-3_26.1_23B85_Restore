@interface TPSResponseError
+ (id)errorWithCode:(int64_t)code userInfo:(id)info;
- (TPSResponseError)initWithCode:(int64_t)code userInfo:(id)info;
- (TPSResponseError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
@end

@implementation TPSResponseError

+ (id)errorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v6 = [[TPSResponseError alloc] initWithCode:code userInfo:infoCopy];

  return v6;
}

- (TPSResponseError)initWithCode:(int64_t)code userInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = TPSResponseError;
  return [(TPSResponseError *)&v5 initWithDomain:TPSResponseErrorDomain code:code userInfo:info];
}

- (TPSResponseError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  [(TPSResponseError *)self doesNotRecognizeSelector:a2, code, info];

  return 0;
}

@end