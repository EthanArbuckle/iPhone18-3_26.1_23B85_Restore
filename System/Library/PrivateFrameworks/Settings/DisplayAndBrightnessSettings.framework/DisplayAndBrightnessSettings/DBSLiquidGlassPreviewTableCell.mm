@interface DBSLiquidGlassPreviewTableCell
+ (id)previewImageForGlassLegibilitySetting:(int64_t)setting;
+ (id)previewImageNameForGlassLegibilitySetting:(int64_t)setting;
- (DBSLiquidGlassPreviewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setGlassLegibilitySetting:(int64_t)setting;
@end

@implementation DBSLiquidGlassPreviewTableCell

- (DBSLiquidGlassPreviewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v35[3] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = DBSLiquidGlassPreviewTableCell;
  v4 = [(PSTableCell *)&v33 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_opt_class() previewImageForGlassLegibilitySetting:0];
    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
    [(UIImageView *)v6 setContentMode:2];
    [(UIImageView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isiPad = [currentDevice sf_isiPad];

    if (sf_isiPad)
    {
      [(UIImageView *)v6 _setContinuousCornerRadius:30.0];
      [(UIImageView *)v6 setClipsToBounds:1];
    }

    [(UIImageView *)v6 setClipsToBounds:1];
    contentView = [(DBSLiquidGlassPreviewTableCell *)v4 contentView];
    [contentView addSubview:v6];
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [contentView setBackgroundColor:systemGroupedBackgroundColor];

    if (sf_isiPad)
    {
      centerXAnchor = [contentView centerXAnchor];
      centerXAnchor2 = [(UIImageView *)v6 centerXAnchor];
      v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v35[0] = v13;
      centerYAnchor = [contentView centerYAnchor];
      centerYAnchor2 = [(UIImageView *)v6 centerYAnchor];
      v32 = centerYAnchor;
      v30 = [centerYAnchor constraintEqualToAnchor:?];
      v35[1] = v30;
      heightAnchor = [contentView heightAnchor];
      [v5 size];
      leftAnchor = [heightAnchor constraintGreaterThanOrEqualToConstant:v16];
      v35[2] = leftAnchor;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
    }

    else
    {
      topAnchor = [contentView topAnchor];
      topAnchor2 = [(UIImageView *)v6 topAnchor];
      v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v34[0] = v26;
      bottomAnchor = [contentView bottomAnchor];
      centerYAnchor2 = [(UIImageView *)v6 bottomAnchor];
      v32 = bottomAnchor;
      v30 = [bottomAnchor constraintEqualToAnchor:?];
      v34[1] = v30;
      heightAnchor = [contentView leftAnchor];
      leftAnchor = [(UIImageView *)v6 leftAnchor];
      [heightAnchor constraintEqualToAnchor:leftAnchor];
      v20 = v29 = v5;
      v34[2] = v20;
      rightAnchor = [contentView rightAnchor];
      rightAnchor2 = [(UIImageView *)v6 rightAnchor];
      v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v34[3] = v23;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];

      v13 = v26;
      centerXAnchor2 = topAnchor2;

      centerXAnchor = topAnchor;
      v5 = v29;
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v18];
    previewImageView = v4->_previewImageView;
    v4->_previewImageView = v6;
  }

  return v4;
}

+ (id)previewImageNameForGlassLegibilitySetting:(int64_t)setting
{
  v3 = @"LiquidGlassLegibilityTinted";
  if (setting != 1)
  {
    v3 = 0;
  }

  if (setting)
  {
    return v3;
  }

  else
  {
    return @"LiquidGlassLegibilityRegular";
  }
}

+ (id)previewImageForGlassLegibilitySetting:(int64_t)setting
{
  v4 = [self previewImageNameForGlassLegibilitySetting:setting];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v6 = [MEMORY[0x277D755B8] imageNamed:v4 inBundle:v5];

  return v6;
}

- (void)setGlassLegibilitySetting:(int64_t)setting
{
  if (self->_glassLegibilitySetting != setting)
  {
    v14 = v3;
    v15 = v4;
    self->_glassLegibilitySetting = setting;
    v6 = [objc_opt_class() previewImageForGlassLegibilitySetting:setting];
    previewImageView = [(DBSLiquidGlassPreviewTableCell *)self previewImageView];
    v8 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__DBSLiquidGlassPreviewTableCell_setGlassLegibilitySetting___block_invoke;
    v11[3] = &unk_2784594B8;
    v12 = previewImageView;
    v13 = v6;
    v9 = v6;
    v10 = previewImageView;
    [v8 transitionWithView:v10 duration:5242880 options:v11 animations:0 completion:0.2];
  }
}

@end