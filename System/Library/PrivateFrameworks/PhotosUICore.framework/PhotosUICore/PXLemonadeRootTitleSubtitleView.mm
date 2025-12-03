@interface PXLemonadeRootTitleSubtitleView
- (CGSize)intrinsicContentSize;
- (PXLemonadeRootTitleSubtitleView)initWithCoder:(id)coder;
- (PXLemonadeRootTitleSubtitleView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)handleSubtitleLabelTapGesture;
- (void)updateConstraints;
@end

@implementation PXLemonadeRootTitleSubtitleView

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PXLemonadeRootTitleSubtitleView *)&v3 didMoveToSuperview];
  [v2 setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  selfCopy = self;
  LemonadeRootTitleSubtitleView.updateConstraints()();
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR___PXLemonadeRootTitleSubtitleView_titleLabel) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (PXLemonadeRootTitleSubtitleView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleWindowConstraint) = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)handleSubtitleLabelTapGesture
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction);
  if (v2)
  {
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction);
    selfCopy = self;
    v5 = sub_1A3D607F0(v2);
    v2(v5);

    sub_1A3C784D4(v2, v3);
  }
}

- (PXLemonadeRootTitleSubtitleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end