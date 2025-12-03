@interface BackgroundTextConsumer
- (id)consumeMailContentWithContext:(id)context;
- (id)consumeNewsArticleViewsWithContext:(id)context;
- (id)consumeNotesContentWithContext:(id)context;
- (id)consumeSafariContentWithContext:(id)context;
- (id)consumeThirdPartyAppContentWithContext:(id)context;
- (id)consumerName;
- (id)deleteDataDerivedFromContentMatchingRequest:(id)request;
@end

@implementation BackgroundTextConsumer

- (id)consumeMailContentWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_232264DB4(contextCopy);

  return v6;
}

- (id)consumeNewsArticleViewsWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v8 = sub_232264F08(contextCopy, v6, v7);

  return v8;
}

- (id)consumeNotesContentWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_232264F9C(contextCopy);

  return v6;
}

- (id)consumeSafariContentWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_232265034(contextCopy);

  return v6;
}

- (id)consumeThirdPartyAppContentWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v8 = sub_23226515C(contextCopy, v6, v7);

  return v8;
}

- (id)consumerName
{
  sub_2322652C8();
  v2 = sub_232401168();

  return v2;
}

- (id)deleteDataDerivedFromContentMatchingRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  v6 = sub_23224DF64(requestCopy);

  return v6;
}

@end