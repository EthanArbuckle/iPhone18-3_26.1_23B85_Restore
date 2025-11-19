@interface BackgroundTextConsumer
- (id)consumeMailContentWithContext:(id)a3;
- (id)consumeNewsArticleViewsWithContext:(id)a3;
- (id)consumeNotesContentWithContext:(id)a3;
- (id)consumeSafariContentWithContext:(id)a3;
- (id)consumeThirdPartyAppContentWithContext:(id)a3;
- (id)consumerName;
- (id)deleteDataDerivedFromContentMatchingRequest:(id)a3;
@end

@implementation BackgroundTextConsumer

- (id)consumeMailContentWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_232264DB4(v4);

  return v6;
}

- (id)consumeNewsArticleViewsWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v8 = sub_232264F08(v4, v6, v7);

  return v8;
}

- (id)consumeNotesContentWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_232264F9C(v4);

  return v6;
}

- (id)consumeSafariContentWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_232265034(v4);

  return v6;
}

- (id)consumeThirdPartyAppContentWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v8 = sub_23226515C(v4, v6, v7);

  return v8;
}

- (id)consumerName
{
  sub_2322652C8();
  v2 = sub_232401168();

  return v2;
}

- (id)deleteDataDerivedFromContentMatchingRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_23224DF64(v4);

  return v6;
}

@end