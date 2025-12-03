@interface SBIconListGridLayoutConfiguration
- (BOOL)isEqual:(id)equal;
- (CGSize)listSizeForIconSpacingCalculation;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)class orientation:(id)orientation;
- (SBIconListGridLayoutConfiguration)init;
- (UIEdgeInsets)landscapeAdditionalWidgetLayoutInsets;
- (UIEdgeInsets)landscapeLayoutInsets;
- (UIEdgeInsets)portraitAdditionalWidgetLayoutInsets;
- (UIEdgeInsets)portraitLayoutInsets;
- (UIEdgeInsets)widgetContentMargins;
- (double)editingAnimationStrengthForGridSizeClass:(id)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)iconLabelVisualConfigurationForContentSizeCategory:(id)category;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)setEditingAnimationStrength:(double)strength forGridSizeClass:(id)class;
- (void)setEditingAnimationStrengths:(id)strengths;
- (void)setIconImageInfo:(SBIconImageInfo *)info forGridSizeClass:(id)class orientation:(int64_t)orientation;
- (void)setIconLabelVisualConfiguration:(id)configuration forContentSizeCategory:(id)category;
@end

@implementation SBIconListGridLayoutConfiguration

- (UIEdgeInsets)portraitLayoutInsets
{
  top = self->_portraitLayoutInsets.top;
  left = self->_portraitLayoutInsets.left;
  bottom = self->_portraitLayoutInsets.bottom;
  right = self->_portraitLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)listSizeForIconSpacingCalculation
{
  width = self->_listSizeForIconSpacingCalculation.width;
  height = self->_listSizeForIconSpacingCalculation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)portraitAdditionalWidgetLayoutInsets
{
  top = self->_portraitAdditionalWidgetLayoutInsets.top;
  left = self->_portraitAdditionalWidgetLayoutInsets.left;
  bottom = self->_portraitAdditionalWidgetLayoutInsets.bottom;
  right = self->_portraitAdditionalWidgetLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (SBIconListGridLayoutConfiguration)init
{
  v25.receiver = self;
  v25.super_class = SBIconListGridLayoutConfiguration;
  v2 = [(SBIconListGridLayoutConfiguration *)&v25 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_numberOfPortraitColumns = vdupq_n_s64(3uLL);
    v4 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
    iconGridSizeClassSizes = v3->_iconGridSizeClassSizes;
    v3->_iconGridSizeClassSizes = v4;

    v6 = +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];
    supportedIconGridSizeClasses = v3->_supportedIconGridSizeClasses;
    v3->_supportedIconGridSizeClasses = v6;

    objc_storeStrong(&v3->_rotatedLayoutClusterGridSizeClass, @"SBHIconGridSizeClassDefault");
    *&v3->_showsLabels = 1;
    v8 = objc_alloc_init(SBHIconAccessoryVisualConfiguration);
    iconAccessoryVisualConfiguration = v3->_iconAccessoryVisualConfiguration;
    v3->_iconAccessoryVisualConfiguration = v8;

    v10 = objc_alloc_init(SBHFolderIconVisualConfiguration);
    folderIconVisualConfiguration = v3->_folderIconVisualConfiguration;
    v3->_folderIconVisualConfiguration = v10;

    v12 = objc_alloc_init(SBHFloatyFolderVisualConfiguration);
    floatyFolderVisualConfiguration = v3->_floatyFolderVisualConfiguration;
    v3->_floatyFolderVisualConfiguration = v12;

    v14 = objc_alloc_init(SBHSidebarVisualConfiguration);
    sidebarVisualConfiguration = v3->_sidebarVisualConfiguration;
    v3->_sidebarVisualConfiguration = v14;

    v16 = objc_alloc_init(SBHRootFolderVisualConfiguration);
    rootFolderVisualConfiguration = v3->_rootFolderVisualConfiguration;
    v3->_rootFolderVisualConfiguration = v16;

    v18 = objc_alloc_init(SBHAppLibraryVisualConfiguration);
    appLibraryVisualConfiguration = v3->_appLibraryVisualConfiguration;
    v3->_appLibraryVisualConfiguration = v18;

    v20 = objc_alloc_init(SBHFloatingDockVisualConfiguration);
    floatingDockVisualConfiguration = v3->_floatingDockVisualConfiguration;
    v3->_floatingDockVisualConfiguration = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    iconGridSizeClassEditingAnimationStrengths = v3->_iconGridSizeClassEditingAnimationStrengths;
    v3->_iconGridSizeClassEditingAnimationStrengths = v22;
  }

  return v3;
}

- (UIEdgeInsets)widgetContentMargins
{
  top = self->_widgetContentMargins.top;
  left = self->_widgetContentMargins.left;
  bottom = self->_widgetContentMargins.bottom;
  right = self->_widgetContentMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)iconLabelVisualConfigurationForContentSizeCategory:(id)category
{
  categoryCopy = category;
  v5 = categoryCopy;
  if (!self->_iconLabelVisualConfigurations)
  {
LABEL_18:
    v10 = objc_alloc_init(SBHIconLabelVisualConfiguration);
    v6 = v5;
    goto LABEL_19;
  }

  v6 = SBHContentSizeCategoryClip(categoryCopy, *MEMORY[0x1E69DDC70], *MEMORY[0x1E69DDC20]);

  v7 = [(NSMutableDictionary *)self->_iconLabelVisualConfigurations objectForKey:v6];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (!v9)
  {
    v11 = *MEMORY[0x1E69DDC78];
    while (([v6 isEqualToString:v11] & 1) == 0)
    {
      v12 = SBHContentSizeCategoryOneSmallerThanSizeCategory(v6);

      v13 = [(NSMutableDictionary *)self->_iconLabelVisualConfigurations objectForKey:v12];
      v8 = v13 == 0;
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = v12 == 0;
      }

      v6 = v12;
      if (v14)
      {
        v10 = v13;
        v6 = v12;
        goto LABEL_15;
      }
    }

    v5 = v6;
    goto LABEL_18;
  }

  v10 = v7;
LABEL_15:
  v5 = v6;
  if (v8)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v10;
}

- (void)setIconLabelVisualConfiguration:(id)configuration forContentSizeCategory:(id)category
{
  configurationCopy = configuration;
  v6 = SBHContentSizeCategoryClip(category, *MEMORY[0x1E69DDC70], *MEMORY[0x1E69DDC20]);
  iconLabelVisualConfigurations = self->_iconLabelVisualConfigurations;
  if (!iconLabelVisualConfigurations)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_iconLabelVisualConfigurations;
    self->_iconLabelVisualConfigurations = v8;

    iconLabelVisualConfigurations = self->_iconLabelVisualConfigurations;
  }

  v10 = [configurationCopy copy];
  [(NSMutableDictionary *)iconLabelVisualConfigurations setObject:v10 forKey:v6];
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)class orientation:(id)orientation
{
  orientationCopy = orientation;
  if ((a5 - 3) > 1 || (p_iconGridSizeClassIconImageInfos = &self->_landscapeIconGridSizeClassIconImageInfos, ![(SBHIconGridSizeClassIconImageInfoMap *)self->_landscapeIconGridSizeClassIconImageInfos hasIconImageInfoForGridSizeClass:orientationCopy]))
  {
    p_iconGridSizeClassIconImageInfos = &self->_iconGridSizeClassIconImageInfos;
  }

  [(SBHIconGridSizeClassIconImageInfoMap *)*p_iconGridSizeClassIconImageInfos iconImageInfoForGridSizeClass:orientationCopy];

  return result;
}

- (void)setIconImageInfo:(SBIconImageInfo *)info forGridSizeClass:(id)class orientation:(int64_t)orientation
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  v22 = infoCopy;
  if (class - 3 <= 1)
  {
    landscapeIconGridSizeClassIconImageInfos = self->_landscapeIconGridSizeClassIconImageInfos;
    p_landscapeIconGridSizeClassIconImageInfos = &self->_landscapeIconGridSizeClassIconImageInfos;
    v16 = landscapeIconGridSizeClassIconImageInfos;
    if (landscapeIconGridSizeClassIconImageInfos)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  iconGridSizeClassIconImageInfos = self->_iconGridSizeClassIconImageInfos;
  p_landscapeIconGridSizeClassIconImageInfos = &self->_iconGridSizeClassIconImageInfos;
  v16 = iconGridSizeClassIconImageInfos;
  if (!iconGridSizeClassIconImageInfos)
  {
LABEL_3:
    v19 = objc_alloc_init(SBHMutableIconGridSizeClassIconImageInfoMap);
    v20 = *p_landscapeIconGridSizeClassIconImageInfos;
    *p_landscapeIconGridSizeClassIconImageInfos = v19;

    v16 = *p_landscapeIconGridSizeClassIconImageInfos;
    infoCopy = v22;
  }

LABEL_4:
  [(SBHMutableIconGridSizeClassIconImageInfoMap *)v16 setIconImageInfo:infoCopy forGridSizeClass:v13, v12, v11, v10];
}

- (double)editingAnimationStrengthForGridSizeClass:(id)class
{
  v3 = [(NSMutableDictionary *)self->_iconGridSizeClassEditingAnimationStrengths objectForKey:class];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (void)setEditingAnimationStrength:(double)strength forGridSizeClass:(id)class
{
  iconGridSizeClassEditingAnimationStrengths = self->_iconGridSizeClassEditingAnimationStrengths;
  v6 = MEMORY[0x1E696AD98];
  classCopy = class;
  v8 = [v6 numberWithDouble:strength];
  [(NSMutableDictionary *)iconGridSizeClassEditingAnimationStrengths setObject:v8 forKey:classCopy];
}

- (void)setEditingAnimationStrengths:(id)strengths
{
  v4 = [strengths mutableCopy];
  iconGridSizeClassEditingAnimationStrengths = self->_iconGridSizeClassEditingAnimationStrengths;
  self->_iconGridSizeClassEditingAnimationStrengths = v4;

  MEMORY[0x1EEE66BB8](v4, iconGridSizeClassEditingAnimationStrengths);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = v5;
  if (v5)
  {
    v5[6] = self->_numberOfPortraitColumns;
    v5[7] = self->_numberOfPortraitRows;
    v5[8] = self->_numberOfLandscapeColumns;
    v5[9] = self->_numberOfLandscapeRows;
    v7 = [(SBHIconGridSizeClassSizeMap *)self->_iconGridSizeClassSizes copyWithZone:zone];
    v8 = v6[10];
    v6[10] = v7;

    v9 = [(SBHIconGridSizeClassSizeMap *)self->_rotatedIconGridSizeClassSizes copyWithZone:zone];
    v10 = v6[11];
    v6[11] = v9;

    v11 = [(SBHIconGridSizeClassSet *)self->_supportedIconGridSizeClasses copyWithZone:zone];
    v12 = v6[12];
    v6[12] = v11;

    v13 = *&self->_portraitLayoutInsets.bottom;
    *(v6 + 12) = *&self->_portraitLayoutInsets.top;
    *(v6 + 13) = v13;
    v14 = *&self->_landscapeLayoutInsets.bottom;
    *(v6 + 14) = *&self->_landscapeLayoutInsets.top;
    *(v6 + 15) = v14;
    v15 = *&self->_portraitAdditionalWidgetLayoutInsets.bottom;
    *(v6 + 16) = *&self->_portraitAdditionalWidgetLayoutInsets.top;
    *(v6 + 17) = v15;
    v16 = *&self->_landscapeAdditionalWidgetLayoutInsets.bottom;
    *(v6 + 18) = *&self->_landscapeAdditionalWidgetLayoutInsets.top;
    *(v6 + 19) = v16;
    v17 = *&self->_widgetContentMargins.bottom;
    *(v6 + 20) = *&self->_widgetContentMargins.top;
    *(v6 + 21) = v17;
    *(v6 + 40) = self->_showsLabels;
    *(v6 + 41) = self->_showsTooltipsOnHover;
    v18 = [(SBHIconGridSizeClassIconImageInfoMap *)self->_iconGridSizeClassIconImageInfos mutableCopyWithZone:zone];
    v19 = v6[2];
    v6[2] = v18;

    v20 = [(SBHIconGridSizeClassIconImageInfoMap *)self->_landscapeIconGridSizeClassIconImageInfos mutableCopyWithZone:zone];
    v21 = v6[3];
    v6[3] = v20;

    v22 = [(NSMutableDictionary *)self->_iconGridSizeClassEditingAnimationStrengths mutableCopyWithZone:zone];
    v23 = v6[4];
    v6[4] = v22;

    objc_storeStrong(v6 + 13, self->_rotatedLayoutClusterGridSizeClass);
    *(v6 + 11) = self->_listSizeForIconSpacingCalculation;
    v6[14] = self->_iconSpacingAxisMatchingBehavior;
    v24 = [(SBHIconAccessoryVisualConfiguration *)self->_iconAccessoryVisualConfiguration copyWithZone:zone];
    v25 = v6[15];
    v6[15] = v24;

    v26 = [(NSMutableDictionary *)self->_iconLabelVisualConfigurations copyWithZone:zone];
    v27 = v6[1];
    v6[1] = v26;

    v28 = [(SBHFolderIconVisualConfiguration *)self->_folderIconVisualConfiguration copyWithZone:zone];
    v29 = v6[16];
    v6[16] = v28;

    v30 = [(SBHFloatyFolderVisualConfiguration *)self->_floatyFolderVisualConfiguration copyWithZone:zone];
    v31 = v6[17];
    v6[17] = v30;

    v32 = [(SBHSidebarVisualConfiguration *)self->_sidebarVisualConfiguration copyWithZone:zone];
    v33 = v6[19];
    v6[19] = v32;

    v34 = [(SBHRootFolderVisualConfiguration *)self->_rootFolderVisualConfiguration copyWithZone:zone];
    v35 = v6[20];
    v6[20] = v34;

    v36 = [(SBHAppLibraryVisualConfiguration *)self->_appLibraryVisualConfiguration copyWithZone:zone];
    v37 = v6[18];
    v6[18] = v36;

    v38 = [(SBHFloatingDockVisualConfiguration *)self->_floatingDockVisualConfiguration copyWithZone:zone];
    v39 = v6[21];
    v6[21] = v38;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      v8 = v7;
      if (self->_numberOfPortraitColumns != v7->_numberOfPortraitColumns)
      {
        goto LABEL_34;
      }

      if (self->_numberOfPortraitRows != v7->_numberOfPortraitRows)
      {
        goto LABEL_34;
      }

      if (self->_numberOfLandscapeColumns != v7->_numberOfLandscapeColumns)
      {
        goto LABEL_34;
      }

      if (self->_numberOfLandscapeRows != v7->_numberOfLandscapeRows)
      {
        goto LABEL_34;
      }

      if (!BSEqualObjects())
      {
        goto LABEL_34;
      }

      if (!BSEqualObjects())
      {
        goto LABEL_34;
      }

      if (!BSEqualObjects())
      {
        goto LABEL_34;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_portraitLayoutInsets.top, *&v8->_portraitLayoutInsets.top), vceqq_f64(*&self->_portraitLayoutInsets.bottom, *&v8->_portraitLayoutInsets.bottom)))) & 1) == 0)
      {
        goto LABEL_34;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_landscapeLayoutInsets.top, *&v8->_landscapeLayoutInsets.top), vceqq_f64(*&self->_landscapeLayoutInsets.bottom, *&v8->_landscapeLayoutInsets.bottom)))) & 1) == 0)
      {
        goto LABEL_34;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_portraitAdditionalWidgetLayoutInsets.top, *&v8->_portraitAdditionalWidgetLayoutInsets.top), vceqq_f64(*&self->_portraitAdditionalWidgetLayoutInsets.bottom, *&v8->_portraitAdditionalWidgetLayoutInsets.bottom)))) & 1) == 0)
      {
        goto LABEL_34;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_landscapeAdditionalWidgetLayoutInsets.top, *&v8->_landscapeAdditionalWidgetLayoutInsets.top), vceqq_f64(*&self->_landscapeAdditionalWidgetLayoutInsets.bottom, *&v8->_landscapeAdditionalWidgetLayoutInsets.bottom)))) & 1) == 0)
      {
        goto LABEL_34;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_widgetContentMargins.top, *&v8->_widgetContentMargins.top), vceqq_f64(*&self->_widgetContentMargins.bottom, *&v8->_widgetContentMargins.bottom)))) & 1) == 0)
      {
        goto LABEL_34;
      }

      if (!BSEqualObjects())
      {
        goto LABEL_34;
      }

      if (!BSEqualObjects())
      {
        goto LABEL_34;
      }

      if (!BSEqualDictionaries())
      {
        goto LABEL_34;
      }

      rotatedLayoutClusterGridSizeClass = self->_rotatedLayoutClusterGridSizeClass;
      if (rotatedLayoutClusterGridSizeClass != v8->_rotatedLayoutClusterGridSizeClass && ![(NSString *)rotatedLayoutClusterGridSizeClass isEqualToString:?])
      {
        goto LABEL_34;
      }

      v10 = 0;
      if (self->_listSizeForIconSpacingCalculation.width != v8->_listSizeForIconSpacingCalculation.width || self->_listSizeForIconSpacingCalculation.height != v8->_listSizeForIconSpacingCalculation.height)
      {
        goto LABEL_35;
      }

      if (self->_showsLabels == v8->_showsLabels && self->_showsTooltipsOnHover == v8->_showsTooltipsOnHover && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects())
      {
        v10 = BSEqualObjects();
      }

      else
      {
LABEL_34:
        v10 = 0;
      }

LABEL_35:

      goto LABEL_36;
    }

    v10 = 0;
  }

LABEL_36:

  return v10;
}

- (unint64_t)hash
{
  v3 = self->_numberOfPortraitRows + self->_numberOfPortraitColumns + self->_numberOfLandscapeColumns + self->_numberOfLandscapeRows;
  v4 = [(SBHIconGridSizeClassSizeMap *)self->_iconGridSizeClassSizes hash];
  v5 = v3 + v4 + [(SBHIconGridSizeClassSizeMap *)self->_rotatedIconGridSizeClassSizes hash];
  v6 = self->_widgetContentMargins.left + self->_widgetContentMargins.bottom + self->_widgetContentMargins.right + self->_widgetContentMargins.top + self->_landscapeAdditionalWidgetLayoutInsets.left + self->_landscapeAdditionalWidgetLayoutInsets.bottom + self->_landscapeAdditionalWidgetLayoutInsets.right + self->_landscapeAdditionalWidgetLayoutInsets.top + self->_portraitAdditionalWidgetLayoutInsets.left + self->_portraitAdditionalWidgetLayoutInsets.bottom + self->_portraitAdditionalWidgetLayoutInsets.right + self->_portraitAdditionalWidgetLayoutInsets.top + self->_landscapeLayoutInsets.left + self->_landscapeLayoutInsets.bottom + self->_landscapeLayoutInsets.right + self->_landscapeLayoutInsets.top + self->_portraitLayoutInsets.left + self->_portraitLayoutInsets.bottom + self->_portraitLayoutInsets.right + self->_portraitLayoutInsets.top + (v5 + [(SBHIconGridSizeClassSet *)self->_supportedIconGridSizeClasses hash]);
  v7 = v6 + [(SBHIconGridSizeClassIconImageInfoMap *)self->_iconGridSizeClassIconImageInfos hash];
  v8 = v7 + [(SBHIconGridSizeClassIconImageInfoMap *)self->_landscapeIconGridSizeClassIconImageInfos hash];
  v9 = v8 + [(NSMutableDictionary *)self->_iconGridSizeClassEditingAnimationStrengths hash];
  v10 = [(NSString *)self->_rotatedLayoutClusterGridSizeClass hash];
  width = self->_listSizeForIconSpacingCalculation.width;
  v12 = self->_listSizeForIconSpacingCalculation.height + width + v9 + v10;
  LOBYTE(width) = self->_showsLabels;
  v13 = v12 + *&width + [(SBHIconAccessoryVisualConfiguration *)self->_iconAccessoryVisualConfiguration hash];
  v14 = v13 + [(NSMutableDictionary *)self->_iconLabelVisualConfigurations hash];
  v15 = v14 + [(SBHFolderIconVisualConfiguration *)self->_folderIconVisualConfiguration hash];
  v16 = v15 + [(SBHFloatyFolderVisualConfiguration *)self->_floatyFolderVisualConfiguration hash];
  v17 = v16 + [(SBHSidebarVisualConfiguration *)self->_sidebarVisualConfiguration hash];
  v18 = v17 + [(SBHRootFolderVisualConfiguration *)self->_rootFolderVisualConfiguration hash];
  v19 = v18 + [(SBHAppLibraryVisualConfiguration *)self->_appLibraryVisualConfiguration hash];
  return (v19 + [(SBHFloatingDockVisualConfiguration *)self->_floatingDockVisualConfiguration hash]);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListGridLayoutConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListGridLayoutConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconListGridLayoutConfiguration *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendUnsignedInteger:self->_numberOfPortraitColumns withName:@"numberOfPortraitColumns"];
  v6 = [succinctDescriptionBuilder appendUnsignedInteger:self->_numberOfPortraitRows withName:@"numberOfPortraitRows"];
  v7 = [succinctDescriptionBuilder appendUnsignedInteger:self->_numberOfLandscapeColumns withName:@"numberOfLandscapeColumns"];
  v8 = [succinctDescriptionBuilder appendUnsignedInteger:self->_numberOfLandscapeRows withName:@"numberOfLandscapeRows"];
  v9 = NSStringFromUIEdgeInsets(self->_portraitLayoutInsets);
  [succinctDescriptionBuilder appendString:v9 withName:@"portraitLayoutInsets"];

  v10 = NSStringFromUIEdgeInsets(self->_landscapeLayoutInsets);
  [succinctDescriptionBuilder appendString:v10 withName:@"landscapeLayoutInsets"];

  v11 = NSStringFromUIEdgeInsets(self->_widgetContentMargins);
  [succinctDescriptionBuilder appendString:v11 withName:@"widgetContentMargins"];

  v12 = NSStringFromUIEdgeInsets(self->_portraitAdditionalWidgetLayoutInsets);
  [succinctDescriptionBuilder appendString:v12 withName:@"portraitAdditionalWidgetLayoutInsets"];

  v13 = NSStringFromUIEdgeInsets(self->_landscapeAdditionalWidgetLayoutInsets);
  [succinctDescriptionBuilder appendString:v13 withName:@"landscapeAdditionalWidgetLayoutInsets"];

  [(SBIconListGridLayoutConfiguration *)self iconImageInfo];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __75__SBIconListGridLayoutConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v42[3] = &unk_1E8088EC8;
  v22 = succinctDescriptionBuilder;
  v43 = v22;
  v44 = v15;
  v45 = v17;
  v46 = v19;
  v47 = v21;
  [v22 appendBodySectionWithName:@"iconImageInfo" multilinePrefix:0 block:v42];
  v23 = [v22 appendObject:self->_iconGridSizeClassSizes withName:@"iconGridSizeClassSizes"];
  v24 = [v22 appendObject:self->_rotatedIconGridSizeClassSizes withName:@"rotatedIconGridSizeClassSizes" skipIfNil:1];
  v25 = [v22 appendObject:self->_supportedIconGridSizeClasses withName:@"supportedIconGridSizeClasses"];
  v26 = SBHStringForIconGridSizeClass(self->_rotatedLayoutClusterGridSizeClass);
  [v22 appendString:v26 withName:@"rotatedLayoutClusterGridSizeClass"];

  v27 = [v22 appendSize:@"listSizeForIconSpacingCalculation" withName:{self->_listSizeForIconSpacingCalculation.width, self->_listSizeForIconSpacingCalculation.height}];
  v28 = [v22 appendObject:self->_iconGridSizeClassIconImageInfos withName:@"iconGridSizeClassIconImageInfos"];
  v29 = [v22 appendObject:self->_landscapeIconGridSizeClassIconImageInfos withName:@"landscapeIconGridSizeClassIconImageInfos" skipIfNil:1];
  v30 = SBHStringForIconListIconSpacingAxisMatchingBehavior(self->_iconSpacingAxisMatchingBehavior);
  [v22 appendString:v30 withName:@"iconSpacingAxisMatchingBehavior"];

  v31 = [v22 appendBool:self->_showsLabels withName:@"showsLabels"];
  v32 = [v22 appendBool:self->_showsTooltipsOnHover withName:@"showsTooltipsOnHover"];
  v33 = [v22 appendObject:self->_iconAccessoryVisualConfiguration withName:@"iconAccessoryConfiguration"];
  v34 = [v22 appendObject:self->_iconLabelVisualConfigurations withName:@"iconLabelVisualConfigurations"];
  v35 = [v22 appendObject:self->_folderIconVisualConfiguration withName:@"folderIconVisualConfiguration"];
  v36 = [v22 appendObject:self->_floatyFolderVisualConfiguration withName:@"floatyFolderVisualConfiguration"];
  v37 = [v22 appendObject:self->_sidebarVisualConfiguration withName:@"sidebarVisualConfiguration"];
  v38 = [v22 appendObject:self->_rootFolderVisualConfiguration withName:@"rootFolderVisualConfiguration"];
  v39 = [v22 appendObject:self->_appLibraryVisualConfiguration withName:@"appLibraryVisualConfiguration"];
  v40 = [v22 appendObject:self->_floatingDockVisualConfiguration withName:@"floatingDockVisualConfiguration"];

  return v22;
}

id __75__SBIconListGridLayoutConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendSize:@"size" withName:{*(a1 + 40), *(a1 + 48)}];
  v3 = [*(a1 + 32) appendFloat:@"scale" withName:*(a1 + 56)];
  return [*(a1 + 32) appendFloat:@"continuousCornerRadius" withName:*(a1 + 64)];
}

- (UIEdgeInsets)landscapeLayoutInsets
{
  top = self->_landscapeLayoutInsets.top;
  left = self->_landscapeLayoutInsets.left;
  bottom = self->_landscapeLayoutInsets.bottom;
  right = self->_landscapeLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)landscapeAdditionalWidgetLayoutInsets
{
  top = self->_landscapeAdditionalWidgetLayoutInsets.top;
  left = self->_landscapeAdditionalWidgetLayoutInsets.left;
  bottom = self->_landscapeAdditionalWidgetLayoutInsets.bottom;
  right = self->_landscapeAdditionalWidgetLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end