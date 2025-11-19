@interface JSPrivacy
- (id)acknowledgementNeededForPrivacyIdentifier:(id)a3 :(id)a4;
@end

@implementation JSPrivacy

- (id)acknowledgementNeededForPrivacyIdentifier:(id)a3 :(id)a4
{
  v6 = sub_2705D7564();
  v8 = v7;
  if (a4)
  {
    a4 = sub_2705D7464();
  }

  v9 = self;
  v10 = sub_2705A6650(v6, v8, a4);

  return v10;
}

@end