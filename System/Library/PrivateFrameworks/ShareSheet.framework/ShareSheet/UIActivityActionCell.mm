@interface UIActivityActionCell
- (UIActivityActionCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIActivityActionCell

- (UIActivityActionCell)initWithFrame:(CGRect)frame
{
  v60[1] = *MEMORY[0x1E69E9840];
  v59.receiver = self;
  v59.super_class = UIActivityActionCell;
  v3 = [(UIActivityActionCell *)&v59 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  [(UIActivityActionCell *)v3 setDisabled:0];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {

    if ((_ShareSheetSolariumEnabled() & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  v8 = _ShareSheetSolariumEnabled();
  if (userInterfaceIdiom == 1)
  {
    if (!v8)
    {
LABEL_5:
      v9 = [MEMORY[0x1E69DC730] effectWithStyle:18];
      v10 = [MEMORY[0x1E69DD248] _effectForBlurEffect:v9 vibrancyStyle:112];
      v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v10];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      contentView = [v11 contentView];
      [contentView setBackgroundColor:whiteColor];

      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v11 setClipsToBounds:1];
      [(UIActivityActionCell *)v4 setEffectView:v11];

      v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [v14 setBackgroundColor:blackColor];

      traitCollection = [(UIActivityActionCell *)v4 traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
      v18 = 0.27;
      if (userInterfaceStyle != 2)
      {
        v18 = 0.0;
      }

      [v14 setAlpha:v18];

      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v14 setClipsToBounds:1];
      [(UIActivityActionCell *)v4 setFillView:v14];
LABEL_12:

      goto LABEL_13;
    }

LABEL_9:
    v19 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v20 = [MEMORY[0x1E69DD248] effectForBlurEffect:v19 style:6];
    v14 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v20];
    if (v20)
    {
      v60[0] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
      [v14 setBackgroundEffects:v21];
    }

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setClipsToBounds:1];
    [(UIActivityActionCell *)v4 setEffectView:v14];
    goto LABEL_12;
  }

LABEL_13:
  contentView2 = [(UIActivityActionCell *)v4 contentView];
  [contentView2 setClipsToBounds:1];
  array = [MEMORY[0x1E695DF70] array];
  if (v4->_fillView)
  {
    fillView = [(UIActivityActionCell *)v4 fillView];
    [contentView2 addSubview:fillView];

    fillView2 = [(UIActivityActionCell *)v4 fillView];
    widthAnchor = [fillView2 widthAnchor];
    widthAnchor2 = [contentView2 widthAnchor];
    v28 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [array addObject:v28];

    fillView3 = [(UIActivityActionCell *)v4 fillView];
    heightAnchor = [fillView3 heightAnchor];
    heightAnchor2 = [contentView2 heightAnchor];
    v32 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [array addObject:v32];

    fillView4 = [(UIActivityActionCell *)v4 fillView];
    centerXAnchor = [fillView4 centerXAnchor];
    centerXAnchor2 = [contentView2 centerXAnchor];
    v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v36];

    fillView5 = [(UIActivityActionCell *)v4 fillView];
    centerYAnchor = [fillView5 centerYAnchor];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v40];
  }

  if (v4->_effectView)
  {
    effectView = [(UIActivityActionCell *)v4 effectView];
    [contentView2 addSubview:effectView];

    effectView2 = [(UIActivityActionCell *)v4 effectView];
    widthAnchor3 = [effectView2 widthAnchor];
    widthAnchor4 = [contentView2 widthAnchor];
    v45 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    [array addObject:v45];

    effectView3 = [(UIActivityActionCell *)v4 effectView];
    heightAnchor3 = [effectView3 heightAnchor];
    heightAnchor4 = [contentView2 heightAnchor];
    v49 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    [array addObject:v49];

    effectView4 = [(UIActivityActionCell *)v4 effectView];
    centerXAnchor3 = [effectView4 centerXAnchor];
    centerXAnchor4 = [contentView2 centerXAnchor];
    v53 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [array addObject:v53];

    effectView5 = [(UIActivityActionCell *)v4 effectView];
    centerYAnchor3 = [effectView5 centerYAnchor];
    centerYAnchor4 = [contentView2 centerYAnchor];
    v57 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [array addObject:v57];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:array];

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIActivityActionCell;
  [(UIActivityActionCell *)&v3 prepareForReuse];
  [(UIActivityActionCell *)self setDisabled:0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v13.receiver = self;
  v13.super_class = UIActivityActionCell;
  [(UIActivityActionCell *)&v13 setHighlighted:?];
  if (highlightedCopy)
  {
    tableCellDefaultSelectionTintColor = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
    v6 = [tableCellDefaultSelectionTintColor colorWithAlphaComponent:0.6];
    fillView = [(UIActivityActionCell *)self fillView];
    [fillView setBackgroundColor:v6];

    fillView2 = [(UIActivityActionCell *)self fillView];
    [fillView2 setAlpha:1.0];
  }

  else
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    fillView3 = [(UIActivityActionCell *)self fillView];
    [fillView3 setBackgroundColor:blackColor];

    fillView2 = [(UIActivityActionCell *)self traitCollection];
    if ([fillView2 userInterfaceStyle] == 2)
    {
      v11 = 0.27;
    }

    else
    {
      v11 = 0.0;
    }

    fillView4 = [(UIActivityActionCell *)self fillView];
    [fillView4 setAlpha:v11];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = UIActivityActionCell;
  [(UIActivityActionCell *)&v7 traitCollectionDidChange:change];
  traitCollection = [(UIActivityActionCell *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    v5 = 0.27;
  }

  else
  {
    v5 = 0.0;
  }

  fillView = [(UIActivityActionCell *)self fillView];
  [fillView setAlpha:v5];
}

@end