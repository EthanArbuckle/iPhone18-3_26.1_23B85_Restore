@interface CoreJSError
- (NSDictionary)export;
- (_TtC25UnifiedMessagingKitJSCore11CoreJSError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
@end

@implementation CoreJSError

- (NSDictionary)export
{
  v2 = self;
  sub_2705658DC();

  v3 = sub_2705D7454();

  return v3;
}

- (_TtC25UnifiedMessagingKitJSCore11CoreJSError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  sub_2705D7564();
  if (a5)
  {
    sub_2705D7464();
  }

  sub_27056619C();
}

@end