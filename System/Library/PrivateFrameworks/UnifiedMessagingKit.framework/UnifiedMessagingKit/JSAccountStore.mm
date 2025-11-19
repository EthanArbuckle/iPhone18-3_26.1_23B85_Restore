@interface JSAccountStore
- (_TtC25UnifiedMessagingKitJSCore9JSAccount)activeiCloud;
- (_TtC25UnifiedMessagingKitJSCore9JSAccount)activeiTunes;
- (_TtC25UnifiedMessagingKitJSCore9JSAccount)localAccount;
- (id)activeiTunesForMediaType:(int64_t)a3;
- (id)localAccountForMediaType:(int64_t)a3;
@end

@implementation JSAccountStore

- (_TtC25UnifiedMessagingKitJSCore9JSAccount)activeiTunes
{
  v2 = self;
  sub_27057FF9C();

  return 0;
}

- (_TtC25UnifiedMessagingKitJSCore9JSAccount)activeiCloud
{
  v2 = self;
  sub_270580188();

  return 0;
}

- (_TtC25UnifiedMessagingKitJSCore9JSAccount)localAccount
{
  v2 = self;
  sub_270580388();

  return 0;
}

- (id)activeiTunesForMediaType:(int64_t)a3
{
  v3 = self;
  sub_27057FF9C();

  return 0;
}

- (id)localAccountForMediaType:(int64_t)a3
{
  v3 = self;
  sub_270580388();

  return 0;
}

@end