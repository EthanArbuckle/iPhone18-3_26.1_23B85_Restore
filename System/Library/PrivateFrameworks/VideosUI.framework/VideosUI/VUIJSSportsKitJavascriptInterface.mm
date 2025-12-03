@interface VUIJSSportsKitJavascriptInterface
- (JSContext)context;
- (id)checkActivityExistsFor:(id)for;
- (void)setContext:(id)context;
@end

@implementation VUIJSSportsKitJavascriptInterface

- (JSContext)context
{
  v2 = sub_1E3A61768();

  return v2;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1E3A6180C(context);
}

- (id)checkActivityExistsFor:(id)for
{
  v4 = sub_1E4205F14();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9.super.isa = SportsKitJavascriptInterface.checkActivityExists(for:)(v8).super.isa;

  return v9.super.isa;
}

@end