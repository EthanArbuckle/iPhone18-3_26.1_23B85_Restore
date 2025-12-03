@interface PBFHomeScreenPreviewViewBuilder
- (PBFHomeScreenPreviewViewBuilder)init;
- (id)buildView;
@end

@implementation PBFHomeScreenPreviewViewBuilder

- (PBFHomeScreenPreviewViewBuilder)init
{
  v3.receiver = self;
  v3.super_class = PBFHomeScreenPreviewViewBuilder;
  result = [(PBFHomeScreenPreviewViewBuilder *)&v3 init];
  if (result)
  {
    result->_viewScreenSizeScale = 1.0;
  }

  return result;
}

- (id)buildView
{
  [(PBFDisplayContext *)self->_displayContext pbf_frame];
  [(PBFDisplayContext *)self->_displayContext pbf_scale];
  BSFloatRoundForScale();
  v4 = v3;
  [(PBFDisplayContext *)self->_displayContext pbf_frame];
  [(PBFDisplayContext *)self->_displayContext pbf_scale];
  BSFloatRoundForScale();
  v6 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v4, v5}];
  [v6 setAutoresizingMask:18];
  selectedAppearanceType = [(PRPosterHomeScreenConfiguration *)self->_homeScreenConfiguration selectedAppearanceType];
  v8 = selectedAppearanceType;
  if (selectedAppearanceType <= 1)
  {
    if (selectedAppearanceType)
    {
      if (selectedAppearanceType != 1)
      {
        goto LABEL_16;
      }

      v9 = objc_alloc(MEMORY[0x277D75D18]);
      [v6 bounds];
      v10 = [v9 initWithFrame:?];
      solidColorAppearance = [(PRPosterHomeScreenConfiguration *)self->_homeScreenConfiguration solidColorAppearance];
      effectiveColor = [solidColorAppearance effectiveColor];
      color = [effectiveColor color];
      [v10 setBackgroundColor:color];

      goto LABEL_12;
    }

LABEL_7:
    v14 = objc_alloc(MEMORY[0x277D755E8]);
    [v6 bounds];
    v10 = [v14 initWithFrame:?];
    [v10 setAutoresizingMask:18];
    [v10 setContentMode:0];
    [v10 setImage:self->_unlockedPosterSnapshot];
    [v6 addSubview:v10];
    if (v8 == 3)
    {
      homePosterAppearance = [(PRPosterHomeScreenConfiguration *)self->_homeScreenConfiguration homePosterAppearance];
      isLegibilityBlurEnabled = [homePosterAppearance isLegibilityBlurEnabled];

      if (!isLegibilityBlurEnabled)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8)
      {
        goto LABEL_15;
      }

      lockPosterAppearance = [(PRPosterHomeScreenConfiguration *)self->_homeScreenConfiguration lockPosterAppearance];
      isLegibilityBlurEnabled2 = [lockPosterAppearance isLegibilityBlurEnabled];

      if ((isLegibilityBlurEnabled2 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    pui_homeScreenLegibilityMaterialView = [MEMORY[0x277D26718] pui_homeScreenLegibilityMaterialView];
    [pui_homeScreenLegibilityMaterialView pbf_scaleBlurRadiusByAmount:self->_viewScreenSizeScale];
    [v6 bounds];
    [pui_homeScreenLegibilityMaterialView setFrame:?];
    [pui_homeScreenLegibilityMaterialView setAutoresizingMask:18];
    [pui_homeScreenLegibilityMaterialView setGroupNameBase:@"HomeScreenPreviewView"];
    [v6 addSubview:pui_homeScreenLegibilityMaterialView];

    goto LABEL_15;
  }

  if (selectedAppearanceType != 2)
  {
    if (selectedAppearanceType != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v17 = objc_alloc(MEMORY[0x277D3EF50]);
  [v6 bounds];
  v10 = [v17 initWithFrame:?];
  solidColorAppearance = [(PRPosterHomeScreenConfiguration *)self->_homeScreenConfiguration gradientAppearance];
  effectiveColor = [solidColorAppearance gradientColors];
  [v10 setColors:effectiveColor];
LABEL_12:

  [v10 setAutoresizingMask:18];
  [v6 addSubview:v10];
LABEL_15:

LABEL_16:
  if ([(PBFHomeScreenPreviewViewBuilder *)self excludesSilhouette])
  {
    v21 = MEMORY[0x277CD9FF0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __44__PBFHomeScreenPreviewViewBuilder_buildView__block_invoke;
    v29[3] = &unk_2782C58B0;
    v29[4] = self;
    v22 = &v30;
    v30 = v6;
    [v21 bs_performAfterSynchronizedCommit:v29];
  }

  else
  {
    excludesHomeScreenDock = [(PBFHomeScreenPreviewViewBuilder *)self excludesHomeScreenDock];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFHomeScreenPreviewViewBuilder buildView]"];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __44__PBFHomeScreenPreviewViewBuilder_buildView__block_invoke_2;
    v26[3] = &unk_2782C6560;
    v28 = excludesHomeScreenDock;
    v26[4] = self;
    v22 = &v27;
    v27 = v6;
    PBFDispatchAsyncWithString(v24, QOS_CLASS_USER_INITIATED, v26);
  }

  return v6;
}

uint64_t __44__PBFHomeScreenPreviewViewBuilder_buildView__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void __44__PBFHomeScreenPreviewViewBuilder_buildView__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D66AB8]);
  v3 = [v2 silhouetteLayoutForPageAtIndex:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D66AE0]);
  }

  v6 = v5;

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__PBFHomeScreenPreviewViewBuilder_buildView__block_invoke_3;
  v10[3] = &unk_2782C7660;
  v14 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __44__PBFHomeScreenPreviewViewBuilder_buildView__block_invoke_3(uint64_t a1)
{
  v2 = [PBFSilhouetteHelpers makeHomeScreenSilhouetteViewWithLayout:*(a1 + 32) includeDock:*(a1 + 56) == 0 displayContext:*(*(a1 + 40) + 16) viewScreenSizeScale:*(*(a1 + 40) + 40)];
  [*(a1 + 48) addSubview:v2];
  v3 = MEMORY[0x277CD9FF0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PBFHomeScreenPreviewViewBuilder_buildView__block_invoke_4;
  v5[3] = &unk_2782C58B0;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v4;
  [v3 bs_performAfterSynchronizedCommit:v5];
}

uint64_t __44__PBFHomeScreenPreviewViewBuilder_buildView__block_invoke_4(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

@end