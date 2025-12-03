@interface _UISceneSafeAreaEdgeInsetCompositeResolver
- (NSString)description;
- (UIEdgeInsets)safeAreaEdgeInsetsForOrientation:(int64_t)orientation;
- (_UISceneSafeAreaEdgeInsetCompositeResolver)init;
- (_UISceneSafeAreaEdgeInsetCompositeResolver)initWithResolvers:(id)resolvers;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation _UISceneSafeAreaEdgeInsetCompositeResolver

- (_UISceneSafeAreaEdgeInsetCompositeResolver)init
{
  *(&self->super.super.isa + OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers) = MEMORY[0x1E69E7CC0];
  v3.receiver = self;
  v3.super_class = _UISceneSafeAreaEdgeInsetCompositeResolver;
  return [(_UISceneSafeAreaEdgeInsetResolver *)&v3 init];
}

- (_UISceneSafeAreaEdgeInsetCompositeResolver)initWithResolvers:(id)resolvers
{
  type metadata accessor for _UISceneSafeAreaEdgeInsetResolver(self);
  *(&self->super.super.isa + OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers) = sub_18A4A7548();
  v5.receiver = self;
  v5.super_class = _UISceneSafeAreaEdgeInsetCompositeResolver;
  return [(_UISceneSafeAreaEdgeInsetResolver *)&v5 init];
}

- (UIEdgeInsets)safeAreaEdgeInsetsForOrientation:(int64_t)orientation
{
  selfCopy = self;
  _UISceneSafeAreaEdgeInsetCompositeResolver.safeAreaEdgeInsets(for:)(orientation);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (NSString)description
{
  selfCopy = self;
  sub_18A4A80E8();
  v3 = MEMORY[0x18CFE22D0](0xD000000000000036, 0x800000018A6AA6B0);
  v4 = *(&selfCopy->super.super.isa + OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers);
  v5 = type metadata accessor for _UISceneSafeAreaEdgeInsetResolver(v3);
  v6 = MEMORY[0x18CFE24A0](v4, v5);
  MEMORY[0x18CFE22D0](v6);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);

  v7 = sub_18A4A7258();

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  type metadata accessor for _UISceneSafeAreaEdgeInsetResolver(self);
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_18A4A7518();
  v6 = sub_18A4A7258();
  [coder encodeCollection:v5 forKey:v6];

  swift_unknownObjectRelease();
}

@end