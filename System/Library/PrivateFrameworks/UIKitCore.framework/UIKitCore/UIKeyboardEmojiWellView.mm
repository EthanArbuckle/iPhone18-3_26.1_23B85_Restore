@interface UIKeyboardEmojiWellView
- (CGSize)compositeImageSize;
- (UIKeyboardEmojiWellView)initWithFrame:(CGRect)frame;
- (id)fontUsingSilhouette:(unint64_t)silhouette size:(double)size;
- (void)layoutSubviews;
- (void)setActiveSelection:(BOOL)selection;
- (void)setCompositeImageRepresentation:(id)representation;
- (void)setSelected:(BOOL)selected;
- (void)setSelectionBackgroundColor:(id)color;
- (void)setStringRepresentation:(id)representation silhouette:(unint64_t)silhouette;
- (void)setUnreleasedHighlight:(BOOL)highlight;
- (void)setWellContentView:(id)view;
@end

@implementation UIKeyboardEmojiWellView

- (UIKeyboardEmojiWellView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = UIKeyboardEmojiWellView;
  v3 = [(UIView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIKeyboardEmojiWellView *)v3 setBackgroundView:v5];

    backgroundView = [(UIKeyboardEmojiWellView *)v3 backgroundView];
    layer = [backgroundView layer];
    [layer setMasksToBounds:1];

    backgroundView2 = [(UIKeyboardEmojiWellView *)v3 backgroundView];
    layer2 = [backgroundView2 layer];
    [layer2 setCornerRadius:10.0];

    backgroundView3 = [(UIKeyboardEmojiWellView *)v3 backgroundView];
    [(UIView *)v3 addSubview:backgroundView3];

    v11 = [(UIKeyboardEmojiWellView *)v3 fontUsingSilhouette:0 size:32.0];
    [(UIKeyboardEmojiWellView *)v3 setLabelFont:v11];

    [(UIKeyboardEmojiWellView *)v3 setCompositeImageSize:34.0, 34.0];
    [(UIKeyboardEmojiWellView *)v3 setSelected:0];
  }

  return v3;
}

- (void)setWellContentView:(id)view
{
  viewCopy = view;
  wellContentView = self->_wellContentView;
  if (wellContentView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)wellContentView removeFromSuperview];
    objc_storeStrong(&self->_wellContentView, view);
    [(UIView *)self addSubview:self->_wellContentView];
    viewCopy = v7;
  }
}

- (void)setCompositeImageRepresentation:(id)representation
{
  v22 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  objc_storeStrong(&self->_compositeImageRepresentation, representation);
  v6 = [_UIKBCompositeImageView alloc];
  v7 = [(UIView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = representationCopy;
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
        [array addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(_UIKBCompositeImageView *)v7 setImageViews:array];
  [(UIKeyboardEmojiWellView *)self compositeImageSize];
  [(_UIKBCompositeImageView *)v7 setImageSize:?];
  [(UIKeyboardEmojiWellView *)self setWellContentView:v7];
}

- (void)setStringRepresentation:(id)representation silhouette:(unint64_t)silhouette
{
  objc_storeStrong(&self->_stringRepresentation, representation);
  representationCopy = representation;
  v8 = [UIKeyboardEmojiDraggableView alloc];
  v11 = [(UIKeyboardEmojiDraggableView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  labelFont = [(UIKeyboardEmojiWellView *)self labelFont];
  [labelFont pointSize];
  v10 = [(UIKeyboardEmojiWellView *)self fontUsingSilhouette:silhouette size:?];
  [(UIKeyboardEmojiDraggableView *)v11 setFont:v10];

  [(UIKeyboardEmojiDraggableView *)v11 setText:representationCopy];
  [(UIKeyboardEmojiDraggableView *)v11 setDragEnabled:silhouette == 0];
  [(UIKeyboardEmojiDraggableView *)v11 setDelegate:self];
  [(UIKeyboardEmojiWellView *)self setWellContentView:v11];
}

- (id)fontUsingSilhouette:(unint64_t)silhouette size:(double)size
{
  v31[2] = *MEMORY[0x1E69E9840];
  if (silhouette == 1)
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

  if (silhouette == 2)
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

  if (silhouette != 3)
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

    v17 = [off_1E70ECC18 fontWithDescriptor:v16 size:size];

    goto LABEL_11;
  }

LABEL_10:
  v17 = [off_1E70ECC18 fontWithName:@"AppleColorEmoji" size:size];
LABEL_11:

  return v17;
}

- (void)setUnreleasedHighlight:(BOOL)highlight
{
  v41[2] = *MEMORY[0x1E69E9840];
  if (highlight && os_variant_has_internal_diagnostics())
  {
    unreleasedBanner = [(UIKeyboardEmojiWellView *)self unreleasedBanner];

    if (!unreleasedBanner)
    {
      v7 = [UILabel alloc];
      [(UIView *)self bounds];
      v8 = [(UILabel *)v7 initWithFrame:?];
      [(UIKeyboardEmojiWellView *)self setUnreleasedBanner:v8];

      unreleasedBanner2 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [unreleasedBanner2 setText:@"PRERELEASE"];

      v10 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
      unreleasedBanner3 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [unreleasedBanner3 setTextColor:v10];

      v12 = [off_1E70ECC18 systemFontOfSize:10.0 weight:*off_1E70ECD08];
      unreleasedBanner4 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [unreleasedBanner4 setFont:v12];

      unreleasedBanner5 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [unreleasedBanner5 setAdjustsFontSizeToFitWidth:1];

      unreleasedBanner6 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [unreleasedBanner6 setMinimumScaleFactor:0.5];

      unreleasedBanner7 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [(UIView *)self addSubview:unreleasedBanner7];

      v17 = *(MEMORY[0x1E695EFD0] + 16);
      *&v39.a = *MEMORY[0x1E695EFD0];
      *&v39.c = v17;
      *&v39.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformRotate(&v40, &v39, -0.785398163);
      unreleasedBanner8 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      v39 = v40;
      [unreleasedBanner8 setTransform:&v39];

      unreleasedBanner9 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [unreleasedBanner9 setTranslatesAutoresizingMaskIntoConstraints:0];

      v38 = MEMORY[0x1E69977A0];
      unreleasedBanner10 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      centerXAnchor = [unreleasedBanner10 centerXAnchor];
      centerXAnchor2 = [(UIView *)self centerXAnchor];
      v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v41[0] = v23;
      unreleasedBanner11 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      centerYAnchor = [unreleasedBanner11 centerYAnchor];
      centerYAnchor2 = [(UIView *)self centerYAnchor];
      v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v41[1] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      [v38 activateConstraints:v28];
    }

    unreleasedBanner12 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
    [unreleasedBanner12 setHidden:0];

    unreleasedBanner13 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
    [(UIView *)self bringSubviewToFront:unreleasedBanner13];

    layer = [(UIView *)self layer];
    [layer setShadowOffset:{3.0, 0.0}];

    layer2 = [(UIView *)self layer];
    [layer2 setShadowRadius:3.0];

    v33 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.3];
    cGColor = [v33 CGColor];
    layer3 = [(UIView *)self layer];
    [layer3 setShadowColor:cGColor];

    layer4 = [(UIView *)self layer];
    LODWORD(v37) = 0.5;
    [layer4 setShadowOpacity:v37];
  }

  else
  {
    unreleasedBanner14 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];

    if (unreleasedBanner14)
    {
      unreleasedBanner15 = [(UIKeyboardEmojiWellView *)self unreleasedBanner];
      [unreleasedBanner15 removeFromSuperview];

      [(UIKeyboardEmojiWellView *)self setUnreleasedBanner:0];
    }
  }
}

- (void)setSelectionBackgroundColor:(id)color
{
  objc_storeStrong(&self->_selectionBackgroundColor, color);
  colorCopy = color;
  backgroundView = [(UIKeyboardEmojiWellView *)self backgroundView];
  [backgroundView setBackgroundColor:colorCopy];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  self->_selected = selected;
  backgroundView = [(UIKeyboardEmojiWellView *)self backgroundView];
  [backgroundView setHidden:!selectedCopy];
}

- (void)setActiveSelection:(BOOL)selection
{
  if (selection)
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

  self->_activeSelection = selection;
}

- (void)layoutSubviews
{
  v50[1] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = UIKeyboardEmojiWellView;
  [(UIView *)&v46 layoutSubviews];
  wellContentView = [(UIKeyboardEmojiWellView *)self wellContentView];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = wellContentView;
    text = [v12 text];
    v49 = *off_1E70EC918;
    v14 = v49;
    font = [v12 font];
    v50[0] = font;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    [text sizeWithAttributes:v16];
    v5 = v17;
    v7 = v18;

    text2 = [v12 text];
    v47 = v14;
    font2 = [v12 font];

    v48 = font2;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    [text2 boundingRectWithSize:8 options:v21 attributes:0 context:{1.79769313e308, 1.79769313e308}];
    v9 = v22;
    v11 = v23;

LABEL_5:
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text2 = wellContentView;
    [text2 imageSize];
    v5 = v24;
    v7 = v25;
    [text2 imageSize];
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
  wellContentView2 = [(UIKeyboardEmojiWellView *)self wellContentView];
  [wellContentView2 setFrame:{v30, v33, v5, v7}];

  v51.origin.x = v36;
  v51.origin.y = v39;
  v51.size.width = v9;
  v51.size.height = v11;
  v52 = CGRectInset(v51, -4.0, -4.0);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  backgroundView = [(UIKeyboardEmojiWellView *)self backgroundView];
  [backgroundView setFrame:{x, y, width, height}];
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