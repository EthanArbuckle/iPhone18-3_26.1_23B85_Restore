@interface WGColorHighlightButton
- (CGSize)intrinsicContentSize;
- (void)_updateRealBackgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation WGColorHighlightButton

- (CGSize)intrinsicContentSize
{
  v14.receiver = self;
  v14.super_class = WGColorHighlightButton;
  [(WGColorHighlightButton *)&v14 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(WGColorHighlightButton *)self titleLabel];
  [v7 intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  if (v4 >= v9)
  {
    v12 = v4;
  }

  else
  {
    v12 = v9;
  }

  if (v6 >= v11)
  {
    v13 = v6;
  }

  else
  {
    v13 = v11;
  }

  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = WGColorHighlightButton;
  [(WGColorHighlightButton *)&v6 layoutSubviews];
  v3 = [(WGColorHighlightButton *)self titleLabel];
  v4 = [(WGColorHighlightButton *)self titleLabel];
  [v4 frame];
  [v3 setPreferredMaxLayoutWidth:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(WGColorHighlightButton *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = WGColorHighlightButton;
    [(WGColorHighlightButton *)&v5 setHighlighted:v3];
    if (v3)
    {
      [(WGColorHighlightButton *)self _updateRealBackgroundColor];
    }

    else
    {
      BSRunLoopPerformAfterCACommit();
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  [(WGColorHighlightButton *)self setSavedBackgroundColor:v4];
  v5 = v4;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v6 = v5;
  if ([v5 getHue:&v10 saturation:&v9 brightness:&v8 alpha:&v7])
  {
    v6 = [MEMORY[0x277D75348] colorWithHue:v10 saturation:v9 brightness:v8 + -0.2 alpha:v7];
  }

  [(WGColorHighlightButton *)self setHighlightedBackgroundColor:v6];
  [(WGColorHighlightButton *)self _updateRealBackgroundColor];
}

- (void)_updateRealBackgroundColor
{
  if ([(WGColorHighlightButton *)self isHighlighted])
  {
    v3 = [(WGColorHighlightButton *)self highlightedBackgroundColor];
    v5.receiver = self;
    v5.super_class = WGColorHighlightButton;
    [(WGColorHighlightButton *)&v5 setBackgroundColor:v3];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __52__WGColorHighlightButton__updateRealBackgroundColor__block_invoke;
    v4[3] = &unk_279ED0948;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:6 delay:v4 options:0 animations:0.3 completion:0.0];
  }
}

void __52__WGColorHighlightButton__updateRealBackgroundColor__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 savedBackgroundColor];
  v3.receiver = v1;
  v3.super_class = WGColorHighlightButton;
  objc_msgSendSuper2(&v3, sel_setBackgroundColor_, v2);
}

@end