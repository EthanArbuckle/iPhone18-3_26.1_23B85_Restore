@interface TLKStackView
- (void)addArrangedSubview:(id)subview;
- (void)setAlignment:(int64_t)alignment;
- (void)setAxis:(int64_t)axis;
- (void)setFlipsToVerticalAxisForAccessibilityContentSizes:(BOOL)sizes;
@end

@implementation TLKStackView

- (void)addArrangedSubview:(id)subview
{
  v3.receiver = self;
  v3.super_class = TLKStackView;
  [(TLKStackView *)&v3 addArrangedSubview:subview];
}

- (void)setFlipsToVerticalAxisForAccessibilityContentSizes:(BOOL)sizes
{
  if (sizes && +[TLKLayoutUtilities isSuperLargeAccessibilitySize]&& ![(NUIContainerStackView *)self axis])
  {
    v5 = 1;
    [(TLKStackView *)self setAxis:1];
    [(TLKStackView *)self setAlignment:1];
  }

  else
  {
    v5 = 0;
  }

  [(TLKStackView *)self setIsForcedToBeVertical:v5];
  self->_flipsToVerticalAxisForAccessibilityContentSizes = sizes;
}

- (void)setAxis:(int64_t)axis
{
  if ([(TLKStackView *)self flipsToVerticalAxisForAccessibilityContentSizes]&& +[TLKLayoutUtilities isSuperLargeAccessibilitySize])
  {
    [(NUIContainerStackView *)&v6 setAxis:1, v5.receiver, v5.super_class, self, TLKStackView];
  }

  else
  {
    [(NUIContainerStackView *)&v5 setAxis:axis, self, TLKStackView, v6.receiver, v6.super_class];
  }
}

- (void)setAlignment:(int64_t)alignment
{
  if (![(TLKStackView *)self isForcedToBeVertical])
  {
    v5.receiver = self;
    v5.super_class = TLKStackView;
    [(NUIContainerStackView *)&v5 setAlignment:alignment];
  }
}

@end