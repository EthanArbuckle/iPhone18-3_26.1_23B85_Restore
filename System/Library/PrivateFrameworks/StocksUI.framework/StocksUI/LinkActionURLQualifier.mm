@interface LinkActionURLQualifier
- (BOOL)allowCopyingOfURL:(id)a3;
- (_TtC8StocksUI22LinkActionURLQualifier)init;
@end

@implementation LinkActionURLQualifier

- (BOOL)allowCopyingOfURL:(id)a3
{
  v3 = sub_220884E9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884E4C();
  v8 = sub_220884E3C();
  v9 = [v8 fc:0 isHardPaywallNewsArticleURL:?];

  (*(v4 + 8))(v7, v3);
  return v9 ^ 1;
}

- (_TtC8StocksUI22LinkActionURLQualifier)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(LinkActionURLQualifier *)&v3 init];
}

@end