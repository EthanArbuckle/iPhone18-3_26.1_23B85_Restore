@interface CallTranslationSession
- (NSString)description;
- (TUCallTranslationSession)tuSession;
@end

@implementation CallTranslationSession

- (NSString)description
{
  v2 = self;
  sub_1002A4614();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (TUCallTranslationSession)tuSession
{
  v2 = self;
  v3 = sub_1002A4CAC();

  return v3;
}

@end