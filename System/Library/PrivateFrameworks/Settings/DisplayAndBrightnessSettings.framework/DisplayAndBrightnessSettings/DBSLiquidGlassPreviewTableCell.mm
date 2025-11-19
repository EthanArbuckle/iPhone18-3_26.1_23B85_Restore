@interface DBSLiquidGlassPreviewTableCell
+ (id)previewImageForGlassLegibilitySetting:(int64_t)a3;
+ (id)previewImageNameForGlassLegibilitySetting:(int64_t)a3;
- (DBSLiquidGlassPreviewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setGlassLegibilitySetting:(int64_t)a3;
@end

@implementation DBSLiquidGlassPreviewTableCell

- (DBSLiquidGlassPreviewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v35[3] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = DBSLiquidGlassPreviewTableCell;
  v4 = [(PSTableCell *)&v33 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_opt_class() previewImageForGlassLegibilitySetting:0];
    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
    [(UIImageView *)v6 setContentMode:2];
    [(UIImageView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 sf_isiPad];

    if (v8)
    {
      [(UIImageView *)v6 _setContinuousCornerRadius:30.0];
      [(UIImageView *)v6 setClipsToBounds:1];
    }

    [(UIImageView *)v6 setClipsToBounds:1];
    v9 = [(DBSLiquidGlassPreviewTableCell *)v4 contentView];
    [v9 addSubview:v6];
    v10 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v9 setBackgroundColor:v10];

    if (v8)
    {
      v11 = [v9 centerXAnchor];
      v12 = [(UIImageView *)v6 centerXAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v35[0] = v13;
      v14 = [v9 centerYAnchor];
      v31 = [(UIImageView *)v6 centerYAnchor];
      v32 = v14;
      v30 = [v14 constraintEqualToAnchor:?];
      v35[1] = v30;
      v15 = [v9 heightAnchor];
      [v5 size];
      v17 = [v15 constraintGreaterThanOrEqualToConstant:v16];
      v35[2] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
    }

    else
    {
      v28 = [v9 topAnchor];
      v27 = [(UIImageView *)v6 topAnchor];
      v26 = [v28 constraintEqualToAnchor:v27];
      v34[0] = v26;
      v19 = [v9 bottomAnchor];
      v31 = [(UIImageView *)v6 bottomAnchor];
      v32 = v19;
      v30 = [v19 constraintEqualToAnchor:?];
      v34[1] = v30;
      v15 = [v9 leftAnchor];
      v17 = [(UIImageView *)v6 leftAnchor];
      [v15 constraintEqualToAnchor:v17];
      v20 = v29 = v5;
      v34[2] = v20;
      v21 = [v9 rightAnchor];
      v22 = [(UIImageView *)v6 rightAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      v34[3] = v23;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];

      v13 = v26;
      v12 = v27;

      v11 = v28;
      v5 = v29;
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v18];
    previewImageView = v4->_previewImageView;
    v4->_previewImageView = v6;
  }

  return v4;
}

+ (id)previewImageNameForGlassLegibilitySetting:(int64_t)a3
{
  v3 = @"LiquidGlassLegibilityTinted";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"LiquidGlassLegibilityRegular";
  }
}

+ (id)previewImageForGlassLegibilitySetting:(int64_t)a3
{
  v4 = [a1 previewImageNameForGlassLegibilitySetting:a3];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v6 = [MEMORY[0x277D755B8] imageNamed:v4 inBundle:v5];

  return v6;
}

- (void)setGlassLegibilitySetting:(int64_t)a3
{
  if (self->_glassLegibilitySetting != a3)
  {
    v14 = v3;
    v15 = v4;
    self->_glassLegibilitySetting = a3;
    v6 = [objc_opt_class() previewImageForGlassLegibilitySetting:a3];
    v7 = [(DBSLiquidGlassPreviewTableCell *)self previewImageView];
    v8 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__DBSLiquidGlassPreviewTableCell_setGlassLegibilitySetting___block_invoke;
    v11[3] = &unk_2784594B8;
    v12 = v7;
    v13 = v6;
    v9 = v6;
    v10 = v7;
    [v8 transitionWithView:v10 duration:5242880 options:v11 animations:0 completion:0.2];
  }
}

@end