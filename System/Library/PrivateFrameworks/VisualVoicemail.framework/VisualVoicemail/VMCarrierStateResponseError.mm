@interface VMCarrierStateResponseError
+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
- (VMCarrierStateResponseError)initWithCode:(int64_t)a3 userInfo:(id)a4;
- (VMCarrierStateResponseError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
@end

@implementation VMCarrierStateResponseError

+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = [[VMCarrierStateResponseError alloc] initWithCode:a3 userInfo:v5];

  return v6;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  v9 = a5;
  v10 = a3;
  [a1 doesNotRecognizeSelector:a2];
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___VMCarrierStateResponseError;
  v11 = objc_msgSendSuper2(&v13, "errorWithDomain:code:userInfo:", v10, a4, v9);

  return v11;
}

- (VMCarrierStateResponseError)initWithCode:(int64_t)a3 userInfo:(id)a4
{
  v5.receiver = self;
  v5.super_class = VMCarrierStateResponseError;
  return [(VMCarrierStateResponseError *)&v5 initWithDomain:off_10010D678 code:a3 userInfo:a4];
}

- (VMCarrierStateResponseError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  [(VMCarrierStateResponseError *)self doesNotRecognizeSelector:a2];
  v9 = [(VMCarrierStateResponseError *)self initWithCode:a4 userInfo:v8];

  return v9;
}

@end