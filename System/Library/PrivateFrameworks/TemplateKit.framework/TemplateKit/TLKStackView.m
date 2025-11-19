@interface TLKStackView
- (void)addArrangedSubview:(id)a3;
- (void)setAlignment:(int64_t)a3;
- (void)setAxis:(int64_t)a3;
- (void)setFlipsToVerticalAxisForAccessibilityContentSizes:(BOOL)a3;
@end

@implementation TLKStackView

- (void)addArrangedSubview:(id)a3
{
  v3.receiver = self;
  v3.super_class = TLKStackView;
  [(TLKStackView *)&v3 addArrangedSubview:a3];
}

- (void)setFlipsToVerticalAxisForAccessibilityContentSizes:(BOOL)a3
{
  if (a3 && +[TLKLayoutUtilities isSuperLargeAccessibilitySize]&& ![(NUIContainerStackView *)self axis])
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
  self->_flipsToVerticalAxisForAccessibilityContentSizes = a3;
}

- (void)setAxis:(int64_t)a3
{
  if ([(TLKStackView *)self flipsToVerticalAxisForAccessibilityContentSizes]&& +[TLKLayoutUtilities isSuperLargeAccessibilitySize])
  {
    [(NUIContainerStackView *)&v6 setAxis:1, v5.receiver, v5.super_class, self, TLKStackView];
  }

  else
  {
    [(NUIContainerStackView *)&v5 setAxis:a3, self, TLKStackView, v6.receiver, v6.super_class];
  }
}

- (void)setAlignment:(int64_t)a3
{
  if (![(TLKStackView *)self isForcedToBeVertical])
  {
    v5.receiver = self;
    v5.super_class = TLKStackView;
    [(NUIContainerStackView *)&v5 setAlignment:a3];
  }
}

@end