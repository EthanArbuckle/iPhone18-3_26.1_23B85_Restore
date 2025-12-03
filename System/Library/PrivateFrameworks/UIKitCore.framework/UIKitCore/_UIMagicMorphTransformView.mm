@interface _UIMagicMorphTransformView
- (BOOL)isUserInteractionEnabled;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC5UIKit26_UIMagicMorphTransformView)initWithCoder:(id)coder;
- (id)_parentTraitEnvironment;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation _UIMagicMorphTransformView

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_188D62BFC(enabled);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview);
  if (v4)
  {

    [v4 size];
  }

  else
  {
    height = fits.height;
    width = fits.width;
    v9.receiver = self;
    v9.super_class = type metadata accessor for _UIMagicMorphTransformView();
    [(UIView *)&v9 sizeThatFits:width, height];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UIMagicMorphTransformView();
  v2 = v3.receiver;
  [(UIView *)&v3 didMoveToWindow];
  sub_188D797E4();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188D70460();
}

- (id)_parentTraitEnvironment
{
  selfCopy = self;
  v3 = sub_18922BD30();

  return v3;
}

- (BOOL)isUserInteractionEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UIMagicMorphTransformView();
  return [(UIView *)&v3 isUserInteractionEnabled];
}

- (_TtC5UIKit26_UIMagicMorphTransformView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_hidesSourceView) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_matchesAlpha) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_appliesMinificationFilter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_didHostSourceView) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end