@interface SFMExampleUtterance
- (NSString)utteranceText;
- (void)setUtteranceText:(id)text;
@end

@implementation SFMExampleUtterance

- (NSString)utteranceText
{
  selfCopy = self;
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

- (void)setUtteranceText:(id)text
{
  if (text)
  {
    v4 = sub_266DAA70C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_266D7CEF8(v4, v6);
}

@end