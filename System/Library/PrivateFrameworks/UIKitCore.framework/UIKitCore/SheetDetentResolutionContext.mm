@interface SheetDetentResolutionContext
- (BOOL)_isEdgeAttached;
- (BOOL)_isInverted;
- (CGRect)_containerBounds;
- (CGRect)_effectiveKeyboardFrame;
- (CGRect)_fullHeightPresentedViewFrame;
- (UIEdgeInsets)_containerSafeAreaInsets;
- (UIView)_containerView;
- (_TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext)init;
@end

@implementation SheetDetentResolutionContext

- (UIView)_containerView
{
  v3 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
    selfCopy = self;
    v7 = *AGGraphGetValue();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CGRect)_containerBounds
{
  v3 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  swift_unownedRetainStrong();
  if (v4)
  {
    type metadata accessor for CGRect(0);
    selfCopy = self;
    Value = AGGraphGetValue();
    v11 = *Value;
    v12 = Value[1];
    v13 = Value[2];
    v14 = Value[3];

    v5 = v11;
    v6 = v12;
    v7 = v13;
    v8 = v14;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (UIEdgeInsets)_containerSafeAreaInsets
{
  v3 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  swift_unownedRetainStrong();
  if (v4)
  {
    type metadata accessor for UIEdgeInsets(0);
    selfCopy = self;
    Value = AGGraphGetValue();
    v11 = *Value;
    v12 = Value[1];
    v13 = Value[2];
    v14 = Value[3];

    v5 = v11;
    v6 = v12;
    v7 = v13;
    v8 = v14;
  }

  else
  {
    __break(1u);
  }

  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (BOOL)_isEdgeAttached
{
  v3 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    selfCopy = self;
    v7 = *AGGraphGetValue();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)_isInverted
{
  v3 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    selfCopy = self;
    v7 = *AGGraphGetValue();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CGRect)_effectiveKeyboardFrame
{
  v3 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  swift_unownedRetainStrong();
  if (v4)
  {
    type metadata accessor for CGRect(0);
    selfCopy = self;
    Value = AGGraphGetValue();
    v11 = *Value;
    v12 = Value[1];
    v13 = Value[2];
    v14 = Value[3];

    v5 = v11;
    v6 = v12;
    v7 = v13;
    v8 = v14;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_fullHeightPresentedViewFrame
{
  v3 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  swift_unownedRetainStrong();
  if (v4)
  {
    type metadata accessor for CGRect(0);
    selfCopy = self;
    Value = AGGraphGetValue();
    v11 = *Value;
    v12 = Value[1];
    v13 = Value[2];
    v14 = Value[3];

    v5 = v11;
    v6 = v12;
    v7 = v13;
    v8 = v14;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (_TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SheetDetentResolutionContext *)&v5 init];
}

@end