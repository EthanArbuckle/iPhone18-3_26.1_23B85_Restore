@interface CTNetwork(TelephonyPreferences)
- (id)tps_localizedName;
@end

@implementation CTNetwork(TelephonyPreferences)

- (id)tps_localizedName
{
  name = [self name];
  v3 = [TPSLocalizedString localizedStringForKey:name];

  if (![v3 length])
  {
    name2 = [self name];

    v3 = name2;
  }

  return v3;
}

@end