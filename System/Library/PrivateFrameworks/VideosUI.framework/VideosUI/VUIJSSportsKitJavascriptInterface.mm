@interface VUIJSSportsKitJavascriptInterface
- (JSContext)context;
- (id)checkActivityExistsFor:(id)a3;
- (void)setContext:(id)a3;
@end

@implementation VUIJSSportsKitJavascriptInterface

- (JSContext)context
{
  v2 = sub_1E3A61768();

  return v2;
}

- (void)setContext:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E3A6180C(a3);
}

- (id)checkActivityExistsFor:(id)a3
{
  v4 = sub_1E4205F14();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9.super.isa = SportsKitJavascriptInterface.checkActivityExists(for:)(v8).super.isa;

  return v9.super.isa;
}

@end