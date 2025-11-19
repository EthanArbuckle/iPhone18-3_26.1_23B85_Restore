@interface _UISceneSafeAreaEdgeInsetResolver
- (UIEdgeInsets)safeAreaEdgeInsetsForOrientation:(int64_t)a3;
- (_UISceneSafeAreaEdgeInsetResolver)init;
- (_UISceneSafeAreaEdgeInsetResolver)initWithBSXPCCoder:(id)a3;
@end

@implementation _UISceneSafeAreaEdgeInsetResolver

- (_UISceneSafeAreaEdgeInsetResolver)init
{
  v3.receiver = self;
  v3.super_class = _UISceneSafeAreaEdgeInsetResolver;
  return [(_UISceneSafeAreaEdgeInsetResolver *)&v3 init];
}

- (_UISceneSafeAreaEdgeInsetResolver)initWithBSXPCCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (UIEdgeInsets)safeAreaEdgeInsetsForOrientation:(int64_t)a3
{
  sub_18A4A8398();
  __break(1u);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end