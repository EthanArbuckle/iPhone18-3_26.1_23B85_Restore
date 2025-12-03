@interface IntroPresetsModel
- (NSDictionary)restrictions;
- (void)setRestrictions:(id)restrictions;
@end

@implementation IntroPresetsModel

- (NSDictionary)restrictions
{
  if (*(self + 2))
  {

    v2 = sub_264CC453C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setRestrictions:(id)restrictions
{
  if (restrictions)
  {
    v4 = sub_264CC454C();
  }

  else
  {
    v4 = 0;
  }

  *(self + 2) = v4;
}

@end