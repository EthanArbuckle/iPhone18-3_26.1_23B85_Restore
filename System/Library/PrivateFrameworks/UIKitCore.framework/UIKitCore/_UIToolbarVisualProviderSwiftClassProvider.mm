@interface _UIToolbarVisualProviderSwiftClassProvider
+ (Class)providerClass;
- (_UIToolbarVisualProviderSwiftClassProvider)init;
@end

@implementation _UIToolbarVisualProviderSwiftClassProvider

+ (Class)providerClass
{
  type metadata accessor for ToolbarVisualProvider();

  return swift_getObjCClassFromMetadata();
}

- (_UIToolbarVisualProviderSwiftClassProvider)init
{
  v3.receiver = self;
  v3.super_class = _UIToolbarVisualProviderSwiftClassProvider;
  return [(_UIToolbarVisualProviderSwiftClassProvider *)&v3 init];
}

@end