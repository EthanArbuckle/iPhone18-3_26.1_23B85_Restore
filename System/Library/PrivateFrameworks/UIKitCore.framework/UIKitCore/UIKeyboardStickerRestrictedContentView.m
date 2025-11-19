@interface UIKeyboardStickerRestrictedContentView
- (UIKeyboardStickerRestrictedContentView)initWithFrame:(CGRect)a3;
- (id)restrictedTextLabel:(id)a3;
- (void)handleRestrictedContentTap:(id)a3;
- (void)isDisplayed:(BOOL)a3;
- (void)layoutSubviews;
- (void)preventContentInteractions:(BOOL)a3;
@end

@implementation UIKeyboardStickerRestrictedContentView

- (UIKeyboardStickerRestrictedContentView)initWithFrame:(CGRect)a3
{
  v47[8] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = UIKeyboardStickerRestrictedContentView;
  v3 = [(UICollectionReusableView *)&v46 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v43 = [v11 centerXAnchor];
    v42 = [(UIView *)v4->_restrictedContentView centerXAnchor];
    v41 = [v43 constraintEqualToAnchor:v42 constant:0.0];
    v47[0] = v41;
    v40 = [v11 topAnchor];
    v39 = [(UIView *)v4->_restrictedContentView topAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:0.0];
    v47[1] = v38;
    v44 = v11;
    v37 = [v11 widthAnchor];
    v36 = [(UIView *)v4->_restrictedContentView widthAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:0.0];
    v47[2] = v35;
    v32 = [v11 heightAnchor];
    v31 = [(UIView *)v4->_restrictedContentView heightAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 multiplier:0.2];
    v47[3] = v30;
    v29 = [v12 centerXAnchor];
    v28 = [(UIView *)v4->_restrictedContentView centerXAnchor];
    v27 = [v29 constraintEqualToAnchor:v28 constant:0.0];
    v47[4] = v27;
    v26 = [v12 bottomAnchor];
    v25 = [(UIView *)v4->_restrictedContentView bottomAnchor];
    v13 = [v26 constraintEqualToAnchor:v25 constant:0.0];
    v47[5] = v13;
    v14 = v12;
    v34 = v12;
    v15 = [v12 widthAnchor];
    v16 = [(UIView *)v4->_restrictedContentView widthAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];
    v47[6] = v17;
    v18 = [v14 heightAnchor];
    v19 = [(UIView *)v4->_restrictedContentView heightAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 multiplier:0.2];
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

- (id)restrictedTextLabel:(id)a3
{
  v3 = a3;
  v4 = [UIFontMetrics metricsForTextStyle:@"UICTFontTextStyleCaption2"];
  v5 = [off_1E70ECC18 systemFontOfSize:6.0 weight:*off_1E70ECD20];
  v6 = [v4 scaledFontForFont:v5];

  v7 = [UILabel alloc];
  v8 = [(UILabel *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ ", v3];

  [(UILabel *)v8 setText:v9];
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

- (void)isDisplayed:(BOOL)a3
{
  if (a3)
  {

    [(UIView *)self setHidden:0];
  }

  else
  {
    [(UIView *)self setHidden:1];

    [(UIKeyboardStickerRestrictedContentView *)self preventContentInteractions:0];
  }
}

- (void)preventContentInteractions:(BOOL)a3
{
  if (a3 && ![(UIView *)self isHidden])
  {
    [(UIView *)self setExclusiveTouch:1];
    [(UIGestureRecognizer *)self->_tapRecognizer setEnabled:1];
    v4 = [(UIView *)self superview];
    [v4 bringSubviewToFront:self];
  }

  else
  {
    [(UIView *)self setExclusiveTouch:0];
    [(UIGestureRecognizer *)self->_tapRecognizer setEnabled:0];
    v4 = [(UIView *)self superview];
    [v4 sendSubviewToBack:self];
  }
}

- (void)handleRestrictedContentTap:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"window";
  v4 = [(UIView *)self window];
  v9[1] = @"windowScene";
  v10[0] = v4;
  v5 = [(UIView *)self window];
  v6 = [v5 windowScene];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"UIEmojiAndStickerShouldPresentRestrictedContentNotification" object:0 userInfo:v7];
}

@end