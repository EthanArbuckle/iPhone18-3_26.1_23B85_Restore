@interface SFMExampleUtterance
- (NSString)utteranceText;
- (void)setUtteranceText:(id)a3;
@end

@implementation SFMExampleUtterance

- (NSString)utteranceText
{
  v2 = self;
  sub_266D7CDE8();
  v4 = v3;

  if (v4)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setUtteranceText:(id)a3
{
  if (a3)
  {
    v4 = sub_266DAA70C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_266D7CEF8(v4, v6);
}

@end