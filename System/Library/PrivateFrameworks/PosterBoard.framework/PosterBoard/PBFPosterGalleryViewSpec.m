@interface PBFPosterGalleryViewSpec
+ (id)specForDisplayContext:(id)a3;
+ (id)specForScreen:(id)a3;
+ (id)specForScreenIdentity:(id)a3;
- (CGRect)referenceBounds;
- (CGSize)gallerySizeForPadOrientation:(int64_t)a3;
- (CGSize)landscapeGallerySize;
- (CGSize)portraitGallerySize;
- (CGSize)posterContentSize;
- (CGSize)posterContentSizeForOrientation:(int64_t)a3;
- (CGSize)posterEditingConfirmationContentSize;
- (CGSize)posterHeroContentSize;
- (PBFPosterGalleryViewSpec)initWithReferenceBounds:(CGRect)a3 deviceClass:(int64_t)a4 displayCornerRadius:(double)a5 scale:(double)a6;
- (double)heroSpacingForOrientation:(int64_t)a3;
@end

@implementation PBFPosterGalleryViewSpec

+ (id)specForScreen:(id)a3
{
  v4 = [a3 displayIdentity];
  v5 = [a1 specForScreenIdentity:v4];

  return v5;
}

+ (id)specForDisplayContext:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 connectedScenes];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __50__PBFPosterGalleryViewSpec_specForDisplayContext___block_invoke;
  v29[3] = &unk_2782C9DA0;
  v7 = v4;
  v30 = v7;
  v8 = [v6 bs_firstObjectPassingTest:v29];

  v9 = [v8 _FBSScene];
  v10 = [v9 settings];
  v11 = [v10 displayIdentity];

  if (v11 || ([MEMORY[0x277D75128] sharedApplication], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "openSessions"), v13 = objc_claimAutoreleasedReturnValue(), v24 = MEMORY[0x277D85DD0], v25 = 3221225472, v26 = __50__PBFPosterGalleryViewSpec_specForDisplayContext___block_invoke_2, v27 = &unk_2782C9DC8, v14 = v7, v28 = v14, objc_msgSend(v13, "bs_firstObjectPassingTest:", &v24), v15 = objc_claimAutoreleasedReturnValue(), v13, v12, objc_msgSend(v15, "scene", v24, v25, v26, v27), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "_FBSScene"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "settings"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "displayIdentity"), v11 = objc_claimAutoreleasedReturnValue(), v18, v17, v16, v15, v28, v11))
  {
    v19 = [MEMORY[0x277D759A0] _screenWithFBSDisplayIdentity:v11];
LABEL_4:
    v20 = v19;
    goto LABEL_5;
  }

  v11 = +[PBFGenericDisplayContext mainScreen];
  if ([v11 geometryIsEqualTo:v14])
  {
    v19 = [MEMORY[0x277D759A0] mainScreen];
    goto LABEL_4;
  }

  v20 = 0;
LABEL_5:

  if (v20)
  {
    v21 = [a1 specForScreen:v20];
  }

  else
  {
    v22 = PBFLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [(PBFPosterGalleryViewSpec *)v7 specForDisplayContext:v22];
    }

    v21 = 0;
  }

  return v21;
}

uint64_t __50__PBFPosterGalleryViewSpec_specForDisplayContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _FBSScene];
  v4 = [v3 settings];
  v5 = [v4 displayIdentity];

  v6 = [PBFGenericDisplayContext displayContextForDisplayIdentifier:v5];
  v7 = [v6 geometryIsEqualTo:*(a1 + 32)];

  return v7;
}

uint64_t __50__PBFPosterGalleryViewSpec_specForDisplayContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 scene];
  v4 = [v3 _FBSScene];
  v5 = [v4 settings];
  v6 = [v5 displayIdentity];

  v7 = [PBFGenericDisplayContext displayContextForDisplayIdentifier:v6];
  v8 = [v7 geometryIsEqualTo:*(a1 + 32)];

  return v8;
}

+ (id)specForScreenIdentity:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = [MEMORY[0x277D0AD38] pui_sharedDisplayMonitor];
    v3 = [v4 mainIdentity];
  }

  if (specForScreenIdentity__onceToken != -1)
  {
    +[PBFPosterGalleryViewSpec specForScreenIdentity:];
  }

  v5 = specForScreenIdentity__specPerDisplayIdentity;
  objc_sync_enter(v5);
  v6 = [specForScreenIdentity__specPerDisplayIdentity objectForKey:v3];
  if (!v6)
  {
    v7 = [MEMORY[0x277D0AD38] pui_sharedDisplayMonitor];
    v8 = [v7 configurationForIdentity:v3];

    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v8 pointScale];
    v18 = v17;
    v19 = [MEMORY[0x277D759A0] _screenWithFBSDisplayIdentity:v3];
    v20 = [v19 traitCollection];
    v21 = PBFDeviceClassFromUserInterfaceIdiom([v20 userInterfaceIdiom]);
    v22 = [PBFPosterGalleryViewSpec alloc];
    [v20 displayCornerRadius];
    v6 = [(PBFPosterGalleryViewSpec *)v22 initWithReferenceBounds:v21 deviceClass:v10 displayCornerRadius:v12 scale:v14, v16, v23, v18];
    [specForScreenIdentity__specPerDisplayIdentity setObject:v6 forKey:v3];
  }

  objc_sync_exit(v5);

  return v6;
}

void __50__PBFPosterGalleryViewSpec_specForScreenIdentity___block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = specForScreenIdentity__specPerDisplayIdentity;
  specForScreenIdentity__specPerDisplayIdentity = v0;
}

- (PBFPosterGalleryViewSpec)initWithReferenceBounds:(CGRect)a3 deviceClass:(int64_t)a4 displayCornerRadius:(double)a5 scale:(double)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v61.receiver = self;
  v61.super_class = PBFPosterGalleryViewSpec;
  v13 = [(PBFPosterGalleryViewSpec *)&v61 init];
  v14 = v13;
  if (v13)
  {
    v13->_referenceScale = a6;
    v13->_referenceBounds.origin.x = x;
    v13->_referenceBounds.origin.y = y;
    v13->_referenceBounds.size.width = width;
    v13->_referenceBounds.size.height = height;
    v13->_deviceClass = a4;
    v15 = PUIFeatureEnabled();
    v16 = 20.0;
    if (width > 375.0)
    {
      v16 = 24.0;
    }

    if (((a4 == 1) & v15) != 0)
    {
      v16 = 100.0;
    }

    v14->_sectionHorizontalMargin = v16;
    *&v14->_sectionVerticalMargin = xmmword_21B6D7940;
    v14->_groupSpacing = 16.0;
    if (PBFPosterGalleryMaximumNumberOfItemsPerRow_onceToken[0] != -1)
    {
      [PBFPosterGalleryViewSpec initWithReferenceBounds:deviceClass:displayCornerRadius:scale:];
    }

    v14->_maximumNumberOfColumnsForRow = *&PBFPosterGalleryMaximumNumberOfItemsPerRow_maxNumberOfPosters;
    v17 = PUIFeatureEnabled();
    if (a4 != 1 || v17)
    {
      UIRoundToScale();
      v18 = v19;
    }

    else
    {
      v18 = 122.0;
    }

    UIRoundToScale();
    v21 = v20;
    v14->_posterContentSize.width = v18;
    v14->_posterContentSize.height = v20;
    v14->_posterHeroContentSize.width = PBFPosterHeroContentSizeForBounds(x, y, width);
    v14->_posterHeroContentSize.height = v22;
    v14->_posterEditingConfirmationContentSize.height = 200.0;
    UIRoundToScale();
    v14->_posterEditingConfirmationContentSize.width = v23;
    if (a4 == 1)
    {
      maximumNumberOfColumnsForRow = v14->_maximumNumberOfColumnsForRow;
      v25 = v14->_standardSpacing * (maximumNumberOfColumnsForRow - 1);
      sectionHorizontalMargin = v14->_sectionHorizontalMargin;
      v14->_portraitGallerySize.width = v25 + v18 * maximumNumberOfColumnsForRow + sectionHorizontalMargin * 2.0;
      v14->_portraitGallerySize.height = 870.0;
      v14->_landscapeGallerySize.width = v25 + v21 * maximumNumberOfColumnsForRow + sectionHorizontalMargin * 2.0;
      v14->_landscapeGallerySize.height = 1000.0;
    }

    else
    {
      v27 = *MEMORY[0x277CBF3A8];
      v14->_portraitGallerySize = *MEMORY[0x277CBF3A8];
      v14->_landscapeGallerySize = v27;
    }

    v28 = v18 / width * a5 * 1.35000002;
    if (v28 < 8.0)
    {
      v28 = 8.0;
    }

    v14->_posterCornerRadius = v28;
    v29 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A20] weight:*MEMORY[0x277D743F8]];
    sectionHeaderTitleFont = v14->_sectionHeaderTitleFont;
    v14->_sectionHeaderTitleFont = v29;

    v31 = [MEMORY[0x277D75348] labelColor];
    sectionHeaderTitleColor = v14->_sectionHeaderTitleColor;
    v14->_sectionHeaderTitleColor = v31;

    v33 = [MEMORY[0x277D75348] labelColor];
    sectionHeaderSubtitleColor = v14->_sectionHeaderSubtitleColor;
    v14->_sectionHeaderSubtitleColor = v33;

    v35 = *MEMORY[0x277D769D0];
    v36 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74418]];
    sectionHeaderSubtitleFont = v14->_sectionHeaderSubtitleFont;
    v14->_sectionHeaderSubtitleFont = v36;

    *&v14->_sectionHeaderSubtitleTopMargin = xmmword_21B6D7950;
    v14->_sectionHeaderBottomSpacing = 8.0;
    v38 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] weight:*MEMORY[0x277D74410]];
    previewCellLabelFont = v14->_previewCellLabelFont;
    v14->_previewCellLabelFont = v38;

    v40 = [MEMORY[0x277D75348] secondaryLabelColor];
    previewCellLabelColor = v14->_previewCellLabelColor;
    v14->_previewCellLabelColor = v40;

    v14->_previewCellLabelToImageVerticalSpacing = 5.0;
    v42 = [MEMORY[0x277D74300] preferredFontForTextStyle:v35];
    previewCellDescriptionLabelFont = v14->_previewCellDescriptionLabelFont;
    v14->_previewCellDescriptionLabelFont = v42;

    v44 = [MEMORY[0x277D75348] labelColor];
    previewCellDescriptionLabelColor = v14->_previewCellDescriptionLabelColor;
    v14->_previewCellDescriptionLabelColor = v44;

    v46 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    contentContainerBackgroundColor = v14->_contentContainerBackgroundColor;
    v14->_contentContainerBackgroundColor = v46;

    v48 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
    badgeColor = v14->_badgeColor;
    v14->_badgeColor = v48;

    if (PUIFeatureEnabled())
    {
      v50 = [MEMORY[0x277D75348] whiteColor];
      v51 = v14->_previewCellLabelColor;
      v14->_previewCellLabelColor = v50;

      v52 = [MEMORY[0x277D75348] whiteColor];
      v53 = v14->_sectionHeaderTitleColor;
      v14->_sectionHeaderTitleColor = v52;

      v54 = [MEMORY[0x277D75348] systemLightGrayColor];
      v55 = v14->_sectionHeaderSubtitleColor;
      v14->_sectionHeaderSubtitleColor = v54;

      v56 = [MEMORY[0x277D75348] systemLightGrayColor];
      v57 = v14->_previewCellDescriptionLabelColor;
      v14->_previewCellDescriptionLabelColor = v56;

      v58 = [MEMORY[0x277D75348] systemDarkGrayColor];
      v59 = v14->_contentContainerBackgroundColor;
      v14->_contentContainerBackgroundColor = v58;
    }

    v14->_previewSmartAlbumCellAdditionalTopMargin = 4.0;
  }

  return v14;
}

- (CGSize)gallerySizeForPadOrientation:(int64_t)a3
{
  IsPortrait = BSInterfaceOrientationIsPortrait();
  v5 = 256;
  if (IsPortrait)
  {
    v5 = 240;
  }

  v6 = 264;
  if (IsPortrait)
  {
    v6 = 248;
  }

  v7 = *(&self->super.isa + v6);
  v8 = *(&self->super.isa + v5);
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGSize)posterContentSizeForOrientation:(int64_t)a3
{
  IsPortrait = BSInterfaceOrientationIsPortrait();
  v5 = 200;
  if (IsPortrait)
  {
    v6 = 192;
  }

  else
  {
    v6 = 200;
  }

  if (!IsPortrait)
  {
    v5 = 192;
  }

  v7 = *(&self->super.isa + v5);
  v8 = *(&self->super.isa + v6);
  result.height = v7;
  result.width = v8;
  return result;
}

- (double)heroSpacingForOrientation:(int64_t)a3
{
  if (self->_deviceClass != 1)
  {
    return self->_standardSpacing;
  }

  IsPortrait = BSInterfaceOrientationIsPortrait();
  result = 14.0;
  if ((IsPortrait & 1) == 0)
  {
    return self->_standardSpacing;
  }

  return result;
}

- (CGRect)referenceBounds
{
  x = self->_referenceBounds.origin.x;
  y = self->_referenceBounds.origin.y;
  width = self->_referenceBounds.size.width;
  height = self->_referenceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)posterContentSize
{
  width = self->_posterContentSize.width;
  height = self->_posterContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)posterHeroContentSize
{
  width = self->_posterHeroContentSize.width;
  height = self->_posterHeroContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)posterEditingConfirmationContentSize
{
  width = self->_posterEditingConfirmationContentSize.width;
  height = self->_posterEditingConfirmationContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)portraitGallerySize
{
  width = self->_portraitGallerySize.width;
  height = self->_portraitGallerySize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)landscapeGallerySize
{
  width = self->_landscapeGallerySize.width;
  height = self->_landscapeGallerySize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)specForDisplayContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_21B526000, a2, OS_LOG_TYPE_FAULT, "Nil matching screen for display context: %{public}@", &v2, 0xCu);
}

@end