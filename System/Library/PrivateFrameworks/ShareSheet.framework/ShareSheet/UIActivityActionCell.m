@interface UIActivityActionCell
- (UIActivityActionCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UIActivityActionCell

- (UIActivityActionCell)initWithFrame:(CGRect)a3
{
  v60[1] = *MEMORY[0x1E69E9840];
  v59.receiver = self;
  v59.super_class = UIActivityActionCell;
  v3 = [(UIActivityActionCell *)&v59 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  [(UIActivityActionCell *)v3 setDisabled:0];
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  if (![v5 userInterfaceIdiom])
  {

    if ((_ShareSheetSolariumEnabled() & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = _ShareSheetSolariumEnabled();
  if (v7 == 1)
  {
    if (!v8)
    {
LABEL_5:
      v9 = [MEMORY[0x1E69DC730] effectWithStyle:18];
      v10 = [MEMORY[0x1E69DD248] _effectForBlurEffect:v9 vibrancyStyle:112];
      v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v10];
      v12 = [MEMORY[0x1E69DC888] whiteColor];
      v13 = [v11 contentView];
      [v13 setBackgroundColor:v12];

      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v11 setClipsToBounds:1];
      [(UIActivityActionCell *)v4 setEffectView:v11];

      v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v15 = [MEMORY[0x1E69DC888] blackColor];
      [v14 setBackgroundColor:v15];

      v16 = [(UIActivityActionCell *)v4 traitCollection];
      v17 = [v16 userInterfaceStyle];
      v18 = 0.27;
      if (v17 != 2)
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
  v22 = [(UIActivityActionCell *)v4 contentView];
  [v22 setClipsToBounds:1];
  v23 = [MEMORY[0x1E695DF70] array];
  if (v4->_fillView)
  {
    v24 = [(UIActivityActionCell *)v4 fillView];
    [v22 addSubview:v24];

    v25 = [(UIActivityActionCell *)v4 fillView];
    v26 = [v25 widthAnchor];
    v27 = [v22 widthAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v23 addObject:v28];

    v29 = [(UIActivityActionCell *)v4 fillView];
    v30 = [v29 heightAnchor];
    v31 = [v22 heightAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v23 addObject:v32];

    v33 = [(UIActivityActionCell *)v4 fillView];
    v34 = [v33 centerXAnchor];
    v35 = [v22 centerXAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    [v23 addObject:v36];

    v37 = [(UIActivityActionCell *)v4 fillView];
    v38 = [v37 centerYAnchor];
    v39 = [v22 centerYAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [v23 addObject:v40];
  }

  if (v4->_effectView)
  {
    v41 = [(UIActivityActionCell *)v4 effectView];
    [v22 addSubview:v41];

    v42 = [(UIActivityActionCell *)v4 effectView];
    v43 = [v42 widthAnchor];
    v44 = [v22 widthAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [v23 addObject:v45];

    v46 = [(UIActivityActionCell *)v4 effectView];
    v47 = [v46 heightAnchor];
    v48 = [v22 heightAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [v23 addObject:v49];

    v50 = [(UIActivityActionCell *)v4 effectView];
    v51 = [v50 centerXAnchor];
    v52 = [v22 centerXAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    [v23 addObject:v53];

    v54 = [(UIActivityActionCell *)v4 effectView];
    v55 = [v54 centerYAnchor];
    v56 = [v22 centerYAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    [v23 addObject:v57];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v23];

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIActivityActionCell;
  [(UIActivityActionCell *)&v3 prepareForReuse];
  [(UIActivityActionCell *)self setDisabled:0];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = UIActivityActionCell;
  [(UIActivityActionCell *)&v13 setHighlighted:?];
  if (v3)
  {
    v5 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
    v6 = [v5 colorWithAlphaComponent:0.6];
    v7 = [(UIActivityActionCell *)self fillView];
    [v7 setBackgroundColor:v6];

    v8 = [(UIActivityActionCell *)self fillView];
    [v8 setAlpha:1.0];
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] blackColor];
    v10 = [(UIActivityActionCell *)self fillView];
    [v10 setBackgroundColor:v9];

    v8 = [(UIActivityActionCell *)self traitCollection];
    if ([v8 userInterfaceStyle] == 2)
    {
      v11 = 0.27;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = [(UIActivityActionCell *)self fillView];
    [v12 setAlpha:v11];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIActivityActionCell;
  [(UIActivityActionCell *)&v7 traitCollectionDidChange:a3];
  v4 = [(UIActivityActionCell *)self traitCollection];
  if ([v4 userInterfaceStyle] == 2)
  {
    v5 = 0.27;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(UIActivityActionCell *)self fillView];
  [v6 setAlpha:v5];
}

@end