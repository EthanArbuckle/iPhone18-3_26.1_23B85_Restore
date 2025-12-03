@interface SBHDefaultIconListLayoutProvider
+ (SBHDefaultIconListLayoutProvider)frameworkFallbackInstance;
- (BOOL)showsLabelsForScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options;
- (SBHDefaultIconListLayoutProvider)init;
- (SBHDefaultIconListLayoutProvider)initWithLayoutOptions:(unint64_t)options;
- (SBHDefaultIconListLayoutProvider)initWithScreenType:(unint64_t)type;
- (SBHDefaultIconListLayoutProvider)initWithScreenType:(unint64_t)type layoutOptions:(unint64_t)options;
- (UIEdgeInsets)homeScreenSearchOverlayInsetsForScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options forAppLibrary:(BOOL)library;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)layoutForIconLocation:(id)location;
- (id)makeLayoutForIconLocation:(id)location;
- (id)succinctDescription;
- (id)supportedIconGridSizeClassesForScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options;
- (unint64_t)layoutOptionsForIconLocation:(id)location;
- (void)configureAppLibraryConfiguration:(id)configuration forScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options;
- (void)configureFloatingDockConfiguration:(id)configuration forScreenType:(unint64_t)type layoutOptions:(unint64_t)options;
- (void)configureFloatyFolderConfiguration:(id)configuration forScreenType:(unint64_t)type layoutOptions:(unint64_t)options;
- (void)configureFolderIconConfiguration:(id)configuration forScreenType:(unint64_t)type numberOfRows:(unint64_t)rows layoutOptions:(unint64_t)options;
- (void)configureIconAccessoryConfiguration:(id)configuration forScreenType:(unint64_t)type layoutOptions:(unint64_t)options;
- (void)configureLabelConfigurations:(id)configurations forScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options;
- (void)configureRootFolderConfiguration:(id)configuration forScreenType:(unint64_t)type layoutOptions:(unint64_t)options;
- (void)configureSidebarConfiguration:(id)configuration forScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options;
@end

@implementation SBHDefaultIconListLayoutProvider

- (SBHDefaultIconListLayoutProvider)init
{
  currentDeviceScreenType = [objc_opt_class() currentDeviceScreenType];
  defaultLayoutOptions = [objc_opt_class() defaultLayoutOptions];

  return [(SBHDefaultIconListLayoutProvider *)self initWithScreenType:currentDeviceScreenType layoutOptions:defaultLayoutOptions];
}

uint64_t __61__SBHDefaultIconListLayoutProvider_frameworkFallbackInstance__block_invoke()
{
  frameworkFallbackInstance_instance = objc_alloc_init(SBHDefaultIconListLayoutProvider);

  return MEMORY[0x1EEE66BB8]();
}

+ (SBHDefaultIconListLayoutProvider)frameworkFallbackInstance
{
  if (frameworkFallbackInstance_onceToken != -1)
  {
    +[SBHDefaultIconListLayoutProvider frameworkFallbackInstance];
  }

  v3 = frameworkFallbackInstance_instance;

  return v3;
}

- (SBHDefaultIconListLayoutProvider)initWithScreenType:(unint64_t)type
{
  defaultLayoutOptions = [objc_opt_class() defaultLayoutOptions];

  return [(SBHDefaultIconListLayoutProvider *)self initWithScreenType:type layoutOptions:defaultLayoutOptions];
}

- (SBHDefaultIconListLayoutProvider)initWithLayoutOptions:(unint64_t)options
{
  currentDeviceScreenType = [objc_opt_class() currentDeviceScreenType];

  return [(SBHDefaultIconListLayoutProvider *)self initWithScreenType:currentDeviceScreenType layoutOptions:options];
}

- (SBHDefaultIconListLayoutProvider)initWithScreenType:(unint64_t)type layoutOptions:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = SBHDefaultIconListLayoutProvider;
  result = [(SBHDefaultIconListLayoutProvider *)&v7 init];
  if (result)
  {
    result->_screenType = type;
    result->_layoutOptions = options;
  }

  return result;
}

- (id)makeLayoutForIconLocation:(id)location
{
  locationCopy = location;
  screenType = [(SBHDefaultIconListLayoutProvider *)self screenType];
  v6 = [(SBHDefaultIconListLayoutProvider *)self layoutOptionsForIconLocation:locationCopy];
  v7 = _SBHDefaultIconGridSizeClassIconImageInfos(screenType, v6);
  v8 = _SBHDefaultIconGridSizeClassEditingAnimationStrengths(locationCopy, screenType);
  v9 = objc_alloc_init(SBIconListGridLayoutConfiguration);
  v175 = v8;
  [(SBIconListGridLayoutConfiguration *)v9 setEditingAnimationStrengths:v8];
  v233[0] = MEMORY[0x1E69E9820];
  v233[1] = 3221225472;
  v233[2] = __62__SBHDefaultIconListLayoutProvider_makeLayoutForIconLocation___block_invoke;
  v233[3] = &unk_1E808ED50;
  v10 = v7;
  v234 = v10;
  v11 = v9;
  v235 = v11;
  SBHEnumerateIconGridSizeClasses(v233);
  [(SBIconListGridLayoutConfiguration *)v11 setWidgetContentMargins:SBHDefaultWidgetContentMargins(screenType)];
  sidebarVisualConfiguration = [(SBIconListGridLayoutConfiguration *)v11 sidebarVisualConfiguration];
  [SBHDefaultIconListLayoutProvider configureSidebarConfiguration:"configureSidebarConfiguration:forScreenType:iconLocation:layoutOptions:" forScreenType:? iconLocation:? layoutOptions:?];
  v12 = _SBHDefaultNumberOfRowsAndColumnsInFolders(screenType);
  v13 = *MEMORY[0x1E69DDCE0];
  v14 = *(MEMORY[0x1E69DDCE0] + 8);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v15 = *(MEMORY[0x1E69DDCE0] + 24);
  v17 = *MEMORY[0x1E695F060];
  v18 = *(MEMORY[0x1E695F060] + 8);
  v212 = @"SBHIconGridSizeClassDefault";
  v211 = locationCopy;
  v176 = v10;
  v180 = v6;
  v181 = v12;
  if (([locationCopy isEqualToString:@"SBIconLocationFloatingDock"] & 1) != 0 || objc_msgSend(locationCopy, "isEqualToString:", @"SBIconLocationFloatingDockUtilities"))
  {
    if ((v6 & 4) != 0)
    {
      extendedFloatingDockCapacityIconCount = [objc_opt_class() extendedFloatingDockCapacityIconCount];
    }

    else
    {
      extendedFloatingDockCapacityIconCount = 0;
    }

    v177 = v18;
    v178 = v17;
    v20 = 0;
    v21 = 1;
    v22 = v15;
    v23 = v16;
    v24 = v14;
    v25 = v13;
    v26 = v15;
    *&v27 = v16;
    v28 = v14;
    v29 = v13;
    v30 = v15;
    v31 = v15;
    v32 = v16;
    v33 = v13;
    v34 = v14;
    v35 = v16;
    v36 = v14;
    v37 = v33;
    v38 = 0;
    v39 = 0;
    v12 = 0;
    switch(screenType)
    {
      case 0uLL:
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xBuLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x15uLL:
      case 0x16uLL:
      case 0x17uLL:
      case 0x18uLL:
      case 0x19uLL:
      case 0x1AuLL:
      case 0x1BuLL:
      case 0x1CuLL:
      case 0x1DuLL:
      case 0x1EuLL:
        v20 = 0;
        v38 = 0;
        v39 = 0;
        if ([locationCopy isEqualToString:{@"SBIconLocationFloatingDock", v29, v14}])
        {
          v12 = 4;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_25;
      case 0x64uLL:
      case 0x66uLL:
      case 0x67uLL:
      case 0x6AuLL:
      case 0x6BuLL:
      case 0x6CuLL:
      case 0x6DuLL:
      case 0x6EuLL:
      case 0x70uLL:
      case 0x72uLL:
      case 0x73uLL:
      case 0x75uLL:
        v20 = 0;
        v38 = 0;
        v39 = 0;
        v12 = extendedFloatingDockCapacityIconCount + 20;
        goto LABEL_25;
      case 0x65uLL:
      case 0x69uLL:
        v20 = 0;
        v38 = 0;
        v39 = 0;
        v12 = extendedFloatingDockCapacityIconCount + 16;
        goto LABEL_25;
      case 0x68uLL:
      case 0x6FuLL:
      case 0x71uLL:
      case 0x74uLL:
      case 0x76uLL:
        v20 = 0;
        v38 = 0;
        v39 = 0;
        v12 = extendedFloatingDockCapacityIconCount + 26;
LABEL_25:
        v21 = 1;
        v22 = v15;
        v23 = v35;
        v24 = v14;
        v25 = v33;
        v26 = v15;
        *&v27 = v35;
        v28 = v14;
        v29 = v33;
        v31 = v15;
        v32 = v35;
        v36 = v14;
        v37 = v33;
        break;
      default:
        break;
    }
  }

  else if ([locationCopy isEqualToString:@"SBIconLocationDock"])
  {
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v224 = 0u;
    SBHGetDefaultIconListLayoutMetrics(screenType, v6, &v224);
    SBHGetScreenSpecification(screenType, v223);
    v177 = *&v223[1];
    v178 = *v223;
    UIEdgeInsetsAdd();
    v30 = v15;
    v35 = v16;
    v38 = 1;
    SBHDefaultAdditionalLayoutInsetsForOrientation();
    UIEdgeInsetsAdd();
    _SBHDefaultDockAdditionalIconInset(screenType, v6);
    UIEdgeInsetsAdd();
    v33 = v13;
    v37 = v40;
    v34 = v14;
    v32 = v41;
    v20 = 0;
    v39 = 4;
    v22 = v15;
    v23 = v35;
    v24 = v14;
    v25 = v33;
    v26 = v15;
    *&v27 = v35;
    v28 = v14;
    v29 = v33;
    v21 = 1;
    v12 = 4;
  }

  else if ([locationCopy isEqualToString:@"SBIconLocationFolder"])
  {
    v201 = v16;
    v206 = v13;
    v177 = v18;
    v178 = v17;
    v198 = v15;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v224 = 0u;
    SBHGetDefaultIconListLayoutMetrics(screenType, v6, &v224);
    SBHDefaultAdditionalLayoutInsetsForOrientation();
    UIEdgeInsetsAdd();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    [v10 iconImageInfoForGridSizeClass:v212];
    v51 = v50;
    v53 = v52;
    SBHGetScreenSpecification(screenType, v222);
    v54 = SBHCalculateIconSpacing(v224, v222[0], v222[1], v43, v45, v47, v49, v51);
    v56 = v55;
    v57 = 0.0;
    if ([(SBHDefaultIconListLayoutProvider *)self showsLabelsForScreenType:screenType iconLocation:locationCopy layoutOptions:v6])
    {
      v58 = 16.0;
    }

    else
    {
      v58 = 0.0;
    }

    if (screenType >= 0x1F)
    {
      *&v59 = 0.0;
      if (screenType - 100 <= 0x12)
      {
        if (((1 << (screenType - 100)) & 0x2D7EF) != 0)
        {
          *&v59 = 43.0;
          *&v93 = 64.0;
        }

        else
        {
          *&v59 = 63.0;
          *&v93 = 80.0;
        }

        v57 = *&v93;
      }
    }

    else
    {
      v57 = v58 + 36.0;
      *&v59 = v54;
    }

    floatyFolderVisualConfiguration = [(SBIconListGridLayoutConfiguration *)v11 floatyFolderVisualConfiguration];
    [floatyFolderVisualConfiguration setContentBackgroundSize:{v54 * (v12 + 1) + v51 * v12, v58 + v56 + v53 * v12 + v56 * (v12 - 1) + 36.0}];
    [floatyFolderVisualConfiguration setPageControlAreaHeight:36.0];
    [(SBHDefaultIconListLayoutProvider *)self configureFloatyFolderConfiguration:floatyFolderVisualConfiguration forScreenType:screenType layoutOptions:v6];

    *&v27 = v57;
    v26 = *&v59;
    v20 = 0;
    v38 = 0;
    v39 = 0;
    v30 = v198;
    v35 = v201;
    v22 = v198;
    v23 = v201;
    v24 = v14;
    v33 = v206;
    v25 = v206;
    v28 = *&v59;
    v29 = *&v59;
    v31 = *&v59;
    v32 = *&v27;
    v34 = v14;
    v36 = v26;
    v37 = v26;
    v21 = v12;
  }

  else
  {
    v60 = v6 & 0x18;
    if (([locationCopy isEqualToString:@"SBIconLocationRoot"] & 1) != 0 || objc_msgSend(locationCopy, "isEqualToString:", @"SBIconLocationRootWithWidgets"))
    {
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v227 = 0u;
      v228 = 0u;
      v225 = 0u;
      v226 = 0u;
      v224 = 0u;
      SBHGetDefaultIconListLayoutMetrics(screenType, v6, &v224);
      v61 = [locationCopy isEqualToString:@"SBIconLocationRoot"];
      v62 = v6;
      if (v61)
      {
        v63 = &v228;
        v64 = &v227 + 1;
        v65 = &v227;
        v66 = &v226 + 1;
        v67 = &v224 + 3;
        v68 = &v224 + 2;
        v69 = v224;
        v70 = &v224 + 1;
      }

      else
      {
        v63 = &v232 + 1;
        v64 = &v232;
        v65 = &v231 + 1;
        v66 = &v231;
        v67 = &v228 + 11;
        v68 = &v228 + 10;
        v69 = BYTE8(v228);
        v70 = &v228 + 9;
      }

      v21 = *v70;
      v94 = v60 != 0;
      v39 = *v68;
      v38 = *v67;
      v170 = *v66;
      v173 = *v65;
      v169 = *v64;
      v12 = v69;
      v167 = *v63;
      v95 = v62;
      v183 = SBHDefaultAdditionalWidgetLayoutInsetsForOrientation(screenType, 1, v62);
      v186 = v96;
      v189 = v97;
      v192 = v98;
      v99 = SBHDefaultAdditionalWidgetLayoutInsetsForOrientation(screenType, 3, v95);
      v203 = v100;
      v209 = v99;
      v195 = v101;
      v103 = v102;
      SBHDefaultAdditionalLayoutInsetsForOrientation();
      UIEdgeInsetsAdd();
      v37 = v104;
      v106 = v105;
      v108 = v107;
      v168 = v109;
      IsPhone = SBHScreenTypeIsPhone(screenType);
      v20 = v94 & IsPhone;
      if (v94 && IsPhone)
      {
        v111 = 0.0;
      }

      else
      {
        v111 = v108;
      }

      if (SBHScreenTypeIsPad(screenType))
      {
        v112 = @"SBHIconGridSizeClassLarge";

        v212 = v112;
      }

      SBHGetScreenSpecification(screenType, v221);
      v177 = *&v221[1];
      v178 = *v221;
      v35 = v203;
      v33 = v209;
      v22 = v192;
      v34 = v195;
      v30 = v103;
      v26 = v167;
      v31 = v168;
      v27 = v169;
      v29 = v170;
      v28 = v173;
      v24 = v186;
      v23 = v189;
      v25 = v183;
      v36 = v106;
      v32 = v111;
    }

    else if (([locationCopy isEqualToString:@"SBIconLocationAppLibrary"] & 1) != 0 || objc_msgSend(locationCopy, "isEqualToString:", @"SBIconLocationAppLibraryOverlay"))
    {
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v227 = 0u;
      v228 = 0u;
      v225 = 0u;
      v226 = 0u;
      v224 = 0u;
      v113 = _SBHEquivalentPhoneScreenTypeForScreenType(screenType);
      SBHGetDefaultIconListLayoutMetrics(v113, v6, &v224);
      v174 = *&v225;
      v114 = *&v226;
      if (SBHScreenTypeIsPhone(screenType))
      {
        v115 = v224;
        v171 = 8.0;
        v116 = 20.0;
      }

      else
      {
        v118 = _SBHDefaultIconGridSizeClassIconImageInfos(v113, v6);
        [v118 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
        v120 = v119;
        v122 = v121;
        v200 = v15;
        v124 = v123;
        [v10 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
        v125 = v16;
        v126 = v13;
        v128 = v127;
        v215[0] = MEMORY[0x1E69E9820];
        v215[1] = 3221225472;
        v215[2] = __62__SBHDefaultIconListLayoutProvider_makeLayoutForIconLocation___block_invoke_2;
        v215[3] = &unk_1E808C7F0;
        v216 = v11;
        v217 = v120;
        v218 = v122;
        v219 = v128;
        v220 = v124;
        v13 = v126;
        v16 = v125;
        v15 = v200;
        SBHEnumerateIconGridSizeClasses(v215);

        v114 = 0.0;
        v115 = 4;
        v116 = 130.0;
        v171 = 0.0;
        v174 = 0.0;
      }

      if (SBHScreenTypeHasHomeButton(screenType) && SBHScreenTypeIsPhone(screenType))
      {
        v129 = SBHDefaultScreenSizeBucket(screenType);
        v130 = 35.0;
        if (!v129)
        {
          v130 = 24.0;
        }

        v116 = v116 + v130;
      }

      SBHGetScreenSpecification(v113, v214);
      v20 = 0;
      v38 = 0x7FFFFFFFFFFFFFFFLL;
      v22 = v15;
      v23 = v16;
      v177 = *&v214[1];
      v178 = *v214;
      v24 = v14;
      v25 = v13;
      v30 = v15;
      v26 = v114;
      v31 = v114;
      *&v27 = v116;
      v32 = v116;
      v33 = v13;
      v34 = v14;
      v35 = v16;
      v29 = v171;
      v28 = v174;
      v36 = v174;
      v37 = v171;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      v39 = v115;
      v12 = v115;
    }

    else if (([locationCopy isEqualToString:@"SBIconLocationAppLibraryCategoryPod"] & 1) != 0 || (objc_msgSend(locationCopy, "isEqualToString:", @"SBIconLocationAppLibraryCategoryPodSuggestions") & 1) != 0 || objc_msgSend(locationCopy, "isEqualToString:", @"SBIconLocationAppLibraryCategoryPodRecents"))
    {
      v131 = _SBHDefaultCategoryPodIconInset(screenType);
      v132 = _SBHEquivalentPhoneScreenTypeForScreenType(screenType);
      v133 = _SBHDefaultIconGridSizeClassIconImageInfos(v132, v6);
      [v133 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
      v177 = v135;
      v178 = v134;

      v26 = v131;
      v20 = 0;
      v38 = 2;
      v22 = v15;
      v23 = v16;
      v24 = v14;
      v25 = v13;
      *&v27 = v131;
      v28 = v131;
      v29 = v131;
      v30 = v15;
      v31 = v131;
      v32 = v131;
      v33 = v13;
      v34 = v14;
      v35 = v16;
      v36 = v26;
      v37 = v26;
      v39 = 2;
      v21 = 2;
      v12 = 2;
    }

    else
    {
      v177 = v18;
      v178 = v17;
      if ([locationCopy isEqualToString:@"SBIconLocationAppLibraryCategoryPodAdditionalItems"])
      {
        v20 = 0;
        v38 = 0;
        v39 = 0;
        v26 = 0.0;
        v181 = 2;
        *&v27 = 0.0;
        v22 = v15;
        v23 = v16;
        v28 = 0.0;
        v24 = v14;
        v25 = v13;
        v29 = 0.0;
        v30 = v15;
        v31 = 0.0;
        v32 = 0.0;
        v33 = v13;
        v34 = v14;
        v35 = v16;
        v36 = 0.0;
        v37 = 0.0;
        v21 = 2;
        v12 = 2;
      }

      else if ([locationCopy isEqualToString:@"SBIconLocationAppLibraryCategoryPodExpanded"])
      {
        v204 = v16;
        v210 = v13;
        v196 = v14;
        v136 = _SBHEquivalentPhoneScreenTypeForScreenType(screenType);
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
        v224 = 0u;
        SBHGetDefaultIconListLayoutMetrics(v136, v6, &v224);
        if (SBHScreenTypeIsPhone(screenType))
        {
          v12 = v224;
          if (BYTE2(v224))
          {
            v39 = BYTE2(v224);
          }

          else
          {
            v39 = v224;
          }

          v137 = v226;
          v138 = *(&v227 + 1);
          v139 = *&v227;
          v140 = *&v228;
          SBHDefaultAdditionalLayoutInsetsForOrientation();
          UIEdgeInsetsAdd();
          v29 = *(&v137 + 1);
          v27 = v138;
          v28 = v139;
          v26 = v140;
          v32 = v36;
        }

        else
        {
          v142 = SBHLibraryScreenSizeBucket(screenType);
          *&v27 = 0.0;
          v31 = 0.0;
          v143 = 0.0;
          if (v142 <= 2)
          {
            v31 = dbl_1BEE889E8[v142];
            v143 = dbl_1BEE88A00[v142];
            *&v27 = 56.0;
          }

          v39 = 6;
          if (screenType == 105)
          {
            v26 = 164.5;
          }

          else
          {
            v26 = v143;
          }

          v28 = v26;
          v29 = *&v27;
          v36 = v31;
          v32 = *&v27;
          v12 = 6;
        }

        v20 = 0;
        v38 = -1;
        v30 = v15;
        v35 = v204;
        v22 = v15;
        v23 = v204;
        v34 = v196;
        v24 = v196;
        v33 = v210;
        v25 = v210;
        v37 = v32;
        v21 = -1;
      }

      else if ([locationCopy isEqualToString:@"SBIconLocationAppLibrarySearch"])
      {
        [v10 iconImageInfoForGridSizeClass:v212];
        [(SBIconListGridLayoutConfiguration *)v11 setIconImageInfo:v212 forGridSizeClass:48.0, 48.0, v141, SBHDefaultIconImageContinuousCornerRadius(48.0)];
        v20 = 0;
        v38 = 0;
        v39 = 0;
        v21 = 1;
        v22 = v15;
        v23 = v16;
        v24 = v14;
        v25 = v13;
        v26 = v15;
        *&v27 = v16;
        v28 = v14;
        v29 = v13;
        v30 = v15;
        v31 = v15;
        v32 = v16;
        v33 = v13;
        v34 = v14;
        v35 = v16;
        v36 = v14;
        v37 = v33;
        v12 = 1;
      }

      else
      {
        v33 = v13;
        if (([locationCopy isEqualToString:@"SBIconLocationTodayView"] & 1) != 0 || objc_msgSend(locationCopy, "isEqualToString:", @"SBIconLocationTodayViewOverlay"))
        {
          v231 = 0u;
          v232 = 0u;
          v229 = 0u;
          v230 = 0u;
          v227 = 0u;
          v228 = 0u;
          v225 = 0u;
          v226 = 0u;
          v224 = 0u;
          SBHGetDefaultIconListLayoutMetrics(screenType, v6, &v224);
          IsPad = SBHScreenTypeIsPad(screenType);
          if (IsPad)
          {
            v39 = 2;
          }

          else
          {
            v39 = 4;
          }

          [sidebarVisualConfiguration searchBarTopOffset];
          SBHDefaultAdditionalLayoutInsetsForOrientation();
          v145 = 0.0;
          UIEdgeInsetsAdd();
          v172 = v146;
          v148 = v147;
          v32 = v149;
          v151 = v150;
          v184 = SBHDefaultAdditionalWidgetLayoutInsetsForOrientation(screenType, 1, v6);
          v187 = v152;
          v190 = v153;
          v193 = v154;
          v155 = SBHDefaultAdditionalWidgetLayoutInsetsForOrientation(screenType, 3, v6);
          v197 = v156;
          v205 = v157;
          v159 = v158;
          v160 = _SBHEquivalentPhoneScreenTypeForScreenType(screenType);
          SBHGetScreenSpecification(v160, v213);
          v178 = *v213;
          v177 = *&v213[1];
          if (IsPad)
          {
            v161 = _SBHDefaultIconGridSizeClassIconImageInfos(screenType, v6);
            [v161 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
            v163 = v162;
            v165 = v164;
            [v10 iconImageInfoForGridSizeClass:v212];
            [(SBIconListGridLayoutConfiguration *)v11 setIconImageInfo:v212 forGridSizeClass:v163, v165];

            v20 = 0;
            v148 = 0.0;
          }

          else
          {
            v166 = v60 == 0;
            v20 = v60 != 0;
            if (!v166)
            {
              v32 = 0.0;
            }

            v145 = v151;
          }

          v38 = -1;
          v26 = v145;
          v31 = v145;
          *&v27 = v32;
          v28 = v148;
          v36 = v148;
          v29 = v172;
          v21 = -1;
          v12 = v39;
          v33 = v155;
          v37 = v172;
          v22 = v193;
          v34 = v197;
          v35 = v205;
          v30 = v159;
          v24 = v187;
          v23 = v190;
          v25 = v184;
        }

        else
        {
          v20 = 0;
          v38 = 0;
          v39 = 0;
          v21 = 3;
          v30 = v15;
          v22 = v15;
          v35 = v16;
          v23 = v16;
          v34 = v14;
          v24 = v14;
          v25 = v33;
          v26 = v15;
          *&v27 = v16;
          v28 = v14;
          v29 = v33;
          v31 = v15;
          v32 = v16;
          v36 = v14;
          v37 = v33;
          v12 = 3;
        }
      }
    }
  }

  v182 = v25;
  v185 = v24;
  v188 = v23;
  v191 = v22;
  v71 = v36;
  v72 = v31;
  v202 = v35;
  v207 = v33;
  v194 = v34;
  v199 = v30;
  v73 = v28;
  v74 = v29;
  v75 = *&v27;
  v76 = v26;
  [(SBIconListGridLayoutConfiguration *)v11 setNumberOfPortraitRows:v21, *&v167];
  [(SBIconListGridLayoutConfiguration *)v11 setNumberOfPortraitColumns:v12];
  if (v38 && v39)
  {
    [(SBIconListGridLayoutConfiguration *)v11 setNumberOfLandscapeRows:v38];
    [(SBIconListGridLayoutConfiguration *)v11 setNumberOfLandscapeColumns:v39];
  }

  [(SBIconListGridLayoutConfiguration *)v11 setPortraitLayoutInsets:v37, v71, v32, v72];
  [(SBIconListGridLayoutConfiguration *)v11 setLandscapeLayoutInsets:v74, v73, v75, v76];
  [(SBIconListGridLayoutConfiguration *)v11 setPortraitAdditionalWidgetLayoutInsets:v182, v185, v188, v191];
  [(SBIconListGridLayoutConfiguration *)v11 setLandscapeAdditionalWidgetLayoutInsets:v207, v194, v202, v199];
  [(SBIconListGridLayoutConfiguration *)v11 setRotatedLayoutClusterGridSizeClass:v212];
  [(SBIconListGridLayoutConfiguration *)v11 setListSizeForIconSpacingCalculation:v178, v177];
  [(SBIconListGridLayoutConfiguration *)v11 setIconSpacingAxisMatchingBehavior:v20];
  v208 = [(SBHDefaultIconListLayoutProvider *)self gridSizeClassSizesForScreenType:screenType numberOfColumns:v12 iconLocation:locationCopy layoutOptions:v180];
  [(SBIconListGridLayoutConfiguration *)v11 setIconGridSizeClassSizes:?];
  v77 = [(SBHDefaultIconListLayoutProvider *)self supportedIconGridSizeClassesForScreenType:screenType iconLocation:locationCopy layoutOptions:v180];
  [(SBIconListGridLayoutConfiguration *)v11 setSupportedIconGridSizeClasses:v77];
  [(SBHDefaultIconListLayoutProvider *)self configureLabelConfigurations:v11 forScreenType:screenType iconLocation:locationCopy layoutOptions:v180];
  if (([locationCopy isEqualToString:@"SBIconLocationAppLibrary"] & 1) != 0 || objc_msgSend(locationCopy, "isEqualToString:", @"SBIconLocationAppLibraryOverlay"))
  {
    v78 = [(SBIconListGridLayoutConfiguration *)v11 iconLabelVisualConfigurationForContentSizeCategory:*MEMORY[0x1E69DDC70]];
    [v78 setExtraWidth:0.0];

    v79 = [(SBIconListGridLayoutConfiguration *)v11 iconLabelVisualConfigurationForContentSizeCategory:*MEMORY[0x1E69DDC60]];
    [v79 setExtraWidth:0.0];

    v80 = [(SBIconListGridLayoutConfiguration *)v11 iconLabelVisualConfigurationForContentSizeCategory:*MEMORY[0x1E69DDC58]];
    [v80 setExtraWidth:0.0];

    v81 = [(SBIconListGridLayoutConfiguration *)v11 iconLabelVisualConfigurationForContentSizeCategory:*MEMORY[0x1E69DDC50]];
    [v81 setExtraWidth:0.0];

    v82 = [(SBIconListGridLayoutConfiguration *)v11 iconLabelVisualConfigurationForContentSizeCategory:*MEMORY[0x1E69DDC40]];
    [v82 setExtraWidth:0.0];
  }

  iconAccessoryVisualConfiguration = [(SBIconListGridLayoutConfiguration *)v11 iconAccessoryVisualConfiguration];
  [(SBHDefaultIconListLayoutProvider *)self configureIconAccessoryConfiguration:iconAccessoryVisualConfiguration forScreenType:screenType layoutOptions:v180];
  folderIconVisualConfiguration = [(SBIconListGridLayoutConfiguration *)v11 folderIconVisualConfiguration];
  [(SBHDefaultIconListLayoutProvider *)self configureFolderIconConfiguration:folderIconVisualConfiguration forScreenType:screenType numberOfRows:v181 layoutOptions:v180];
  rootFolderVisualConfiguration = [(SBIconListGridLayoutConfiguration *)v11 rootFolderVisualConfiguration];
  [(SBHDefaultIconListLayoutProvider *)self configureRootFolderConfiguration:rootFolderVisualConfiguration forScreenType:screenType layoutOptions:v180];
  floatingDockVisualConfiguration = [(SBIconListGridLayoutConfiguration *)v11 floatingDockVisualConfiguration];
  [(SBHDefaultIconListLayoutProvider *)self configureFloatingDockConfiguration:floatingDockVisualConfiguration forScreenType:screenType layoutOptions:v180];
  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupAppLibrary", v211))
  {
    appLibraryVisualConfiguration = [(SBIconListGridLayoutConfiguration *)v11 appLibraryVisualConfiguration];
    v88 = screenType;
    v89 = appLibraryVisualConfiguration;
    [(SBHDefaultIconListLayoutProvider *)self configureAppLibraryConfiguration:appLibraryVisualConfiguration forScreenType:v88 iconLocation:v211 layoutOptions:v180];
  }

  v90 = objc_opt_self();

  v91 = [[v90 alloc] initWithLayoutConfiguration:v11];

  return v91;
}

void __62__SBHDefaultIconListLayoutProvider_makeLayoutForIconLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 iconImageInfoForGridSizeClass:v4];
  [*(a1 + 40) setIconImageInfo:v4 forGridSizeClass:?];
}

- (id)supportedIconGridSizeClassesForScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options
{
  locationCopy = location;
  v7 = [(SBHIconGridSizeClassSet *)[SBHMutableIconGridSizeClassSet alloc] initWithGridSizeClass:@"SBHIconGridSizeClassDefault"];
  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", locationCopy))
  {
    [(SBHMutableIconGridSizeClassSet *)v7 addGridSizeClass:@"SBHIconGridSizeClassDefault"];
    [(SBHMutableIconGridSizeClassSet *)v7 addGridSizeClass:@"SBHIconGridSizeClassSmall"];
    [(SBHMutableIconGridSizeClassSet *)v7 addGridSizeClass:@"SBHIconGridSizeClassMedium"];
    [(SBHMutableIconGridSizeClassSet *)v7 addGridSizeClass:@"SBHIconGridSizeClassLarge"];
    if (!SBHScreenTypeIsPad(type))
    {
      goto LABEL_7;
    }

    v8 = SBHIconGridSizeClassExtraLarge;
  }

  else
  {
    if (!SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", locationCopy))
    {
      goto LABEL_7;
    }

    [(SBHMutableIconGridSizeClassSet *)v7 removeGridSizeClass:@"SBHIconGridSizeClassDefault"];
    [(SBHMutableIconGridSizeClassSet *)v7 addGridSizeClass:@"SBHIconGridSizeClassSmall"];
    [(SBHMutableIconGridSizeClassSet *)v7 addGridSizeClass:@"SBHIconGridSizeClassMedium"];
    [(SBHMutableIconGridSizeClassSet *)v7 addGridSizeClass:@"SBHIconGridSizeClassLarge"];
    v8 = SBHIconGridSizeClassNewsLargeTall;
  }

  [(SBHMutableIconGridSizeClassSet *)v7 addGridSizeClass:*v8];
LABEL_7:

  return v7;
}

- (void)configureLabelConfigurations:(id)configurations forScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options
{
  locationCopy = location;
  configurationsCopy = configurations;
  v24 = objc_alloc_init(SBHIconLabelVisualConfiguration);
  v12 = objc_alloc_init(SBHIconLabelVisualConfiguration);
  v13 = objc_alloc_init(SBHIconLabelVisualConfiguration);
  v14 = objc_alloc_init(SBHIconLabelVisualConfiguration);
  v15 = objc_alloc_init(SBHIconLabelVisualConfiguration);
  v16 = 14.0;
  v17 = 14.0;
  switch(type)
  {
    case 0uLL:
    case 1uLL:
    case 4uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0x10uLL:
    case 0x12uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x70uLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x75uLL:
      goto LABEL_3;
    case 2uLL:
    case 3uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x11uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x68uLL:
    case 0x6FuLL:
    case 0x71uLL:
    case 0x74uLL:
    case 0x76uLL:
      v17 = 16.0;
      v16 = 15.0;
LABEL_3:
      [(SBHIconLabelVisualConfiguration *)v24 setFontSize:12.0];
      [(SBHIconLabelVisualConfiguration *)v12 setFontSize:13.0];
      [(SBHIconLabelVisualConfiguration *)v13 setFontSize:14.0];
      [(SBHIconLabelVisualConfiguration *)v14 setFontSize:v16];
      [(SBHIconLabelVisualConfiguration *)v15 setFontSize:v17];
      break;
    default:
      break;
  }

  v18 = 17.0;
  v19 = 16.0;
  switch(type)
  {
    case 0uLL:
    case 1uLL:
    case 4uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0x10uLL:
    case 0x12uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x70uLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x75uLL:
      goto LABEL_6;
    case 2uLL:
    case 3uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x11uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x68uLL:
    case 0x6FuLL:
    case 0x71uLL:
    case 0x74uLL:
    case 0x76uLL:
      v18 = 20.0;
      v19 = 18.0;
LABEL_6:
      [(SBHIconLabelVisualConfiguration *)v24 setBaselineOffsetFromImage:16.0];
      [(SBHIconLabelVisualConfiguration *)v12 setBaselineOffsetFromImage:v19];
      [(SBHIconLabelVisualConfiguration *)v13 setBaselineOffsetFromImage:v18];
      [(SBHIconLabelVisualConfiguration *)v14 setBaselineOffsetFromImage:v18];
      [(SBHIconLabelVisualConfiguration *)v15 setBaselineOffsetFromImage:v18];
      break;
    default:
      break;
  }

  if (type >= 0x1F)
  {
    v20 = 29.0;
    if (type - 100 >= 0x13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = 26.0;
  }

  [(SBHIconLabelVisualConfiguration *)v24 setHeight:v20];
  [(SBHIconLabelVisualConfiguration *)v12 setHeight:v20];
  [(SBHIconLabelVisualConfiguration *)v13 setHeight:v20];
  [(SBHIconLabelVisualConfiguration *)v14 setHeight:v20];
  [(SBHIconLabelVisualConfiguration *)v15 setHeight:v20];
LABEL_11:
  v21 = 38.0;
  v22 = 37.0;
  switch(type)
  {
    case 0uLL:
    case 4uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0x10uLL:
    case 0x12uLL:
    case 0x16uLL:
    case 0x1AuLL:
      v22 = 31.0;
      v21 = 31.5;
      goto LABEL_12;
    case 1uLL:
      v22 = 27.0;
      v21 = 27.5;
      goto LABEL_12;
    case 2uLL:
    case 3uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x11uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
LABEL_12:
      [(SBHIconLabelVisualConfiguration *)v24 setExtraWidth:v22];
      [(SBHIconLabelVisualConfiguration *)v12 setExtraWidth:v22];
      [(SBHIconLabelVisualConfiguration *)v13 setExtraWidth:v22];
      [(SBHIconLabelVisualConfiguration *)v14 setExtraWidth:v22];
      [(SBHIconLabelVisualConfiguration *)v15 setExtraWidth:v21];
      break;
    default:
      break;
  }

  [configurationsCopy setIconLabelVisualConfiguration:v24 forContentSizeCategory:*MEMORY[0x1E69DDC70]];
  [configurationsCopy setIconLabelVisualConfiguration:v12 forContentSizeCategory:*MEMORY[0x1E69DDC60]];
  [configurationsCopy setIconLabelVisualConfiguration:v13 forContentSizeCategory:*MEMORY[0x1E69DDC58]];
  [configurationsCopy setIconLabelVisualConfiguration:v14 forContentSizeCategory:*MEMORY[0x1E69DDC50]];
  [configurationsCopy setIconLabelVisualConfiguration:v15 forContentSizeCategory:*MEMORY[0x1E69DDC40]];
  [configurationsCopy setShowsLabels:{-[SBHDefaultIconListLayoutProvider showsLabelsForScreenType:iconLocation:layoutOptions:](self, "showsLabelsForScreenType:iconLocation:layoutOptions:", type, locationCopy, options)}];
  v23 = [locationCopy isEqualToString:@"SBIconLocationFloatingDockUtilities"];

  [configurationsCopy setShowsTooltipsOnHover:v23];
}

- (BOOL)showsLabelsForScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options
{
  optionsCopy = options;
  locationCopy = location;
  v7 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupDock", locationCopy) ^ 1;
  if ((optionsCopy & 0x10) != 0 && ([locationCopy isEqualToString:@"SBIconLocationAppLibrary"] & 1) == 0)
  {
    v7 &= [locationCopy isEqualToString:@"SBIconLocationAppLibraryOverlay"];
  }

  return v7;
}

- (void)configureIconAccessoryConfiguration:(id)configuration forScreenType:(unint64_t)type layoutOptions:(unint64_t)options
{
  optionsCopy = options;
  configurationCopy = configuration;
  v7 = SBHDefaultIconSizeBucket(type, optionsCopy);
  v8 = configurationCopy;
  v9 = v7 - 56;
  if ((v7 - 56) <= 0x1B)
  {
    v7 = configurationCopy;
    if (((1 << v9) & 0x101111) != 0)
    {
      v10 = 11.0;
      v11 = 26.0;
      v12 = 16.0;
LABEL_4:
      [configurationCopy setFontSize:v12];
      [configurationCopy setSize:{v11, v11}];
      v7 = [configurationCopy setOffset:{v10, v10}];
      v8 = configurationCopy;
      goto LABEL_5;
    }

    if (v9 == 27)
    {
      v10 = 12.0;
      v11 = 27.0;
      v12 = 18.5;
      goto LABEL_4;
    }
  }

LABEL_5:

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)configureAppLibraryConfiguration:(id)configuration forScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options
{
  configurationCopy = configuration;
  locationCopy = location;
  v12 = SBHLibraryScreenSizeBucket(type);
  if (SBHScreenTypeIsPhone(type))
  {
    memset(v57, 0, sizeof(v57));
    SBHGetDefaultIconListLayoutMetrics(type, options, v57);
    SBHDefaultAdditionalLayoutInsetsForOrientation();
    UIEdgeInsetsAdd();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    SBHGetScreenSpecification(type, v56);
    v21 = *v56;
    v22 = *&v56[1];
    v23 = SBHDefaultIconImageSize(type, options);
    v24 = SBHCalculateIconSpacing(LOBYTE(v57[0]), v21, v22, v14, v16, v18, v20, v23);
    v26 = v25;
    v27 = v25;
    v28 = v24;
  }

  else if (v12 == 2)
  {
    v24 = -123.0;
    v28 = 42.0;
    v27 = 56.0;
    v26 = 83.0;
  }

  else if (v12 == 1)
  {
    v24 = -123.0;
    v28 = 36.0;
    v27 = 46.0;
    v26 = 55.0;
  }

  else
  {
    v26 = 0.0;
    v24 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    if (!v12)
    {
      v24 = -123.0;
      v28 = 36.0;
      v27 = 46.0;
      v26 = 54.0;
    }
  }

  [configurationCopy setPortraitCategoryPodIconSpacing:?];
  [configurationCopy setLandscapeCategoryPodIconSpacing:{v28, v27}];
  [configurationCopy setExpandedCategoryPodIconSpacing:{v24, v26}];
  [configurationCopy setUsesInsetPlatterSearchAppearance:SBHScreenTypeIsPad(type)];
  [configurationCopy setSearchContinuousCornerRadius:24.0];
  if (SBHScreenTypeIsPhone(type))
  {
    [(SBHDefaultIconListLayoutProvider *)self homeScreenSearchOverlayInsetsForScreenType:type iconLocation:locationCopy layoutOptions:options forAppLibrary:1];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    standardSearchVisualConfiguration = [configurationCopy standardSearchVisualConfiguration];
    [standardSearchVisualConfiguration setTextFieldWidth:0.0];
    [standardSearchVisualConfiguration setTextFieldPortraitLayoutInsets:{v30, v32, v34, v36}];
    [standardSearchVisualConfiguration setTextFieldLandscapeLayoutInsets:{v30, v32, v34, v36}];
    [configurationCopy setActiveSearchVisualConfiguration:standardSearchVisualConfiguration];
    [configurationCopy setCompactSearchVisualConfiguration:standardSearchVisualConfiguration];
    [configurationCopy setExtendedSearchVisualConfiguration:standardSearchVisualConfiguration];
    standardSearchVisualConfiguration2 = [configurationCopy standardSearchVisualConfiguration];
    activeSearchVisualConfiguration = [configurationCopy activeSearchVisualConfiguration];
    v40 = [standardSearchVisualConfiguration2 isEqual:activeSearchVisualConfiguration];

    if ((v40 & 1) == 0)
    {
      NSLog(&cfstr_PhonesShouldUs.isa);
    }
  }

  else
  {
    standardSearchVisualConfiguration = [configurationCopy extendedSearchVisualConfiguration];
    standardSearchVisualConfiguration3 = [configurationCopy standardSearchVisualConfiguration];
    compactSearchVisualConfiguration = [configurationCopy compactSearchVisualConfiguration];
    activeSearchVisualConfiguration2 = [configurationCopy activeSearchVisualConfiguration];
    [standardSearchVisualConfiguration setTextFieldWidth:334.0];
    [standardSearchVisualConfiguration3 setTextFieldWidth:334.0];
    [compactSearchVisualConfiguration setTextFieldWidth:334.0];
    [activeSearchVisualConfiguration2 setTextFieldWidth:556.0];
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    if (v12 <= 2)
    {
      v45 = dbl_1BEE88A18[v12];
      v46 = dbl_1BEE88A30[v12];
      v47 = dbl_1BEE88A48[v12];
      v48 = dbl_1BEE88A60[v12];
      v49 = dbl_1BEE88A78[v12];
      v50 = dbl_1BEE88A90[v12];
      v51 = dbl_1BEE88AA8[v12];
      v52 = dbl_1BEE88AC0[v12];
      v44 = 24.0;
      v53 = dbl_1BEE88AD8[v12];
    }

    v54 = v44;
    v55 = v45;
    if (type == 105)
    {
      v52 = 260.0;
      v49 = 164.0;
      v45 = 66.0;
      v47 = 72.0;
      v53 = 72.0;
    }

    else if (type == 102)
    {
      v52 = 240.0;
      v49 = 144.0;
      v45 = 66.0;
      v47 = 68.0;
    }

    [standardSearchVisualConfiguration setTextFieldLandscapeLayoutInsets:{v53, 0.0, v51, 0.0}];
    [standardSearchVisualConfiguration setTextFieldPortraitLayoutInsets:{v52, 0.0, v51, 0.0}];
    [standardSearchVisualConfiguration3 setTextFieldLandscapeLayoutInsets:{v46, 0.0, v50, 0.0}];
    [standardSearchVisualConfiguration3 setTextFieldPortraitLayoutInsets:{v49, 0.0, v48, 0.0}];
    [compactSearchVisualConfiguration setTextFieldLandscapeLayoutInsets:{v46, 0.0, v50, 0.0}];
    [compactSearchVisualConfiguration setTextFieldPortraitLayoutInsets:{v45, 0.0, v47, 0.0}];
    [activeSearchVisualConfiguration2 setTextFieldLandscapeLayoutInsets:{v46, 0.0, v54, 0.0}];
    [activeSearchVisualConfiguration2 setTextFieldPortraitLayoutInsets:{v55, 0.0, v54, 0.0}];
  }
}

- (void)configureFloatyFolderConfiguration:(id)configuration forScreenType:(unint64_t)type layoutOptions:(unint64_t)options
{
  configurationCopy = configuration;
  v14 = configurationCopy;
  if (type >= 0x1F)
  {
    if (type - 100 > 0x12)
    {
      goto LABEL_9;
    }

    if (((1 << (type - 100)) & 0x2D7EF) != 0)
    {
      v8 = 487.0;
      v7 = 55.0;
    }

    else
    {
      v8 = 617.0;
      v7 = 79.0;
    }

    [configurationCopy setContentBackgroundSize:{v8, v8}];
    configurationCopy = v14;
  }

  else
  {
    v7 = 38.0;
  }

  [configurationCopy setContinuousCornerRadius:v7];
LABEL_9:
  IsPad = SBHScreenTypeIsPad(type);
  v10 = 7.0;
  if (IsPad)
  {
    v10 = 15.0;
    v11 = -8.0;
  }

  else
  {
    v11 = -3.0;
  }

  [v14 setTitleHorizontalInset:v10];
  [v14 setTitleFontSize:34.0];
  [v14 setTitleBottomInset:v11];
  [v14 setTitleVerticallyCentered:!IsPad];
  [v14 setPageControlCustomPadding:{0.0, 8.0}];
  v12 = 55.0;
  if (type >= 0x1F)
  {
    v13 = v14;
    if (type - 100 > 0x12)
    {
      goto LABEL_18;
    }

    if (((1 << (type - 100)) & 0x2D7EF) == 0)
    {
      v12 = 85.0;
    }
  }

  else
  {
    v13 = v14;
  }

  [v13 setRubberBandIntervalForOverscroll:v12];
  v13 = v14;
LABEL_18:
}

- (void)configureFolderIconConfiguration:(id)configuration forScreenType:(unint64_t)type numberOfRows:(unint64_t)rows layoutOptions:(unint64_t)options
{
  optionsCopy = options;
  configurationCopy = configuration;
  if (rows > 2)
  {
    if (rows == 3)
    {
      v11 = 13.0;
      v12 = 3.0;
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = SBHDefaultIconSizeBucket(type, optionsCopy);
      v12 = 0.0;
      if (v13 > 67)
      {
        v14 = 12.0;
        v15 = 3.5;
        if (v13 != 83)
        {
          v15 = 0.0;
          v14 = 0.0;
        }

        if (v13 == 76)
        {
          v15 = 3.0;
          v14 = 11.0;
        }

        if (v13 == 68)
        {
          v12 = 3.0;
        }

        else
        {
          v12 = v15;
        }

        if (v13 == 68)
        {
          v11 = 11.0;
        }

        else
        {
          v11 = v14;
        }

        goto LABEL_30;
      }

      if (v13 == 56 || v13 == 60)
      {
        v11 = 9.5;
        v12 = 2.5;
        if ((optionsCopy & 8) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v11 = 0.0;
        if (v13 != 64)
        {
          goto LABEL_30;
        }

        v12 = 2.75;
        v11 = 10.25;
        if ((optionsCopy & 8) == 0)
        {
          goto LABEL_33;
        }
      }
    }
  }

  else
  {
    v10 = SBHDefaultScreenSizeBucket(type);
    v11 = round(SBHDefaultIconImageSize(type, optionsCopy) * 0.4);
    if (v10 == 2)
    {
      v12 = 7.0;
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v10 != 1)
      {
        v12 = 0.0;
        if (!v10)
        {
          v12 = 5.0;
          if ((optionsCopy & 8) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

LABEL_30:
        if ((optionsCopy & 8) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      v12 = 6.0;
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_31:
  if (SBHScreenTypeIsPhone(type))
  {
    SBHDefaultIconImageSize(type, optionsCopy);
    SBHDefaultIconImageSize(type, optionsCopy & 0xE7);
    SBHGetScreenSpecification(type, v18);
    UIRoundToScale();
    v11 = v16;
    UIRoundToScale();
    v12 = v17;
  }

LABEL_33:
  [configurationCopy setGridCellSize:{v11, v11}];
  [configurationCopy setGridCellSpacing:{v12, v12}];
}

- (void)configureSidebarConfiguration:(id)configuration forScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options
{
  configurationCopy = configuration;
  locationCopy = location;
  switch(type)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
      SBHGetScreenSpecification(type, v15);
      [configurationCopy setContentWidth:v15[0]];
      [configurationCopy setContentFullscreen:1];
      break;
    case 0x64uLL:
    case 0x70uLL:
    case 0x75uLL:
      v13 = 145.0;
      goto LABEL_7;
    case 0x65uLL:
      [configurationCopy setInsets:{0.0, 64.0, 156.0, 64.0}];
      [configurationCopy setContentWidth:329.0];
      v14 = 29.0;
      goto LABEL_11;
    case 0x66uLL:
      [configurationCopy setInsets:{0.0, 64.0, 160.0, 64.0}];
      [configurationCopy setContentWidth:329.0];
      v14 = 37.0;
      goto LABEL_11;
    case 0x67uLL:
      [configurationCopy setInsets:{0.0, 64.0, 166.0, 64.0}];
      [configurationCopy setContentWidth:329.0];
      v14 = 44.0;
      goto LABEL_11;
    case 0x68uLL:
    case 0x6FuLL:
    case 0x71uLL:
    case 0x74uLL:
    case 0x76uLL:
      [configurationCopy setInsets:{0.0, 64.0, 193.0, 64.0}];
      v12 = 364.0;
      goto LABEL_8;
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
      v13 = 175.0;
      goto LABEL_7;
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x72uLL:
    case 0x73uLL:
      v13 = 166.0;
LABEL_7:
      [configurationCopy setInsets:{0.0, 64.0, v13, 64.0}];
      v12 = 329.0;
LABEL_8:
      [configurationCopy setContentWidth:v12];
      break;
    default:
      break;
  }

  if (type - 100 <= 0x12)
  {
    v14 = dbl_1BEE88AF0[type - 100];
LABEL_11:
    [configurationCopy setFirstWidgetTopOffset:v14];
  }

  [(SBHDefaultIconListLayoutProvider *)self homeScreenSearchOverlayInsetsForScreenType:type iconLocation:locationCopy layoutOptions:options forAppLibrary:0];
  [configurationCopy setSearchBarTopOffset:?];
}

- (void)configureRootFolderConfiguration:(id)configuration forScreenType:(unint64_t)type layoutOptions:(unint64_t)options
{
  configurationCopy = configuration;
  v9 = configurationCopy;
  v10 = 0.0;
  switch(type)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
      v10 = -6.5;
      goto LABEL_9;
    case 3uLL:
    case 5uLL:
    case 7uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xDuLL:
      v10 = -15.0;
      goto LABEL_9;
    case 4uLL:
    case 6uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xEuLL:
      v10 = -13.0;
      goto LABEL_9;
    case 0xFuLL:
    case 0x11uLL:
    case 0x13uLL:
      v10 = -13.3333333;
      goto LABEL_9;
    case 0x10uLL:
    case 0x12uLL:
    case 0x14uLL:
      v10 = -11.3333333;
      goto LABEL_9;
    case 0x15uLL:
    case 0x17uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1DuLL:
      v10 = -11.0;
      goto LABEL_9;
    case 0x16uLL:
    case 0x18uLL:
    case 0x1AuLL:
    case 0x1CuLL:
    case 0x1EuLL:
      v10 = -9.0;
      goto LABEL_9;
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
LABEL_9:
      [configurationCopy setIdleTextVerticalOffset:v10];
      break;
    default:
      break;
  }

  v11 = 19.0;
  v12 = 27.0;
  v13 = 12.0;
  v14 = 10.0;
  v15 = 25.0;
  v16 = 26.0;
  v17 = 20.0;
  v18 = 22.0;
  v19 = 68.0;
  v20 = 30.0;
  v21 = 40.0;
  v22 = 18.0;
  v23 = 66.0;
  v24 = 14.0;
  v25 = 60.0;
  v26 = 24.0;
  v27 = 3.0;
  *&v28 = 52.0;
  v29 = 2.0;
  v30 = 58.0;
  v31 = 50.0;
  v32 = 10.0;
  v33 = 10.0;
  switch(type)
  {
    case 0uLL:
    case 1uLL:
      goto LABEL_12;
    case 2uLL:
      [v9 setEditModeButtonLayoutOffset:{5.0, 6.0, 10.0, 19.0, 12.0, 18.0, 22.0, 30.0}];
      [v9 setEditModeButtonSize:{50.0, 24.0}];
      [v9 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
      [v9 setPageControlVerticalOffset:5.66666667];
LABEL_58:
      [v9 setPageControlFrameInset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v48 = 7.0;
      v49 = 7.0;
      goto LABEL_67;
    case 3uLL:
    case 6uLL:
    case 8uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
      v26 = 26.0;
      v29 = 16.0;
      v31 = 60.0;
      v27 = 16.0;
      goto LABEL_12;
    case 4uLL:
      goto LABEL_21;
    case 5uLL:
    case 7uLL:
      v26 = 26.0;
      v27 = 16.0;
      v29 = 28.0;
      v31 = 60.0;
LABEL_12:
      [v9 setEditModeButtonLayoutOffset:{v29, v27, 10.0, 19.0, 12.0, 18.0, 22.0, 30.0}];
      [v9 setEditModeButtonSize:{v31, v26}];
      goto LABEL_13;
    case 9uLL:
      goto LABEL_24;
    case 0xAuLL:
      goto LABEL_31;
    case 0xBuLL:
      goto LABEL_42;
    case 0xCuLL:
      v32 = 16.0;
      v14 = 13.0;
      goto LABEL_21;
    case 0xDuLL:
      goto LABEL_38;
    case 0xEuLL:
      goto LABEL_33;
    case 0xFuLL:
      v24 = 25.0;
      v30 = 64.0;
LABEL_24:
      [v9 setEditModeButtonLayoutOffset:{v24, 19.0, 10.0}];
      [v9 setEditModeButtonSize:{v30, 26.0}];
      [v9 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
LABEL_25:
      v35 = 11.3333333;
      break;
    case 0x10uLL:
      v33 = 18.0;
      v14 = 16.0;
      *&v28 = 60.0;
LABEL_31:
      [v9 setEditModeButtonLayoutOffset:{v14, v33}];
      v39 = v9;
      v40 = *&v28;
      v41 = 26.0;
      goto LABEL_49;
    case 0x11uLL:
      v17 = 30.0;
      v25 = 66.0;
      goto LABEL_42;
    case 0x12uLL:
      v32 = 16.0;
      v14 = 18.0;
LABEL_21:
      [v9 setEditModeButtonLayoutOffset:{v14, v32}];
      [v9 setEditModeButtonSize:{60.0, 26.0}];
      [v9 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
LABEL_22:
      v35 = 9.0;
      break;
    case 0x13uLL:
      v17 = 23.0;
      v23 = 68.0;
      *&v36 = 42.0;
      goto LABEL_37;
    case 0x14uLL:
      v18 = 28.0;
      v23 = 68.0;
      v16 = 28.0;
LABEL_33:
      v42 = v16;
      [v9 setEditModeButtonLayoutOffset:{v18, 20.0, 10.0, 19.0, 12.0, 18.0}];
      [v9 setEditModeButtonSize:{v23, v42}];
      [v9 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
LABEL_34:
      v35 = 14.0;
      break;
    case 0x15uLL:
      v16 = 28.0;
      v22 = 16.0;
      v25 = 66.0;
      v17 = 37.0;
LABEL_42:
      v43 = v16;
      [v9 setEditModeButtonLayoutOffset:{v17, v22, 10.0, 19.0, 12.0}];
      [v9 setEditModeButtonSize:{v25, v43}];
      [v9 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
LABEL_43:
      v35 = 5.66666667;
      break;
    case 0x16uLL:
      goto LABEL_47;
    case 0x17uLL:
      v17 = 16.0;
      v23 = 68.0;
      *&v36 = 50.0;
LABEL_37:
      v20 = *&v36;
LABEL_38:
      [v9 setEditModeButtonLayoutOffset:{v20, v17, 10.0, 19.0, 12.0, 18.0, 22.0}];
      [v9 setEditModeButtonSize:{v23, 28.0}];
      [v9 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
LABEL_39:
      v35 = 13.0;
      break;
    case 0x18uLL:
      goto LABEL_28;
    case 0x19uLL:
      goto LABEL_45;
    case 0x1AuLL:
      v14 = 12.0;
LABEL_47:
      v44 = v9;
      v45 = v14;
      goto LABEL_48;
    case 0x1BuLL:
      [v9 setEditModeButtonLayoutOffset:{50.0, 19.0, 10.0, 19.0, 12.0, 18.0, 22.0, 30.0}];
      [v9 setEditModeButtonSize:{68.0, 28.0}];
      [v9 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
LABEL_60:
      v34 = 15.6666667;
LABEL_64:
      [v9 setPageControlVerticalOffset:v34];
LABEL_65:
      v46 = 0.0;
      v47 = -13.5;
LABEL_66:
      [v9 setPageControlFrameInset:{v46, v47}];
      v48 = 15.0;
      v49 = 15.0;
LABEL_67:
      [v9 setPageControlCustomPadding:{v48, v49}];
      goto LABEL_68;
    case 0x1CuLL:
      v13 = 14.0;
      v19 = 68.0;
      *&v37 = 40.0;
      goto LABEL_27;
    case 0x1DuLL:
      v11 = 25.0;
LABEL_45:
      v44 = v9;
      v15 = 39.0;
      v45 = v11;
LABEL_48:
      [v44 setEditModeButtonLayoutOffset:{v15, v45, v14}];
      v40 = 66.0;
      v41 = 28.0;
      v39 = v9;
LABEL_49:
      [v39 setEditModeButtonSize:{v40, v41}];
      [v9 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
LABEL_50:
      v35 = 7.66666667;
      break;
    case 0x1EuLL:
      v12 = 28.0;
      v13 = 20.0;
      v19 = 66.0;
      *&v37 = 36.0;
LABEL_27:
      v21 = *&v37;
LABEL_28:
      v38 = v12;
      [v9 setEditModeButtonLayoutOffset:{v21, v13, 10.0, 19.0}];
      [v9 setEditModeButtonSize:{v19, v38}];
      [v9 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
LABEL_29:
      v35 = 12.6666667;
      break;
    default:
LABEL_13:
      [v9 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0, v13, v22, v18, v20}];
      v34 = 7.66666667;
      v35 = 0.666666667;
      switch(type)
      {
        case 0uLL:
        case 1uLL:
          goto LABEL_51;
        case 3uLL:
        case 6uLL:
          v35 = 13.3333333;
          goto LABEL_51;
        case 4uLL:
        case 0xCuLL:
        case 0x12uLL:
          goto LABEL_22;
        case 5uLL:
          goto LABEL_64;
        case 7uLL:
          v34 = 6.5;
          goto LABEL_64;
        case 8uLL:
          [v9 setPageControlVerticalOffset:{13.0, 7.66666667}];
LABEL_53:
          v46 = 0.0;
          v47 = -2.5;
          goto LABEL_66;
        case 9uLL:
        case 0xFuLL:
          goto LABEL_25;
        case 0xAuLL:
        case 0x10uLL:
        case 0x16uLL:
        case 0x19uLL:
        case 0x1AuLL:
        case 0x1DuLL:
          goto LABEL_50;
        case 0xBuLL:
        case 0x11uLL:
        case 0x15uLL:
          goto LABEL_43;
        case 0xDuLL:
        case 0x13uLL:
        case 0x17uLL:
          goto LABEL_39;
        case 0xEuLL:
        case 0x14uLL:
          goto LABEL_34;
        case 0x18uLL:
        case 0x1CuLL:
        case 0x1EuLL:
          goto LABEL_29;
        case 0x1BuLL:
          goto LABEL_60;
        case 0x64uLL:
        case 0x65uLL:
        case 0x66uLL:
        case 0x67uLL:
        case 0x68uLL:
        case 0x69uLL:
        case 0x6AuLL:
        case 0x6BuLL:
        case 0x6CuLL:
        case 0x6DuLL:
        case 0x6EuLL:
        case 0x6FuLL:
        case 0x70uLL:
        case 0x71uLL:
        case 0x72uLL:
        case 0x73uLL:
        case 0x74uLL:
        case 0x75uLL:
        case 0x76uLL:
          v35 = 0.0;
          goto LABEL_51;
        default:
          goto LABEL_52;
      }
  }

LABEL_51:
  [v9 setPageControlVerticalOffset:{v35, v34}];
LABEL_52:
  switch(type)
  {
    case 0uLL:
      goto LABEL_58;
    case 1uLL:
      [v9 setPageControlFrameInset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v48 = 4.5;
      v49 = 4.5;
      goto LABEL_67;
    case 3uLL:
    case 6uLL:
    case 8uLL:
    case 9uLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x14uLL:
    case 0x18uLL:
    case 0x1CuLL:
    case 0x1EuLL:
      goto LABEL_53;
    case 4uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0x10uLL:
    case 0x12uLL:
    case 0x16uLL:
    case 0x1AuLL:
      [v9 setPageControlFrameInset:{0.0, -2.5}];
      v48 = *MEMORY[0x1E695F060];
      v49 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_67;
    case 5uLL:
    case 7uLL:
    case 0xBuLL:
    case 0xDuLL:
    case 0x11uLL:
    case 0x13uLL:
    case 0x15uLL:
    case 0x17uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1DuLL:
      goto LABEL_65;
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x70uLL:
    case 0x75uLL:
      v46 = *MEMORY[0x1E695F060];
      v47 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_66;
    case 0x68uLL:
    case 0x6FuLL:
    case 0x71uLL:
    case 0x74uLL:
    case 0x76uLL:
      [v9 setPageControlFrameInset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v49 = 13.0;
      v48 = 19.0;
      goto LABEL_67;
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x72uLL:
    case 0x73uLL:
      [v9 setPageControlFrameInset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v49 = 13.0;
      v48 = 18.0;
      goto LABEL_67;
    default:
      break;
  }

LABEL_68:
  [v9 setScrollAccessoryVerticalOffsetAdjustmentForAuxiliaryView:{-1.0, v34}];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  _SBHDefaultDockMetrics(type, options, &v75);
  [v9 setDockViewHeight:*&v75];
  [v9 setDockBackgroundViewCornerRadius:*(&v75 + 1)];
  [v9 setDockBackgroundViewInsets:{v76, v77}];
  [v9 setDockListViewInsets:{v78, v79}];
  [v9 setPageManagementPageCheckboxVerticalMargin:12.0];
  v50 = 36.0;
  [v9 setPageManagementPageCheckboxDiameter:36.0];
  [v9 setPageManagementFocusModeOptionsButtonSize:{132.0, 42.0}];
  if (type - 100 >= 0x13)
  {
    v58 = SBHDefaultScreenSizeBucket(type);
    v54 = 0.45;
    if (v58)
    {
      if (v58 == 2)
      {
        v72 = 26.0;
        v74 = 28.0;
        v73 = 0.21;
        v70 = 52.0;
        v71 = 216.0;
        v56 = 36.0;
        v52 = 0.32;
        v57 = 108.0;
        v53 = 42.0;
        v51 = 42.0;
        v55 = 42.0;
      }

      else
      {
        if (v58 != 1)
        {
          goto LABEL_78;
        }

        v72 = 20.0;
        v74 = 26.0;
        v73 = 0.21;
        v70 = 40.0;
        v71 = 160.0;
        v56 = 32.0;
        v52 = 0.32;
        v57 = 96.0;
        v55 = 38.0;
        v53 = 36.0;
        v51 = 36.0;
      }

      v50 = v56;
    }

    else
    {
      v72 = 16.0;
      v74 = 21.0;
      v56 = 24.0;
      v73 = 0.21;
      v53 = 32.0;
      v71 = 120.0;
      v52 = 0.32;
      v57 = 48.0;
      v55 = 38.0;
      v51 = 32.0;
      v50 = 24.0;
      v70 = 32.0;
    }
  }

  else
  {
    v73 = 0.22;
    v51 = 40.0;
    v74 = 64.0;
    v52 = 0.35;
    v53 = 56.0;
    v54 = 0.48;
    v55 = 56.0;
    v56 = 40.0;
    v57 = 40.0;
    v71 = 40.0;
    v72 = 36.0;
    v70 = 40.0;
  }

  [v9 setPageManagementLayoutMetrics:0 forLayoutConfiguration:{0.0, 0.0, 0.0, v54}];
  [v9 setPageManagementLayoutMetrics:1 forLayoutConfiguration:{v53, v51, 0.0, v52}];
  [v9 setPageManagementLayoutMetrics:2 forLayoutConfiguration:{v55, v56, v57, v52}];
  [v9 setPageManagementLayoutMetrics:3 forLayoutConfiguration:{v74, v50, v71, v73}];
  [v9 setPageManagementLayoutMetrics:4 forLayoutConfiguration:{v74, v72, v70, v73}];
LABEL_78:
  v59 = 14.0;
  if (type >= 0x1F)
  {
    if (type - 100 > 0x12)
    {
      goto LABEL_82;
    }

    v59 = -10000.0;
  }

  [v9 setEditingEntryAreaHorizontalInset:v59];
LABEL_82:
  if (([(SBHDefaultIconListLayoutProvider *)self layoutOptions]& 8) != 0)
  {
    [v9 dockBackgroundViewInsets];
    UIEdgeInsetsAdd();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    [v9 dockBackgroundViewCornerRadius];
    v69 = v68;
    [v9 setDockBackgroundViewInsets:{v61, v63, v65, v67}];
    [v9 setDockBackgroundViewCornerRadius:v69 + 0.0];
  }
}

- (void)configureFloatingDockConfiguration:(id)configuration forScreenType:(unint64_t)type layoutOptions:(unint64_t)options
{
  if ((options & 0x18) != 0)
  {
    v6 = SBHDefaultIconImageSize(type, options & 0xE7);
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  [configuration setMaximumEditingIconSize:{v6, v7}];
}

- (id)layoutForIconLocation:(id)location
{
  locationCopy = location;
  v5 = [(NSMutableDictionary *)self->_cachedListLayouts objectForKey:locationCopy];
  if (!v5)
  {
    if (!self->_cachedListLayouts)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      cachedListLayouts = self->_cachedListLayouts;
      self->_cachedListLayouts = v6;
    }

    v5 = [(SBHDefaultIconListLayoutProvider *)self makeLayoutForIconLocation:locationCopy];
    [(NSMutableDictionary *)self->_cachedListLayouts setObject:v5 forKey:locationCopy];
  }

  return v5;
}

- (UIEdgeInsets)homeScreenSearchOverlayInsetsForScreenType:(unint64_t)type iconLocation:(id)location layoutOptions:(unint64_t)options forAppLibrary:(BOOL)library
{
  libraryCopy = library;
  locationCopy = location;
  memset(v21, 0, sizeof(v21));
  SBHGetDefaultIconListLayoutMetrics(type, options, v21);
  v10 = *(v21 + 1);
  if ([locationCopy isEqualToString:@"SBIconLocationTodayViewOverlay"])
  {
    v11 = 1;
  }

  else
  {
    v11 = [locationCopy isEqualToString:@"SBIconLocationAppLibraryOverlay"];
  }

  v12 = 0.0;
  switch(type)
  {
    case 0uLL:
    case 1uLL:
      v20 = *(v21 + 1) + -20.0 + -4.0;
      v19 = v11 == 0;
      goto LABEL_19;
    case 2uLL:
      v14 = *(v21 + 1) + -20.0 + -6.0;
      v13 = v11 == 0;
      goto LABEL_6;
    case 3uLL:
    case 5uLL:
    case 7uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x11uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
      v13 = v11 == 0;
      v14 = 12.0;
LABEL_6:
      if (!v13)
      {
        v10 = v14;
      }

      v12 = 24.0;
      if (!v11)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 4uLL:
    case 6uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0x10uLL:
    case 0x12uLL:
    case 0x16uLL:
    case 0x1AuLL:
      v19 = v11 == 0;
      v20 = 6.0;
LABEL_19:
      if (!v19)
      {
        v10 = v20;
      }

      v12 = 12.0;
      if (!v11)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
      if (libraryCopy)
      {
        NSLog(&cfstr_AppLibraryOnIp.isa);
      }

      if (v11)
      {
        v10 = 0.0;
      }

      goto LABEL_14;
    default:
LABEL_14:
      if (v11)
      {
LABEL_15:
        if (SBHScreenTypeIsPhone(type))
        {
          v10 = v10 + 4.0;
        }
      }

LABEL_17:

      v15 = 0.0;
      v16 = 0.0;
      v17 = v10;
      v18 = v12;
      result.right = v16;
      result.bottom = v18;
      result.left = v15;
      result.top = v17;
      return result;
  }
}

- (unint64_t)layoutOptionsForIconLocation:(id)location
{
  locationCopy = location;
  layoutOptions = [(SBHDefaultIconListLayoutProvider *)self layoutOptions];
  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupAppLibrary", locationCopy) && ![locationCopy isEqualToString:@"SBIconLocationAppLibraryCategoryPodExpanded"])
  {
    layoutOptions &= 0xFFFFFFFFFFFFFFE7;
  }

  return layoutOptions;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHDefaultIconListLayoutProvider *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHDefaultIconListLayoutProvider *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHDefaultIconListLayoutProvider *)self succinctDescriptionBuilder];
  v5 = SBHStringForScreenType([(SBHDefaultIconListLayoutProvider *)self screenType]);
  [succinctDescriptionBuilder appendString:v5 withName:@"screenType"];

  v6 = SBHStringForDefaultListLayoutProviderLayoutOptions([(SBHDefaultIconListLayoutProvider *)self layoutOptions]);
  if ([v6 length])
  {
    [succinctDescriptionBuilder appendString:v6 withName:@"layoutOptions"];
  }

  return succinctDescriptionBuilder;
}

@end