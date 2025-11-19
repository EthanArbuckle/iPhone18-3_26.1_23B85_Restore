@interface UIKeyboardEmojiWellView
- (CGSize)compositeImageSize;
- (UIKeyboardEmojiWellView)initWithFrame:(CGRect)a3;
- (id)fontUsingSilhouette:(unint64_t)a3 size:(double)a4;
- (void)layoutSubviews;
- (void)setActiveSelection:(BOOL)a3;
- (void)setCompositeImageRepresentation:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectionBackgroundColor:(id)a3;
- (void)setStringRepresentation:(id)a3 silhouette:(unint64_t)a4;
- (void)setUnreleasedHighlight:(BOOL)a3;
- (void)setWellContentView:(id)a3;
@end

@implementation UIKeyboardEmojiWellView

- (UIKeyboardEmojiWellView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = UIKeyboardEmojiWellView;
  v3 = [(UIView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIKeyboardEmojiWellView *)v3 setBackgroundView:v5];

    v6 = [(UIKeyboardEmojiWellView *)v3 backgroundView];
    v7 = [v6 layer];
    [v7 setMasksToBounds:1];

    v8 = [(UIKeyboardEmojiWellView *)v3 backgroundView];
    v9 = [v8 layer];
    [v9 setCornerRadius:10.0];

    v10 = [(UIKeyboardEmojiWellView *)v3 backgroundView];
    [(UIView *)v3 addSubview:v10];

    v11 = [(UIKeyboardEmojiWellView *)v3 fontUsingSilhouette:0 size:32.0];
    [(UIKeyboardEmojiWellView *)v3 setLabelFont:v11];

    [(UIKeyboardEmojiWellView *)v3 setCompositeImageSize:34.0, 34.0];
    [(UIKeyboardEmojiWellView *)v3 setSelected:0];
  }

  return v3;
}

- (void)setWellContentView:(id)a3
{
  v5 = a3;
  wellContentView = self->_wellContentView;
  if (wellContentView != v5)
  {
    v7 = v5;
    [(UIView *)wellContentView removeFromSuperview];
    objc_storeStrong(&self->_wellContentView, a3);
    [(UIView *)self addSubview:self->_wellContentView];
    v5 = v7;
  }
}

- (void)setCompositeImageRepresentation:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_compositeImageRepresentation, a3);
  v6 = [_UIKBCompositeImageView alloc];
  v7 = [(UIView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [UIImageView alloc];
        v16 = [(UIImageView *)v15 initWithImage:v14, v17];
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(_UIKBCompositeImageView *)v7 setImageViews:v8];
  [(UIKeyboardEmojiWellView *)self compositeImageSize];
  [(_UIKBCompositeImageView *)v7 setImageSize:?];
  [(UIKeyboardEmojiWellView *)self setWellContentView:v7];
}

- (void)setStringRepresentation:(id)a3 silhouette:(unint64_t)a4
{
  objc_storeStrong(&self->_stringRepresentation, a3);
  v7 = a3;
  v8 = [UIKeyboardEmojiDraggableView alloc];
  v11 = [(UIKeyboardEmojiDraggableView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = [(UIKeyboardEmojiWellView *)self labelFont];
  [v9 pointSize];
  v10 = [(UIKeyboardEmojiWellView *)self fontUsingSilhouette:a4 size:?];
  [(UIKeyboardEmojiDraggableView *)v11 setFont:v10];

  [(UIKeyboardEmojiDraggableView *)v11 setText:v7];
  [(UIKeyboardEmojiDraggableView *)v11 setDragEnabled:a4 == 0];
  [(UIKeyboardEmojiDraggableView *)v11 setDelegate:self];
  [(UIKeyboardEmojiWellView *)self setWellContentView:v11];
}

- (id)fontUsingSilhouette:(unint64_t)a3 size:(double)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v13 = *off_1E70ECCC8;
    v24[0] = *off_1E70ECCD0;
    v24[1] = v13;
    v25[0] = &unk_1EFE31AB0;
    v25[1] = &unk_1EFE31AC8;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v26 = v7;
    v11 = MEMORY[0x1E695DEC8];
    v12 = &v26;
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v10 = *off_1E70ECCC8;
    v21[0] = *off_1E70ECCD0;
    v21[1] = v10;
    v22[0] = &unk_1EFE31AB0;
    v22[1] = &unk_1EFE31AE0;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v23 = v7;
    v11 = MEMORY[0x1E695DEC8];
    v12 = &v23;
LABEL_7:
    v9 = [v11 arrayWithObjects:v12 count:1];
    goto LABEL_8;
  }

  if (a3 != 3)
  {
    goto LABEL_10;
  }

  v6 = *off_1E70ECCC8;
  v29[0] = *off_1E70ECCD0;
  v5 = v29[0];
  v29[1] = v6;
  v30[0] = &unk_1EFE31AB0;
  v30[1] = &unk_1EFE31AC8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v31[0] = v7;
  v27[0] = v5;
  v27[1] = v6;
  v28[0] = &unk_1EFE31AB0;
  v28[1] = &unk_1EFE31AE0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v31[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];

LABEL_8:
  if (v9)
  {
    v14 = *off_1E70ECCA0;
    v19[0] = *off_1E70ECC98;
    v19[1] = v14;
    v20[0] = v9;
    v20[1] = @"AppleColorEmoji";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v16 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v15];

    v17 = [off_1E70ECC18 fontWithDescriptor:v16 size:a4];

    goto LABEL_11;
  }

LABEL_10:
  v17 = [off_1E70ECC18 fontWithName:@"AppleColorEmoji" size:a4];
LABEL_11:

  return v17;
}

- (void)setUnreleasedHighlight:(BOOL)a3
{
  v41[2] = *MEMORY[0x1E69E9840];
  if (a3 && os_variant_has_internal_diagnostics())
  {
    v6 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];

    if (!v6)
    {
      v7 = [UILabel alloc];
      [(UIView *)self bounds];
      v8 = [(UILabel *)v7 initWithFrame:?];
      [(UIKeyboardEmojiWellView *)self setUnreleasedBanner:v8];

      v9 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [v9 setText:@"PRERELEASE"];

      v10 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
      v11 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [v11 setTextColor:v10];

      v12 = [off_1E70ECC18 systemFontOfSize:10.0 weight:*off_1E70ECD08];
      v13 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [v13 setFont:v12];

      v14 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [v14 setAdjustsFontSizeToFitWidth:1];

      v15 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [v15 setMinimumScaleFactor:0.5];

      v16 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [(UIView *)self addSubview:v16];

      v17 = *(MEMORY[0x1E695EFD0] + 16);
      *&v39.a = *MEMORY[0x1E695EFD0];
      *&v39.c = v17;
      *&v39.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformRotate(&v40, &v39, -0.785398163);
      v18 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      v39 = v40;
      [v18 setTransform:&v39];

      v19 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

      v38 = MEMORY[0x1E69977A0];
      v20 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      v21 = [v20 centerXAnchor];
      v22 = [(UIView *)self centerXAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      v41[0] = v23;
      v24 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      v25 = [v24 centerYAnchor];
      v26 = [(UIView *)self centerYAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      v41[1] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      [v38 activateConstraints:v28];
    }

    v29 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
    [v29 setHidden:0];

    v30 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
    [(UIView *)self bringSubviewToFront:v30];

    v31 = [(UIView *)self layer];
    [v31 setShadowOffset:{3.0, 0.0}];

    v32 = [(UIView *)self layer];
    [v32 setShadowRadius:3.0];

    v33 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.3];
    v34 = [v33 CGColor];
    v35 = [(UIView *)self layer];
    [v35 setShadowColor:v34];

    v36 = [(UIView *)self layer];
    LODWORD(v37) = 0.5;
    [v36 setShadowOpacity:v37];
  }

  else
  {
    v4 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];

    if (v4)
    {
      v5 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [v5 removeFromSuperview];

      [(UIKeyboardEmojiWellView *)self setUnreleasedBanner:0];
    }
  }
}

- (void)setSelectionBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_selectionBackgroundColor, a3);
  v5 = a3;
  v6 = [(UIKeyboardEmojiWellView *)self backgroundView];
  [v6 setBackgroundColor:v5];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  self->_selected = a3;
  v4 = [(UIKeyboardEmojiWellView *)self backgroundView];
  [v4 setHidden:!v3];
}

- (void)setActiveSelection:(BOOL)a3
{
  if (a3)
  {
    if (!self->_activeSelection)
    {
      v5 = +[UIColor systemBlueColor];
      [(UIKeyboardEmojiWellView *)self setSelectionBackgroundColor:v5];

      [(UIKeyboardEmojiWellView *)self setSelected:1];
    }
  }

  else
  {
    [(UIKeyboardEmojiWellView *)self setSelected:?];
  }

  self->_activeSelection = a3;
}

- (void)layoutSubviews
{
  v50[1] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = UIKeyboardEmojiWellView;
  [(UIView *)&v46 layoutSubviews];
  v3 = [(UIKeyboardEmojiWellView *)self wellContentView];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v3;
    v13 = [v12 text];
    v49 = *off_1E70EC918;
    v14 = v49;
    v15 = [v12 font];
    v50[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    [v13 sizeWithAttributes:v16];
    v5 = v17;
    v7 = v18;

    v19 = [v12 text];
    v47 = v14;
    v20 = [v12 font];

    v48 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    [v19 boundingRectWithSize:8 options:v21 attributes:0 context:{1.79769313e308, 1.79769313e308}];
    v9 = v22;
    v11 = v23;

LABEL_5:
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v3;
    [v19 imageSize];
    v5 = v24;
    v7 = v25;
    [v19 imageSize];
    v9 = v26;
    v11 = v27;
    goto LABEL_5;
  }

LABEL_6:
  [(UIView *)self bounds];
  v30 = v29 + (v28 - v5) * 0.5;
  v33 = v32 + (v31 - v7) * 0.5;
  [(UIView *)self bounds];
  v36 = v35 + (v34 - v9) * 0.5;
  v39 = v38 + (v37 - v11) * 0.5;
  v40 = [(UIKeyboardEmojiWellView *)self wellContentView];
  [v40 setFrame:{v30, v33, v5, v7}];

  v51.origin.x = v36;
  v51.origin.y = v39;
  v51.size.width = v9;
  v51.size.height = v11;
  v52 = CGRectInset(v51, -4.0, -4.0);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  v45 = [(UIKeyboardEmojiWellView *)self backgroundView];
  [v45 setFrame:{x, y, width, height}];
}

- (CGSize)compositeImageSize
{
  width = self->_compositeImageSize.width;
  height = self->_compositeImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end