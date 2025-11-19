@interface SBDisplayItemLayoutAttributesCalculator
- (BOOL)_appLayoutContainsOnlyResizableApps:(id)a3;
- (CGPoint)centerForLayoutAttributes:(id)a3 windowingConfiguration:(id)a4;
- (CGRect)containerBoundsForWindowScene:(id)a3 containerOrientation:(int64_t)a4;
- (CGRect)frameForCenterItemWithConfiguration:(int64_t)a3 interfaceOrientation:(int64_t)a4 bounds:(CGRect)a5;
- (CGRect)frameForCenterItemWithConfiguration:(int64_t)a3 interfaceOrientation:(int64_t)a4 windowScene:(id)a5;
- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)a3 floatingConfiguration:(int64_t)a4 bounds:(CGRect)a5;
- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)a3 floatingConfiguration:(int64_t)a4 windowScene:(id)a5;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 containerOrientation:(int64_t)a5 windowScene:(id)a6;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 layoutAttributesMap:(id)a5 containerOrientation:(int64_t)a6 windowScene:(id)a7;
- (CGSize)_minSizeForDisplayItem:(id)a3 inContainerBounds:(CGRect)a4 layoutGrid:(id)a5 layoutRestrictionInfo:(id)a6 contentOrientation:(int64_t)a7 screenScale:(double)a8 windowingConfiguration:(id)a9;
- (CGSize)sizeForLayoutAttributes:(id)a3 windowingConfiguration:(id)a4;
- (CGSize)sizeForSlideOverConfiguration:(SBDisplayItemSlideOverConfiguration *)a3 windowingConfiguration:(id)a4;
- (SBDisplayItemLayoutAttributesProviding)preferredDisplayItemLayoutAttributesProvider;
- (SBDisplayItemSlideOverConfiguration)updatedSlideOverConfigurationForItemWithSize:(SEL)a3 center:(CGSize)a4 slideOverConfiguration:(CGPoint)a5 windowingConfiguration:(SBDisplayItemSlideOverConfiguration *)a6;
- (double)_frameForLayoutRole:(CGFloat)a3 inAppLayout:(CGFloat)a4 layoutAttributesMap:(CGFloat)a5 containerBounds:(double)a6 containerOrientation:(double)a7 windowingConfiguration:(uint64_t)a8 floatingDockHeight:(uint64_t)a9 screenScale:(void *)a10 isChamoisWindowingUIEnabled:(void *)a11 prefersStripHidden:(uint64_t)a12 prefersDockHidden:(void *)a13 leftStatusBarPartIntersectionRegion:(int)a14 rightStatusBarPartIntersectionRegion:(__int16)a15 skipAutoLayout:(uint64_t)a16;
- (double)frameForLayoutRole:(double)a3 inAppLayout:(double)a4 containerBounds:(double)a5 containerOrientation:(double)a6 floatingDockHeight:(double)a7 screenScale:(uint64_t)a8 isChamoisWindowingUIEnabled:(uint64_t)a9 isEmbeddedDisplay:(void *)a10 prefersStripHidden:(uint64_t)a11 prefersDockHidden:(uint64_t)a12 leftStatusBarPartIntersectionRegion:(uint64_t)a13 rightStatusBarPartIntersectionRegion:(uint64_t)a14;
- (id)_appLayoutByPerformingAutoLayoutIfNeededInAppLayout:(double)a3 previousAppLayout:(CGFloat)a4 usingNewLayoutAttributes:(CGFloat)a5 options:(CGFloat)a6 containerOrientation:(CGFloat)a7 windowingConfiguration:(uint64_t)a8 floatingDockHeight:(void *)a9 screenScale:(void *)a10 bounds:(void *)a11 prefersStripHidden:(uint64_t)a12 prefersDockHidden:(uint64_t)a13 source:(void *)a14 leftStatusBarPartIntersectionRegion:(__int16)a15 rightStatusBarPartIntersectionRegion:(unint64_t)a16 itemsNeedingPositionSnapping:(uint64_t)a17 itemsNeedingSizeSnapping:(uint64_t)a18;
- (id)_appLayoutByPerformingAutoLayoutIfNeededInAppLayout:(double)a3 previousAppLayout:(double)a4 layoutAttributes:(double)a5 options:(double)a6 containerOrientation:(double)a7 windowingConfiguration:(uint64_t)a8 floatingDockHeight:(void *)a9 screenScale:(void *)a10 bounds:(void *)a11 prefersStripHidden:(uint64_t)a12 prefersDockHidden:(uint64_t)a13 source:(void *)a14 leftStatusBarPartIntersectionRegion:(__int16)a15 rightStatusBarPartIntersectionRegion:(uint64_t)a16 itemsNeedingPositionSnapping:(uint64_t)a17 itemsNeedingSizeSnapping:(uint64_t)a18;
- (id)_applicationForDisplayItem:(id)a3;
- (id)_centerWindowSheetMetricsCache;
- (id)_chamoisLayoutGridCache;
- (id)_deviceApplicationSceneHandleForDisplayItem:(id)a3;
- (id)_displayItemLayoutAttributesProvider;
- (id)_flexibleAutoLayoutController;
- (id)_preferredMinimumSizeMapForAppLayout:(id)a3;
- (id)_windowingSettingsCache;
- (id)appLayoutByPerformingAutoLayoutForAppLayout:(double)a3 previousAppLayout:(double)a4 options:(double)a5 containerOrientation:(double)a6 floatingDockHeight:(double)a7 screenScale:(uint64_t)a8 bounds:(void *)a9 isEmbeddedDisplay:(void *)a10 prefersStripHidden:(uint64_t)a11 prefersDockHidden:(uint64_t)a12 source:(unsigned int)a13 leftStatusBarPartIntersectionRegion:(uint64_t)a14 rightStatusBarPartIntersectionRegion:(unsigned __int8)a15 itemsNeedingPositionSnapping:(uint64_t)a16 itemsNeedingSizeSnapping:(__int128)a17;
- (id)appLayoutByPerformingAutoLayoutForAppLayout:(id)a3 previousAppLayout:(id)a4 usingLayoutAttributes:(id)a5 options:(unint64_t)a6 containerOrientation:(int64_t)a7 windowScene:(id)a8 source:(int64_t)a9 itemsNeedingPositionSnapping:(id)a10 itemsNeedingSizeSnapping:(id)a11;
- (id)flexibleWindowingAutoLayoutSpaceForAppLayout:(double)a3 containerOrientation:(double)a4 floatingDockHeight:(double)a5 screenScale:(double)a6 bounds:(double)a7 isEmbeddedDisplay:(uint64_t)a8 prefersStripHidden:(void *)a9 prefersDockHidden:(uint64_t)a10 leftStatusBarPartIntersectionRegion:(uint64_t)a11 rightStatusBarPartIntersectionRegion:(uint64_t)a12;
- (id)flexibleWindowingAutoLayoutSpaceForAppLayout:(double)a3 containerOrientation:(double)a4 floatingDockHeight:(double)a5 screenScale:(double)a6 bounds:(double)a7 isEmbeddedDisplay:(uint64_t)a8 prefersStripHidden:(void *)a9 prefersDockHidden:(uint64_t)a10 newLayoutAttributes:(unsigned int)a11 leftStatusBarPartIntersectionRegion:(uint64_t)a12 rightStatusBarPartIntersectionRegion:(uint64_t)a13 itemsNeedingPositionSnapping:(void *)a14 itemsNeedingSizeSnapping:(__int128)a15;
- (id)layoutRestrictionInfoForItem:(id)a3;
- (int64_t)sizingPolicyForDisplayItem:(id)a3 contentOrientation:(int64_t)a4 containerOrientation:(int64_t)a5 proposedSizingPolicy:(int64_t)a6 windowScene:(id)a7;
@end

@implementation SBDisplayItemLayoutAttributesCalculator

- (id)_windowingSettingsCache
{
  windowingSettingsCache = self->_windowingSettingsCache;
  if (!windowingSettingsCache)
  {
    v4 = +[SBAppSwitcherDomain rootSettings];
    v5 = [v4 windowingSettings];
    v6 = self->_windowingSettingsCache;
    self->_windowingSettingsCache = v5;

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
    v4 = WeakRetained;
  }

  else
  {
    v5 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    v4 = [v5 displayItemLayoutAttributesProvider];
  }

  return v4;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 containerOrientation:(int64_t)a5 windowScene:(id)a6
{
  [(SBDisplayItemLayoutAttributesCalculator *)self frameForLayoutRole:a3 inAppLayout:a4 layoutAttributesMap:0 containerOrientation:a5 windowScene:a6];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 layoutAttributesMap:(id)a5 containerOrientation:(int64_t)a6 windowScene:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  [(SBDisplayItemLayoutAttributesCalculator *)self containerBoundsForWindowScene:v14 containerOrientation:a6];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (SBLayoutRoleIsValidForSplitView(a3))
  {
    v23 = [(SBDisplayItemLayoutAttributesCalculator *)self _appLayoutContainsOnlyResizableApps:v12]^ 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = self;
  v25 = [(SBDisplayItemLayoutAttributesCalculator *)self _windowingSettingsCache];
  v26 = [v14 floatingDockController];
  [v26 floatingDockHeightForFrame:{v16, v18, v20, v22}];
  v28 = v27;

  v84 = v25;
  v77 = v28;
  v79 = [v25 windowingConfigurationForWindowScene:v14 interfaceOrientation:a6 requiresFullScreen:v23 floatingDockHeight:v28];
  v29 = [v14 switcherController];
  v30 = [v29 contentViewController];
  v31 = objc_opt_class();
  v32 = v30;
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

  v35 = [v14 screen];
  [v35 scale];
  v76 = v36;

  v78 = v29;
  v37 = [v29 windowManagementContext];
  v38 = [v37 isChamoisOrFlexibleWindowing];

  v39 = [v34 prefersStripHidden];
  v75 = [v34 prefersDockHidden];
  v40 = [v34 personality];

  [v40 leftStatusBarPartIntersectionRegion];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  [v40 rightStatusBarPartIntersectionRegion];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  if (v13 || !v38)
  {
    v60 = v13;
  }

  else
  {
    v57 = [(SBDisplayItemLayoutAttributesCalculator *)v24 _displayItemLayoutAttributesProvider];
    v58 = [v12 preferredDisplayOrdinal];
    if ((a6 - 1) < 2)
    {
      v59 = 1;
    }

    else
    {
      v59 = 2 * ((a6 - 3) < 2);
    }

    v60 = [v57 layoutAttributesMapForAppLayout:v12 displayOrdinal:v58 orientation:v59];

    v13 = 0;
  }

  LOBYTE(v74) = 0;
  BYTE1(v73) = v75;
  LOBYTE(v73) = v39;
  [(SBDisplayItemLayoutAttributesCalculator *)v24 _frameForLayoutRole:a3 inAppLayout:v12 layoutAttributesMap:v60 containerBounds:a6 containerOrientation:v79 windowingConfiguration:v38 floatingDockHeight:v83 screenScale:v82 isChamoisWindowingUIEnabled:v81 prefersStripHidden:v80 prefersDockHidden:v77 leftStatusBarPartIntersectionRegion:v76 rightStatusBarPartIntersectionRegion:v73 skipAutoLayout:v42, v44, v46, v48, v50, v52, v54, v56, v74];
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

- (double)frameForLayoutRole:(double)a3 inAppLayout:(double)a4 containerBounds:(double)a5 containerOrientation:(double)a6 floatingDockHeight:(double)a7 screenScale:(uint64_t)a8 isChamoisWindowingUIEnabled:(uint64_t)a9 isEmbeddedDisplay:(void *)a10 prefersStripHidden:(uint64_t)a11 prefersDockHidden:(uint64_t)a12 leftStatusBarPartIntersectionRegion:(uint64_t)a13 rightStatusBarPartIntersectionRegion:(uint64_t)a14
{
  v33 = a10;
  if (a12)
  {
    v34 = [a1 _displayItemLayoutAttributesProvider];
    v35 = [v33 preferredDisplayOrdinal];
    if ((a11 - 1) < 2)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2 * ((a11 - 3) < 2);
    }

    v37 = [v34 layoutAttributesMapForAppLayout:v33 displayOrdinal:v35 orientation:v36];
  }

  else
  {
    v37 = 0;
  }

  v38 = [a1 _appLayoutContainsOnlyResizableApps:v33];
  v39 = [a1 _windowingSettingsCache];
  v40 = [v39 windowingConfigurationForContainerBounds:a11 interfaceOrientation:v38 ^ 1u floatingDockHeight:a14 requiresFullScreen:a15 prefersStripHidden:a13 prefersDockHidden:1 isEmbeddedDisplay:a2 isFlexibleWindowingEnabled:{a3, a4, a5, a6}];

  LOBYTE(v45) = 0;
  BYTE1(v44) = a15;
  LOBYTE(v44) = a14;
  [a1 _frameForLayoutRole:a9 inAppLayout:v33 layoutAttributesMap:v37 containerBounds:a11 containerOrientation:v40 windowingConfiguration:a12 floatingDockHeight:a2 screenScale:a3 isChamoisWindowingUIEnabled:a4 prefersStripHidden:a5 prefersDockHidden:a6 leftStatusBarPartIntersectionRegion:a7 rightStatusBarPartIntersectionRegion:v44 skipAutoLayout:{a16, a17, a18, a19, a20, a21, a22, a23, v45}];
  v42 = v41;

  return v42;
}

- (double)_frameForLayoutRole:(CGFloat)a3 inAppLayout:(CGFloat)a4 layoutAttributesMap:(CGFloat)a5 containerBounds:(double)a6 containerOrientation:(double)a7 windowingConfiguration:(uint64_t)a8 floatingDockHeight:(uint64_t)a9 screenScale:(void *)a10 isChamoisWindowingUIEnabled:(void *)a11 prefersStripHidden:(uint64_t)a12 prefersDockHidden:(void *)a13 leftStatusBarPartIntersectionRegion:(int)a14 rightStatusBarPartIntersectionRegion:(__int16)a15 skipAutoLayout:(uint64_t)a16
{
  v36 = a10;
  v37 = a11;
  v38 = a13;
  if (HIBYTE(a15))
  {
    v39 = 0.0;
  }

  else
  {
    v39 = a6;
  }

  if (!a14 || a24)
  {
    v40 = v36;
  }

  else
  {
    LOWORD(v161) = a15;
    v40 = [a1 _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:v36 previousAppLayout:0 layoutAttributes:v37 options:0 containerOrientation:a12 windowingConfiguration:v38 floatingDockHeight:v39 screenScale:a7 bounds:a2 prefersStripHidden:a3 prefersDockHidden:a4 source:a5 leftStatusBarPartIntersectionRegion:v161 rightStatusBarPartIntersectionRegion:0 itemsNeedingPositionSnapping:a16 itemsNeedingSizeSnapping:{a17, a18, a19, a20, a21, a22, a23, 0, 0}];
  }

  v41 = v40;
  v42 = [v38 isFlexibleWindowingEnabled];
  if (a9 != 4)
  {
    v43 = v42;
    if ([v41 environment] != 3)
    {
      if (a9 == 3 || [v41 environment] == 2)
      {
        [a1 frameForFloatingAppLayoutInInterfaceOrientation:a12 floatingConfiguration:2 bounds:{a2, a3, a4, a5}];
        goto LABEL_11;
      }

      v176 = *MEMORY[0x277CBF3A8];
      v171 = *(MEMORY[0x277CBF3A8] + 8);
      UIRectGetCenter();
      if (!a14)
      {
        SBLayoutDefaultSideLayoutElementWidth();
        SBLayoutDefaultSideLayoutElementWidth();
        v49 = MEMORY[0x277D76620];
        [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
        v50 = [v41 configuration];
        if (v50 != 3 || (a12 - 1) >= 2)
        {
          v52 = v50;
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
      if (([v38 prefersDockHidden] | v43))
      {
        UIRectGetCenter();
        v174 = v47;
        v168 = v48;
      }

      else
      {
        v174 = a2 + a4 * 0.5;
        v168 = (a5 - a6) * 0.5;
      }

      v56 = [v41 cachedLastFlexibleWindowingAutoLayoutSpace];
      v57 = [v41 itemForLayoutRole:a9];
      v166 = v56;
      v58 = [v56 flexibleAutoLayoutItemForDisplayItemIfExists:v57];

      [v58 size];
      v60 = v59;
      v172 = v61;
      v165 = v58;
      [v58 position];
      v63 = v62;
      v162 = v64;
      v65 = [v41 itemForLayoutRole:a9];
      v66 = [v37 objectForKey:v65];
      v167 = v65;
      v179 = [a1 layoutRestrictionInfoForItem:v65];
      v164 = [v179 layoutRestrictions];
      if (a24)
      {
        [a1 sizeForLayoutAttributes:v66 windowingConfiguration:v38];
        v170 = v67;
        v173 = v68;
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
          [a1 sizeForLayoutAttributes:v66 windowingConfiguration:v38];
          v170 = v75;
          v74 = v76;
        }

        v173 = v74;
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
            v83 = [v41 itemForLayoutRole:a9];
            v84 = [a1 layoutRestrictionInfoForItem:v83];

            [v38 screenEdgePadding];
            v86 = v85;
            v180.origin.x = a2;
            v180.origin.y = a3;
            v180.size.width = a4;
            v180.size.height = a5;
            v181 = CGRectInset(v180, v86, v86);
            Height = CGRectGetHeight(v181);
            if (v173 <= Height)
            {
              v88 = v173;
            }

            else
            {
              v88 = Height;
            }

            v89 = [a1 _chamoisLayoutGridCache];
            v90 = [v41 allItems];
            v91 = v69;
            [v89 nearestGridSizeForProposedSize:objc_msgSend(v90 countOnStage:"count") inBounds:-[SBHomeScreenConfigurationServer authenticator](v69) contentOrientation:v84 layoutRestrictionInfo:v38 screenScale:v170 windowingConfiguration:{v88, a2, a3, a4, a5, a7}];
            v93 = v92;
            v95 = v94;

            v96 = v167;
            goto LABEL_85;
          }

          if ([v38 requiresFullScreen])
          {
            v96 = v167;
            if ([(SBHomeScreenConfigurationServer *)v69 connections]== 2)
            {
              UIRectGetCenter();
              v173 = a5;
              v97 = a4;
LABEL_74:
              v114 = [a1 _chamoisLayoutGridCache];
              v91 = v69;
              [a1 _minSizeForDisplayItem:v96 inContainerBounds:v114 layoutGrid:v179 layoutRestrictionInfo:-[SBHomeScreenConfigurationServer authenticator](v69) contentOrientation:v38 screenScale:a2 windowingConfiguration:{a3, a4, a5, a7}];
              v116 = v115;
              v118 = v117;

              if (v116 >= v97)
              {
                v119 = v116;
              }

              else
              {
                v119 = v97;
              }

              if (a4 <= v119)
              {
                v93 = a4;
              }

              else
              {
                v93 = v119;
              }

              v120 = v173;
              if (v118 >= v173)
              {
                v120 = v118;
              }

              if (a5 <= v120)
              {
                v95 = a5;
              }

              else
              {
                v95 = v120;
              }

LABEL_85:
              if (!v164 || ([a1 _chamoisLayoutGridCache], v121 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "allItems"), v122 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v121, "nearestGridSizeForProposedSize:countOnStage:inBounds:contentOrientation:layoutRestrictionInfo:screenScale:windowingConfiguration:", objc_msgSend(v122, "count"), -[SBHomeScreenConfigurationServer authenticator](v91), v179, v38, v93, v95, a2, a3, a4, a5, a7), v124 = v123, v126 = v125, v122, v121, (v163 & 1) != 0))
              {
                v127 = v165;
LABEL_112:

LABEL_113:
                UISizeRoundToScale();
                SBRectWithSize();
                UIRectCenteredAboutPointScale();
                goto LABEL_11;
              }

              v128 = [v41 allItems];
              if ([v128 count] >= 2)
              {

                if (v124 < a4 && v126 < a5)
                {
                  goto LABEL_111;
                }

                v129 = [a1 _chamoisLayoutGridCache];
                v128 = [v129 allGridWidthsForBounds:-[SBHomeScreenConfigurationServer authenticator](v91) contentOrientation:v179 layoutRestrictionInfo:v38 screenScale:a2 windowingConfiguration:{a3, a4, a5, a7}];

                v130 = [a1 _chamoisLayoutGridCache];
                v178 = v91;
                v131 = [v130 allGridHeightsForBounds:-[SBHomeScreenConfigurationServer authenticator](v91) contentOrientation:v179 layoutRestrictionInfo:v38 screenScale:a2 windowingConfiguration:{a3, a4, a5, a7}];

                v132 = [v128 count];
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
                    v139 = [v128 objectAtIndex:v135];
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

            [v38 defaultWindowSize];
            v97 = v104;
LABEL_70:
            v173 = v98;
            goto LABEL_74;
          }

          v175 = v81;
          if (v170 != v176)
          {
            v96 = v167;
            v97 = v170;
            goto LABEL_74;
          }

          v98 = v173;
          if (v173 != v171)
          {
            v96 = v167;
            v97 = v170;
            goto LABEL_70;
          }

          v99 = [v41 itemForLayoutRole:{a9, v171, v173}];
          v100 = [a1 _deviceApplicationSceneHandleForDisplayItem:v99];

          v177 = v100;
          if (!v100 || ![v100 supportsCenterWindow] || -[SBHomeScreenConfigurationServer connections](v69))
          {
            v101 = v69;
            if ([(SBHomeScreenConfigurationServer *)v69 connections]== 2)
            {
              UIRectGetCenter();
              v102 = a5;
              v103 = a4;
            }

            else
            {
              [v38 defaultWindowSize];
              v103 = v105;
              v102 = v106;
            }

            goto LABEL_73;
          }

          [v38 screenEdgePadding];
          SBRectWithSize();
          [a1 frameForCenterItemWithConfiguration:1 interfaceOrientation:a12 bounds:?];
          v103 = v149;
          v102 = v150;
          v101 = v69;
          if (v169 != *MEMORY[0x277CBF348] || v175 != *(MEMORY[0x277CBF348] + 8))
          {
            goto LABEL_73;
          }

          v151 = [v41 allItems];
          v152 = SBDisplayItemDescendingInteractionTimeComparator(v37);
          v153 = [v151 sortedArrayUsingComparator:v152];

          v154 = v153;
          v155 = [v153 firstObject];
          if (v155)
          {
            v156 = v155;
            v157 = [v41 itemForLayoutRole:a9];
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

            v160 = [v37 objectForKey:v156];
            [a1 centerForLayoutAttributes:v160 windowingConfiguration:v38];
          }

LABEL_123:

LABEL_73:
          v96 = v167;
          v107 = [a1 _chamoisLayoutGridCache];
          v108 = [v41 allItems];
          v109 = [v108 count];
          v110 = [(SBHomeScreenConfigurationServer *)v101 authenticator];
          v111 = v109;
          v69 = v101;
          [v107 nearestGridSizeForProposedSize:v111 countOnStage:v110 inBounds:v179 contentOrientation:v38 layoutRestrictionInfo:v103 screenScale:v102 windowingConfiguration:{a2, a3, a4, a5, a7}];
          v97 = v112;
          v173 = v113;

          goto LABEL_74;
        }

        v77 = v162;
        if (v162 != 1.79769313e308)
        {
          goto LABEL_46;
        }
      }

      [a1 centerForLayoutAttributes:v69 windowingConfiguration:v38];
      v63 = v78;
      goto LABEL_46;
    }
  }

  [a1 frameForCenterItemWithConfiguration:SBMainDisplayLayoutStateCenterConfigurationFromAppLayoutCenterConfiguration(objc_msgSend(v41 interfaceOrientation:"centerConfiguration")) bounds:{a12, a2, a3, a4, a5}];
LABEL_11:
  v45 = v44;

  return v45;
}

- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)a3 floatingConfiguration:(int64_t)a4 windowScene:(id)a5
{
  v8 = [a5 _fbsDisplayConfiguration];
  [v8 bounds];
  _UIWindowConvertRectFromOrientationToOrientation();
  [(SBDisplayItemLayoutAttributesCalculator *)self frameForFloatingAppLayoutInInterfaceOrientation:a3 floatingConfiguration:a4 bounds:?];
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

- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)a3 floatingConfiguration:(int64_t)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  SBLayoutDefaultSideLayoutElementWidth();
  v11 = v10;
  if (frameForFloatingAppLayoutInInterfaceOrientation_floatingConfiguration_bounds__onceToken != -1)
  {
    [SBDisplayItemLayoutAttributesCalculator frameForFloatingAppLayoutInInterfaceOrientation:floatingConfiguration:bounds:];
  }

  v12 = 0.0;
  if (a4 <= 1)
  {
    if (!a4)
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

    if (a4 != 1)
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

  if (a4 == 2)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (a4 != 3)
  {
    if (a4 != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v13 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  if (v13 == 1)
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

- (CGRect)frameForCenterItemWithConfiguration:(int64_t)a3 interfaceOrientation:(int64_t)a4 windowScene:(id)a5
{
  v8 = [a5 _fbsDisplayConfiguration];
  [v8 bounds];
  _UIWindowConvertRectFromOrientationToOrientation();
  [(SBDisplayItemLayoutAttributesCalculator *)self frameForCenterItemWithConfiguration:a3 interfaceOrientation:a4 bounds:?];
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

- (CGRect)frameForCenterItemWithConfiguration:(int64_t)a3 interfaceOrientation:(int64_t)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = [(SBDisplayItemLayoutAttributesCalculator *)self _centerWindowSheetMetricsCache];
  [v11 pageSheetFrameForBounds:a4 interfaceOrientation:a3 == 2 configuration:{x, y, width, height}];
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

- (id)flexibleWindowingAutoLayoutSpaceForAppLayout:(double)a3 containerOrientation:(double)a4 floatingDockHeight:(double)a5 screenScale:(double)a6 bounds:(double)a7 isEmbeddedDisplay:(uint64_t)a8 prefersStripHidden:(void *)a9 prefersDockHidden:(uint64_t)a10 leftStatusBarPartIntersectionRegion:(uint64_t)a11 rightStatusBarPartIntersectionRegion:(uint64_t)a12
{
  v30 = a9;
  v31 = [a1 _appLayoutContainsOnlyResizableApps:v30];
  v32 = [a1 _windowingSettingsCache];
  v33 = [v32 windowingConfigurationForContainerBounds:a10 interfaceOrientation:v31 ^ 1u floatingDockHeight:a12 requiresFullScreen:a13 prefersStripHidden:a11 prefersDockHidden:1 isEmbeddedDisplay:a4 isFlexibleWindowingEnabled:{a5, a6, a7, a2}];

  BYTE1(v37) = a13;
  LOBYTE(v37) = a12;
  v34 = [a1 _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:v30 previousAppLayout:0 layoutAttributes:0 options:0 containerOrientation:a10 windowingConfiguration:v33 floatingDockHeight:a2 screenScale:a3 bounds:a4 prefersStripHidden:a5 prefersDockHidden:a6 source:a7 leftStatusBarPartIntersectionRegion:v37 rightStatusBarPartIntersectionRegion:0 itemsNeedingPositionSnapping:a15 itemsNeedingSizeSnapping:{a16, a17, a18, a19, a20, 0, 0}];

  v35 = [v34 cachedLastFlexibleWindowingAutoLayoutSpace];

  return v35;
}

- (id)flexibleWindowingAutoLayoutSpaceForAppLayout:(double)a3 containerOrientation:(double)a4 floatingDockHeight:(double)a5 screenScale:(double)a6 bounds:(double)a7 isEmbeddedDisplay:(uint64_t)a8 prefersStripHidden:(void *)a9 prefersDockHidden:(uint64_t)a10 newLayoutAttributes:(unsigned int)a11 leftStatusBarPartIntersectionRegion:(uint64_t)a12 rightStatusBarPartIntersectionRegion:(uint64_t)a13 itemsNeedingPositionSnapping:(void *)a14 itemsNeedingSizeSnapping:(__int128)a15
{
  v33 = a22;
  v34 = a21;
  v35 = a14;
  v36 = a9;
  v37 = [a1 _appLayoutContainsOnlyResizableApps:v36];
  v38 = [a1 _windowingSettingsCache];
  v39 = v37 ^ 1u;
  v40 = a10;
  v41 = [v38 windowingConfigurationForContainerBounds:a10 interfaceOrientation:v39 floatingDockHeight:a12 requiresFullScreen:a13 prefersStripHidden:a11 prefersDockHidden:1 isEmbeddedDisplay:a4 isFlexibleWindowingEnabled:{a5, a6, a7, a2}];

  BYTE1(v45) = a13;
  LOBYTE(v45) = a12;
  v42 = [a1 _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:v36 previousAppLayout:0 usingNewLayoutAttributes:v35 options:0 containerOrientation:v40 windowingConfiguration:v41 floatingDockHeight:a2 screenScale:a3 bounds:a4 prefersStripHidden:a5 prefersDockHidden:a6 source:a7 leftStatusBarPartIntersectionRegion:v45 rightStatusBarPartIntersectionRegion:0 itemsNeedingPositionSnapping:a15 itemsNeedingSizeSnapping:{a16, a17, a18, a19, a20, v34, v33}];

  v43 = [v42 cachedLastFlexibleWindowingAutoLayoutSpace];

  return v43;
}

- (id)appLayoutByPerformingAutoLayoutForAppLayout:(double)a3 previousAppLayout:(double)a4 options:(double)a5 containerOrientation:(double)a6 floatingDockHeight:(double)a7 screenScale:(uint64_t)a8 bounds:(void *)a9 isEmbeddedDisplay:(void *)a10 prefersStripHidden:(uint64_t)a11 prefersDockHidden:(uint64_t)a12 source:(unsigned int)a13 leftStatusBarPartIntersectionRegion:(uint64_t)a14 rightStatusBarPartIntersectionRegion:(unsigned __int8)a15 itemsNeedingPositionSnapping:(uint64_t)a16 itemsNeedingSizeSnapping:(__int128)a17
{
  v34 = a24;
  v35 = a23;
  v36 = a10;
  v37 = a9;
  v38 = [a1 _appLayoutContainsOnlyResizableApps:v37];
  v39 = [a1 _windowingSettingsCache];
  v40 = v38 ^ 1u;
  v41 = a12;
  v42 = [v39 windowingConfigurationForContainerBounds:a12 interfaceOrientation:v40 floatingDockHeight:a14 requiresFullScreen:a15 prefersStripHidden:a13 prefersDockHidden:1 isEmbeddedDisplay:a4 isFlexibleWindowingEnabled:{a5, a6, a7, a2}];

  BYTE1(v45) = a15;
  LOBYTE(v45) = a14;
  v43 = [a1 _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:v37 previousAppLayout:v36 layoutAttributes:0 options:a11 containerOrientation:v41 windowingConfiguration:v42 floatingDockHeight:a2 screenScale:a3 bounds:a4 prefersStripHidden:a5 prefersDockHidden:a6 source:a7 leftStatusBarPartIntersectionRegion:v45 rightStatusBarPartIntersectionRegion:a16 itemsNeedingPositionSnapping:a17 itemsNeedingSizeSnapping:{a18, a19, a20, a21, a22, v35, v34}];

  return v43;
}

- (id)appLayoutByPerformingAutoLayoutForAppLayout:(id)a3 previousAppLayout:(id)a4 usingLayoutAttributes:(id)a5 options:(unint64_t)a6 containerOrientation:(int64_t)a7 windowScene:(id)a8 source:(int64_t)a9 itemsNeedingPositionSnapping:(id)a10 itemsNeedingSizeSnapping:(id)a11
{
  v16 = a8;
  v64 = a11;
  v63 = a10;
  v62 = a5;
  v61 = a4;
  v17 = a3;
  LODWORD(a5) = [(SBDisplayItemLayoutAttributesCalculator *)self _appLayoutContainsOnlyResizableApps:v17];
  [(SBDisplayItemLayoutAttributesCalculator *)self containerBoundsForWindowScene:v16 containerOrientation:a7];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(SBDisplayItemLayoutAttributesCalculator *)self _windowingSettingsCache];
  v27 = [v16 floatingDockController];
  v58 = v21;
  v59 = v19;
  [v27 floatingDockHeightForFrame:{v19, v21, v23, v25}];
  v29 = v28;

  v60 = v26;
  v57 = [v26 windowingConfigurationForWindowScene:v16 interfaceOrientation:a7 requiresFullScreen:a5 ^ 1 floatingDockHeight:v29];
  v30 = [v16 switcherController];
  v31 = [v30 contentViewController];
  v32 = objc_opt_class();
  v33 = v31;
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

  v36 = [v16 screen];
  [v36 scale];
  v38 = v37;

  v39 = [v35 prefersStripHidden];
  v40 = [v35 prefersDockHidden];
  v41 = [v35 personality];

  [v41 leftStatusBarPartIntersectionRegion];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  [v41 rightStatusBarPartIntersectionRegion];
  BYTE1(v56) = v40;
  LOBYTE(v56) = v39;
  v54 = [(SBDisplayItemLayoutAttributesCalculator *)self _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:v17 previousAppLayout:v61 usingNewLayoutAttributes:v62 options:a6 containerOrientation:a7 windowingConfiguration:v57 floatingDockHeight:v29 screenScale:v38 bounds:v59 prefersStripHidden:v58 prefersDockHidden:v23 source:v25 leftStatusBarPartIntersectionRegion:v56 rightStatusBarPartIntersectionRegion:a9 itemsNeedingPositionSnapping:v43 itemsNeedingSizeSnapping:v45, v47, v49, v50, v51, v52, v53, v63, v64];

  return v54;
}

- (id)layoutRestrictionInfoForItem:(id)a3
{
  v4 = a3;
  v5 = [(SBDisplayItemLayoutAttributesCalculator *)self _applicationForDisplayItem:v4];
  v6 = [v5 supportsChamoisSceneResizing];
  if (!v5 || v6)
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
      v10 = [(SBDisplayItemLayoutAttributesCalculator *)self _deviceApplicationSceneHandleForDisplayItem:v4];
      v11 = [v10 sceneManager];
      v12 = [v11 displayIdentity];
      v13 = [v12 isExternal];

      v14 = [v10 application];
      v15 = v14;
      if ((v13 & 1) != 0 || [v14 onlySupportsOneOrientation])
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

    v16 = [MEMORY[0x277D759A0] mainScreen];
    v17 = [v16 displayConfiguration];
    [v5 defaultLaunchingSizeForDisplayConfiguration:v17];
    v7 = v18;
    v8 = v19;
  }

  v20 = [SBDisplayItemGridLayoutRestrictionInfo layoutRestrictionInfoWithLayoutRestrictions:v9 restrictedSize:v7, v8];

  return v20;
}

- (int64_t)sizingPolicyForDisplayItem:(id)a3 contentOrientation:(int64_t)a4 containerOrientation:(int64_t)a5 proposedSizingPolicy:(int64_t)a6 windowScene:(id)a7
{
  v12 = a7;
  v13 = [(SBDisplayItemLayoutAttributesCalculator *)self _applicationForDisplayItem:a3];
  if (v13)
  {
    v14 = [v12 switcherController];
    v15 = [v14 windowManagementContext];
    v16 = [v14 displayIdentity];
    if (((1 << a6) & ~[v13 supportedSizingPoliciesForSwitcherWindowManagementContext:v15 displayIdentity:v16 contentOrientation:a4 containerOrientation:a5]) != 0)
    {
      a6 = [v13 preferredSizingPolicyForSwitcherWindowManagementContext:v15 displayIdentity:v16 contentOrientation:a4 containerOrientation:a5];
    }
  }

  return a6;
}

- (CGRect)containerBoundsForWindowScene:(id)a3 containerOrientation:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 screen];
  v7 = [v6 displayConfiguration];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 8);
  v14 = [v5 traitsPipelineManager];

  if ([v14 supportsLiveDeviceRotation])
  {

    if ((a4 - 3) <= 1)
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

- (SBDisplayItemSlideOverConfiguration)updatedSlideOverConfigurationForItemWithSize:(SEL)a3 center:(CGSize)a4 slideOverConfiguration:(CGPoint)a5 windowingConfiguration:(SBDisplayItemSlideOverConfiguration *)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.height;
  width = a4.width;
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

  v35 = a6->size.width;
  v36 = a6->size.height;
  size = a6->size;
  v47[0] = *&a6->corner;
  v47[1] = size;
  v48 = *&a6->isActive;
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

  return SBDisplayItemSlideOverConfigurationMake(v34, a6->isActive, a6->isStashed, v33, retstr, v32, v44, v45);
}

- (id)_appLayoutByPerformingAutoLayoutIfNeededInAppLayout:(double)a3 previousAppLayout:(double)a4 layoutAttributes:(double)a5 options:(double)a6 containerOrientation:(double)a7 windowingConfiguration:(uint64_t)a8 floatingDockHeight:(void *)a9 screenScale:(void *)a10 bounds:(void *)a11 prefersStripHidden:(uint64_t)a12 prefersDockHidden:(uint64_t)a13 source:(void *)a14 leftStatusBarPartIntersectionRegion:(__int16)a15 rightStatusBarPartIntersectionRegion:(uint64_t)a16 itemsNeedingPositionSnapping:(uint64_t)a17 itemsNeedingSizeSnapping:(uint64_t)a18
{
  v31 = a9;
  v32 = a10;
  v33 = a11;
  v34 = a14;
  v35 = a25;
  v36 = a26;
  if (v33)
  {
    v37 = v33;
  }

  else
  {
    v38 = [a1 _displayItemLayoutAttributesProvider];
    v39 = [v31 preferredDisplayOrdinal];
    if ((a13 - 1) < 2)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2 * ((a13 - 3) < 2);
    }

    v37 = [v38 layoutAttributesMapForAppLayout:v31 displayOrdinal:v39 orientation:v40];
  }

  LOWORD(v43) = a15;
  v41 = [a1 _appLayoutByPerformingAutoLayoutIfNeededInAppLayout:v31 previousAppLayout:v32 usingNewLayoutAttributes:v37 options:a12 containerOrientation:a13 windowingConfiguration:v34 floatingDockHeight:a2 screenScale:a3 bounds:a4 prefersStripHidden:a5 prefersDockHidden:a6 source:a7 leftStatusBarPartIntersectionRegion:v43 rightStatusBarPartIntersectionRegion:a16 itemsNeedingPositionSnapping:a17 itemsNeedingSizeSnapping:{a18, a19, a20, a21, a22, a23, a24, v35, v36}];

  return v41;
}

- (id)_appLayoutByPerformingAutoLayoutIfNeededInAppLayout:(double)a3 previousAppLayout:(CGFloat)a4 usingNewLayoutAttributes:(CGFloat)a5 options:(CGFloat)a6 containerOrientation:(CGFloat)a7 windowingConfiguration:(uint64_t)a8 floatingDockHeight:(void *)a9 screenScale:(void *)a10 bounds:(void *)a11 prefersStripHidden:(uint64_t)a12 prefersDockHidden:(uint64_t)a13 source:(void *)a14 leftStatusBarPartIntersectionRegion:(__int16)a15 rightStatusBarPartIntersectionRegion:(unint64_t)a16 itemsNeedingPositionSnapping:(uint64_t)a17 itemsNeedingSizeSnapping:(uint64_t)a18
{
  v250 = *MEMORY[0x277D85DE8];
  v34 = a9;
  v35 = a10;
  v36 = a11;
  v37 = a14;
  v38 = a25;
  v39 = a26;
  if (v34)
  {
    if (([v37 isFlexibleWindowingEnabled] & 1) == 0)
    {
      v43 = v34;
      goto LABEL_104;
    }

    v189 = a12;
    v40 = [v34 cachedLastOverlappingModelKey];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = [[SBAppLayoutAutoLayoutSpaceCacheKey alloc] initWithAppLayout:v34];
    }

    v44 = v42;

    v45 = [a1 _preferredMinimumSizeMapForAppLayout:v34];
    if (([(SBAppLayoutAutoLayoutSpaceCacheKey *)v44 updateWithContainerBounds:a13 containerOrientation:a15 floatingDockHeight:HIBYTE(a15) hideStrips:v45 hideDock:v36 preferredMinimumSizeMap:a4 layoutAttributesMap:a5, a6, a7, a2]& 1) == 0)
    {
      v63 = v34;
LABEL_103:

      goto LABEL_104;
    }

    v186 = v45;
    v190 = v39;
    v210 = v37;
    if (a16 > 0x37)
    {
      goto LABEL_20;
    }

    if (((1 << a16) & 0x80000800002000) == 0)
    {
      goto LABEL_20;
    }

    if (!v35)
    {
      goto LABEL_20;
    }

    v46 = [v34 allItems];
    v47 = [v46 count];
    v48 = [v35 allItems];
    v49 = v44;
    v50 = [v48 count] + 1;

    v88 = v47 == v50;
    v44 = v49;
    v37 = v210;
    if (!v88)
    {
      goto LABEL_20;
    }

    v51 = [v34 allItems];
    v245[0] = MEMORY[0x277D85DD0];
    v245[1] = 3221225472;
    v245[2] = __399__SBDisplayItemLayoutAttributesCalculator__appLayoutByPerformingAutoLayoutIfNeededInAppLayout_previousAppLayout_usingNewLayoutAttributes_options_containerOrientation_windowingConfiguration_floatingDockHeight_screenScale_bounds_prefersStripHidden_prefersDockHidden_source_leftStatusBarPartIntersectionRegion_rightStatusBarPartIntersectionRegion_itemsNeedingPositionSnapping_itemsNeedingSizeSnapping___block_invoke;
    v245[3] = &unk_2783A8C90;
    v246 = v35;
    v52 = [v51 bs_firstObjectPassingTest:v245];

    if (v52)
    {
      v53 = [a1 _deviceApplicationSceneHandleForDisplayItem:v52];
      if (v53)
      {
        v54 = v53;
        v55 = [v53 supportsCenterWindow];

        v37 = v210;
        if (v55)
        {
          v56 = [a1 _chamoisLayoutGridCache];
          v57 = [SBDisplayItemGridLayoutRestrictionInfo layoutRestrictionInfoWithLayoutRestrictions:0 restrictedSize:-1.0, -1.0];
          [v56 maxGridSizeForBounds:a13 contentOrientation:v57 layoutRestrictionInfo:v210 screenScale:a4 windowingConfiguration:{a5, a6, a7, a3}];
          v59 = v58;
          v204 = v60;

          v61 = v210;
          [v210 stageOcclusionDodgingPeekLength];
          obj = v59 - v62;
          goto LABEL_21;
        }

LABEL_20:
        v64 = [a1 _chamoisLayoutGridCache];
        [v37 maximumWindowWidthForOverlapping];
        v66 = v65;
        v67 = [v34 allItems];
        v68 = [v67 count];
        v69 = [SBDisplayItemGridLayoutRestrictionInfo layoutRestrictionInfoWithLayoutRestrictions:0 restrictedSize:-1.0, -1.0];
        [v64 nearestGridSizeForProposedSize:v68 countOnStage:a13 inBounds:v69 contentOrientation:v210 layoutRestrictionInfo:v66 screenScale:a7 windowingConfiguration:{a4, a5, a6, a7, a3}];
        obj = v70;
        v204 = v71;

        v61 = v210;
LABEL_21:
        [v61 defaultWindowSize];
        [v61 screenEdgePadding];
        v203 = v72;
        v73 = [v34 allItems];
        v74 = [v73 count];

        v191 = v38;
        v192 = v34;
        v216 = a5;
        v217 = a6;
        v215 = a4;
        v187 = v44;
        v188 = v35;
        if (v74 < 2)
        {
          v117 = [v34 allItems];
          v118 = [v117 count];

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
            [v34 enumerate:v227];
            v129 = SBDisplayItemDescendingZOrderComparator(v36);
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
                  LOWORD(v182) = a15;
                  [a1 _frameForLayoutRole:objc_msgSend(v34 inAppLayout:"layoutRoleForItem:" layoutAttributesMap:v135) containerBounds:v34 containerOrientation:v36 windowingConfiguration:a13 floatingDockHeight:v210 screenScale:1 isChamoisWindowingUIEnabled:a4 prefersStripHidden:a5 prefersDockHidden:a6 leftStatusBarPartIntersectionRegion:a7 rightStatusBarPartIntersectionRegion:a2 skipAutoLayout:{a3, v182, a17, a18, a19, a20, a21, a22, a23, a24, v185}];
                  v137 = v136;
                  v139 = v138;
                  v140 = [v36 objectForKey:v135];
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
            v143 = a4;
            v144 = a7;
            v145 = [(SBContinuousExposeAutoLayoutConfiguration *)v142 initWithContainerBounds:v210 screenScale:v143 dockHeightWithBottomEdgePadding:a5 leftStatusBarPartIntersectionRegion:a6 rightStatusBarPartIntersectionRegion:a7 windowingConfiguration:a3, a2, a17, a18, a19, a20, a21, a22, a23, a24];
            v146 = [[SBFlexibleWindowingAutoLayoutSpace alloc] initWithItems:v205];
            v147 = [a1 _flexibleAutoLayoutController];
            v207 = v145;
            v148 = [v147 spaceByPerformingFlexibleAutoLayoutWithSpace:v146 configuration:v145 options:v189 itemsNeedingPositionSnapping:v191 itemsNeedingSizeSnapping:v190];

            v149 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v219 = 0u;
            v220 = 0u;
            v221 = 0u;
            v222 = 0u;
            v206 = v148;
            v208 = [v148 autoLayoutItems];
            v150 = [v208 countByEnumeratingWithState:&v219 objects:v247 count:16];
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
                    objc_enumerationMutation(v208);
                  }

                  v154 = *(*(&v219 + 1) + 8 * j);
                  v155 = [v154 displayItem];
                  v156 = [v154 positionIsSystemManaged];
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

                  v163 = [(SBDisplayItemLayoutAttributes *)v158 normalizedPointForPoint:v160 inBounds:v215, v216, v217, v144];
                  v165 = v164;
                  v166 = [(SBDisplayItemLayoutAttributes *)1.79769313e308 normalizedPointForPoint:v215 inBounds:v216, v217, v144];
                  v168 = v167;
                  v169 = [v36 objectForKey:v155];
                  v170 = [SBDisplayItemLayoutAttributes attributesByModifyingOcclusionState:v169];

                  v171 = [(SBDisplayItemLayoutAttributes *)v170 attributesByModifyingUnoccludedPeekingCenter:v166, v168];

                  v172 = [(SBDisplayItemLayoutAttributes *)v171 attributesByModifyingPositionIsSystemManaged:v156];

                  *&v231 = 0;
                  v229 = 0u;
                  v230 = 0u;
                  [(SBDisplayItemLayoutAttributes *)v172 slideOverConfiguration];
                  v237 = v229;
                  v238 = v230;
                  *&v239 = v231;
                  IsValid = SBDisplayItemSlideOverConfigurationIsValid(&v237);
                  if ([(SBHomeScreenConfigurationServer *)v172 connections]|| ([(SBDisplayItemLayoutAttributes *)v172 tileConfiguration], ((SBDisplayItemTileConfigurationIsValid(&v237) | IsValid) & 1) != 0))
                  {
                    v144 = a7;
                    if ([(SBHomeScreenConfigurationServer *)v172 connections]== 1)
                    {
                      v174 = [(SBDisplayItemLayoutAttributes *)v172 attributesByModifyingNormalizedCenter:v163, v165];
LABEL_92:
                      v175 = v174;

                      v172 = v175;
                      goto LABEL_97;
                    }

                    if (IsValid && (BYTE1(v231) & 1) == 0)
                    {
                      v233 = v229;
                      v234 = v230;
                      *&v235 = v231;
                      [a1 updatedSlideOverConfigurationForItemWithSize:&v233 center:v210 slideOverConfiguration:v212 windowingConfiguration:{v214, v158, v160}];
                      v174 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v172];
                      goto LABEL_92;
                    }
                  }

                  else
                  {
                    v240 = 0;
                    v238 = 0u;
                    v239 = 0u;
                    v237 = 0u;
                    [(SBDisplayItemLayoutAttributes *)v172 attributedSize];
                    v184 = v203;
                    v144 = a7;
                    SBDisplayItemAttributedSizeInfer(&v233, v212, v214, v215, v216, v217, a7);
                    v240 = v236;
                    v238 = v234;
                    v239 = v235;
                    v237 = v233;
                    v176 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v172];

                    v172 = [(SBDisplayItemLayoutAttributes *)v176 attributesByModifyingNormalizedCenter:v163, v165];
                  }

LABEL_97:
                  [v149 setObject:v172 forKey:{v155, v184}];
                }

                v151 = [v208 countByEnumeratingWithState:&v219 objects:v247 count:16];
              }

              while (v151);
            }

            v34 = v192;
            v177 = v192;
            v178 = [a1 _displayItemLayoutAttributesProvider];
            v179 = [v177 preferredDisplayOrdinal];
            if ((a13 - 1) < 2)
            {
              v180 = 1;
            }

            else
            {
              v180 = 2 * ((a13 - 3) < 2);
            }

            [v178 updateLayoutAttributesMap:v149 forAppLayout:v177 displayOrdinal:v179 orientation:v180];

            [v177 setCachedLastFlexibleWindowingAutoLayoutSpace:v206];
            v44 = v187;
            [v177 setCachedLastOverlappingModelKey:v187];

            v35 = v188;
            v37 = v210;
            v39 = v190;
            v38 = v191;
            v45 = v186;
            goto LABEL_103;
          }

          v75 = [v34 itemForLayoutRole:1];
          v119 = [v36 objectForKey:v75];
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
              SBDisplayItemAttributedSizeInfer(&v237, v121, v122, a4, a5, a6, a7);
              v233 = v237;
              v234 = v238;
              v235 = v239;
              v236 = v240;
              v123 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v119];

              SBDisplayItemAttributedSizeUnspecified(&v233);
              v119 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedUserSizeBeforeOverlapping:v123];

              v124 = [a1 _displayItemLayoutAttributesProvider];
              v125 = [v34 preferredDisplayOrdinal];
              if ((a13 - 1) < 2)
              {
                v126 = 1;
              }

              else
              {
                v126 = 2 * ((a13 - 3) < 2);
              }

              [v124 updateLayoutAttributes:v119 ofDisplayItem:v75 displayOrdinal:v125 orientation:v126];
            }
          }
        }

        else
        {
          v243 = 0u;
          v244 = 0u;
          v241 = 0u;
          v242 = 0u;
          v75 = [v34 allItems];
          v76 = [v75 countByEnumeratingWithState:&v241 objects:v249 count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v242;
            v79 = *MEMORY[0x277CBF3A8];
            v80 = *(MEMORY[0x277CBF3A8] + 8);
            if ((a13 - 1) < 2)
            {
              v81 = 1;
            }

            else
            {
              v81 = 2 * ((a13 - 3) < 2);
            }

            v193 = v81;
            v82 = a1;
            v200 = a2;
            v196 = *v242;
            v197 = v75;
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
                  objc_enumerationMutation(v75);
                }

                v84 = *(*(&v241 + 1) + 8 * v83);
                v85 = [v34 layoutRoleForItem:v84];
                if (SBLayoutRoleIsValidForSplitView(v85))
                {
                  v86 = [v36 objectForKey:v84];
                  v88 = [SBDisplayItemLayoutAttributes userSizeBeforeOverlappingInBounds:v86 defaultSize:? screenEdgePadding:?]== v79 && v87 == v80;
                  if (v88)
                  {
                    v89 = [v82 layoutRestrictionInfoForItem:v84];
                    v90 = v204;
                    v91 = obj;
                    if ([v89 layoutRestrictions])
                    {
                      v92 = [v82 _chamoisLayoutGridCache];
                      v93 = [v34 allItems];
                      [v92 nearestGridSizeForProposedSize:objc_msgSend(v93 countOnStage:"count") inBounds:a13 contentOrientation:v89 layoutRestrictionInfo:v210 screenScale:obj windowingConfiguration:{v204, a4, a5, a6, a7, a3}];
                      v91 = v94;
                      v90 = v95;

                      v34 = v192;
                      if (v91 >= a6 || v90 >= a7)
                      {
                        v97 = [v82 _chamoisLayoutGridCache];
                        [v210 maximumWindowWidthForOverlapping];
                        v99 = v98;
                        v100 = [v192 allItems];
                        [v97 nearestGridSizeForProposedSize:objc_msgSend(v100 countOnStage:"count") inBounds:a13 contentOrientation:v89 layoutRestrictionInfo:v210 screenScale:v99 windowingConfiguration:{a7, a4, a5, a6, a7, a3}];
                        v91 = v101;
                        v90 = v102;

                        v34 = v192;
                      }
                    }

                    [v82 sizeForLayoutAttributes:v86 windowingConfiguration:v210];
                    if (v103 <= 0.0 || (v105 = v104, v104 <= 0.0))
                    {
                      LOBYTE(v185) = 1;
                      LOWORD(v182) = a15;
                      v82 = a1;
                      v109 = a6;
                      v107 = a6;
                      v108 = a7;
                      [a1 _frameForLayoutRole:v85 inAppLayout:v34 layoutAttributesMap:v36 containerBounds:a13 containerOrientation:v210 windowingConfiguration:1 floatingDockHeight:a4 screenScale:a5 isChamoisWindowingUIEnabled:v109 prefersStripHidden:a7 prefersDockHidden:v200 leftStatusBarPartIntersectionRegion:a3 rightStatusBarPartIntersectionRegion:v182 skipAutoLayout:{a17, a18, a19, a20, a21, a22, a23, a24, v185}];
                      v106 = v110;
                      v105 = v111;
                    }

                    else
                    {
                      v106 = v103;
                      v107 = a6;
                      v108 = a7;
                      v82 = a1;
                    }

                    v77 = v198;
                    v240 = 0;
                    v238 = 0u;
                    v239 = 0u;
                    v237 = 0u;
                    v183 = v203;
                    SBDisplayItemAttributedSizeInfer(&v237, v106, v105, a4, a5, v107, v108);
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
                        a5 = v216;
                        a6 = v217;
                        a4 = v215;
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
                        a4 = v215;
                        a5 = v216;
                        a6 = v217;
                        SBDisplayItemAttributedSizeInfer(&v233, v113, v114, v215, v216, v217, a7);
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
                      a5 = v216;
                      a6 = v217;
                      a4 = v215;
                      a2 = v200;
                    }

                    v116 = [v82 _displayItemLayoutAttributesProvider];
                    [v116 updateLayoutAttributes:v112 ofDisplayItem:v84 displayOrdinal:objc_msgSend(v34 orientation:{"preferredDisplayOrdinal"), v193}];

                    v86 = v112;
                    v78 = v196;
                    v75 = v197;
                    v80 = v194;
                    v79 = v195;
                  }
                }

                ++v83;
              }

              while (v77 != v83);
              v77 = [v75 countByEnumeratingWithState:&v241 objects:v249 count:16];
            }

            while (v77);
          }
        }

        goto LABEL_74;
      }
    }

    v37 = v210;
    goto LABEL_20;
  }

LABEL_104:

  return v34;
}

void __399__SBDisplayItemLayoutAttributesCalculator__appLayoutByPerformingAutoLayoutIfNeededInAppLayout_previousAppLayout_usingNewLayoutAttributes_options_containerOrientation_windowingConfiguration_floatingDockHeight_screenScale_bounds_prefersStripHidden_prefersDockHidden_source_leftStatusBarPartIntersectionRegion_rightStatusBarPartIntersectionRegion_itemsNeedingPositionSnapping_itemsNeedingSizeSnapping___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (SBLayoutRoleIsValidForSplitView(a2))
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)_deviceApplicationSceneHandleForDisplayItem:(id)a3
{
  v3 = a3;
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
  v5 = v3;
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

- (id)_applicationForDisplayItem:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationForDisplayItem:v3];

  return v5;
}

- (BOOL)_appLayoutContainsOnlyResizableApps:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 _appLayoutContainsOnlyResizableApps:v3];

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

- (CGSize)_minSizeForDisplayItem:(id)a3 inContainerBounds:(CGRect)a4 layoutGrid:(id)a5 layoutRestrictionInfo:(id)a6 contentOrientation:(int64_t)a7 screenScale:(double)a8 windowingConfiguration:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a9;
  v22 = +[SBMainSwitcherControllerCoordinator sharedInstanceIfExists];
  v23 = [v22 switcherControllerForDisplayItem:v18];

  if (v23)
  {
    v24 = [v23 contentViewController];
    v25 = objc_opt_class();
    v26 = v24;
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

    [v32 minSizeForDisplayItem:v18 inContainerBounds:v19 layoutGrid:v20 layoutRestrictionInfo:a7 contentOrientation:v21 screenScale:x windowingConfiguration:{y, width, height, a8}];
    v29 = v33;
    v31 = v34;
  }

  else
  {
    [v19 minGridSizeForBounds:a7 contentOrientation:v20 layoutRestrictionInfo:v21 screenScale:x windowingConfiguration:{y, width, height, a8}];
    v29 = v28;
    v31 = v30;
  }

  v35 = v29;
  v36 = v31;
  result.height = v36;
  result.width = v35;
  return result;
}

- (id)_preferredMinimumSizeMapForAppLayout:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 allItems];
  v5 = +[SBMainSwitcherControllerCoordinator sharedInstanceIfExists];
  if (v5)
  {
    v22 = v4;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v4;
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
          v15 = [v14 contentViewController];
          v16 = objc_opt_class();
          v17 = v15;
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

    v4 = v22;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)sizeForSlideOverConfiguration:(SBDisplayItemSlideOverConfiguration *)a3 windowingConfiguration:(id)a4
{
  v5 = a4;
  width = a3->size.width;
  height = a3->size.height;
  if (BSFloatIsZero())
  {
    [v5 minimumWindowWidth];
    width = v8;
  }

  if (BSFloatIsZero())
  {
    [v5 statusBarHeight];
    v10 = v9;
    [v5 containerBounds];
    v12 = v11;
    [v5 slideOverBorderWidth];
    v14 = v13;
    v15 = v12 - v10;
    if (a3->dodgesDock)
    {
      [v5 floatingDockHeightWithTopAndBottomPadding];
    }

    else
    {
      [v5 dockTopMargin];
    }

    height = v15 - v16 + v14 * -2.0;
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeForLayoutAttributes:(id)a3 windowingConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SBDisplayItemLayoutAttributes *)v6 slideOverConfiguration];
  if (SBDisplayItemSlideOverConfigurationIsValid(&v29))
  {
    [(SBDisplayItemLayoutAttributesCalculator *)self sizeForSlideOverConfiguration:&v29 windowingConfiguration:v7, [(SBDisplayItemLayoutAttributes *)v6 slideOverConfiguration]];
LABEL_3:
    v10 = v8;
    v11 = v9;
    goto LABEL_7;
  }

  if ([(SBHomeScreenConfigurationServer *)v6 connections]== 2 || [(SBHomeScreenConfigurationServer *)v6 connections]== 1)
  {
    [v7 containerBounds];
    v10 = v12;
    v11 = v13;
    goto LABEL_7;
  }

  [(SBDisplayItemLayoutAttributes *)v6 tileConfiguration];
  if (!SBDisplayItemTileConfigurationIsValid(&v29))
  {
    [v7 containerBounds];
    [v7 defaultWindowSize];
    [v7 screenEdgePadding];
    v8 = [SBDisplayItemLayoutAttributes sizeInBounds:v6 defaultSize:? screenEdgePadding:?];
    goto LABEL_3;
  }

  v29 = 0;
  v30 = 0.0;
  v31 = 0.0;
  [(SBDisplayItemLayoutAttributes *)v6 tileConfiguration];
  [v7 stageInterItemSpacing];
  [v7 containerBounds];
  v17 = v16;
  [v7 floatingDockHeightWithTopAndBottomPadding];
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

- (CGPoint)centerForLayoutAttributes:(id)a3 windowingConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  [v8 containerBounds];
  v10 = v9;
  v12 = v11;
  [(SBDisplayItemLayoutAttributes *)v7 slideOverConfiguration];
  if (SBDisplayItemSlideOverConfigurationIsValid(v39))
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v13 = [(SBDisplayItemLayoutAttributes *)v7 slideOverConfiguration];
    v14 = *&v39[0];
    [v8 dockTopMargin];
    v16 = v15;
    [v8 statusBarHeight];
    v18 = v17;
    [v8 slideOverBorderWidth];
    v20 = v19;
    [v8 floatingDockHeightWithTopAndBottomPadding];
    v22 = v21;
    [(SBDisplayItemLayoutAttributesCalculator *)self sizeForLayoutAttributes:v7 windowingConfiguration:v8];
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

  if ([(SBHomeScreenConfigurationServer *)v7 connections]== 2)
  {
    UIRectGetCenter();
    v26 = v29;
    v31 = v30;
    goto LABEL_35;
  }

  [(SBDisplayItemLayoutAttributes *)v7 tileConfiguration];
  if (!SBDisplayItemTileConfigurationIsValid(v39))
  {
    v26 = v10 * [(SBDisplayItemLayoutAttributes *)v7 normalizedCenter];
    v31 = v12 * v34;
    goto LABEL_35;
  }

  [(SBDisplayItemLayoutAttributesCalculator *)self sizeForLayoutAttributes:v7 windowingConfiguration:v8];
  v26 = v32 * 0.5;
  v31 = v33 * 0.5;
  [(SBDisplayItemLayoutAttributes *)v7 tileConfiguration];
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
      v35 = [MEMORY[0x277CCA890] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"SBDisplayItemLayoutAttributesCalculator.m" lineNumber:944 description:@"Invalid tile role"];

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