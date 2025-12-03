@interface _UIIntelligenceButton
- (BOOL)isHighlighted;
- (_TtC5UIKit21_UIIntelligenceButton)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)updateConfiguration;
@end

@implementation _UIIntelligenceButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UIIntelligenceButton();
  return [(UIControl *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _UIIntelligenceButton();
  v4 = v5.receiver;
  [(UIButton *)&v5 setHighlighted:highlightedCopy];
  sub_18913AF64();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_18913AC18();
}

- (void)updateConfiguration
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for _UIIntelligenceButton();
  v2 = v5.receiver;
  [(UIButton *)&v5 updateConfiguration];
  v3 = *&v2[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_imagePortal];
  _imageEffectContainerView = [v2 _imageEffectContainerView];
  [v3 setSourceView_];

  sub_18913AE28();
}

- (_TtC5UIKit21_UIIntelligenceButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_isExpanded) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_scaleAnimator) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_opacityAnimator) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_rotationAnimator) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end