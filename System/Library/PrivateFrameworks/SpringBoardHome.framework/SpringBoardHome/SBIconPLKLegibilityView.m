@interface SBIconPLKLegibilityView
- (SBIconPLKLegibilityView)initWithSettings:(id)a3;
- (SBIconView)iconView;
- (void)updateIconLabelWithSettings:(id)a3 imageParameters:(id)a4;
@end

@implementation SBIconPLKLegibilityView

- (SBIconView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (SBIconPLKLegibilityView)initWithSettings:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBIconPLKLegibilityView;
  return [(PLKLegibilityView *)&v4 init];
}

- (void)updateIconLabelWithSettings:(id)a3 imageParameters:(id)a4
{
  v6 = a3;
  v14 = a4;
  v7 = [(SBIconPLKLegibilityView *)self iconView];
  v8 = [v7 labelContentWithParameters:v14];
  if (([v8 sbh_isPLKLegibilityContent] & 1) == 0)
  {
    if (SBHFeatureEnabled(0))
    {
      if (updateIconLabelWithSettings_imageParameters__onceToken != -1)
      {
        [SBIconPLKLegibilityView updateIconLabelWithSettings:imageParameters:];
      }

      v9 = [updateIconLabelWithSettings_imageParameters__fallbackIconLabelCache labelContentWithParameters:v14 legibilitySettings:v6];

      v8 = v9;
    }

    if (!v8)
    {
      v10 = [v7 labelImageWithParameters:v14];
      v11 = MEMORY[0x1E69C5420];
      v12 = [(SBHLegibilitySettings *)v6 legibilityDescriptor];
      v8 = [v11 legibilityContentForImage:v10 legibilityDescriptor:v12];
    }
  }

  [(PLKLegibilityView *)self setContent:v8];
  [(SBIconPLKLegibilityView *)self setImageParameters:v14];
  settings = self->_settings;
  self->_settings = v6;
}

uint64_t __71__SBIconPLKLegibilityView_updateIconLabelWithSettings_imageParameters___block_invoke()
{
  v0 = [SBIconLabelImageCache alloc];
  v1 = [(SBIconLabelImageCache *)v0 initWithMaxLabelSize:@"FALLBACK_CACHE" scale:*MEMORY[0x1E695F060] cacheIdentifier:*(MEMORY[0x1E695F060] + 8), 0.0];
  v2 = updateIconLabelWithSettings_imageParameters__fallbackIconLabelCache;
  updateIconLabelWithSettings_imageParameters__fallbackIconLabelCache = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end