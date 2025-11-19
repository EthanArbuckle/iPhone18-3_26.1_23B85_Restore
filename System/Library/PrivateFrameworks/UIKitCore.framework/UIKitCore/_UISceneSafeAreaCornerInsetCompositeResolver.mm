@interface _UISceneSafeAreaCornerInsetCompositeResolver
- (_UICornerInsets)safeAreaCornerInsetsForOrientation:(SEL)a3;
- (_UISceneSafeAreaCornerInsetCompositeResolver)init;
- (_UISceneSafeAreaCornerInsetCompositeResolver)initWithResolvers:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation _UISceneSafeAreaCornerInsetCompositeResolver

- (_UISceneSafeAreaCornerInsetCompositeResolver)init
{
  *(&self->super.super.isa + OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers) = MEMORY[0x1E69E7CC0];
  v3.receiver = self;
  v3.super_class = _UISceneSafeAreaCornerInsetCompositeResolver;
  return [(_UISceneSafeAreaCornerInsetResolver *)&v3 init];
}

- (_UISceneSafeAreaCornerInsetCompositeResolver)initWithResolvers:(id)a3
{
  type metadata accessor for _UISceneSafeAreaCornerInsetResolver(self);
  *(&self->super.super.isa + OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers) = sub_18A4A7548();
  v5.receiver = self;
  v5.super_class = _UISceneSafeAreaCornerInsetCompositeResolver;
  return [(_UISceneSafeAreaCornerInsetResolver *)&v5 init];
}

- (_UICornerInsets)safeAreaCornerInsetsForOrientation:(SEL)a3
{
  v6 = self;
  _UISceneSafeAreaCornerInsetCompositeResolver.safeAreaCornerInsets(for:)(a4, v11);

  v8 = v11[1];
  v9 = v11[2];
  v10 = v11[3];
  retstr->topLeft = v11[0];
  retstr->bottomLeft = v8;
  retstr->bottomRight = v9;
  retstr->topRight = v10;
  return result;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  type metadata accessor for _UISceneSafeAreaCornerInsetResolver(self);
  swift_unknownObjectRetain();
  v7 = self;
  v5 = sub_18A4A7518();
  v6 = sub_18A4A7258();
  [a3 encodeCollection:v5 forKey:v6];

  swift_unknownObjectRelease();
}

@end