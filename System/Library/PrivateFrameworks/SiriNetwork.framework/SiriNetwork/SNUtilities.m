@interface SNUtilities
+ (id)createUserAgentStringFromProductTypePrefix:(id)a3;
@end

@implementation SNUtilities

+ (id)createUserAgentStringFromProductTypePrefix:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = static SNUtilities.createUserAgentString(fromProductTypePrefix:)(v3, v5);
  v8 = v7;

  v9 = MEMORY[0x223DE2070](v6, v8);

  return v9;
}

@end