@interface _UIIntelligenceButton
- (BOOL)isHighlighted;
- (_TtC5UIKit21_UIIntelligenceButton)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)updateConfiguration;
@end

@implementation _UIIntelligenceButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UIIntelligenceButton();
  return [(UIControl *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _UIIntelligenceButton();
  v4 = v5.receiver;
  [(UIButton *)&v5 setHighlighted:v3];
  sub_18913AF64();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_18913AC18();
}

- (void)updateConfiguration
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for _UIIntelligenceButton();
  v2 = v5.receiver;
  [(UIButton *)&v5 updateConfiguration];
  v3 = *&v2[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_imagePortal];
  v4 = [v2 _imageEffectContainerView];
  [v3 setSourceView_];

  sub_18913AE28();
}

- (_TtC5UIKit21_UIIntelligenceButton)initWithCoder:(id)a3
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