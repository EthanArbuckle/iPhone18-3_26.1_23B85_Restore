@interface ToolbarVisualProvider
- (BOOL)toolbarIsSmall;
- (CGSize)defaultSizeForOrientation:(int64_t)orientation;
- (_TtC5UIKit21ToolbarVisualProvider)init;
- (_TtC5UIKit21ToolbarVisualProvider)initWithToolbar:(id)toolbar;
- (double)backgroundTransitionProgress;
- (id)traitCollectionForChild:(id)child baseTraitCollection:(id)collection;
- (void)appearance:(id)appearance categoriesChanged:(int64_t)changed;
- (void)finishInteractiveTransition;
- (void)layoutSubviews;
- (void)setBackgroundTransitionProgress:(double)progress;
- (void)startInteractiveTransition;
- (void)updateAppearance;
- (void)updateInteractiveTransitionWithProgress:(double)progress;
- (void)updateWithItems:(id)items fromOldItems:(id)oldItems animate:(BOOL)animate;
@end

@implementation ToolbarVisualProvider

- (_TtC5UIKit21ToolbarVisualProvider)initWithToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  sub_188B2FDE0(toolbar);
  return result;
}

- (BOOL)toolbarIsSmall
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_model);
  swift_getKeyPath();
  sub_188AF0C98();
  selfCopy = self;
  sub_18A4A2C08();

  swift_beginAccess();
  v5 = *(v3 + 34);

  return v5;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188C01F88();
}

- (void)appearance:(id)appearance categoriesChanged:(int64_t)changed
{
  selfCopy = self;
  sub_188B3019C();
}

- (id)traitCollectionForChild:(id)child baseTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  result = [(_UIToolbarVisualProvider *)selfCopy toolbar];
  if (result)
  {
    v8 = result;
    barStyle = [result barStyle];

    if (barStyle == 1)
    {
      v10 = sub_1890A6140(2);

      collectionCopy = v10;
    }

    return collectionCopy;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)updateWithItems:(id)items fromOldItems:(id)oldItems animate:(BOOL)animate
{
  sub_188A34624(0, &qword_1ED48E8C0);
  v7 = sub_18A4A7548();
  selfCopy = self;
  sub_188C19C30(v7, animate);
}

- (CGSize)defaultSizeForOrientation:(int64_t)orientation
{
  selfCopy = self;
  sub_188C3D53C(orientation);
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
  selfCopy = self;
  sub_18A4A2C08();

  v5 = *(v3 + 136);

  return v5;
}

- (void)setBackgroundTransitionProgress:(double)progress
{
  selfCopy = self;
  sub_1890A6630(progress);
}

- (void)updateAppearance
{
  selfCopy = self;
  sub_188B3019C();
}

- (void)startInteractiveTransition
{
  selfCopy = self;
  sub_1890A6AB0();
}

- (void)updateInteractiveTransitionWithProgress:(double)progress
{
  selfCopy = self;
  MEMORY[0x18CFE1B90](0.15, 0.85, 0.25);
  sub_18A4A49A8();
}

- (void)finishInteractiveTransition
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21ToolbarVisualProvider_isInteractive) = 0;
  selfCopy = self;
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