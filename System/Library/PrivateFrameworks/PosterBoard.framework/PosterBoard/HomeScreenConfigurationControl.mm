@interface HomeScreenConfigurationControl
- (_TtC11PosterBoard30HomeScreenConfigurationControl)initWithCoder:(id)coder;
- (_TtC11PosterBoard30HomeScreenConfigurationControl)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPreviewContentView:(id)view;
- (void)setSelected:(BOOL)selected;
@end

@implementation HomeScreenConfigurationControl

- (void)setPreviewContentView:(id)view
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_21B62AC3C(v4);
}

- (_TtC11PosterBoard30HomeScreenConfigurationControl)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_showsSymbolWhenSelected) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_maximumHorizontalTitleOutset) = 0;
  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21B62B2F8();
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = type metadata accessor for HomeScreenConfigurationControl();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isSelected = [(HomeScreenConfigurationControl *)&v9 isSelected];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(HomeScreenConfigurationControl *)&v8 setSelected:selectedCopy];
  sub_21B62B6E8(isSelected);
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_21B62BAB4(highlighted);
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_21B62BCA8(enabled);
}

- (_TtC11PosterBoard30HomeScreenConfigurationControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end