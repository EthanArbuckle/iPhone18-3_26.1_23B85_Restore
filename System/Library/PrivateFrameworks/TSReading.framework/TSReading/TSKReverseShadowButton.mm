@interface TSKReverseShadowButton
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation TSKReverseShadowButton

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(TSKReverseShadowButton *)self titleLabel];
  v6 = -1.0;
  if (!v3)
  {
    v6 = 1.0;
  }

  [v5 setShadowOffset:{0.0, v6}];
  [(TSKReverseShadowButton *)self setNeedsDisplay];
  v7.receiver = self;
  v7.super_class = TSKReverseShadowButton;
  [(TSKReverseShadowButton *)&v7 setSelected:v3];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [-[TSKReverseShadowButton titleLabel](self "titleLabel")];
  }

  [(TSKReverseShadowButton *)self setNeedsDisplay];
  v5.receiver = self;
  v5.super_class = TSKReverseShadowButton;
  [(TSKReverseShadowButton *)&v5 setHighlighted:v3];
}

@end