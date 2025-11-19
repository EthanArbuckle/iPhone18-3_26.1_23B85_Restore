@interface ToolbarVisualProvider
- (BOOL)toolbarIsSmall;
- (CGSize)defaultSizeForOrientation:(int64_t)a3;
- (_TtC5UIKit21ToolbarVisualProvider)init;
- (_TtC5UIKit21ToolbarVisualProvider)initWithToolbar:(id)a3;
- (double)backgroundTransitionProgress;
- (id)traitCollectionForChild:(id)a3 baseTraitCollection:(id)a4;
- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4;
- (void)finishInteractiveTransition;
- (void)layoutSubviews;
- (void)setBackgroundTransitionProgress:(double)a3;
- (void)startInteractiveTransition;
- (void)updateAppearance;
- (void)updateInteractiveTransitionWithProgress:(double)a3;
- (void)updateWithItems:(id)a3 fromOldItems:(id)a4 animate:(BOOL)a5;
@end

@implementation ToolbarVisualProvider

- (_TtC5UIKit21ToolbarVisualProvider)initWithToolbar:(id)a3
{
  v4 = a3;
  sub_188B2FDE0(a3);
  return result;
}

- (BOOL)toolbarIsSmall
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  swift_getKeyPath();
  sub_188AF0C98();
  v4 = self;
  sub_18A4A2C08();

  swift_beginAccess();
  v5 = *(v3 + 34);

  return v5;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188C01F88();
}

- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4
{
  v4 = self;
  sub_188B3019C();
}

- (id)traitCollectionForChild:(id)a3 baseTraitCollection:(id)a4
{
  v5 = a4;
  v6 = self;
  result = [(_UIToolbarVisualProvider *)v6 toolbar];
  if (result)
  {
    v8 = result;
    v9 = [result barStyle];

    if (v9 == 1)
    {
      v10 = sub_1890A6140(2);

      v5 = v10;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)updateWithItems:(id)a3 fromOldItems:(id)a4 animate:(BOOL)a5
{
  sub_188A34624(0, &qword_1ED48E8C0);
  v7 = sub_18A4A7548();
  v8 = self;
  sub_188C19C30(v7, a5);
}

- (CGSize)defaultSizeForOrientation:(int64_t)a3
{
  v4 = self;
  sub_188C3D53C(a3);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)backgroundTransitionProgress
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  swift_getKeyPath();
  sub_188AF0C98();
  v4 = self;
  sub_18A4A2C08();

  v5 = *(v3 + 136);

  return v5;
}

- (void)setBackgroundTransitionProgress:(double)a3
{
  v4 = self;
  sub_1890A6630(a3);
}

- (void)updateAppearance
{
  v2 = self;
  sub_188B3019C();
}

- (void)startInteractiveTransition
{
  v2 = self;
  sub_1890A6AB0();
}

- (void)updateInteractiveTransitionWithProgress:(double)a3
{
  v3 = self;
  MEMORY[0x18CFE1B90](0.15, 0.85, 0.25);
  sub_18A4A49A8();
}

- (void)finishInteractiveTransition
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_isInteractive) = 0;
  v2 = self;
  sub_18A4A6C78();
  sub_18A4A49A8();
}

- (_TtC5UIKit21ToolbarVisualProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end