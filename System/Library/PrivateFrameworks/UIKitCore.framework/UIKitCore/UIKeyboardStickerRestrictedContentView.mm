@interface UIKeyboardStickerRestrictedContentView
- (UIKeyboardStickerRestrictedContentView)initWithFrame:(CGRect)frame;
- (id)restrictedTextLabel:(id)label;
- (void)handleRestrictedContentTap:(id)tap;
- (void)isDisplayed:(BOOL)displayed;
- (void)layoutSubviews;
- (void)preventContentInteractions:(BOOL)interactions;
@end

@implementation UIKeyboardStickerRestrictedContentView

- (UIKeyboardStickerRestrictedContentView)initWithFrame:(CGRect)frame
{
  v47[8] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = UIKeyboardStickerRestrictedContentView;
  v3 = [(UICollectionReusableView *)&v46 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setClipsToBounds:0];
    [(UICollectionReusableView *)v4 setTranslatesAutoresizingMaskIntoConstraints:1];
    v5 = [UIView alloc];
    [(UIView *)v4 bounds];
    v6 = [(UIView *)v5 initWithFrame:?];
    restrictedContentView = v4->_restrictedContentView;
    v4->_restrictedContentView = v6;

    [(UIView *)v4->_restrictedContentView setClipsToBounds:0];
    [(UIView *)v4->_restrictedContentView setTranslatesAutoresizingMaskIntoConstraints:1];
    v8 = [UIColor colorWithRed:1.0 green:0.1 blue:0.2 alpha:0.2];
    [(UIView *)v4->_restrictedContentView setBackgroundColor:v8];

    v9 = [UIFontMetrics metricsForTextStyle:@"UICTFontTextStyleCaption2"];
    v10 = [off_1E70ECC18 systemFontOfSize:6.0 weight:*off_1E70ECD20];
    v45 = [v9 scaledFontForFont:v10];

    v11 = [(UIKeyboardStickerRestrictedContentView *)v4 restrictedTextLabel:@"INTERNAL"];
    v12 = [(UIKeyboardStickerRestrictedContentView *)v4 restrictedTextLabel:@"USE ONLY"];
    [(UIView *)v4->_restrictedContentView addSubview:v11];
    [(UIView *)v4->_restrictedContentView addSubview:v12];
    v33 = MEMORY[0x1E69977A0];
    centerXAnchor = [v11 centerXAnchor];
    centerXAnchor2 = [(UIView *)v4->_restrictedContentView centerXAnchor];
    v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
    v47[0] = v41;
    topAnchor = [v11 topAnchor];
    topAnchor2 = [(UIView *)v4->_restrictedContentView topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v47[1] = v38;
    v44 = v11;
    widthAnchor = [v11 widthAnchor];
    widthAnchor2 = [(UIView *)v4->_restrictedContentView widthAnchor];
    v35 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:0.0];
    v47[2] = v35;
    heightAnchor = [v11 heightAnchor];
    heightAnchor2 = [(UIView *)v4->_restrictedContentView heightAnchor];
    v30 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.2];
    v47[3] = v30;
    centerXAnchor3 = [v12 centerXAnchor];
    centerXAnchor4 = [(UIView *)v4->_restrictedContentView centerXAnchor];
    v27 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4 constant:0.0];
    v47[4] = v27;
    bottomAnchor = [v12 bottomAnchor];
    bottomAnchor2 = [(UIView *)v4->_restrictedContentView bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v47[5] = v13;
    v14 = v12;
    v34 = v12;
    widthAnchor3 = [v12 widthAnchor];
    widthAnchor4 = [(UIView *)v4->_restrictedContentView widthAnchor];
    v17 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 constant:0.0];
    v47[6] = v17;
    heightAnchor3 = [v14 heightAnchor];
    heightAnchor4 = [(UIView *)v4->_restrictedContentView heightAnchor];
    v20 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:0.2];
    v47[7] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:8];
    [v33 activateConstraints:v21];

    [(UIView *)v4 addSubview:v4->_restrictedContentView];
    v22 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:sel_handleRestrictedContentTap_];
    tapRecognizer = v4->_tapRecognizer;
    v4->_tapRecognizer = v22;

    [(UIGestureRecognizer *)v4->_tapRecognizer setEnabled:1];
    [(UIView *)v4->_restrictedContentView addGestureRecognizer:v4->_tapRecognizer];
  }

  return v4;
}

- (id)restrictedTextLabel:(id)label
{
  labelCopy = label;
  v4 = [UIFontMetrics metricsForTextStyle:@"UICTFontTextStyleCaption2"];
  v5 = [off_1E70ECC18 systemFontOfSize:6.0 weight:*off_1E70ECD20];
  v6 = [v4 scaledFontForFont:v5];

  v7 = [UILabel alloc];
  v8 = [(UILabel *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  labelCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ ", labelCopy];

  [(UILabel *)v8 setText:labelCopy];
  [(UILabel *)v8 setNumberOfLines:1];
  [(UILabel *)v8 setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)v8 setTextAlignment:1];
  v10 = +[UIColor systemWhiteColor];
  [(UILabel *)v8 setTextColor:v10];

  [(UIView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = +[UIColor redColor];
  [(UIView *)v8 setBackgroundColor:v11];

  return v8;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = UIKeyboardStickerRestrictedContentView;
  [(UIView *)&v4 layoutSubviews];
  restrictedContentView = self->_restrictedContentView;
  [(UIView *)self bounds];
  [(UIView *)restrictedContentView setFrame:?];
}

- (void)isDisplayed:(BOOL)displayed
{
  if (displayed)
  {

    [(UIView *)self setHidden:0];
  }

  else
  {
    [(UIView *)self setHidden:1];

    [(UIKeyboardStickerRestrictedContentView *)self preventContentInteractions:0];
  }
}

- (void)preventContentInteractions:(BOOL)interactions
{
  if (interactions && ![(UIView *)self isHidden])
  {
    [(UIView *)self setExclusiveTouch:1];
    [(UIGestureRecognizer *)self->_tapRecognizer setEnabled:1];
    superview = [(UIView *)self superview];
    [superview bringSubviewToFront:self];
  }

  else
  {
    [(UIView *)self setExclusiveTouch:0];
    [(UIGestureRecognizer *)self->_tapRecognizer setEnabled:0];
    superview = [(UIView *)self superview];
    [superview sendSubviewToBack:self];
  }
}

- (void)handleRestrictedContentTap:(id)tap
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"window";
  window = [(UIView *)self window];
  v9[1] = @"windowScene";
  v10[0] = window;
  window2 = [(UIView *)self window];
  windowScene = [window2 windowScene];
  v10[1] = windowScene;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIEmojiAndStickerShouldPresentRestrictedContentNotification" object:0 userInfo:v7];
}

@end