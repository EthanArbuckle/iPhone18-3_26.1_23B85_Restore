@interface SBDisplayItemLayoutAttributesCalculator
- (BOOL)_appLayoutContainsOnlyResizableApps:(id)apps;
- (CGPoint)centerForLayoutAttributes:(id)attributes windowingConfiguration:(id)configuration;
- (CGRect)containerBoundsForWindowScene:(id)scene containerOrientation:(int64_t)orientation;
- (CGRect)frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation bounds:(CGRect)bounds;
- (CGRect)frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation windowScene:(id)scene;
- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration bounds:(CGRect)bounds;
- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration windowScene:(id)scene;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout containerOrientation:(int64_t)orientation windowScene:(id)scene;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout layoutAttributesMap:(id)map containerOrientation:(int64_t)orientation windowScene:(id)scene;
- (CGSize)_minSizeForDisplayItem:(id)item inContainerBounds:(CGRect)bounds layoutGrid:(id)grid layoutRestrictionInfo:(id)info contentOrientation:(int64_t)orientation screenScale:(double)scale windowingConfiguration:(id)configuration;
- (CGSize)sizeForLayoutAttributes:(id)attributes windowingConfiguration:(id)configuration;
- (CGSize)sizeForSlideOverConfiguration:(SBDisplayItemSlideOverConfiguration *)configuration windowingConfiguration:(id)windowingConfiguration;
- (SBDisplayItemLayoutAttributesProviding)preferredDisplayItemLayoutAttributesProvider;
- (SBDisplayItemSlideOverConfiguration)updatedSlideOverConfigurationForItemWithSize:(SEL)size center:(CGSize)center slideOverConfiguration:(CGPoint)configuration windowingConfiguration:(SBDisplayItemSlideOverConfiguration *)windowingConfiguration;
- (double)_frameForLayoutRole:(CGFloat)role inAppLayout:(CGFloat)layout layoutAttributesMap:(CGFloat)map containerBounds:(double)bounds containerOrientation:(double)orientation windowingConfiguration:(uint64_t)configuration floatingDockHeight:(uint64_t)height screenScale:(void *)self0 isChamoisWindowingUIEnabled:(void *)self1 prefersStripHidden:(uint64_t)self2 prefersDockHidden:(void *)self3 leftStatusBarPartIntersectionRegion:(int)self4 rightStatusBarPartIntersectionRegion:(__int16)self5 skipAutoLayout:(uint64_t)self6;
- (double)frameForLayoutRole:(double)role inAppLayout:(double)layout containerBounds:(double)bounds containerOrientation:(double)orientation floatingDockHeight:(double)height screenScale:(uint64_t)scale isChamoisWindowingUIEnabled:(uint64_t)enabled isEmbeddedDisplay:(void *)self0 prefersStripHidden:(uint64_t)self1 prefersDockHidden:(uint64_t)self2 leftStatusBarPartIntersectionRegion:(uint64_t)self3 rightStatusBarPartIntersectionRegion:(uint64_t)self4;
- (id)_appLayoutByPerformingAutoLayoutIfNeededInAppLayout:(double)layout previousAppLayout:(CGFloat)appLayout usingNewLayoutAttributes:(CGFloat)attributes options:(CGFloat)options containerOrientation:(CGFloat)orientation windowingConfiguration:(uint64_t)configuration floatingDockHeight:(void *)height screenScale:(void *)self0 bounds:(void *)self1 prefersStripHidden:(uint64_t)self2 prefersDockHidden:(uint64_t)self3 source:(void *)self4 leftStatusBarPartIntersectionRegion:(__int16)self5 rightStatusBarPartIntersectionRegion:(unint64_t)self6 itemsNeedingPositionSnapping:(uint64_t)self7 itemsNeedingSizeSnapping:(uint64_t)self8;
- (id)_appLayoutByPerformingAutoLayoutIfNeededInAppLayout:(double)layout previousAppLayout:(double)appLayout layoutAttributes:(double)attributes options:(double)options containerOrientation:(double)orientation windowingConfiguration:(uint64_t)configuration floatingDockHeight:(void *)height screenScale:(void *)self0 bounds:(void *)self1 prefersStripHidden:(uint64_t)self2 prefersDockHidden:(uint64_t)self3 source:(void *)self4 leftStatusBarPartIntersectionRegion:(__int16)self5 rightStatusBarPartIntersectionRegion:(uint64_t)self6 itemsNeedingPositionSnapping:(uint64_t)self7 itemsNeedingSizeSnapping:(uint64_t)self8;
- (id)_applicationForDisplayItem:(id)item;
- (id)_centerWindowSheetMetricsCache;
- (id)_chamoisLayoutGridCache;
- (id)_deviceApplicationSceneHandleForDisplayItem:(id)item;
- (id)_displayItemLayoutAttributesProvider;
- (id)_flexibleAutoLayoutController;
- (id)_preferredMinimumSizeMapForAppLayout:(id)layout;
- (id)_windowingSettingsCache;
- (id)appLayoutByPerformingAutoLayoutForAppLayout:(double)layout previousAppLayout:(double)appLayout options:(double)options containerOrientation:(double)orientation floatingDockHeight:(double)height screenScale:(uint64_t)scale bounds:(void *)bounds isEmbeddedDisplay:(void *)self0 prefersStripHidden:(uint64_t)self1 prefersDockHidden:(uint64_t)self2 source:(unsigned int)self3 leftStatusBarPartIntersectionRegion:(uint64_t)self4 rightStatusBarPartIntersectionRegion:(unsigned __int8)self5 itemsNeedingPositionSnapping:(uint64_t)self6 itemsNeedingSizeSnapping:(__int128)self7;
- (id)appLayoutByPerformingAutoLayoutForAppLayout:(id)layout previousAppLayout:(id)appLayout usingLayoutAttributes:(id)attributes options:(unint64_t)options containerOrientation:(int64_t)orientation windowScene:(id)scene source:(int64_t)source itemsNeedingPositionSnapping:(id)self0 itemsNeedingSizeSnapping:(id)self1;
- (id)flexibleWindowingAutoLayoutSpaceForAppLayout:(double)layout containerOrientation:(double)orientation floatingDockHeight:(double)height screenScale:(double)scale bounds:(double)bounds isEmbeddedDisplay:(uint64_t)display prefersStripHidden:(void *)hidden prefersDockHidden:(uint64_t)self0 leftStatusBarPartIntersectionRegion:(uint64_t)self1 rightStatusBarPartIntersectionRegion:(uint64_t)self2;
- (id)flexibleWindowingAutoLayoutSpaceForAppLayout:(double)layout containerOrientation:(double)orientation floatingDockHeight:(double)height screenScale:(double)scale bounds:(double)bounds isEmbeddedDisplay:(uint64_t)display prefersStripHidden:(void *)hidden prefersDockHidden:(uint64_t)self0 newLayoutAttributes:(unsigned int)self1 leftStatusBarPartIntersectionRegion:(uint64_t)self2 rightStatusBarPartIntersectionRegion:(uint64_t)self3 itemsNeedingPositionSnapping:(void *)self4 itemsNeedingSizeSnapping:(__int128)self5;
- (id)layoutRestrictionInfoForItem:(id)item;
- (int64_t)sizingPolicyForDisplayItem:(id)item contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation proposedSizingPolicy:(int64_t)policy windowScene:(id)scene;
@end

@implementation SBDisplayItemLayoutAttributesCalculator

- (id)_windowingSettingsCache
{
  windowingSettingsCache = self->_windowingSettingsCache;
  if (!windowingSettingsCache)
  {
    v4 = +[SBAppSwitcherDomain rootSettings];
    windowingSettings = [v4 windowingSettings];
    v6 = self->_windowingSettingsCache;
    self->_windowingSettingsCache = windowingSettings;

    windowingSettingsCache = self->_windowingSettingsCache;
  }

  return windowingSettingsCache;
}

- (id)_displayItemLayoutAttributesProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredDisplayItemLayoutAttributesProvider);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    displayItemLayoutAttributesProvider = WeakRetained;
  }

  else
  {
    v5 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    displayItemLayoutAttributesProvider = [v5 displayItemLayoutAttributesProvider];
  }

  return displayItemLayoutAttributesProvider;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout containerOrientation:(int64_t)orientation windowScene:(id)scene
{
  [(SBDisplayItemLayoutAttributesCalculator *)self frameForLayoutRole:role inAppLayout:layout layoutAttributesMap:0 containerOrientation:orientation windowScene:scene];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout layoutAttributesMap:(id)map containerOrientation:(int64_t)orientation windowScene:(id)scene
{
  layoutCopy = layout;
  mapCopy = map;
  sceneCopy = scene;
  [(SBDisplayItemLayoutAttributesCalculator *)self containerBoundsForWindowScene:sceneCopy containerOrientation:orientation];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (SBLayoutRoleIsValidForSplitView(role))
  {
    v23 = [(SBDisplayItemLayoutAttributesCalculator *)self _appLayoutContainsOnlyResizableApps:layoutCopy]^ 1;
  }

  else
  {
    v23 = 0;
  }

  selfCopy = self;
  _windowingSettingsCache = [(SBDisplayItemLayoutAttributesCalculator *)self _windowingSettingsCache];
  floatingDockController = [sceneCopy floatingDockController];
  [floatingDockController floatingDockHeightForFrame:{v16, v18, v20, v22}];
  v28 = v27;

  v84 = _windowingSettingsCache;
  v77 = v28;
  v79 = [_windowingSettingsCache windowingConfigurationForWindowScene:sceneCopy interfaceOrientation:orientation requiresFullScreen:v23 floatingDockHeight:v28];
  switcherController = [sceneCopy switcherController];
  contentViewController = [switcherController contentViewController];
  v31 = objc_opt_class();
  v32 = contentViewController;
  v82 = v18;
  v83 = v16;
  v80 = v22;
  v81 = v20;
  if (v31)
  {
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  screen = [sceneCopy screen];
  [screen scale];
  v76 = v36;

  v78 = switcherController;
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  prefersStripHidden = [v34 prefersStripHidden];
  prefersDockHidden = [v34 prefersDockHidden];
  personality = [v34 personality];

  [personality leftStatusBarPartIntersectionRegion];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  [personality rightStatusBarPartIntersectionRegion];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  if (mapCopy || !isChamoisOrFlexibleWindowing)
  {
    v60 = mapCopy;
  }

  else
  {
    _displayItemLayoutAttributesProvider = [(SBDisplayItemLayoutAttributesCalculator *)selfCopy _displayItemLayoutAttributesProvider];
    preferredDisplayOrdinal = [layoutCopy preferredDisplayOrdinal];
    if ((orientation - 1) < 2)
    {
      v59 = 1;
    }

    else
    {
      v59 = 2 * ((orientation - 3) < 2);
    }

    v60 = [_displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:layoutCopy displayOrdinal:preferredDisplayOrdinal orientation:v59];

    mapCopy = 0;
  }

  LOBYTE(v74) = 0;
  BYTE1(v73) = prefersDockHidden;
  LOBYTE(v73) = prefersStripHidden;
  [(SBDisplayItemLayoutAttributesCalculator *)selfCopy _frameForLayoutRole:role inAppLayout:layoutCopy layoutAttributesMap:v60 containerBounds:orientation containerOrientation:v79 windowingConfiguration:isChamoisOrFlexibleWindowing floatingDockHeight:v83 screenScale:v82 isChamoisWindowingUIEnabled:v81 prefersStripHidden:v80 prefersDockHidden:v77 leftStatusBarPartIntersectionRegion:v76 rightStatusBarPartIntersectionRegion:v73 skipAutoLayout:v42, v44, v46, v48, v50, v52, v54, v56, v74];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;

  v69 = v62;
  v70 = v64;
  v71 = v66;
  v72 = v68;
  result.size.height = v72;
  result.size.width = v71;
  result.origin.y = v70;
  result.origin.x = v69;
  return result;
}

- (double)frameForLayoutRole:(double)role inAppLayout:(double)layout containerBounds:(double)bounds containerOrientation:(double)orientation floatingDockHeight:(double)height screenScale:(uint64_t)scale isChamoisWindowingUIEnabled:(uint64_t)enabled isEmbeddedDisplay:(void *)self0 prefersStripHidden:(uint64_t)self1 prefersDockHidden:(uint64_t)self2 leftStatusBarPartIntersectionRegion:(uint64_t)self3 rightStatusBarPartIntersectionRegion:(uint64_t)self4
{
  displayCopy = display;
  if (dockHidden)
  {
    _displayItemLayoutAttributesProvider = [self _displayItemLayoutAttributesProvider];
    preferredDisplayOrdinal = [displayCopy preferredDisplayOrdinal];
    if ((hidden - 1) < 2)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2 * ((hidden - 3) < 2);
    }

    v37 = [_displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:displayCopy displayOrdinal:preferredDisplayOrdinal orientation:v36];
  }

  else
  {
    v37 = 0;
  }

  v38 = [self _appLayoutContainsOnlyResizableApps:displayCopy];
  _windowingSettingsCache = [self _windowingSettingsCache];
  v40 = [_windowingSettingsCache windowingConfigurationForContainerBounds:hidden interfaceOrientation:v38 ^ 1u floatingDockHeight:intersectionRegion requiresFullScreen:a15 prefersStripHidden:region prefersDockHidden:1 isEmbeddedDisplay:a2 isFlexibleWindowingEnabled:{role, layout, bounds, orientation}];

  LOBYTE(v45) = 0;
  BYTE1(v44) = a15;
  LOBYTE(v44) = intersectionRegion;
  [self _frameForLayoutRole:enabled inAppLayout:displayCopy layoutAttributesMap:v37 containerBounds:hidden containerOrientation:v40 windowingConfiguration:dockHidden floatingDockHeight:a2 screenScale:role isChamoisWindowingUIEnabled:layout prefersStripHidden:bounds prefersDockHidden:orientation leftStatusBarPartIntersectionRegion:height rightStatusBarPartIntersectionRegion:v44 skipAutoLayout:{a16, a17, a18, a19, a20, a21, a22, a23, v45}];
  v42 = v41;

  return v42;
}

- (double)_frameForLayoutRole:(CGFloat)role inAppLayout:(CGFloat)layout layoutAttributesMap:(CGFloat)map containerBounds:(double)bounds containerOrientation:(double)orientation windowingConfiguration:(uint64_t)configuration floatingDockHeight:(uint64_t)height screenScale:(void *)self0 isChamoisWindowingUIEnabled:(void *)self1 prefersStripHidden:(uint64_t)self2 prefersDockHidden:(void *)self3 leftStatusBarPartIntersectionRegion:(int)self4 rightStatusBarPartIntersectionRegion:(__int16)self5 skipAutoLayout:(uint64_t)self6
{
  scaleCopy = scale;
  enabledCopy = enabled;
  dockHiddenCopy = dockHidden;
  if (HIBYTE(intersectionRegion))
  {
    boundsCopy = 0.0;
  }

  else
  {
    boundsCopy = bounds;
  }

  if (!region || a24)
  {
    v40 = scaleCopy;
  }

  else
  {
    LOWORD(v161) = intersectionRegion;
    v40 = [self _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:scaleCopy previousAppLayout:0 layoutAttributes:enabledCopy options:0 containerOrientation:hidden windowingConfiguration:dockHiddenCopy floatingDockHeight:boundsCopy screenScale:orientation bounds:a2 prefersStripHidden:role prefersDockHidden:layout source:map leftStatusBarPartIntersectionRegion:v161 rightStatusBarPartIntersectionRegion:0 itemsNeedingPositionSnapping:autoLayout itemsNeedingSizeSnapping:{a17, a18, a19, a20, a21, a22, a23, 0, 0}];
  }

  v41 = v40;
  isFlexibleWindowingEnabled = [dockHiddenCopy isFlexibleWindowingEnabled];
  if (height != 4)
  {
    v43 = isFlexibleWindowingEnabled;
    if ([v41 environment] != 3)
    {
      if (height == 3 || [v41 environment] == 2)
      {
        [self frameForFloatingAppLayoutInInterfaceOrientation:hidden floatingConfiguration:2 bounds:{a2, role, layout, map}];
        goto LABEL_11;
      }

      v176 = *MEMORY[0x277CBF3A8];
      v171 = *(MEMORY[0x277CBF3A8] + 8);
      UIRectGetCenter();
      if (!region)
      {
        SBLayoutDefaultSideLayoutElementWidth();
        SBLayoutDefaultSideLayoutElementWidth();
        v49 = MEMORY[0x277D76620];
        [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
        configuration = [v41 configuration];
        if (configuration != 3 || (hidden - 1) >= 2)
        {
          v52 = configuration;
        }

        else
        {
          v52 = 4;
        }

        v53 = [*v49 userInterfaceLayoutDirection] == 1;
        if (v53 && v52 == 2)
        {
          v54 = 4;
        }

        else
        {
          v54 = v52;
        }

        v147 = !v53 || v52 != 4;
        v55 = 2;
        if (v147)
        {
          v55 = v54;
        }

        if (v55 <= 1)
        {
          UIRectGetCenter();
        }

        goto LABEL_113;
      }

      v163 = v43;
      if (([dockHiddenCopy prefersDockHidden] | v43))
      {
        UIRectGetCenter();
        v174 = v47;
        v168 = v48;
      }

      else
      {
        v174 = a2 + layout * 0.5;
        v168 = (map - bounds) * 0.5;
      }

      cachedLastFlexibleWindowingAutoLayoutSpace = [v41 cachedLastFlexibleWindowingAutoLayoutSpace];
      v57 = [v41 itemForLayoutRole:height];
      v166 = cachedLastFlexibleWindowingAutoLayoutSpace;
      v58 = [cachedLastFlexibleWindowingAutoLayoutSpace flexibleAutoLayoutItemForDisplayItemIfExists:v57];

      [v58 size];
      v60 = v59;
      v172 = v61;
      v165 = v58;
      [v58 position];
      v63 = v62;
      v162 = v64;
      v65 = [v41 itemForLayoutRole:height];
      v66 = [enabledCopy objectForKey:v65];
      v167 = v65;
      v179 = [self layoutRestrictionInfoForItem:v65];
      layoutRestrictions = [v179 layoutRestrictions];
      if (a24)
      {
        [self sizeForLayoutAttributes:v66 windowingConfiguration:dockHiddenCopy];
        v170 = v67;
        mapCopy = v68;
        v69 = v66;
      }

      else
      {
        v70 = v60 == 1.79769313e308;
        v71 = v172 == 1.79769313e308;
        v72 = v70 && v71;
        v73 = v176;
        if (!v70 || !v71)
        {
          v73 = v60;
        }

        v170 = v73;
        v69 = v66;
        if ((BSFloatLessThanOrEqualToFloat() & 1) != 0 || (!v72 ? (v74 = v172) : (v74 = v171), BSFloatLessThanOrEqualToFloat()))
        {
          [self sizeForLayoutAttributes:v66 windowingConfiguration:dockHiddenCopy];
          v170 = v75;
          v74 = v76;
        }

        mapCopy = v74;
        if (v63 != 1.79769313e308)
        {
          v77 = v162;
LABEL_46:
          v79 = v63 == 0.0;
          v80 = v77 == 0.0;
          if (v79 && v80)
          {
            v81 = v168;
          }

          else
          {
            v81 = v77;
          }

          v82 = v174;
          if (!v79 || !v80)
          {
            v82 = v63;
          }

          v169 = v82;
          if ([(SBHomeScreenConfigurationServer *)v69 connections]== 1)
          {
            v83 = [v41 itemForLayoutRole:height];
            v84 = [self layoutRestrictionInfoForItem:v83];

            [dockHiddenCopy screenEdgePadding];
            v86 = v85;
            v180.origin.x = a2;
            v180.origin.y = role;
            v180.size.width = layout;
            v180.size.height = map;
            v181 = CGRectInset(v180, v86, v86);
            Height = CGRectGetHeight(v181);
            if (mapCopy <= Height)
            {
              v88 = mapCopy;
            }

            else
            {
              v88 = Height;
            }

            _chamoisLayoutGridCache = [self _chamoisLayoutGridCache];
            allItems = [v41 allItems];
            v91 = v69;
            [_chamoisLayoutGridCache nearestGridSizeForProposedSize:objc_msgSend(allItems countOnStage:"count") inBounds:-[SBHomeScreenConfigurationServer authenticator](v69) contentOrientation:v84 layoutRestrictionInfo:dockHiddenCopy screenScale:v170 windowingConfiguration:{v88, a2, role, layout, map, orientation}];
            layoutCopy2 = v92;
            mapCopy2 = v94;

            v96 = v167;
            goto LABEL_85;
          }

          if ([dockHiddenCopy requiresFullScreen])
          {
            v96 = v167;
            if ([(SBHomeScreenConfigurationServer *)v69 connections]== 2)
            {
              UIRectGetCenter();
              mapCopy = map;
              layoutCopy = layout;
LABEL_74:
              _chamoisLayoutGridCache2 = [self _chamoisLayoutGridCache];
              v91 = v69;
              [self _minSizeForDisplayItem:v96 inContainerBounds:_chamoisLayoutGridCache2 layoutGrid:v179 layoutRestrictionInfo:-[SBHomeScreenConfigurationServer authenticator](v69) contentOrientation:dockHiddenCopy screenScale:a2 windowingConfiguration:{role, layout, map, orientation}];
              v116 = v115;
              v118 = v117;

              if (v116 >= layoutCopy)
              {
                v119 = v116;
              }

              else
              {
                v119 = layoutCopy;
              }

              if (layout <= v119)
              {
                layoutCopy2 = layout;
              }

              else
              {
                layoutCopy2 = v119;
              }

              v120 = mapCopy;
              if (v118 >= mapCopy)
              {
                v120 = v118;
              }

              if (map <= v120)
              {
                mapCopy2 = map;
              }

              else
              {
                mapCopy2 = v120;
              }

LABEL_85:
              if (!layoutRestrictions || ([self _chamoisLayoutGridCache], v121 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "allItems"), v122 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v121, "nearestGridSizeForProposedSize:countOnStage:inBounds:contentOrientation:layoutRestrictionInfo:screenScale:windowingConfiguration:", objc_msgSend(v122, "count"), -[SBHomeScreenConfigurationServer authenticator](v91), v179, dockHiddenCopy, layoutCopy2, mapCopy2, a2, role, layout, map, orientation), v124 = v123, v126 = v125, v122, v121, (v163 & 1) != 0))
              {
                v127 = v165;
LABEL_112:

LABEL_113:
                UISizeRoundToScale();
                SBRectWithSize();
                UIRectCenteredAboutPointScale();
                goto LABEL_11;
              }

              allItems2 = [v41 allItems];
              if ([allItems2 count] >= 2)
              {

                if (v124 < layout && v126 < map)
                {
                  goto LABEL_111;
                }

                _chamoisLayoutGridCache3 = [self _chamoisLayoutGridCache];
                allItems2 = [_chamoisLayoutGridCache3 allGridWidthsForBounds:-[SBHomeScreenConfigurationServer authenticator](v91) contentOrientation:v179 layoutRestrictionInfo:dockHiddenCopy screenScale:a2 windowingConfiguration:{role, layout, map, orientation}];

                _chamoisLayoutGridCache4 = [self _chamoisLayoutGridCache];
                v178 = v91;
                v131 = [_chamoisLayoutGridCache4 allGridHeightsForBounds:-[SBHomeScreenConfigurationServer authenticator](v91) contentOrientation:v179 layoutRestrictionInfo:dockHiddenCopy screenScale:a2 windowingConfiguration:{role, layout, map, orientation}];

                v132 = [allItems2 count];
                v133 = [v131 count];
                if (v132 >= v133)
                {
                  v134 = v133;
                }

                else
                {
                  v134 = v132;
                }

                if (v134 >= 2)
                {
                  v135 = 0;
                  v136 = v134 - 1;
                  v137 = 1.79769313e308;
                  v138 = v124 / v126;
                  do
                  {
                    v139 = [allItems2 objectAtIndex:v135];
                    [v139 doubleValue];
                    v141 = v140;

                    v142 = [v131 objectAtIndex:v135];
                    [v142 doubleValue];
                    v144 = v143;

                    v145 = v141 / v144 < 1.0 && v138 < 1.0;
                    v147 = (v141 / v144 < 1.0 || v138 < 1.0) && !v145;
                    if (!v147)
                    {
                      v148 = vabdd_f64(v141, v124) + vabdd_f64(v144, v126);
                      if (v148 < v137)
                      {
                        v124 = v141;
                        v126 = v144;
                        v137 = v148;
                      }
                    }

                    ++v135;
                  }

                  while (v136 != v135);
                }

                v96 = v167;
                v91 = v178;
              }

LABEL_111:
              v127 = v165;
              goto LABEL_112;
            }

            [dockHiddenCopy defaultWindowSize];
            layoutCopy = v104;
LABEL_70:
            mapCopy = v98;
            goto LABEL_74;
          }

          v175 = v81;
          if (v170 != v176)
          {
            v96 = v167;
            layoutCopy = v170;
            goto LABEL_74;
          }

          v98 = mapCopy;
          if (mapCopy != v171)
          {
            v96 = v167;
            layoutCopy = v170;
            goto LABEL_70;
          }

          v99 = [v41 itemForLayoutRole:{height, v171, mapCopy}];
          v100 = [self _deviceApplicationSceneHandleForDisplayItem:v99];

          v177 = v100;
          if (!v100 || ![v100 supportsCenterWindow] || -[SBHomeScreenConfigurationServer connections](v69))
          {
            v101 = v69;
            if ([(SBHomeScreenConfigurationServer *)v69 connections]== 2)
            {
              UIRectGetCenter();
              mapCopy3 = map;
              layoutCopy3 = layout;
            }

            else
            {
              [dockHiddenCopy defaultWindowSize];
              layoutCopy3 = v105;
              mapCopy3 = v106;
            }

            goto LABEL_73;
          }

          [dockHiddenCopy screenEdgePadding];
          SBRectWithSize();
          [self frameForCenterItemWithConfiguration:1 interfaceOrientation:hidden bounds:?];
          layoutCopy3 = v149;
          mapCopy3 = v150;
          v101 = v69;
          if (v169 != *MEMORY[0x277CBF348] || v175 != *(MEMORY[0x277CBF348] + 8))
          {
            goto LABEL_73;
          }

          allItems3 = [v41 allItems];
          v152 = SBDisplayItemDescendingInteractionTimeComparator(enabledCopy);
          v153 = [allItems3 sortedArrayUsingComparator:v152];

          v154 = v153;
          firstObject = [v153 firstObject];
          if (firstObject)
          {
            v156 = firstObject;
            v157 = [v41 itemForLayoutRole:height];
            if (([(SBDisplayItem *)v157 isEqualToItem:v156]& 1) != 0)
            {
              v158 = [v154 count];

              if (v158 >= 2)
              {
                v159 = [v154 objectAtIndex:1];

                v156 = v159;
                if (!v159)
                {
                  goto LABEL_123;
                }
              }
            }

            else
            {
            }

            v160 = [enabledCopy objectForKey:v156];
            [self centerForLayoutAttributes:v160 windowingConfiguration:dockHiddenCopy];
          }

LABEL_123:

LABEL_73:
          v96 = v167;
          _chamoisLayoutGridCache5 = [self _chamoisLayoutGridCache];
          allItems4 = [v41 allItems];
          v109 = [allItems4 count];
          authenticator = [(SBHomeScreenConfigurationServer *)v101 authenticator];
          v111 = v109;
          v69 = v101;
          [_chamoisLayoutGridCache5 nearestGridSizeForProposedSize:v111 countOnStage:authenticator inBounds:v179 contentOrientation:dockHiddenCopy layoutRestrictionInfo:layoutCopy3 screenScale:mapCopy3 windowingConfiguration:{a2, role, layout, map, orientation}];
          layoutCopy = v112;
          mapCopy = v113;

          goto LABEL_74;
        }

        v77 = v162;
        if (v162 != 1.79769313e308)
        {
          goto LABEL_46;
        }
      }

      [self centerForLayoutAttributes:v69 windowingConfiguration:dockHiddenCopy];
      v63 = v78;
      goto LABEL_46;
    }
  }

  [self frameForCenterItemWithConfiguration:SBMainDisplayLayoutStateCenterConfigurationFromAppLayoutCenterConfiguration(objc_msgSend(v41 interfaceOrientation:"centerConfiguration")) bounds:{hidden, a2, role, layout, map}];
LABEL_11:
  v45 = v44;

  return v45;
}

- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration windowScene:(id)scene
{
  _fbsDisplayConfiguration = [scene _fbsDisplayConfiguration];
  [_fbsDisplayConfiguration bounds];
  _UIWindowConvertRectFromOrientationToOrientation();
  [(SBDisplayItemLayoutAttributesCalculator *)self frameForFloatingAppLayoutInInterfaceOrientation:orientation floatingConfiguration:configuration bounds:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  SBLayoutDefaultSideLayoutElementWidth();
  v11 = v10;
  if (frameForFloatingAppLayoutInInterfaceOrientation_floatingConfiguration_bounds__onceToken != -1)
  {
    [SBDisplayItemLayoutAttributesCalculator frameForFloatingAppLayoutInInterfaceOrientation:floatingConfiguration:bounds:];
  }

  v12 = 0.0;
  if (configuration <= 1)
  {
    if (!configuration)
    {
LABEL_12:
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v12 = -v11;
      }

      else
      {
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v12 = CGRectGetWidth(v24);
      }

      goto LABEL_20;
    }

    if (configuration != 1)
    {
      goto LABEL_20;
    }

    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
LABEL_15:
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v12 = CGRectGetWidth(v23) - (v11 + *&frameForFloatingAppLayoutInInterfaceOrientation_floatingConfiguration_bounds____viewMargin);
      goto LABEL_20;
    }

LABEL_11:
    v12 = *&frameForFloatingAppLayoutInInterfaceOrientation_floatingConfiguration_bounds____viewMargin;
    goto LABEL_20;
  }

  if (configuration == 2)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (configuration != 3)
  {
    if (configuration != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  if (userInterfaceLayoutDirection == 1)
  {
    v12 = v11 + CGRectGetMaxX(*&v14);
  }

  else
  {
    v12 = CGRectGetMinX(*&v14) - v11;
  }

LABEL_20:
  v18 = frameForFloatingAppLayoutInInterfaceOrientation_floatingConfiguration_bounds____viewMargin;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v19 = CGRectGetHeight(v25) + *&frameForFloatingAppLayoutInInterfaceOrientation_floatingConfiguration_bounds____viewMargin * -2.0;
  v20 = v12;
  v21 = *&v18;
  v22 = v11;
  result.size.height = v19;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

uint64_t __120__SBDisplayItemLayoutAttributesCalculator_frameForFloatingAppLayoutInInterfaceOrientation_floatingConfiguration_bounds___block_invoke()
{
  result = [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
  frameForFloatingAppLayoutInInterfaceOrientation_floatingConfiguration_bounds____viewMargin = v1;
  return result;
}

- (CGRect)frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation windowScene:(id)scene
{
  _fbsDisplayConfiguration = [scene _fbsDisplayConfiguration];
  [_fbsDisplayConfiguration bounds];
  _UIWindowConvertRectFromOrientationToOrientation();
  [(SBDisplayItemLayoutAttributesCalculator *)self frameForCenterItemWithConfiguration:configuration interfaceOrientation:orientation bounds:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _centerWindowSheetMetricsCache = [(SBDisplayItemLayoutAttributesCalculator *)self _centerWindowSheetMetricsCache];
  [_centerWindowSheetMetricsCache pageSheetFrameForBounds:orientation interfaceOrientation:configuration == 2 configuration:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)flexibleWindowingAutoLayoutSpaceForAppLayout:(double)layout containerOrientation:(double)orientation floatingDockHeight:(double)height screenScale:(double)scale bounds:(double)bounds isEmbeddedDisplay:(uint64_t)display prefersStripHidden:(void *)hidden prefersDockHidden:(uint64_t)self0 leftStatusBarPartIntersectionRegion:(uint64_t)self1 rightStatusBarPartIntersectionRegion:(uint64_t)self2
{
  hiddenCopy = hidden;
  v31 = [self _appLayoutContainsOnlyResizableApps:hiddenCopy];
  _windowingSettingsCache = [self _windowingSettingsCache];
  v33 = [_windowingSettingsCache windowingConfigurationForContainerBounds:dockHidden interfaceOrientation:v31 ^ 1u floatingDockHeight:intersectionRegion requiresFullScreen:a13 prefersStripHidden:region prefersDockHidden:1 isEmbeddedDisplay:orientation isFlexibleWindowingEnabled:{height, scale, bounds, a2}];

  BYTE1(v37) = a13;
  LOBYTE(v37) = intersectionRegion;
  v34 = [self _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:hiddenCopy previousAppLayout:0 layoutAttributes:0 options:0 containerOrientation:dockHidden windowingConfiguration:v33 floatingDockHeight:a2 screenScale:layout bounds:orientation prefersStripHidden:height prefersDockHidden:scale source:bounds leftStatusBarPartIntersectionRegion:v37 rightStatusBarPartIntersectionRegion:0 itemsNeedingPositionSnapping:a15 itemsNeedingSizeSnapping:{a16, a17, a18, a19, a20, 0, 0}];

  cachedLastFlexibleWindowingAutoLayoutSpace = [v34 cachedLastFlexibleWindowingAutoLayoutSpace];

  return cachedLastFlexibleWindowingAutoLayoutSpace;
}

- (id)flexibleWindowingAutoLayoutSpaceForAppLayout:(double)layout containerOrientation:(double)orientation floatingDockHeight:(double)height screenScale:(double)scale bounds:(double)bounds isEmbeddedDisplay:(uint64_t)display prefersStripHidden:(void *)hidden prefersDockHidden:(uint64_t)self0 newLayoutAttributes:(unsigned int)self1 leftStatusBarPartIntersectionRegion:(uint64_t)self2 rightStatusBarPartIntersectionRegion:(uint64_t)self3 itemsNeedingPositionSnapping:(void *)self4 itemsNeedingSizeSnapping:(__int128)self5
{
  v33 = a22;
  v34 = a21;
  snappingCopy = snapping;
  hiddenCopy = hidden;
  v37 = [self _appLayoutContainsOnlyResizableApps:hiddenCopy];
  _windowingSettingsCache = [self _windowingSettingsCache];
  v39 = v37 ^ 1u;
  dockHiddenCopy = dockHidden;
  v41 = [_windowingSettingsCache windowingConfigurationForContainerBounds:dockHidden interfaceOrientation:v39 floatingDockHeight:region requiresFullScreen:intersectionRegion prefersStripHidden:attributes prefersDockHidden:1 isEmbeddedDisplay:orientation isFlexibleWindowingEnabled:{height, scale, bounds, a2}];

  BYTE1(v45) = intersectionRegion;
  LOBYTE(v45) = region;
  v42 = [self _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:hiddenCopy previousAppLayout:0 usingNewLayoutAttributes:snappingCopy options:0 containerOrientation:dockHiddenCopy windowingConfiguration:v41 floatingDockHeight:a2 screenScale:layout bounds:orientation prefersStripHidden:height prefersDockHidden:scale source:bounds leftStatusBarPartIntersectionRegion:v45 rightStatusBarPartIntersectionRegion:0 itemsNeedingPositionSnapping:sizeSnapping itemsNeedingSizeSnapping:{a16, a17, a18, a19, a20, v34, v33}];

  cachedLastFlexibleWindowingAutoLayoutSpace = [v42 cachedLastFlexibleWindowingAutoLayoutSpace];

  return cachedLastFlexibleWindowingAutoLayoutSpace;
}

- (id)appLayoutByPerformingAutoLayoutForAppLayout:(double)layout previousAppLayout:(double)appLayout options:(double)options containerOrientation:(double)orientation floatingDockHeight:(double)height screenScale:(uint64_t)scale bounds:(void *)bounds isEmbeddedDisplay:(void *)self0 prefersStripHidden:(uint64_t)self1 prefersDockHidden:(uint64_t)self2 source:(unsigned int)self3 leftStatusBarPartIntersectionRegion:(uint64_t)self4 rightStatusBarPartIntersectionRegion:(unsigned __int8)self5 itemsNeedingPositionSnapping:(uint64_t)self6 itemsNeedingSizeSnapping:(__int128)self7
{
  v34 = a24;
  v35 = a23;
  displayCopy = display;
  boundsCopy = bounds;
  v38 = [self _appLayoutContainsOnlyResizableApps:boundsCopy];
  _windowingSettingsCache = [self _windowingSettingsCache];
  v40 = v38 ^ 1u;
  dockHiddenCopy = dockHidden;
  v42 = [_windowingSettingsCache windowingConfigurationForContainerBounds:dockHidden interfaceOrientation:v40 floatingDockHeight:region requiresFullScreen:intersectionRegion prefersStripHidden:source prefersDockHidden:1 isEmbeddedDisplay:appLayout isFlexibleWindowingEnabled:{options, orientation, height, a2}];

  BYTE1(v45) = intersectionRegion;
  LOBYTE(v45) = region;
  v43 = [self _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:boundsCopy previousAppLayout:displayCopy layoutAttributes:0 options:hidden containerOrientation:dockHiddenCopy windowingConfiguration:v42 floatingDockHeight:a2 screenScale:layout bounds:appLayout prefersStripHidden:options prefersDockHidden:orientation source:height leftStatusBarPartIntersectionRegion:v45 rightStatusBarPartIntersectionRegion:snapping itemsNeedingPositionSnapping:sizeSnapping itemsNeedingSizeSnapping:{a18, a19, a20, a21, a22, v35, v34}];

  return v43;
}

- (id)appLayoutByPerformingAutoLayoutForAppLayout:(id)layout previousAppLayout:(id)appLayout usingLayoutAttributes:(id)attributes options:(unint64_t)options containerOrientation:(int64_t)orientation windowScene:(id)scene source:(int64_t)source itemsNeedingPositionSnapping:(id)self0 itemsNeedingSizeSnapping:(id)self1
{
  sceneCopy = scene;
  sizeSnappingCopy = sizeSnapping;
  snappingCopy = snapping;
  attributesCopy = attributes;
  appLayoutCopy = appLayout;
  layoutCopy = layout;
  LODWORD(attributes) = [(SBDisplayItemLayoutAttributesCalculator *)self _appLayoutContainsOnlyResizableApps:layoutCopy];
  [(SBDisplayItemLayoutAttributesCalculator *)self containerBoundsForWindowScene:sceneCopy containerOrientation:orientation];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  _windowingSettingsCache = [(SBDisplayItemLayoutAttributesCalculator *)self _windowingSettingsCache];
  floatingDockController = [sceneCopy floatingDockController];
  v58 = v21;
  v59 = v19;
  [floatingDockController floatingDockHeightForFrame:{v19, v21, v23, v25}];
  v29 = v28;

  v60 = _windowingSettingsCache;
  v57 = [_windowingSettingsCache windowingConfigurationForWindowScene:sceneCopy interfaceOrientation:orientation requiresFullScreen:attributes ^ 1 floatingDockHeight:v29];
  switcherController = [sceneCopy switcherController];
  contentViewController = [switcherController contentViewController];
  v32 = objc_opt_class();
  v33 = contentViewController;
  if (v32)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  screen = [sceneCopy screen];
  [screen scale];
  v38 = v37;

  prefersStripHidden = [v35 prefersStripHidden];
  prefersDockHidden = [v35 prefersDockHidden];
  personality = [v35 personality];

  [personality leftStatusBarPartIntersectionRegion];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  [personality rightStatusBarPartIntersectionRegion];
  BYTE1(v56) = prefersDockHidden;
  LOBYTE(v56) = prefersStripHidden;
  sizeSnappingCopy = [(SBDisplayItemLayoutAttributesCalculator *)self _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:layoutCopy previousAppLayout:appLayoutCopy usingNewLayoutAttributes:attributesCopy options:options containerOrientation:orientation windowingConfiguration:v57 floatingDockHeight:v29 screenScale:v38 bounds:v59 prefersStripHidden:v58 prefersDockHidden:v23 source:v25 leftStatusBarPartIntersectionRegion:v56 rightStatusBarPartIntersectionRegion:source itemsNeedingPositionSnapping:v43 itemsNeedingSizeSnapping:v45, v47, v49, v50, v51, v52, v53, snappingCopy, sizeSnappingCopy];

  return sizeSnappingCopy;
}

- (id)layoutRestrictionInfoForItem:(id)item
{
  itemCopy = item;
  v5 = [(SBDisplayItemLayoutAttributesCalculator *)self _applicationForDisplayItem:itemCopy];
  supportsChamoisSceneResizing = [v5 supportsChamoisSceneResizing];
  if (!v5 || supportsChamoisSceneResizing)
  {
    v9 = 0;
    v7 = -1.0;
    v8 = -1.0;
  }

  else if ([v5 alwaysMaximizedInChamois])
  {
    v7 = -1.0;
    v8 = -1.0;
    v9 = 12;
  }

  else
  {
    if (SBFIsFullScreenLetterboxingAvailable())
    {
      v10 = [(SBDisplayItemLayoutAttributesCalculator *)self _deviceApplicationSceneHandleForDisplayItem:itemCopy];
      sceneManager = [v10 sceneManager];
      displayIdentity = [sceneManager displayIdentity];
      isExternal = [displayIdentity isExternal];

      application = [v10 application];
      v15 = application;
      if ((isExternal & 1) != 0 || [application onlySupportsOneOrientation])
      {
        if ([v15 classicAppPhoneAppRunningOnPad])
        {
          v9 = 10;
        }

        else
        {
          v9 = 26;
        }
      }

      else
      {
        v9 = 10;
      }
    }

    else
    {
      v9 = 10;
    }

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    displayConfiguration = [mainScreen displayConfiguration];
    [v5 defaultLaunchingSizeForDisplayConfiguration:displayConfiguration];
    v7 = v18;
    v8 = v19;
  }

  v20 = [SBDisplayItemGridLayoutRestrictionInfo layoutRestrictionInfoWithLayoutRestrictions:v9 restrictedSize:v7, v8];

  return v20;
}

- (int64_t)sizingPolicyForDisplayItem:(id)item contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation proposedSizingPolicy:(int64_t)policy windowScene:(id)scene
{
  sceneCopy = scene;
  v13 = [(SBDisplayItemLayoutAttributesCalculator *)self _applicationForDisplayItem:item];
  if (v13)
  {
    switcherController = [sceneCopy switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    displayIdentity = [switcherController displayIdentity];
    if (((1 << policy) & ~[v13 supportedSizingPoliciesForSwitcherWindowManagementContext:windowManagementContext displayIdentity:displayIdentity contentOrientation:orientation containerOrientation:containerOrientation]) != 0)
    {
      policy = [v13 preferredSizingPolicyForSwitcherWindowManagementContext:windowManagementContext displayIdentity:displayIdentity contentOrientation:orientation containerOrientation:containerOrientation];
    }
  }

  return policy;
}

- (CGRect)containerBoundsForWindowScene:(id)scene containerOrientation:(int64_t)orientation
{
  sceneCopy = scene;
  screen = [sceneCopy screen];
  displayConfiguration = [screen displayConfiguration];
  [displayConfiguration bounds];
  v9 = v8;
  v11 = v10;

  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 8);
  traitsPipelineManager = [sceneCopy traitsPipelineManager];

  if ([traitsPipelineManager supportsLiveDeviceRotation])
  {

    if ((orientation - 3) <= 1)
    {
      BSSizeSwap();
      v9 = v15;
      v11 = v16;
    }
  }

  else
  {
  }

  v17 = v12;
  v18 = v13;
  v19 = v9;
  v20 = v11;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (SBDisplayItemSlideOverConfiguration)updatedSlideOverConfigurationForItemWithSize:(SEL)size center:(CGSize)center slideOverConfiguration:(CGPoint)configuration windowingConfiguration:(SBDisplayItemSlideOverConfiguration *)windowingConfiguration
{
  y = configuration.y;
  x = configuration.x;
  height = center.height;
  width = center.width;
  v14 = a7;
  [v14 statusBarHeight];
  v16 = v15;
  [v14 dockTopMargin];
  v18 = v17;
  [v14 slideOverBorderWidth];
  v20 = v19;
  [v14 floatingDockHeightWithTopAndBottomPadding];
  v22 = v21;
  [v14 containerBounds];
  v25 = v24 * 0.5;
  v26 = y - height * 0.5;
  if (v16 + v20 >= v26)
  {
    v26 = v16 + v20;
  }

  if (v18 + v24 - height - v20 <= v26)
  {
    v27 = v18 + v24 - height - v20;
  }

  else
  {
    v27 = v26;
  }

  v28 = height + v27;
  v29 = v24 - v22;
  if (y < v25)
  {
    v32 = v27 - v20 - v16;
    v31 = 2;
  }

  else
  {
    v30 = v24 - v18 - v28 - v20;
    v31 = 3;
    if (v28 > v29)
    {
      v32 = v30;
    }

    else
    {
      v31 = 3;
      v32 = v29 - v28 - v20;
    }
  }

  v33 = v28 <= v29;
  if (x >= v23 * 0.5)
  {
    v34 = v31;
  }

  else
  {
    v34 = y >= v25;
  }

  v35 = windowingConfiguration->size.width;
  v36 = windowingConfiguration->size.height;
  size = windowingConfiguration->size;
  v47[0] = *&windowingConfiguration->corner;
  v47[1] = size;
  v48 = *&windowingConfiguration->isActive;
  [(SBDisplayItemLayoutAttributesCalculator *)self sizeForSlideOverConfiguration:v47 windowingConfiguration:v14];
  v39 = v38;
  v41 = v40;

  v42 = v39 == width;
  v43 = v41 == height;
  if (v42 && v43)
  {
    v44 = v35;
  }

  else
  {
    v44 = width;
  }

  if (v42 && v43)
  {
    v45 = v36;
  }

  else
  {
    v45 = height;
  }

  return SBDisplayItemSlideOverConfigurationMake(v34, windowingConfiguration->isActive, windowingConfiguration->isStashed, v33, retstr, v32, v44, v45);
}

- (id)_appLayoutByPerformingAutoLayoutIfNeededInAppLayout:(double)layout previousAppLayout:(double)appLayout layoutAttributes:(double)attributes options:(double)options containerOrientation:(double)orientation windowingConfiguration:(uint64_t)configuration floatingDockHeight:(void *)height screenScale:(void *)self0 bounds:(void *)self1 prefersStripHidden:(uint64_t)self2 prefersDockHidden:(uint64_t)self3 source:(void *)self4 leftStatusBarPartIntersectionRegion:(__int16)self5 rightStatusBarPartIntersectionRegion:(uint64_t)self6 itemsNeedingPositionSnapping:(uint64_t)self7 itemsNeedingSizeSnapping:(uint64_t)self8
{
  heightCopy = height;
  scaleCopy = scale;
  boundsCopy = bounds;
  sourceCopy = source;
  v35 = a25;
  v36 = a26;
  if (boundsCopy)
  {
    v37 = boundsCopy;
  }

  else
  {
    _displayItemLayoutAttributesProvider = [self _displayItemLayoutAttributesProvider];
    preferredDisplayOrdinal = [heightCopy preferredDisplayOrdinal];
    if ((dockHidden - 1) < 2)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2 * ((dockHidden - 3) < 2);
    }

    v37 = [_displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:heightCopy displayOrdinal:preferredDisplayOrdinal orientation:v40];
  }

  LOWORD(v43) = region;
  v41 = [self _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:heightCopy previousAppLayout:scaleCopy usingNewLayoutAttributes:v37 options:hidden containerOrientation:dockHidden windowingConfiguration:sourceCopy floatingDockHeight:a2 screenScale:layout bounds:appLayout prefersStripHidden:attributes prefersDockHidden:options source:orientation leftStatusBarPartIntersectionRegion:v43 rightStatusBarPartIntersectionRegion:intersectionRegion itemsNeedingPositionSnapping:snapping itemsNeedingSizeSnapping:{sizeSnapping, a19, a20, a21, a22, a23, a24, v35, v36}];

  return v41;
}

- (id)_appLayoutByPerformingAutoLayoutIfNeededInAppLayout:(double)layout previousAppLayout:(CGFloat)appLayout usingNewLayoutAttributes:(CGFloat)attributes options:(CGFloat)options containerOrientation:(CGFloat)orientation windowingConfiguration:(uint64_t)configuration floatingDockHeight:(void *)height screenScale:(void *)self0 bounds:(void *)self1 prefersStripHidden:(uint64_t)self2 prefersDockHidden:(uint64_t)self3 source:(void *)self4 leftStatusBarPartIntersectionRegion:(__int16)self5 rightStatusBarPartIntersectionRegion:(unint64_t)self6 itemsNeedingPositionSnapping:(uint64_t)self7 itemsNeedingSizeSnapping:(uint64_t)self8
{
  v250 = *MEMORY[0x277D85DE8];
  heightCopy = height;
  scaleCopy = scale;
  boundsCopy = bounds;
  sourceCopy = source;
  v38 = a25;
  v39 = a26;
  if (heightCopy)
  {
    if (([sourceCopy isFlexibleWindowingEnabled] & 1) == 0)
    {
      v43 = heightCopy;
      goto LABEL_104;
    }

    hiddenCopy = hidden;
    cachedLastOverlappingModelKey = [heightCopy cachedLastOverlappingModelKey];
    v41 = cachedLastOverlappingModelKey;
    if (cachedLastOverlappingModelKey)
    {
      v42 = cachedLastOverlappingModelKey;
    }

    else
    {
      v42 = [[SBAppLayoutAutoLayoutSpaceCacheKey alloc] initWithAppLayout:heightCopy];
    }

    v44 = v42;

    v45 = [self _preferredMinimumSizeMapForAppLayout:heightCopy];
    if (([(SBAppLayoutAutoLayoutSpaceCacheKey *)v44 updateWithContainerBounds:dockHidden containerOrientation:region floatingDockHeight:HIBYTE(region) hideStrips:v45 hideDock:boundsCopy preferredMinimumSizeMap:appLayout layoutAttributesMap:attributes, options, orientation, a2]& 1) == 0)
    {
      v63 = heightCopy;
LABEL_103:

      goto LABEL_104;
    }

    v186 = v45;
    v190 = v39;
    v210 = sourceCopy;
    if (intersectionRegion > 0x37)
    {
      goto LABEL_20;
    }

    if (((1 << intersectionRegion) & 0x80000800002000) == 0)
    {
      goto LABEL_20;
    }

    if (!scaleCopy)
    {
      goto LABEL_20;
    }

    allItems = [heightCopy allItems];
    v47 = [allItems count];
    allItems2 = [scaleCopy allItems];
    v49 = v44;
    v50 = [allItems2 count] + 1;

    v88 = v47 == v50;
    v44 = v49;
    sourceCopy = v210;
    if (!v88)
    {
      goto LABEL_20;
    }

    allItems3 = [heightCopy allItems];
    v245[0] = MEMORY[0x277D85DD0];
    v245[1] = 3221225472;
    v245[2] = __399__SBDisplayItemLayoutAttributesCalculator__appLayoutByPerformingAutoLayoutIfNeededInAppLayout_previousAppLayout_usingNewLayoutAttributes_options_containerOrientation_windowingConfiguration_floatingDockHeight_screenScale_bounds_prefersStripHidden_prefersDockHidden_source_leftStatusBarPartIntersectionRegion_rightStatusBarPartIntersectionRegion_itemsNeedingPositionSnapping_itemsNeedingSizeSnapping___block_invoke;
    v245[3] = &unk_2783A8C90;
    v246 = scaleCopy;
    v52 = [allItems3 bs_firstObjectPassingTest:v245];

    if (v52)
    {
      v53 = [self _deviceApplicationSceneHandleForDisplayItem:v52];
      if (v53)
      {
        v54 = v53;
        supportsCenterWindow = [v53 supportsCenterWindow];

        sourceCopy = v210;
        if (supportsCenterWindow)
        {
          _chamoisLayoutGridCache = [self _chamoisLayoutGridCache];
          v57 = [SBDisplayItemGridLayoutRestrictionInfo layoutRestrictionInfoWithLayoutRestrictions:0 restrictedSize:-1.0, -1.0];
          [_chamoisLayoutGridCache maxGridSizeForBounds:dockHidden contentOrientation:v57 layoutRestrictionInfo:v210 screenScale:appLayout windowingConfiguration:{attributes, options, orientation, layout}];
          v59 = v58;
          v204 = v60;

          v61 = v210;
          [v210 stageOcclusionDodgingPeekLength];
          obj = v59 - v62;
          goto LABEL_21;
        }

LABEL_20:
        _chamoisLayoutGridCache2 = [self _chamoisLayoutGridCache];
        [sourceCopy maximumWindowWidthForOverlapping];
        v66 = v65;
        allItems4 = [heightCopy allItems];
        v68 = [allItems4 count];
        v69 = [SBDisplayItemGridLayoutRestrictionInfo layoutRestrictionInfoWithLayoutRestrictions:0 restrictedSize:-1.0, -1.0];
        [_chamoisLayoutGridCache2 nearestGridSizeForProposedSize:v68 countOnStage:dockHidden inBounds:v69 contentOrientation:v210 layoutRestrictionInfo:v66 screenScale:orientation windowingConfiguration:{appLayout, attributes, options, orientation, layout}];
        obj = v70;
        v204 = v71;

        v61 = v210;
LABEL_21:
        [v61 defaultWindowSize];
        [v61 screenEdgePadding];
        v203 = v72;
        allItems5 = [heightCopy allItems];
        v74 = [allItems5 count];

        v191 = v38;
        v192 = heightCopy;
        attributesCopy = attributes;
        optionsCopy = options;
        appLayoutCopy = appLayout;
        v187 = v44;
        v188 = scaleCopy;
        if (v74 < 2)
        {
          allItems6 = [heightCopy allItems];
          v118 = [allItems6 count];

          if (v118 != 1)
          {
LABEL_74:
            v127 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v227[0] = MEMORY[0x277D85DD0];
            v227[1] = 3221225472;
            v227[2] = __399__SBDisplayItemLayoutAttributesCalculator__appLayoutByPerformingAutoLayoutIfNeededInAppLayout_previousAppLayout_usingNewLayoutAttributes_options_containerOrientation_windowingConfiguration_floatingDockHeight_screenScale_bounds_prefersStripHidden_prefersDockHidden_source_leftStatusBarPartIntersectionRegion_rightStatusBarPartIntersectionRegion_itemsNeedingPositionSnapping_itemsNeedingSizeSnapping___block_invoke_2;
            v227[3] = &unk_2783AE1C8;
            v128 = v127;
            v228 = v128;
            [heightCopy enumerate:v227];
            v129 = SBDisplayItemDescendingZOrderComparator(boundsCopy);
            v199 = v128;
            v130 = [v128 sortedArrayUsingComparator:v129];

            v205 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v223 = 0u;
            v224 = 0u;
            v225 = 0u;
            v226 = 0u;
            obja = v130;
            v131 = [obja countByEnumeratingWithState:&v223 objects:v248 count:16];
            if (v131)
            {
              v132 = v131;
              v133 = *v224;
              do
              {
                for (i = 0; i != v132; ++i)
                {
                  if (*v224 != v133)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v135 = *(*(&v223 + 1) + 8 * i);
                  LOBYTE(v185) = 1;
                  LOWORD(v182) = region;
                  [self _frameForLayoutRole:objc_msgSend(heightCopy inAppLayout:"layoutRoleForItem:" layoutAttributesMap:v135) containerBounds:heightCopy containerOrientation:boundsCopy windowingConfiguration:dockHidden floatingDockHeight:v210 screenScale:1 isChamoisWindowingUIEnabled:appLayout prefersStripHidden:attributes prefersDockHidden:options leftStatusBarPartIntersectionRegion:orientation rightStatusBarPartIntersectionRegion:a2 skipAutoLayout:{layout, v182, snapping, sizeSnapping, a19, a20, a21, a22, a23, a24, v185}];
                  v137 = v136;
                  v139 = v138;
                  v140 = [boundsCopy objectForKey:v135];
                  v141 = [(SBFlexibleWindowingAutoLayoutItem *)[SBMutableFlexibleWindowingAutoLayoutItem alloc] initWithDisplayItem:v135];
                  [(SBFlexibleWindowingAutoLayoutItem *)v141 setSize:v137, v139];
                  UIRectGetCenter();
                  [(SBFlexibleWindowingAutoLayoutItem *)v141 setPosition:?];
                  [(SBFlexibleWindowingAutoLayoutItem *)v141 setPositionIsSystemManaged:[(SBDisplayItemLayoutAttributes *)v140 isPositionSystemManaged]];
                  [(SBDisplayItemLayoutAttributes *)v140 slideOverConfiguration];
                  [(SBFlexibleWindowingAutoLayoutItem *)v141 setInSlideOver:SBDisplayItemSlideOverConfigurationIsValid(&v237)];
                  [v205 addObject:v141];
                }

                v132 = [obja countByEnumeratingWithState:&v223 objects:v248 count:16];
              }

              while (v132);
            }

            v142 = [SBContinuousExposeAutoLayoutConfiguration alloc];
            appLayoutCopy2 = appLayout;
            orientationCopy3 = orientation;
            v145 = [(SBContinuousExposeAutoLayoutConfiguration *)v142 initWithContainerBounds:v210 screenScale:appLayoutCopy2 dockHeightWithBottomEdgePadding:attributes leftStatusBarPartIntersectionRegion:options rightStatusBarPartIntersectionRegion:orientation windowingConfiguration:layout, a2, snapping, sizeSnapping, a19, a20, a21, a22, a23, a24];
            v146 = [[SBFlexibleWindowingAutoLayoutSpace alloc] initWithItems:v205];
            _flexibleAutoLayoutController = [self _flexibleAutoLayoutController];
            v207 = v145;
            v148 = [_flexibleAutoLayoutController spaceByPerformingFlexibleAutoLayoutWithSpace:v146 configuration:v145 options:hiddenCopy itemsNeedingPositionSnapping:v191 itemsNeedingSizeSnapping:v190];

            v149 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v219 = 0u;
            v220 = 0u;
            v221 = 0u;
            v222 = 0u;
            v206 = v148;
            autoLayoutItems = [v148 autoLayoutItems];
            v150 = [autoLayoutItems countByEnumeratingWithState:&v219 objects:v247 count:16];
            if (v150)
            {
              v151 = v150;
              v152 = *v220;
              do
              {
                for (j = 0; j != v151; ++j)
                {
                  if (*v220 != v152)
                  {
                    objc_enumerationMutation(autoLayoutItems);
                  }

                  v154 = *(*(&v219 + 1) + 8 * j);
                  displayItem = [v154 displayItem];
                  positionIsSystemManaged = [v154 positionIsSystemManaged];
                  [v154 position];
                  v158 = v157;
                  v160 = v159;
                  [v154 size];
                  v212 = v161;
                  v214 = v162;
                  if (([v154 isFullyOccluded] & 1) == 0)
                  {
                    [v154 isOverlapped];
                  }

                  orientationCopy3 = [(SBDisplayItemLayoutAttributes *)v158 normalizedPointForPoint:v160 inBounds:appLayoutCopy, attributesCopy, optionsCopy, orientationCopy3];
                  v165 = v164;
                  orientationCopy32 = [(SBDisplayItemLayoutAttributes *)1.79769313e308 normalizedPointForPoint:appLayoutCopy inBounds:attributesCopy, optionsCopy, orientationCopy3];
                  v168 = v167;
                  v169 = [boundsCopy objectForKey:displayItem];
                  v170 = [SBDisplayItemLayoutAttributes attributesByModifyingOcclusionState:v169];

                  v168 = [(SBDisplayItemLayoutAttributes *)v170 attributesByModifyingUnoccludedPeekingCenter:orientationCopy32, v168];

                  v1652 = [(SBDisplayItemLayoutAttributes *)v168 attributesByModifyingPositionIsSystemManaged:positionIsSystemManaged];

                  *&v231 = 0;
                  v229 = 0u;
                  v230 = 0u;
                  [(SBDisplayItemLayoutAttributes *)v1652 slideOverConfiguration];
                  v237 = v229;
                  v238 = v230;
                  *&v239 = v231;
                  IsValid = SBDisplayItemSlideOverConfigurationIsValid(&v237);
                  if ([(SBHomeScreenConfigurationServer *)v1652 connections]|| ([(SBDisplayItemLayoutAttributes *)v1652 tileConfiguration], ((SBDisplayItemTileConfigurationIsValid(&v237) | IsValid) & 1) != 0))
                  {
                    orientationCopy3 = orientation;
                    if ([(SBHomeScreenConfigurationServer *)v1652 connections]== 1)
                    {
                      v165 = [(SBDisplayItemLayoutAttributes *)v1652 attributesByModifyingNormalizedCenter:orientationCopy3, v165];
LABEL_92:
                      v175 = v165;

                      v1652 = v175;
                      goto LABEL_97;
                    }

                    if (IsValid && (BYTE1(v231) & 1) == 0)
                    {
                      v233 = v229;
                      v234 = v230;
                      *&v235 = v231;
                      [self updatedSlideOverConfigurationForItemWithSize:&v233 center:v210 slideOverConfiguration:v212 windowingConfiguration:{v214, v158, v160}];
                      v165 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v1652];
                      goto LABEL_92;
                    }
                  }

                  else
                  {
                    v240 = 0;
                    v238 = 0u;
                    v239 = 0u;
                    v237 = 0u;
                    [(SBDisplayItemLayoutAttributes *)v1652 attributedSize];
                    v184 = v203;
                    orientationCopy3 = orientation;
                    SBDisplayItemAttributedSizeInfer(&v233, v212, v214, appLayoutCopy, attributesCopy, optionsCopy, orientation);
                    v240 = v236;
                    v238 = v234;
                    v239 = v235;
                    v237 = v233;
                    v176 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v1652];

                    v1652 = [(SBDisplayItemLayoutAttributes *)v176 attributesByModifyingNormalizedCenter:orientationCopy3, v165];
                  }

LABEL_97:
                  [v149 setObject:v1652 forKey:{displayItem, v184}];
                }

                v151 = [autoLayoutItems countByEnumeratingWithState:&v219 objects:v247 count:16];
              }

              while (v151);
            }

            heightCopy = v192;
            v177 = v192;
            _displayItemLayoutAttributesProvider = [self _displayItemLayoutAttributesProvider];
            preferredDisplayOrdinal = [v177 preferredDisplayOrdinal];
            if ((dockHidden - 1) < 2)
            {
              v180 = 1;
            }

            else
            {
              v180 = 2 * ((dockHidden - 3) < 2);
            }

            [_displayItemLayoutAttributesProvider updateLayoutAttributesMap:v149 forAppLayout:v177 displayOrdinal:preferredDisplayOrdinal orientation:v180];

            [v177 setCachedLastFlexibleWindowingAutoLayoutSpace:v206];
            v44 = v187;
            [v177 setCachedLastOverlappingModelKey:v187];

            scaleCopy = v188;
            sourceCopy = v210;
            v39 = v190;
            v38 = v191;
            v45 = v186;
            goto LABEL_103;
          }

          allItems7 = [heightCopy itemForLayoutRole:1];
          v119 = [boundsCopy objectForKey:allItems7];
          v121 = [SBDisplayItemLayoutAttributes userSizeBeforeOverlappingInBounds:v119 defaultSize:? screenEdgePadding:?];
          v122 = v120;
          if ((v121 != *MEMORY[0x277CBF3A8] || v120 != *(MEMORY[0x277CBF3A8] + 8)) && ![(SBHomeScreenConfigurationServer *)v119 connections])
          {
            [(SBDisplayItemLayoutAttributes *)v119 slideOverConfiguration];
            if ((SBDisplayItemSlideOverConfigurationIsValid(&v237) & 1) == 0)
            {
              v240 = 0;
              v238 = 0u;
              v239 = 0u;
              v237 = 0u;
              SBDisplayItemAttributedSizeInfer(&v237, v121, v122, appLayout, attributes, options, orientation);
              v233 = v237;
              v234 = v238;
              v235 = v239;
              v236 = v240;
              v123 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v119];

              SBDisplayItemAttributedSizeUnspecified(&v233);
              v119 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedUserSizeBeforeOverlapping:v123];

              _displayItemLayoutAttributesProvider2 = [self _displayItemLayoutAttributesProvider];
              preferredDisplayOrdinal2 = [heightCopy preferredDisplayOrdinal];
              if ((dockHidden - 1) < 2)
              {
                v126 = 1;
              }

              else
              {
                v126 = 2 * ((dockHidden - 3) < 2);
              }

              [_displayItemLayoutAttributesProvider2 updateLayoutAttributes:v119 ofDisplayItem:allItems7 displayOrdinal:preferredDisplayOrdinal2 orientation:v126];
            }
          }
        }

        else
        {
          v243 = 0u;
          v244 = 0u;
          v241 = 0u;
          v242 = 0u;
          allItems7 = [heightCopy allItems];
          v76 = [allItems7 countByEnumeratingWithState:&v241 objects:v249 count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v242;
            v79 = *MEMORY[0x277CBF3A8];
            v80 = *(MEMORY[0x277CBF3A8] + 8);
            if ((dockHidden - 1) < 2)
            {
              v81 = 1;
            }

            else
            {
              v81 = 2 * ((dockHidden - 3) < 2);
            }

            v193 = v81;
            selfCopy3 = self;
            v200 = a2;
            v196 = *v242;
            v197 = allItems7;
            v194 = *(MEMORY[0x277CBF3A8] + 8);
            v195 = *MEMORY[0x277CBF3A8];
            do
            {
              v83 = 0;
              v198 = v77;
              do
              {
                if (*v242 != v78)
                {
                  objc_enumerationMutation(allItems7);
                }

                v84 = *(*(&v241 + 1) + 8 * v83);
                v85 = [heightCopy layoutRoleForItem:v84];
                if (SBLayoutRoleIsValidForSplitView(v85))
                {
                  v86 = [boundsCopy objectForKey:v84];
                  v88 = [SBDisplayItemLayoutAttributes userSizeBeforeOverlappingInBounds:v86 defaultSize:? screenEdgePadding:?]== v79 && v87 == v80;
                  if (v88)
                  {
                    v89 = [selfCopy3 layoutRestrictionInfoForItem:v84];
                    v90 = v204;
                    v91 = obj;
                    if ([v89 layoutRestrictions])
                    {
                      _chamoisLayoutGridCache3 = [selfCopy3 _chamoisLayoutGridCache];
                      allItems8 = [heightCopy allItems];
                      [_chamoisLayoutGridCache3 nearestGridSizeForProposedSize:objc_msgSend(allItems8 countOnStage:"count") inBounds:dockHidden contentOrientation:v89 layoutRestrictionInfo:v210 screenScale:obj windowingConfiguration:{v204, appLayout, attributes, options, orientation, layout}];
                      v91 = v94;
                      v90 = v95;

                      heightCopy = v192;
                      if (v91 >= options || v90 >= orientation)
                      {
                        _chamoisLayoutGridCache4 = [selfCopy3 _chamoisLayoutGridCache];
                        [v210 maximumWindowWidthForOverlapping];
                        v99 = v98;
                        allItems9 = [v192 allItems];
                        [_chamoisLayoutGridCache4 nearestGridSizeForProposedSize:objc_msgSend(allItems9 countOnStage:"count") inBounds:dockHidden contentOrientation:v89 layoutRestrictionInfo:v210 screenScale:v99 windowingConfiguration:{orientation, appLayout, attributes, options, orientation, layout}];
                        v91 = v101;
                        v90 = v102;

                        heightCopy = v192;
                      }
                    }

                    [selfCopy3 sizeForLayoutAttributes:v86 windowingConfiguration:v210];
                    if (v103 <= 0.0 || (v105 = v104, v104 <= 0.0))
                    {
                      LOBYTE(v185) = 1;
                      LOWORD(v182) = region;
                      selfCopy3 = self;
                      optionsCopy2 = options;
                      optionsCopy4 = options;
                      orientationCopy5 = orientation;
                      [self _frameForLayoutRole:v85 inAppLayout:heightCopy layoutAttributesMap:boundsCopy containerBounds:dockHidden containerOrientation:v210 windowingConfiguration:1 floatingDockHeight:appLayout screenScale:attributes isChamoisWindowingUIEnabled:optionsCopy2 prefersStripHidden:orientation prefersDockHidden:v200 leftStatusBarPartIntersectionRegion:layout rightStatusBarPartIntersectionRegion:v182 skipAutoLayout:{snapping, sizeSnapping, a19, a20, a21, a22, a23, a24, v185}];
                      v106 = v110;
                      v105 = v111;
                    }

                    else
                    {
                      v106 = v103;
                      optionsCopy4 = options;
                      orientationCopy5 = orientation;
                      selfCopy3 = self;
                    }

                    v77 = v198;
                    v240 = 0;
                    v238 = 0u;
                    v239 = 0u;
                    v237 = 0u;
                    v183 = v203;
                    SBDisplayItemAttributedSizeInfer(&v237, v106, v105, appLayout, attributes, optionsCopy4, orientationCopy5);
                    v233 = v237;
                    v234 = v238;
                    v235 = v239;
                    v236 = v240;
                    v112 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedUserSizeBeforeOverlapping:v86];

                    if ((BSFloatGreaterThanFloat() & 1) != 0 || BSFloatGreaterThanFloat())
                    {
                      a2 = v200;
                      if ([v210 isFlexibleWindowingEnabled])
                      {
                        attributes = attributesCopy;
                        options = optionsCopy;
                        appLayout = appLayoutCopy;
                      }

                      else
                      {
                        if (v91 >= v106)
                        {
                          v113 = v106;
                        }

                        else
                        {
                          v113 = v91;
                        }

                        v236 = 0;
                        v234 = 0u;
                        v235 = 0u;
                        if (v90 >= v105)
                        {
                          v114 = v105;
                        }

                        else
                        {
                          v114 = v90;
                        }

                        v233 = 0uLL;
                        v183 = v203;
                        appLayout = appLayoutCopy;
                        attributes = attributesCopy;
                        options = optionsCopy;
                        SBDisplayItemAttributedSizeInfer(&v233, v113, v114, appLayoutCopy, attributesCopy, optionsCopy, orientation);
                        v229 = v233;
                        v230 = v234;
                        v231 = v235;
                        v232 = v236;
                        v115 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v112];

                        v112 = v115;
                      }
                    }

                    else
                    {
                      attributes = attributesCopy;
                      options = optionsCopy;
                      appLayout = appLayoutCopy;
                      a2 = v200;
                    }

                    _displayItemLayoutAttributesProvider3 = [selfCopy3 _displayItemLayoutAttributesProvider];
                    [_displayItemLayoutAttributesProvider3 updateLayoutAttributes:v112 ofDisplayItem:v84 displayOrdinal:objc_msgSend(heightCopy orientation:{"preferredDisplayOrdinal"), v193}];

                    v86 = v112;
                    v78 = v196;
                    allItems7 = v197;
                    v80 = v194;
                    v79 = v195;
                  }
                }

                ++v83;
              }

              while (v77 != v83);
              v77 = [allItems7 countByEnumeratingWithState:&v241 objects:v249 count:16];
            }

            while (v77);
          }
        }

        goto LABEL_74;
      }
    }

    sourceCopy = v210;
    goto LABEL_20;
  }

LABEL_104:

  return heightCopy;
}

void __399__SBDisplayItemLayoutAttributesCalculator__appLayoutByPerformingAutoLayoutIfNeededInAppLayout_previousAppLayout_usingNewLayoutAttributes_options_containerOrientation_windowingConfiguration_floatingDockHeight_screenScale_bounds_prefersStripHidden_prefersDockHidden_source_leftStatusBarPartIntersectionRegion_rightStatusBarPartIntersectionRegion_itemsNeedingPositionSnapping_itemsNeedingSizeSnapping___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (SBLayoutRoleIsValidForSplitView(a2))
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)_deviceApplicationSceneHandleForDisplayItem:(id)item
{
  itemCopy = item;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__50;
  v15 = __Block_byref_object_dispose__50;
  v16 = 0;
  v4 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__SBDisplayItemLayoutAttributesCalculator__deviceApplicationSceneHandleForDisplayItem___block_invoke;
  v8[3] = &unk_2783B0A70;
  v5 = itemCopy;
  v9 = v5;
  v10 = &v11;
  [v4 enumerateSwitcherControllersWithBlock:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __87__SBDisplayItemLayoutAttributesCalculator__deviceApplicationSceneHandleForDisplayItem___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = MEMORY[0x277D0ADC0];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 uniqueIdentifier];
  v18 = [v5 identityForIdentifier:v8];

  v9 = [v7 windowScene];

  v10 = [v9 sceneManager];
  v11 = [v10 existingSceneHandleForSceneIdentity:v18];

  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (id)_applicationForDisplayItem:(id)item
{
  itemCopy = item;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationForDisplayItem:itemCopy];

  return v5;
}

- (BOOL)_appLayoutContainsOnlyResizableApps:(id)apps
{
  appsCopy = apps;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 _appLayoutContainsOnlyResizableApps:appsCopy];

  return v5;
}

- (id)_centerWindowSheetMetricsCache
{
  centerWindowSheetMetricsCache = self->_centerWindowSheetMetricsCache;
  if (!centerWindowSheetMetricsCache)
  {
    v4 = objc_alloc_init(SBFluidSwitcherSheetMetricsCache);
    v5 = self->_centerWindowSheetMetricsCache;
    self->_centerWindowSheetMetricsCache = v4;

    centerWindowSheetMetricsCache = self->_centerWindowSheetMetricsCache;
  }

  return centerWindowSheetMetricsCache;
}

- (id)_flexibleAutoLayoutController
{
  cached_flexibleAutoLayoutController = self->_cached_flexibleAutoLayoutController;
  if (!cached_flexibleAutoLayoutController)
  {
    v4 = objc_alloc_init(SBFlexibleWindowingAutoLayoutController);
    v5 = self->_cached_flexibleAutoLayoutController;
    self->_cached_flexibleAutoLayoutController = v4;

    cached_flexibleAutoLayoutController = self->_cached_flexibleAutoLayoutController;
  }

  return cached_flexibleAutoLayoutController;
}

- (id)_chamoisLayoutGridCache
{
  chamoisLayoutGridCache = self->_chamoisLayoutGridCache;
  if (!chamoisLayoutGridCache)
  {
    v4 = objc_alloc_init(SBDisplayItemLayoutGrid);
    v5 = self->_chamoisLayoutGridCache;
    self->_chamoisLayoutGridCache = v4;

    chamoisLayoutGridCache = self->_chamoisLayoutGridCache;
  }

  return chamoisLayoutGridCache;
}

- (CGSize)_minSizeForDisplayItem:(id)item inContainerBounds:(CGRect)bounds layoutGrid:(id)grid layoutRestrictionInfo:(id)info contentOrientation:(int64_t)orientation screenScale:(double)scale windowingConfiguration:(id)configuration
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  itemCopy = item;
  gridCopy = grid;
  infoCopy = info;
  configurationCopy = configuration;
  v22 = +[SBMainSwitcherControllerCoordinator sharedInstanceIfExists];
  v23 = [v22 switcherControllerForDisplayItem:itemCopy];

  if (v23)
  {
    contentViewController = [v23 contentViewController];
    v25 = objc_opt_class();
    v26 = contentViewController;
    if (v25)
    {
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v32 = v27;

    [v32 minSizeForDisplayItem:itemCopy inContainerBounds:gridCopy layoutGrid:infoCopy layoutRestrictionInfo:orientation contentOrientation:configurationCopy screenScale:x windowingConfiguration:{y, width, height, scale}];
    v29 = v33;
    v31 = v34;
  }

  else
  {
    [gridCopy minGridSizeForBounds:orientation contentOrientation:infoCopy layoutRestrictionInfo:configurationCopy screenScale:x windowingConfiguration:{y, width, height, scale}];
    v29 = v28;
    v31 = v30;
  }

  v35 = v29;
  v36 = v31;
  result.height = v36;
  result.width = v35;
  return result;
}

- (id)_preferredMinimumSizeMapForAppLayout:(id)layout
{
  v29 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  allItems = [layoutCopy allItems];
  v5 = +[SBMainSwitcherControllerCoordinator sharedInstanceIfExists];
  if (v5)
  {
    v22 = allItems;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = allItems;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v25;
      v10 = *MEMORY[0x277CBF3A8];
      v11 = *(MEMORY[0x277CBF3A8] + 8);
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [v5 switcherControllerForDisplayItem:v13];
          contentViewController = [v14 contentViewController];
          v16 = objc_opt_class();
          v17 = contentViewController;
          if (v16)
          {
            if (objc_opt_isKindOfClass())
            {
              v18 = v17;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;

          [v19 preferredSceneSizeThatFits:v13 displayItem:{v10, v11}];
          if ((BSSizeEqualToSize() & 1) == 0 && (BSSizeEqualToSize() & 1) == 0)
          {
            if (!v8)
            {
              v8 = objc_opt_new();
            }

            v20 = BSValueWithSize();
            [v8 setObject:v20 forKey:v13];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    allItems = v22;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)sizeForSlideOverConfiguration:(SBDisplayItemSlideOverConfiguration *)configuration windowingConfiguration:(id)windowingConfiguration
{
  windowingConfigurationCopy = windowingConfiguration;
  width = configuration->size.width;
  height = configuration->size.height;
  if (BSFloatIsZero())
  {
    [windowingConfigurationCopy minimumWindowWidth];
    width = v8;
  }

  if (BSFloatIsZero())
  {
    [windowingConfigurationCopy statusBarHeight];
    v10 = v9;
    [windowingConfigurationCopy containerBounds];
    v12 = v11;
    [windowingConfigurationCopy slideOverBorderWidth];
    v14 = v13;
    v15 = v12 - v10;
    if (configuration->dodgesDock)
    {
      [windowingConfigurationCopy floatingDockHeightWithTopAndBottomPadding];
    }

    else
    {
      [windowingConfigurationCopy dockTopMargin];
    }

    height = v15 - v16 + v14 * -2.0;
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeForLayoutAttributes:(id)attributes windowingConfiguration:(id)configuration
{
  attributesCopy = attributes;
  configurationCopy = configuration;
  [(SBDisplayItemLayoutAttributes *)attributesCopy slideOverConfiguration];
  if (SBDisplayItemSlideOverConfigurationIsValid(&v29))
  {
    [(SBDisplayItemLayoutAttributesCalculator *)self sizeForSlideOverConfiguration:&v29 windowingConfiguration:configurationCopy, [(SBDisplayItemLayoutAttributes *)attributesCopy slideOverConfiguration]];
LABEL_3:
    v10 = v8;
    v11 = v9;
    goto LABEL_7;
  }

  if ([(SBHomeScreenConfigurationServer *)attributesCopy connections]== 2 || [(SBHomeScreenConfigurationServer *)attributesCopy connections]== 1)
  {
    [configurationCopy containerBounds];
    v10 = v12;
    v11 = v13;
    goto LABEL_7;
  }

  [(SBDisplayItemLayoutAttributes *)attributesCopy tileConfiguration];
  if (!SBDisplayItemTileConfigurationIsValid(&v29))
  {
    [configurationCopy containerBounds];
    [configurationCopy defaultWindowSize];
    [configurationCopy screenEdgePadding];
    v8 = [SBDisplayItemLayoutAttributes sizeInBounds:attributesCopy defaultSize:? screenEdgePadding:?];
    goto LABEL_3;
  }

  v29 = 0;
  v30 = 0.0;
  v31 = 0.0;
  [(SBDisplayItemLayoutAttributes *)attributesCopy tileConfiguration];
  [configurationCopy stageInterItemSpacing];
  [configurationCopy containerBounds];
  v17 = v16;
  [configurationCopy floatingDockHeightWithTopAndBottomPadding];
  v28 = v18;
  SBScreenScale();
  UISizeRoundToScale();
  v10 = v19;
  v27 = v20;
  UISizeRoundToScale();
  v26 = v21;
  v23 = v22;
  UISizeRoundToScale();
  v11 = v31;
  if (v30 != 1.79769313e308 || v31 != 1.79769313e308)
  {
    v10 = v30;
    goto LABEL_7;
  }

  if ((v29 - 1) < 2)
  {
    v11 = v17;
    goto LABEL_7;
  }

  if ((v29 - 3) < 2)
  {
    v11 = v17 - v28;
    goto LABEL_7;
  }

  if ((v29 - 5) <= 1)
  {
    UISizeRoundToScale();
    goto LABEL_3;
  }

  if ((v29 - 7) >= 4)
  {
    if ((v29 - 11) >= 3)
    {
      if ((v29 & 0xFFFFFFFFFFFFFFFELL) == 0xE)
      {
        v11 = v25;
        v10 = v24;
      }

      else
      {
        v10 = v30;
      }
    }

    else
    {
      v11 = v23;
      v10 = v26;
    }
  }

  else
  {
    v11 = v27;
  }

LABEL_7:

  v14 = v10;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGPoint)centerForLayoutAttributes:(id)attributes windowingConfiguration:(id)configuration
{
  attributesCopy = attributes;
  configurationCopy = configuration;
  [configurationCopy containerBounds];
  v10 = v9;
  v12 = v11;
  [(SBDisplayItemLayoutAttributes *)attributesCopy slideOverConfiguration];
  if (SBDisplayItemSlideOverConfigurationIsValid(v39))
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    slideOverConfiguration = [(SBDisplayItemLayoutAttributes *)attributesCopy slideOverConfiguration];
    v14 = *&v39[0];
    [configurationCopy dockTopMargin];
    v16 = v15;
    [configurationCopy statusBarHeight];
    v18 = v17;
    [configurationCopy slideOverBorderWidth];
    v20 = v19;
    [configurationCopy floatingDockHeightWithTopAndBottomPadding];
    v22 = v21;
    [(SBDisplayItemLayoutAttributesCalculator *)self sizeForLayoutAttributes:attributesCopy windowingConfiguration:configurationCopy];
    v25 = v20 + v16 + v24 * 0.5;
    if (v14 >= 2)
    {
      v26 = v10 - v25;
    }

    else
    {
      v26 = v25;
    }

    if ((v14 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v27 = v23 * 0.5;
      if (BYTE2(v40) == 1)
      {
        v28 = v12 - v22;
      }

      else
      {
        v28 = v12 - v16;
      }

      v31 = v28 - v27 - v20 - *(v39 + 1);
    }

    else
    {
      v31 = v18 + v20 + v23 * 0.5 + *(v39 + 1);
    }

    goto LABEL_35;
  }

  if ([(SBHomeScreenConfigurationServer *)attributesCopy connections]== 2)
  {
    UIRectGetCenter();
    v26 = v29;
    v31 = v30;
    goto LABEL_35;
  }

  [(SBDisplayItemLayoutAttributes *)attributesCopy tileConfiguration];
  if (!SBDisplayItemTileConfigurationIsValid(v39))
  {
    v26 = v10 * [(SBDisplayItemLayoutAttributes *)attributesCopy normalizedCenter];
    v31 = v12 * v34;
    goto LABEL_35;
  }

  [(SBDisplayItemLayoutAttributesCalculator *)self sizeForLayoutAttributes:attributesCopy windowingConfiguration:configurationCopy];
  v26 = v32 * 0.5;
  v31 = v33 * 0.5;
  [(SBDisplayItemLayoutAttributes *)attributesCopy tileConfiguration];
  if (v38[0] > 8)
  {
    if (v38[0] <= 11)
    {
      if (v38[0] != 9)
      {
        if (v38[0] != 10)
        {
          goto LABEL_35;
        }

        v26 = v10 - v26;
      }

      goto LABEL_32;
    }

    if (v38[0] == 12)
    {
      v26 = v10 * 0.5;
      goto LABEL_35;
    }

    if (v38[0] == 13 || v38[0] == 15)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v38[0] > 3)
    {
      if (v38[0] == 4)
      {
LABEL_28:
        v26 = v10 - v26;
        goto LABEL_35;
      }

      if (v38[0] != 6)
      {
        if (v38[0] != 8)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

LABEL_32:
      v31 = v12 - v31;
      goto LABEL_35;
    }

    if (!v38[0])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayItemLayoutAttributesCalculator.m" lineNumber:944 description:@"Invalid tile role"];

      v26 = 1.79769313e308;
      v31 = 1.79769313e308;
      goto LABEL_35;
    }

    if (v38[0] == 2)
    {
      goto LABEL_28;
    }
  }

LABEL_35:

  v36 = v26;
  v37 = v31;
  result.y = v37;
  result.x = v36;
  return result;
}

- (SBDisplayItemLayoutAttributesProviding)preferredDisplayItemLayoutAttributesProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredDisplayItemLayoutAttributesProvider);

  return WeakRetained;
}

@end