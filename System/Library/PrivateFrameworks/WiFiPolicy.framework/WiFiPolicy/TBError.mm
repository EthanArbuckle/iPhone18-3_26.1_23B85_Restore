@interface TBError
+ (id)fetchMissingParametersErrorWithUserInfo:(id)info;
+ (id)fetchUnsupportedErrorWithUserInfo:(id)info;
+ (id)responseErrorWithUserInfo:(id)info;
- (TBError)initWithType:(int64_t)type userInfo:(id)info;
@end

@implementation TBError

- (TBError)initWithType:(int64_t)type userInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = TBError;
  return [(TBError *)&v5 initWithDomain:@"com.apple.wifi.threebars" code:type userInfo:info];
}

+ (id)responseErrorWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = [[self alloc] initWithType:200 userInfo:infoCopy];

  return v5;
}

+ (id)fetchUnsupportedErrorWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = [[self alloc] initWithType:100 userInfo:infoCopy];

  return v5;
}

+ (id)fetchMissingParametersErrorWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = [[self alloc] initWithType:101 userInfo:infoCopy];

  return v5;
}

@end