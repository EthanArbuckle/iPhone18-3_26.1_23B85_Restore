@interface AddCallParticipantIntentHandlerDataSource
- (NSArray)isoCountryCodes;
@end

@implementation AddCallParticipantIntentHandlerDataSource

- (NSArray)isoCountryCodes
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = TUNetworkCountryCode();
  v4 = [v3 length];

  if (v4)
  {
    v5 = TUNetworkCountryCode();
    [v2 addObject:v5];
  }

  v6 = TUHomeCountryCode();
  v7 = [v6 length];

  if (v7)
  {
    v8 = TUHomeCountryCode();
    [v2 addObject:v8];
  }

  return v2;
}

@end