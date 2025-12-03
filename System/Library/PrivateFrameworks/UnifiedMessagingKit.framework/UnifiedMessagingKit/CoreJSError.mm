@interface CoreJSError
- (NSDictionary)export;
- (_TtC25UnifiedMessagingKitJSCore11CoreJSError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
@end

@implementation CoreJSError

- (NSDictionary)export
{
  selfCopy = self;
  sub_2705658DC();

  v3 = sub_2705D7454();

  return v3;
}

- (_TtC25UnifiedMessagingKitJSCore11CoreJSError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  sub_2705D7564();
  if (info)
  {
    sub_2705D7464();
  }

  sub_27056619C();
}

@end