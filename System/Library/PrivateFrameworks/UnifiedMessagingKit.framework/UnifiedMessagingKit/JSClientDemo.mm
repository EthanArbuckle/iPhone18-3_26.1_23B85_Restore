@interface JSClientDemo
- (BOOL)inStoreDemoMode;
- (NSDictionary)options;
- (NSString)storeId;
- (int64_t)deviceType;
@end

@implementation JSClientDemo

- (int64_t)deviceType
{
  v2 = self;
  v3 = sub_27058B5B0();

  return v3;
}

- (BOOL)inStoreDemoMode
{
  v2 = self;
  v3 = sub_27058B9E8();

  return v3 & 1;
}

- (NSDictionary)options
{
  v2 = self;
  sub_27058BA88();

  v3 = sub_2705D7454();

  return v3;
}

- (NSString)storeId
{
  v2 = self;
  sub_27058BF64();
  v4 = v3;

  if (v4)
  {
    v5 = sub_2705D7534();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end