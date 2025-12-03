@interface BFFTitleView
- (BFFTitleView)initWithFrame:(CGRect)frame;
- (CGRect)contentBounds;
- (void)layoutSubviews;
- (void)setTitle:(id)title;
@end

@implementation BFFTitleView

- (BFFTitleView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = BFFTitleView;
  v3 = [(BFFTitleView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(BFFTitleView *)v3 setTitleLabel:v4];

    v5 = +[BFFStyle sharedStyle];
    titleLabel = [(BFFTitleView *)v3 titleLabel];
    [v5 applyThemeToTitleLabel:titleLabel];

    titleLabel2 = [(BFFTitleView *)v3 titleLabel];
    [(BFFTitleView *)v3 addSubview:titleLabel2];

    [(BFFTitleView *)v3 setContentInsetAdjustmentBehavior:2];
  }

  return v3;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(BFFTitleView *)self titleLabel];
  [titleLabel setText:titleCopy];

  [(BFFTitleView *)self setNeedsLayout];
}

- (CGRect)contentBounds
{
  v3 = +[BFFStyle sharedStyle];
  superview = [(BFFTitleView *)self superview];
  superview2 = [(BFFTitleView *)self superview];
  [superview2 bounds];
  [v3 horizontalInsetsForContainingInView:superview width:v6];

  [(BFFTitleView *)self frame];
  [(BFFTitleView *)self safeAreaInsets];
  UIRectInset();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(BFFTitleView *)self safeAreaInsets];
  v16 = v15;
  [(BFFTitleView *)self safeAreaInsets];
  v18 = v14 - (v16 + v17);
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.size.height = v18;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = BFFTitleView;
  [(BFFTitleView *)&v21 layoutSubviews];
  [(BFFTitleView *)self contentBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  titleLabel = [(BFFTitleView *)self titleLabel];
  [titleLabel sizeThatFits:{v8, v10}];
  v13 = v12;

  v14 = +[BFFStyle sharedStyle];
  [v14 headerTitleBaselineOffsetForView:self iconSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v16 = v6 + v15;
  titleLabel2 = [(BFFTitleView *)self titleLabel];
  [titleLabel2 _firstBaselineOffsetFromTop];
  v19 = v16 - v18;

  titleLabel3 = [(BFFTitleView *)self titleLabel];
  [titleLabel3 setFrame:{v4, v19, v8, v13}];
}

@end