@interface VUIJSSportsJavascriptInterface
- (JSContext)context;
- (NSString)storefrontId;
- (id)isSportsFeatureEnabledWithLeagueId:(id)id featureName:(id)name;
- (void)setContext:(id)context;
@end

@implementation VUIJSSportsJavascriptInterface

- (JSContext)context
{
  v2 = sub_1E3F67344();

  return v2;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1E3F673E8(context);
}

- (NSString)storefrontId
{
  selfCopy = self;
  sub_1E3F6759C();

  v3 = sub_1E4205ED4();

  return v3;
}

- (id)isSportsFeatureEnabledWithLeagueId:(id)id featureName:(id)name
{
  v5 = sub_1E4205F14();
  v7 = v6;
  v8 = sub_1E4205F14();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v14.super.isa = SportsJavascriptInterface.isSportsFeatureEnabled(leagueId:featureName:)(v12, v13).super.isa;

  return v14.super.isa;
}

@end