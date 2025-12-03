@interface FilterView
- (_TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView)initWithCoder:(id)coder;
- (_TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView)initWithFrame:(CGRect)frame;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
@end

@implementation FilterView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FilterView();
  v2 = v4.receiver;
  [(FilterView *)&v4 layoutSubviews];
  [v2 bounds];
  v3 = CGRectGetHeight(v5) * 0.5;
  [*&v2[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_backgroundVisualEffectView] _setCornerRadius_];
  [*&v2[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_button] _setCornerRadius_];
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  if ([tapCopy state] == 3 && (v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_onShowDetails)) != 0)
  {
    v6 = *(&selfCopy->super.super._responderFlags + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_onShowDetails);

    v5(v7);

    sub_1A3C784D4(v5, v6);
  }

  else
  {
  }
}

- (_TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_onToggle);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_onShowDetails);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_targetFilterState) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_isFilterActive) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_dynamicConstraints) = MEMORY[0x1E69E7CC0];
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (_TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end