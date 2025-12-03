@interface SCUIAXIdentifiers
+ (NSString)actionMenu;
+ (NSString)actionMenuCancel;
+ (NSString)interventionScreenContent;
+ (NSString)interventionScreenHeader;
+ (id)interventionScreen:(int64_t)screen;
- (SCUIAXIdentifiers)init;
@end

@implementation SCUIAXIdentifiers

- (SCUIAXIdentifiers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXIdentifiers();
  return [(SCUIAXIdentifiers *)&v3 init];
}

+ (NSString)interventionScreenHeader
{
  v2 = sub_1BC75BB30();

  return v2;
}

+ (NSString)interventionScreenContent
{
  v2 = sub_1BC75BB30();

  return v2;
}

+ (id)interventionScreen:(int64_t)screen
{
  v3 = sub_1BC75BB30();

  return v3;
}

+ (NSString)actionMenu
{
  v2 = sub_1BC75BB30();

  return v2;
}

+ (NSString)actionMenuCancel
{
  v2 = sub_1BC75BB30();

  return v2;
}

@end