@interface _UISceneSafeAreaEdgeInsetConcreteResolver
- (NSString)description;
- (UIEdgeInsets)safeAreaEdgeInsetsForOrientation:(int64_t)orientation;
- (_UISceneSafeAreaEdgeInsetConcreteResolver)init;
- (id)initWithSafeAreaEdgeInsetsForPortrait:(double)portrait landscapeLeft:(double)left portaitUpsideDown:(double)down landscapeRight:(double)right;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation _UISceneSafeAreaEdgeInsetConcreteResolver

- (_UISceneSafeAreaEdgeInsetConcreteResolver)init
{
  sub_189114F04(v10);
  v3 = self + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets;
  v4 = v10[7];
  *(v3 + 6) = v10[6];
  *(v3 + 7) = v4;
  v3[128] = v11;
  v5 = v10[3];
  *(v3 + 2) = v10[2];
  *(v3 + 3) = v5;
  v6 = v10[5];
  *(v3 + 4) = v10[4];
  *(v3 + 5) = v6;
  v7 = v10[1];
  *v3 = v10[0];
  *(v3 + 1) = v7;
  v9.receiver = self;
  v9.super_class = _UISceneSafeAreaEdgeInsetConcreteResolver;
  return [(_UISceneSafeAreaEdgeInsetResolver *)&v9 init];
}

- (id)initWithSafeAreaEdgeInsetsForPortrait:(double)portrait landscapeLeft:(double)left portaitUpsideDown:(double)down landscapeRight:(double)right
{
  *&v28 = a2;
  *(&v28 + 1) = portrait;
  *&v29 = left;
  *(&v29 + 1) = down;
  *&v30 = right;
  *(&v30 + 1) = a7;
  *&v31 = a8;
  *(&v31 + 1) = a9;
  v32 = a17;
  v33 = a18;
  v34 = a19;
  v35 = a20;
  sub_189114ECC(&v28);
  v21 = &self[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];
  v22 = v35;
  *(v21 + 6) = v34;
  *(v21 + 7) = v22;
  v21[128] = v36;
  v23 = v31;
  *(v21 + 2) = v30;
  *(v21 + 3) = v23;
  v24 = v33;
  *(v21 + 4) = v32;
  *(v21 + 5) = v24;
  v25 = v29;
  *v21 = v28;
  *(v21 + 1) = v25;
  v27.receiver = self;
  v27.super_class = _UISceneSafeAreaEdgeInsetConcreteResolver;
  return objc_msgSendSuper2(&v27, sel_init);
}

- (UIEdgeInsets)safeAreaEdgeInsetsForOrientation:(int64_t)orientation
{
  *&v3 = _UISceneSafeAreaEdgeInsetConcreteResolver.safeAreaEdgeInsets(for:)(orientation).u64[0];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (NSString)description
{
  selfCopy = self;
  _UISceneSafeAreaEdgeInsetConcreteResolver.description.getter();

  v3 = sub_18A4A7258();

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _UISceneSafeAreaEdgeInsetConcreteResolver.encode(withBSXPCCoder:)(coder);
  swift_unknownObjectRelease();
}

@end