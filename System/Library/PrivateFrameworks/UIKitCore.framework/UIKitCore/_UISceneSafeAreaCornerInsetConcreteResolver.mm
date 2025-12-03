@interface _UISceneSafeAreaCornerInsetConcreteResolver
- (_UICornerInsets)safeAreaCornerInsetsForOrientation:(SEL)orientation;
- (_UISceneSafeAreaCornerInsetConcreteResolver)init;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation _UISceneSafeAreaCornerInsetConcreteResolver

- (_UISceneSafeAreaCornerInsetConcreteResolver)init
{
  v2 = self + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  v2[64] = 2;
  v4.receiver = self;
  v4.super_class = _UISceneSafeAreaCornerInsetConcreteResolver;
  return [(_UISceneSafeAreaCornerInsetResolver *)&v4 init];
}

- (_UICornerInsets)safeAreaCornerInsetsForOrientation:(SEL)orientation
{
  v4 = *(&self->topLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  v5 = *(&self->topLeft.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  v6 = *(&self->bottomLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  v7 = *(&self->bottomLeft.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  v8 = *(&self->bottomRight.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  v9 = *(&self->bottomRight.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  v10 = *(&self->topRight.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  v11 = *(&self->topRight.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  v12 = *(&self[1].topLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  if (*(&self[1].topLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets))
  {
    if (a4 == 3)
    {
      v13 = *(&self->topRight.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v13 = *(&self->topLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    if (a4 == 3)
    {
      v14 = *(&self->topRight.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v14 = *(&self->topLeft.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    if (a4 == 3)
    {
      v15 = *(&self->topLeft.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v15 = *(&self->bottomLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    if (a4 == 3)
    {
      v16 = *(&self->topLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v16 = *(&self->bottomLeft.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    if (a4 == 3)
    {
      v17 = *(&self->bottomLeft.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v17 = *(&self->bottomRight.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    if (a4 == 3)
    {
      v18 = *(&self->bottomLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v18 = *(&self->bottomRight.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    if (a4 == 3)
    {
      v19 = *(&self->bottomRight.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v19 = *(&self->topRight.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    if (a4 == 3)
    {
      v20 = *(&self->bottomRight.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v20 = *(&self->topRight.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    if (a4 == 4)
    {
      v13 = *(&self->bottomLeft.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
      v14 = *(&self->bottomLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
      v15 = *(&self->bottomRight.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
      v16 = *(&self->bottomRight.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
      v17 = *(&self->topRight.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
      v18 = *(&self->topRight.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
      v19 = *(&self->topLeft.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
      v20 = *(&self->topLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    if (a4 == 2)
    {
      v21 = *(&self->topLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v8 = v13;
      v9 = v14;
      v10 = v15;
      v11 = v16;
      v21 = v17;
    }

    if (a4 == 2)
    {
      v22 = *(&self->topLeft.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v22 = v18;
    }

    if (a4 == 2)
    {
      v23 = *(&self->bottomLeft.width + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v23 = v19;
    }

    if (a4 == 2)
    {
      v24 = *(&self->bottomLeft.height + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    }

    else
    {
      v24 = v20;
    }

    if (v12 == 1)
    {
      v4 = v8;
    }

    else
    {
      v4 = 0.0;
    }

    if (v12 == 1)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0.0;
    }

    if (v12 == 1)
    {
      v6 = v10;
    }

    else
    {
      v6 = 0.0;
    }

    if (v12 == 1)
    {
      v7 = v11;
    }

    else
    {
      v7 = 0.0;
    }

    if (v12 == 1)
    {
      v8 = v21;
    }

    else
    {
      v8 = 0.0;
    }

    if (v12 == 1)
    {
      v9 = v22;
    }

    else
    {
      v9 = 0.0;
    }

    if (v12 == 1)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0.0;
    }

    if (v12 == 1)
    {
      v11 = v24;
    }

    else
    {
      v11 = 0.0;
    }
  }

  retstr->topLeft.width = v4;
  retstr->topLeft.height = v5;
  retstr->bottomLeft.width = v6;
  retstr->bottomLeft.height = v7;
  retstr->bottomRight.width = v8;
  retstr->bottomRight.height = v9;
  retstr->topRight.width = v10;
  retstr->topRight.height = v11;
  return self;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _UISceneSafeAreaCornerInsetConcreteResolver.encode(withBSXPCCoder:)(coder);
  swift_unknownObjectRelease();
}

@end