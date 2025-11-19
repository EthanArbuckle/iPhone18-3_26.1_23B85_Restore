@interface TBError
+ (id)fetchMissingParametersErrorWithUserInfo:(id)a3;
+ (id)fetchUnsupportedErrorWithUserInfo:(id)a3;
+ (id)responseErrorWithUserInfo:(id)a3;
- (TBError)initWithType:(int64_t)a3 userInfo:(id)a4;
@end

@implementation TBError

- (TBError)initWithType:(int64_t)a3 userInfo:(id)a4
{
  v5.receiver = self;
  v5.super_class = TBError;
  return [(TBError *)&v5 initWithDomain:@"com.apple.wifi.threebars" code:a3 userInfo:a4];
}

+ (id)responseErrorWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:200 userInfo:v4];

  return v5;
}

+ (id)fetchUnsupportedErrorWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:100 userInfo:v4];

  return v5;
}

+ (id)fetchMissingParametersErrorWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:101 userInfo:v4];

  return v5;
}

@end