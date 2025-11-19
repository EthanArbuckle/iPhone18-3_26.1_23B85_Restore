@interface JSDevice
- (BOOL)isBundle;
- (NSString)modelPartNumber;
@end

@implementation JSDevice

- (BOOL)isBundle
{
  v2 = self;
  v3 = sub_27058E09C();

  return v3 & 1;
}

- (NSString)modelPartNumber
{
  v2 = self;
  sub_27058E13C();
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