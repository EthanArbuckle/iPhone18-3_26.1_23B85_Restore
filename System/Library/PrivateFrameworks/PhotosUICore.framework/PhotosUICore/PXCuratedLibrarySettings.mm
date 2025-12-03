@interface PXCuratedLibrarySettings
+ (PXCuratedLibrarySettings)sharedInstance;
+ (id)settingsControllerModule;
- (BOOL)allowsModularLayoutForZoomLevel:(int64_t)level sizeClass:(int64_t)class orientation:(int64_t)orientation layoutStyle:(unint64_t)style;
- (id)acceptableLargeHeroPredicate;
- (void)setDefaultValues;
@end

@implementation PXCuratedLibrarySettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = PXCuratedLibrarySettings;
  setDefaultValues = [(PTSettings *)&v5 setDefaultValues];
  if (MEMORY[0x1A590D320](setDefaultValues) && [MEMORY[0x1E69DD000] instancesRespondToSelector:sel_tabBarMinimizeBehavior])
  {
    v4 = [MEMORY[0x1E69DCFF0] instancesRespondToSelector:sel__isMinimized];
  }

  else
  {
    v4 = 0;
  }

  [(PXCuratedLibrarySettings *)self setEnableTabBarAccessoryControls:v4];
  [(PXCuratedLibrarySettings *)self setEnablePlayMovieInYears:0];
  [(PXCuratedLibrarySettings *)self setEnableSkimmingInYears:1];
  [(PXCuratedLibrarySettings *)self setEnableSlideshowInYears:1];
  [(PXCuratedLibrarySettings *)self setLaunchToSavedAllPhotosScrollPosition:0];
  [(PXCuratedLibrarySettings *)self setSavedAllPhotosScrollPositionAnchorAssetIdentifier:0];
  [(PXCuratedLibrarySettings *)self setEmulatesEmptyLibrary:0];
  [(PXCuratedLibrarySettings *)self setBlurredBackgroundRadius:40.0];
  [(PXCuratedLibrarySettings *)self setBlurredBackgroundInitialOpacity:1.0];
  [(PXCuratedLibrarySettings *)self setBlurredBackgroundInitialOpacityMac:0.5];
  [(PXCuratedLibrarySettings *)self setBlurredBackgroundFinalOpacity:0.05];
  [(PXCuratedLibrarySettings *)self setBlurredBackgroundFadeDuration:2.5];
  [(PXCuratedLibrarySettings *)self setAllPhotosContentShiftStrategy:1];
  [(PXCuratedLibrarySettings *)self setShowStatusBar:1];
  [(PXCuratedLibrarySettings *)self setSecondaryToolbarAlwaysVisible:0];
  [(PXCuratedLibrarySettings *)self setAlwaysShowSecondaryToolbarAtBottom:0];
  [(PXCuratedLibrarySettings *)self setBottomCenterSecondaryToolbarWidth:400.0];
  [(PXCuratedLibrarySettings *)self setShowSecondaryToolbar:1];
  [(PXCuratedLibrarySettings *)self setEnableTapOnTitleToScroll:1];
  [(PXCuratedLibrarySettings *)self setEnableCustomScrollToTopOrBottom:0];
  [(PXCuratedLibrarySettings *)self setScrollSnapMaximumDecelerationFactor:*off_1E7722218];
  [(PXCuratedLibrarySettings *)self setScrollSnapMaximumAccelerationFactor:*off_1E7722210];
  [(PXCuratedLibrarySettings *)self setScrollSnapMinimumSpeed:*off_1E7722220];
  [(PXCuratedLibrarySettings *)self setFloatingHeadersAppearanceCrossfadeDuration:0.4];
  [(PXCuratedLibrarySettings *)self setMonthsFloatingHeadersDistanceFromSafeAreaTop:3.0];
  [(PXCuratedLibrarySettings *)self setMonthsFloatingHeadersAppearanceCrossfadeStartDistance:0.3];
  [(PXCuratedLibrarySettings *)self setMonthsFloatingHeadersAppearanceCrossfadeDistance:1.0];
  [(PXCuratedLibrarySettings *)self setMonthsFloatingHeadersFadeoutDistance:1.5];
  [(PXCuratedLibrarySettings *)self setMonthsFloatingHeadersSubtitleAlpha:0.67];
  [(PXCuratedLibrarySettings *)self setMonthsInlineHeadersFadeoutOffset:0.8];
  [(PXCuratedLibrarySettings *)self setMonthsInlineHeadersFadeoutDistance:2.0];
  [(PXCuratedLibrarySettings *)self setMonthsInlineHeadersFadeoutMinimumAlpha:0.4];
  [(PXCuratedLibrarySettings *)self setYearsHeadersFadeoutOffset:-20.0];
  [(PXCuratedLibrarySettings *)self setYearsHeadersFadeoutDistance:67.0];
  [(PXCuratedLibrarySettings *)self setYearsHeadersFadeoutMinimumAlpha:0.4];
  [(PXCuratedLibrarySettings *)self setUseSaliency:1];
  [(PXCuratedLibrarySettings *)self setShowSaliencyRects:0];
  [(PXCuratedLibrarySettings *)self setLargeHeroDensity:3];
  [(PXCuratedLibrarySettings *)self setLargeHeroMinimumScore:0.0];
  [(PXCuratedLibrarySettings *)self setAspectRatioForCompactPortraitYears:1.33333333];
  [(PXCuratedLibrarySettings *)self setAspectRatioForCompactLandscapeYears:1.77777778];
  [(PXCuratedLibrarySettings *)self setAspectRatioForRegularYears:1.5];
  [(PXCuratedLibrarySettings *)self setForcedNumberOfYearsColumn:0];
  [(PXCuratedLibrarySettings *)self setUseWideModularLayoutInYears:0];
  [(PXCuratedLibrarySettings *)self setAspectRatioForCompactPortraitMonths:1.0];
  [(PXCuratedLibrarySettings *)self setSpacingBetweenDays:5.0];
  [(PXCuratedLibrarySettings *)self setInteritemSpacingForDays:2.0];
  [(PXCuratedLibrarySettings *)self setCornerRadiusForDays:0.0];
  [(PXCuratedLibrarySettings *)self setCornerRadiusForMonths:10.0];
  [(PXCuratedLibrarySettings *)self setCornerRadiusForYears:10.0];
  [(PXCuratedLibrarySettings *)self setAllowSpecialPanoHeaders:0.0];
  [(PXCuratedLibrarySettings *)self setTopInsetForVisibilityAnchoring:90.0];
  [(PXCuratedLibrarySettings *)self setSkimmingScale:0.95];
  [(PXCuratedLibrarySettings *)self setSectionsToPrefetch:5];
  [(PXCuratedLibrarySettings *)self setFaultInDistance:2000.0];
  [(PXCuratedLibrarySettings *)self setFaultOutPadding:1000.0];
  [(PXCuratedLibrarySettings *)self setForceFloatingHeaderVisible:0];
  [(PXCuratedLibrarySettings *)self setShowDebugInformationInFloatingHeader:0];
  [(PXCuratedLibrarySettings *)self setMinimumVisibleHeightForTopMostSection:0.0];
  [(PXCuratedLibrarySettings *)self setEnableShowAllButtons:1];
  [(PXCuratedLibrarySettings *)self setAllowsCustomDateTitles:1];
  [(PXCuratedLibrarySettings *)self setYearsHeaderGradientAlpha:0.4];
  PXVisionScaledFloat();
}

+ (PXCuratedLibrarySettings)sharedInstance
{
  if (sharedInstance_onceToken_172701 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_172701, &__block_literal_global_172702);
  }

  v3 = sharedInstance_sharedInstance_172703;

  return v3;
}

void __42__PXCuratedLibrarySettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 curatedLibrarySettings];
  v1 = sharedInstance_sharedInstance_172703;
  sharedInstance_sharedInstance_172703 = v0;
}

+ (id)settingsControllerModule
{
  v351[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6670];
  v3 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Review All" action:&__block_literal_global_130281];
  v351[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v351 count:1];
  v328 = [v2 sectionWithRows:v4 title:@"External Assets"];

  v5 = MEMORY[0x1E69C6638];
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Launch to Saved All Photos Position" valueKeyPath:@"launchToSavedAllPhotosScrollPosition"];
  v350[0] = v6;
  v7 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Save Current All Photos Position" action:&__block_literal_global_19_130286];
  v8 = [v7 conditionFormat:@"launchToSavedAllPhotosScrollPosition != 0"];
  v350[1] = v8;
  v9 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Slideshow In Years" valueKeyPath:@"enableSlideshowInYears"];
  v350[2] = v9;
  v10 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Play Movie In Years" valueKeyPath:@"enablePlayMovieInYears"];
  v350[3] = v10;
  v11 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Hide Analyzing Status" valueKeyPath:@"hideAnalyzingStatus"];
  v350[4] = v11;
  v12 = MEMORY[0x1E69C66A8];
  v13 = NSStringFromSelector(sel_emulatesEmptyLibrary);
  v14 = [v12 rowWithTitle:@"Emulates Empty Library" valueKeyPath:v13];
  v350[5] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v350 count:6];
  v327 = [v5 sectionWithRows:v15 title:@"Demo"];

  v325 = MEMORY[0x1E69C6638];
  v16 = MEMORY[0x1E69C66A0];
  v322 = NSStringFromSelector(sel_blurredBackgroundRadius);
  v318 = [v16 rowWithTitle:@"Y/M Blur Radius" valueKeyPath:v322];
  v314 = [v318 minValue:0.0 maxValue:60.0];
  v311 = [v314 px_increment:1.0];
  v349[0] = v311;
  v17 = MEMORY[0x1E69C66A0];
  v307 = NSStringFromSelector(sel_blurredBackgroundInitialOpacity);
  v303 = [v17 rowWithTitle:@"Blur Initial Opacity" valueKeyPath:v307];
  v298 = [v303 minValue:0.0 maxValue:1.0];
  v292 = [v298 px_increment:0.01];
  v349[1] = v292;
  v18 = MEMORY[0x1E69C66A0];
  v287 = NSStringFromSelector(sel_blurredBackgroundFinalOpacity);
  v281 = [v18 rowWithTitle:@"Blur Final Opacity" valueKeyPath:v287];
  v19 = [v281 minValue:0.0 maxValue:1.0];
  v20 = [v19 px_increment:0.01];
  v349[2] = v20;
  v21 = MEMORY[0x1E69C66A0];
  v22 = NSStringFromSelector(sel_blurredBackgroundFadeDuration);
  v23 = [v21 rowWithTitle:@"Blur Fade Duration" valueKeyPath:v22];
  v24 = [v23 minValue:0.0 maxValue:5.0];
  v25 = [v24 px_increment:0.05];
  v349[3] = v25;
  v26 = MEMORY[0x1E69C65F8];
  v27 = NSStringFromSelector(sel_allPhotosContentShiftStrategy);
  v28 = [v26 rowWithTitle:@"All Photos Content Shift Strategy" valueKeyPath:v27];
  v29 = [v28 possibleValues:&unk_1F1910D98 titles:&unk_1F1910DB0];
  v349[4] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v349 count:5];
  v326 = [v325 sectionWithRows:v30 title:@"Lemonade"];

  v323 = MEMORY[0x1E69C6638];
  v319 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Tap on Title to Scroll" valueKeyPath:@"enableTapOnTitleToScroll"];
  v348[0] = v319;
  v315 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Custom Scroll to Top/Bottom" valueKeyPath:@"enableCustomScrollToTopOrBottom"];
  v348[1] = v315;
  v31 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Snap Max Deceleration" valueKeyPath:@"scrollSnapMaximumDecelerationFactor"];
  v32 = [v31 minValue:1.0 maxValue:5.0];
  v33 = [v32 px_increment:0.1];
  v348[2] = v33;
  v34 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Snap Max Acceleration" valueKeyPath:@"scrollSnapMaximumAccelerationFactor"];
  v35 = [v34 minValue:1.0 maxValue:5.0];
  v36 = [v35 px_increment:0.1];
  v348[3] = v36;
  v37 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Snap Min Speed" valueKeyPath:@"scrollSnapMinimumSpeed"];
  v38 = [v37 minValue:0.0 maxValue:0.5];
  v39 = [v38 px_increment:0.01];
  v348[4] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v348 count:5];
  v324 = [v323 sectionWithRows:v40 title:@"Scrolling"];

  v320 = MEMORY[0x1E69C6638];
  v316 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Saliency for Layouts" valueKeyPath:@"useSaliency"];
  v347[0] = v316;
  v312 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Saliency Rects" valueKeyPath:@"showSaliencyRects"];
  v347[1] = v312;
  v308 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Large Hero Density" valueKeyPath:@"largeHeroDensity"];
  v41 = &unk_1F19106D8;
  v42 = &unk_1F19106F0;
  v304 = [v308 possibleValues:&unk_1F19106D8 titles:&unk_1F19106F0];
  v347[2] = v304;
  v299 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Large Hero Min Score" valueKeyPath:@"largeHeroMinimumScore"];
  v293 = [v299 minValue:0.0 maxValue:1.0];
  v288 = [v293 px_increment:0.05];
  v347[3] = v288;
  v282 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Forced Years Column" valueKeyPath:@"forcedNumberOfYearsColumn"];
  v275 = [v282 minValue:0.0 maxValue:3.0];
  v269 = [v275 px_increment:1.0];
  v347[4] = v269;
  v264 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Days Spacing" valueKeyPath:@"spacingBetweenDays"];
  v258 = [v264 minValue:0.0 maxValue:100.0];
  v251 = [v258 px_increment:1.0];
  v347[5] = v251;
  v245 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Days Item Spacing" valueKeyPath:@"interitemSpacingForDays"];
  v239 = [v245 minValue:0.0 maxValue:5.0];
  v233 = [v239 px_increment:0.5];
  v347[6] = v233;
  v227 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Special Pano Headers" valueKeyPath:@"allowSpecialPanoHeaders"];
  v347[7] = v227;
  v221 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Top Visibility Inset" valueKeyPath:@"topInsetForVisibilityAnchoring"];
  v215 = [v221 minValue:0.0 maxValue:200.0];
  v210 = [v215 px_increment:5.0];
  v347[8] = v210;
  v206 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Skimming Scale" valueKeyPath:@"skimmingScale"];
  v204 = [v206 minValue:0.5 maxValue:1.0];
  v43 = [v204 px_increment:0.01];
  v347[9] = v43;
  v44 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fault In Distance" valueKeyPath:@"faultInDistance"];
  v45 = [v44 minValue:0.0 maxValue:5000.0];
  v46 = [v45 px_increment:100.0];
  v347[10] = v46;
  v47 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fault Out Padding" valueKeyPath:@"faultOutPadding"];
  v48 = [v47 minValue:0.0 maxValue:5000.0];
  v49 = [v48 px_increment:100.0];
  v347[11] = v49;
  v50 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Hide Status Footer" valueKeyPath:@"hideStatusFooter"];
  v347[12] = v50;
  v51 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Hide Status Footer In Select Mode" valueKeyPath:@"hideStatusFooterInSelectMode"];
  v347[13] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v347 count:14];
  v321 = [v320 sectionWithRows:v52 title:@"Layout"];

  v53 = MEMORY[0x1E69C6638];
  v54 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Years Aspect Ratio" valueKeyPath:@"aspectRatioForCompactPortraitYears"];
  v55 = [v54 possibleValues:&unk_1F1910DC8 titles:&unk_1F1910DE0];
  v346[0] = v55;
  v56 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Years Landscape Aspect Ratio" valueKeyPath:@"aspectRatioForCompactLandscapeYears"];
  v57 = [v56 possibleValues:&unk_1F1910DC8 titles:&unk_1F1910DE0];
  v346[1] = v57;
  v58 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Months Aspect Ratio" valueKeyPath:@"aspectRatioForCompactPortraitMonths"];
  v59 = [v58 possibleValues:&unk_1F1910DC8 titles:&unk_1F1910DE0];
  v346[2] = v59;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v346 count:3];
  v317 = [v53 sectionWithRows:v60 title:@"Phone Layout"];

  v61 = MEMORY[0x1E69C6638];
  v62 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Years Aspect Ratio" valueKeyPath:@"aspectRatioForRegularYears"];
  v63 = [v62 possibleValues:&unk_1F1910DC8 titles:&unk_1F1910DE0];
  v345 = v63;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v345 count:1];
  v313 = [v61 sectionWithRows:v64 title:@"Pad Layout"];

  v309 = MEMORY[0x1E69C6638];
  v305 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Force Floating Header Visible" valueKeyPath:@"forceFloatingHeaderVisible"];
  v344[0] = v305;
  v300 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Debug Info in Floating Header" valueKeyPath:@"showDebugInformationInFloatingHeader"];
  v344[1] = v300;
  v294 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Min. Visible Section Height" valueKeyPath:@"minimumVisibleHeightForTopMostSection"];
  v289 = [v294 px_possibleValues:&unk_1F1910DF8];
  v344[2] = v289;
  v283 = [MEMORY[0x1E69C66A8] rowWithTitle:@"“Show All“ Buttons" valueKeyPath:@"enableShowAllButtons"];
  v344[3] = v283;
  v276 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Custom Date Titles" valueKeyPath:@"allowsCustomDateTitles"];
  v344[4] = v276;
  v270 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Years Header Gradient Alpha" valueKeyPath:@"yearsHeaderGradientAlpha"];
  v265 = [v270 minValue:0.0 maxValue:1.0];
  v259 = [v265 px_increment:0.0500000007];
  v344[5] = v259;
  v252 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Years Header Gradient Height" valueKeyPath:@"yearsHeaderGradientHeight"];
  v246 = [v252 minValue:0.0 maxValue:350.0];
  v240 = [v246 px_increment:10.0];
  v344[6] = v240;
  v234 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Years Header Gradient Alpha" valueKeyPath:@"monthsHeaderGradientAlpha"];
  v228 = [v234 minValue:0.0 maxValue:1.0];
  v222 = [v228 px_increment:0.0500000007];
  v344[7] = v222;
  v216 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Months Header Gradient Height" valueKeyPath:@"monthsHeaderGradientHeight"];
  v211 = [v216 minValue:0.0 maxValue:350.0];
  v207 = [v211 px_increment:10.0];
  v344[8] = v207;
  v205 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Months Small Header Gradient Height" valueKeyPath:@"monthsSmallHeaderGradientHeight"];
  v203 = [v205 minValue:0.0 maxValue:350.0];
  v202 = [v203 px_increment:10.0];
  v344[9] = v202;
  v201 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Days Header Gradient Alpha" valueKeyPath:@"daysHeaderGradientAlpha"];
  v200 = [v201 minValue:0.0 maxValue:1.0];
  v199 = [v200 px_increment:0.0500000007];
  v344[10] = v199;
  v198 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Days Header Gradient Height" valueKeyPath:@"daysHeaderGradientHeight"];
  v197 = [v198 minValue:0.0 maxValue:350.0];
  v196 = [v197 px_increment:10.0];
  v344[11] = v196;
  v195 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Status Bar" valueKeyPath:@"showStatusBar"];
  v344[12] = v195;
  v194 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Status Bar Gradient Alpha" valueKeyPath:@"statusBarGradientAlpha"];
  v193 = [v194 minValue:0.0 maxValue:1.0];
  v192 = [v193 px_increment:0.0500000007];
  v344[13] = v192;
  v191 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Status Bar Gradient Height" valueKeyPath:@"statusBarGradientHeight"];
  v190 = [v191 minValue:0.0 maxValue:350.0];
  v189 = [v190 px_increment:10.0];
  v344[14] = v189;
  v65 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Status Bar Gradient & Style Fade Duration" valueKeyPath:@"statusBarGradientAndStyleFadeDuration"];
  v66 = [v65 minValue:0.0 maxValue:1.0];
  v67 = [v66 px_increment:0.0500000007];
  v344[15] = v67;
  v68 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Toolbar Always Visible" valueKeyPath:@"secondaryToolbarAlwaysVisible"];
  v344[16] = v68;
  v69 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Toolbar Always at Bottom" valueKeyPath:@"alwaysShowSecondaryToolbarAtBottom"];
  v344[17] = v69;
  v70 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Bottom Toolbar Width" valueKeyPath:@"bottomCenterSecondaryToolbarWidth"];
  v71 = [v70 minValue:300.0 maxValue:1000.0];
  v72 = [v71 px_increment:10.0];
  v73 = [v72 conditionFormat:@"alwaysShowSecondaryToolbarAtBottom != 0"];
  v344[18] = v73;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v344 count:19];
  v310 = [v309 sectionWithRows:v74 title:@"Header"];

  v75 = MEMORY[0x1E69C6638];
  v76 = [MEMORY[0x1E69C66A0] rowWithTitle:@"X-Fade Duration" valueKeyPath:@"floatingHeadersAppearanceCrossfadeDuration"];
  v77 = [v76 minValue:0.0 maxValue:2.0];
  v78 = [v77 px_increment:0.1];
  v343 = v78;
  v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v343 count:1];
  v306 = [v75 sectionWithRows:v79 title:@"Floating Header"];

  v301 = MEMORY[0x1E69C6638];
  v295 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Floating Distance" valueKeyPath:@"monthsFloatingHeadersDistanceFromSafeAreaTop"];
  v290 = [v295 minValue:-20.0 maxValue:50.0];
  v284 = [v290 px_increment:1.0];
  v342[0] = v284;
  v277 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Hysteresis Distance" valueKeyPath:@"monthsFloatingHeadersAppearanceCrossfadeStartDistance"];
  v271 = [v277 minValue:-1.0 maxValue:2.0];
  v266 = [v271 px_increment:0.05];
  v342[1] = v266;
  v260 = [MEMORY[0x1E69C66A0] rowWithTitle:@"X-Fade Distance" valueKeyPath:@"monthsFloatingHeadersAppearanceCrossfadeDistance"];
  v253 = [v260 minValue:0.0 maxValue:2.0];
  v247 = [v253 px_increment:0.1];
  v342[2] = v247;
  v241 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fade Out Distance" valueKeyPath:@"monthsFloatingHeadersFadeoutDistance"];
  v235 = [v241 minValue:0.0 maxValue:3.0];
  v229 = [v235 px_increment:0.1];
  v342[3] = v229;
  v223 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Floating Subtitle Alpha" valueKeyPath:@"monthsFloatingHeadersSubtitleAlpha"];
  v217 = [v223 minValue:0.0 maxValue:1.0];
  v212 = [v217 px_increment:0.01];
  v342[4] = v212;
  v80 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Inline Fade Offset" valueKeyPath:@"monthsInlineHeadersFadeoutOffset"];
  v81 = [v80 minValue:-1.0 maxValue:2.0];
  v82 = [v81 px_increment:0.1];
  v342[5] = v82;
  v83 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Inline Fade Distance" valueKeyPath:@"monthsInlineHeadersFadeoutDistance"];
  v84 = [v83 minValue:0.0 maxValue:3.0];
  v85 = [v84 px_increment:0.1];
  v342[6] = v85;
  v86 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Inline Min Alpha" valueKeyPath:@"monthsInlineHeadersFadeoutMinimumAlpha"];
  v87 = [v86 minValue:0.0 maxValue:1.0];
  v88 = [v87 px_increment:0.05];
  v342[7] = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v342 count:8];
  v302 = [v301 sectionWithRows:v89 title:@"Months Headers"];

  v296 = MEMORY[0x1E69C6638];
  v90 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fade Offset" valueKeyPath:@"yearsHeadersFadeoutOffset"];
  v91 = [v90 minValue:-100.0 maxValue:20.0];
  v92 = [v91 px_increment:1.0];
  v341[0] = v92;
  v93 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fade Distance" valueKeyPath:@"yearsHeadersFadeoutDistance"];
  v94 = [v93 minValue:0.0 maxValue:150.0];
  v95 = [v94 px_increment:1.0];
  v341[1] = v95;
  v96 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Min Alpha" valueKeyPath:@"yearsHeadersFadeoutMinimumAlpha"];
  v97 = [v96 minValue:0.0 maxValue:1.0];
  v98 = [v97 px_increment:0.05];
  v341[2] = v98;
  v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v341 count:3];
  v297 = [v296 sectionWithRows:v99 title:@"Years Headers"];

  v100 = MEMORY[0x1E69C6638];
  v101 = MEMORY[0x1E69C66A8];
  v102 = NSStringFromSelector(sel_includeGuestAssetsInFooterCount);
  v103 = [v101 rowWithTitle:@"Counts Include Guest Assets" valueKeyPath:v102];
  v340 = v103;
  v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v340 count:1];
  v291 = [v100 sectionWithRows:v104 title:@"Footer"];

  v285 = MEMORY[0x1E69C6638];
  v278 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show All Highlights" valueKeyPath:@"showAllHighlights"];
  v339[0] = v278;
  v272 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Custom Days Curation" valueKeyPath:@"useCustomDaysCurationType"];
  v339[1] = v272;
  v105 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Days Curation" valueKeyPath:@"daysCurationType"];
  v106 = [v105 possibleValues:&unk_1F1910E10 titles:&unk_1F1910E28];
  v107 = [v106 conditionFormat:@"useCustomDaysCurationType == YES"];
  v339[2] = v107;
  v108 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Low Promotion Score Threshold" valueKeyPath:@"nonInterestingPromotionScore"];
  v109 = [v108 minValue:0.0 maxValue:1.0];
  v110 = [v109 px_increment:0.05];
  v111 = [v110 conditionFormat:@"showAllHighlights == 0"];
  v339[3] = v111;
  v112 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Hide Recents" valueKeyPath:@"hideRecents"];
  v339[4] = v112;
  v113 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Hide Aggregations" valueKeyPath:@"hideAggregations"];
  v339[5] = v113;
  v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:v339 count:6];
  v286 = [v285 sectionWithRows:v114 title:@"Data Source"];

  v279 = MEMORY[0x1E69C6638];
  v115 = MEMORY[0x1E69C66A8];
  v273 = NSStringFromSelector(sel_enableInlinePlayback);
  v267 = [v115 rowWithTitle:@"Inline Playback" valueKeyPath:v273];
  v338[0] = v267;
  v116 = MEMORY[0x1E69C66A8];
  v261 = NSStringFromSelector(sel_enableInlinePlaybackInZoomableGrids);
  v254 = [v116 rowWithTitle:@"…in Zoomable Grid" valueKeyPath:v261];
  v117 = [v254 conditionFormat:@"enableInlinePlayback == YES"];
  v338[1] = v117;
  v118 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Live Photo Crossfade Duration" valueKeyPath:@"livePhotoLoopingCrossfadeDuration"];
  v119 = [v118 minValue:0.0 maxValue:1.0];
  v120 = [v119 px_increment:0.05];
  v121 = [v120 conditionFormat:@"enableInlinePlayback == YES"];
  v338[2] = v121;
  v122 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Playback Diagnostics" valueKeyPath:@"enablePlaybackDiagnostics"];
  v123 = [v122 conditionFormat:@"enableInlinePlayback == YES"];
  v338[3] = v123;
  v124 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Stabilize Live Photos" valueKeyPath:@"stabilizeLivePhotos"];
  v125 = [v124 conditionFormat:@"enableInlinePlayback == YES"];
  v338[4] = v125;
  v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:v338 count:5];
  v280 = [v279 sectionWithRows:v126 title:@"Inline Media Playback"];

  v127 = MEMORY[0x1E69C6638];
  v128 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Trigger Delay" valueKeyPath:@"slideshowTriggerDelay"];
  v129 = [v128 minValue:1.0 maxValue:15.0];
  v130 = [v129 px_increment:0.5];
  v337[0] = v130;
  v131 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Interval Delay" valueKeyPath:@"slideshowIntervalDelay"];
  v132 = [v131 minValue:1.0 maxValue:15.0];
  v133 = [v132 px_increment:0.5];
  v337[1] = v133;
  v134 = [MEMORY[0x1E695DEC8] arrayWithObjects:v337 count:2];
  v274 = [v127 sectionWithRows:v134 title:@"Slideshow"];

  v135 = MEMORY[0x1E69C6638];
  v136 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Non-Processed Highlights" valueKeyPath:@"firstTimeExperienceMaxNonProcessedHighlights"];
  v137 = [v136 minValue:0.0 maxValue:100.0];
  v138 = [v137 px_increment:1.0];
  v336[0] = v138;
  v139 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Non-Processed assets" valueKeyPath:@"firstTimeExperienceMaxNonProcessedAssets"];
  v140 = [v139 minValue:0.0 maxValue:1000.0];
  v141 = [v140 px_increment:50.0];
  v336[1] = v141;
  v142 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always Log FTE Readiness" valueKeyPath:@"firstTimeExperienceAlwaysLogReadiness"];
  v336[2] = v142;
  v143 = [MEMORY[0x1E695DEC8] arrayWithObjects:v336 count:3];
  v268 = [v135 sectionWithRows:v143 title:@"First Time Experience"];

  v262 = MEMORY[0x1E69C6638];
  v255 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Zoom Level Duration" valueKeyPath:@"defaultZoomLevelTransitionAnimationDuration"];
  v248 = [v255 minValue:0.0 maxValue:2.0];
  v242 = [v248 px_increment:0.05];
  v335[0] = v242;
  v236 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Scale" valueKeyPath:@"defaultZoomLevelTransitionMaximumScaleAroundAnchor"];
  v230 = [v236 minValue:1.0 maxValue:10.0];
  v224 = [v230 px_increment:0.1];
  v335[1] = v224;
  v218 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Years Fade Speed" valueKeyPath:@"nonAnchorYearsFadeSpeed"];
  v213 = [v218 minValue:1.0 maxValue:2.0];
  v208 = [v213 px_increment:0.05];
  v335[2] = v208;
  v144 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Months Fade Speed" valueKeyPath:@"nonAnchorMonthsFadeSpeed"];
  v145 = [v144 minValue:1.0 maxValue:2.0];
  v146 = [v145 px_increment:0.05];
  v335[3] = v146;
  v147 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Days Fade Speed" valueKeyPath:@"nonAnchorDaysFadeSpeed"];
  v148 = [v147 minValue:1.0 maxValue:2.0];
  v149 = [v148 px_increment:0.05];
  v335[4] = v149;
  v150 = [MEMORY[0x1E69C66A0] rowWithTitle:@"All Photos Duration" valueKeyPath:@"transitionToOrFromAllPhotosAnimationDuration"];
  v151 = [v150 minValue:0.0 maxValue:2.0];
  v152 = [v151 px_increment:0.05];
  v335[5] = v152;
  v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:v335 count:6];
  v263 = [v262 sectionWithRows:v153 title:@"Animations"];

  v256 = MEMORY[0x1E69C6638];
  v154 = MEMORY[0x1E69C66A8];
  v249 = NSStringFromSelector(sel_enableInteractiveTransition);
  v243 = [v154 rowWithTitle:@"Interactive transitions" valueKeyPath:v249];
  v334[0] = v243;
  v237 = [MEMORY[0x1E69C66A0] rowWithTitle:@"All Photos Scale" valueKeyPath:@"transitionToOrFromAllPhotosScale"];
  v231 = [v237 minValue:0.5 maxValue:1.0];
  v225 = [v231 px_increment:0.01];
  v334[1] = v225;
  v219 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Day Scale Not Matching Months" valueKeyPath:@"transitionScaleForDayNotMatchingMonths"];
  v214 = [v219 minValue:0.5 maxValue:1.0];
  v209 = [v214 px_increment:0.01];
  v334[2] = v209;
  v155 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Pinch Scale Delta" valueKeyPath:@"zoomLevelPinchSignificantScaleDelta"];
  v156 = [v155 minValue:0.0 maxValue:0.2];
  v157 = [v156 px_increment:0.01];
  v334[3] = v157;
  v158 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Swipe Back Angle" valueKeyPath:@"swipeBackGestureMinAngle"];
  v159 = [v158 minValue:10.0 maxValue:85.0];
  v160 = [v159 px_increment:1.0];
  v334[4] = v160;
  v161 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Swipe Back Translation" valueKeyPath:@"swipeBackGestureMinTranslation"];
  v162 = [v161 minValue:10.0 maxValue:100.0];
  v163 = [v162 px_increment:5.0];
  v334[5] = v163;
  v164 = [MEMORY[0x1E695DEC8] arrayWithObjects:v334 count:6];
  v257 = [v256 sectionWithRows:v164 title:@"Transitions"];

  v165 = MEMORY[0x1E69C6638];
  v166 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Segment Expansion" valueKeyPath:@"zoomLevelControlSegmentExpansionFactor"];
  v167 = [v166 minValue:0.0 maxValue:1.0];
  v168 = [v167 px_increment:0.05];
  v333 = v168;
  v169 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v333 count:1];
  v250 = [v165 sectionWithRows:v169 title:@"Zoom Level Control"];

  v170 = MEMORY[0x1E69C6638];
  v171 = MEMORY[0x1E69C66A8];
  v172 = NSStringFromSelector(sel_enableRecentlyEditedAlbum);
  v173 = [v171 rowWithTitle:@"Enable Recently Edited Album" valueKeyPath:v172];
  v332[0] = v173;
  v174 = MEMORY[0x1E69C66A8];
  v175 = NSStringFromSelector(sel_alignActionButtonsTrailingEdges);
  v176 = [v174 rowWithTitle:@"Align Action Button Trailing Edge" valueKeyPath:v175];
  v332[1] = v176;
  v177 = [MEMORY[0x1E695DEC8] arrayWithObjects:v332 count:2];
  v244 = [v170 sectionWithRows:v177 title:@"Miscellaneous"];

  v178 = MEMORY[0x1E69C6638];
  v179 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Exaggerate Contrast" valueKeyPath:@"exaggerateContrast"];
  v331[0] = v179;
  v180 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Force Show All Buttons Visible" valueKeyPath:@"forceShowAllButtonsVisible"];
  v331[1] = v180;
  v181 = [MEMORY[0x1E695DEC8] arrayWithObjects:v331 count:2];
  v220 = [v178 sectionWithRows:v181 title:@"Debug"];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v182 = MEMORY[0x1E69C6638];
  v183 = MEMORY[0x1E69C66A8];
  v238 = NSStringFromSelector(sel_enableTabBarAccessoryControls);
  v232 = [v183 rowWithTitle:@"Enable" valueKeyPath:v238];
  v329 = v232;
  v184 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v329 count:1];
  v185 = [v182 sectionWithRows:v184 title:@"Tab Bar Accessory Controls"];
  v330[0] = v185;
  v330[1] = v328;
  v330[2] = v327;
  v330[3] = v326;
  v330[4] = v324;
  v330[5] = v321;
  v330[6] = v317;
  v330[7] = v313;
  v330[8] = v310;
  v330[9] = v306;
  v330[10] = v302;
  v330[11] = v297;
  v330[12] = v291;
  v330[13] = v286;
  v330[14] = v280;
  v330[15] = v274;
  v330[16] = v268;
  v330[17] = v263;
  v330[18] = v257;
  v330[19] = v250;
  v330[20] = v244;
  v330[21] = v220;
  v330[22] = px_restoreDefaultsSection;
  v186 = [MEMORY[0x1E695DEC8] arrayWithObjects:v330 count:23];
  v187 = [v182 moduleWithTitle:@"Curated Library" contents:v186];

  return v187;
}

void __56__PXCuratedLibrarySettings_UI__settingsControllerModule__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:PXCuratedLibrarySaveCurrentAllPhotosScrollPositionNotificationName object:0];
}

void __56__PXCuratedLibrarySettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v15 = 0;
  v3 = PXExternalContentReviewViewController(&v15);
  v4 = v15;
  v5 = v4;
  if (!v3)
  {
    v6 = [v4 localizedDescription];
    v7 = v2;
    v8 = v7;
    if (v6)
    {
      if (v7)
      {
LABEL_5:
        v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:0 preferredStyle:1];
        v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
        [v9 addAction:v10];

        [v8 presentViewController:v9 animated:1 completion:0];
        goto LABEL_6;
      }
    }

    else
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PresentAlertForNavigationController(NSString *__strong, NSString * _Nullable __strong, UINavigationController *__strong)"}];
      [v11 handleFailureInFunction:v12 file:@"PXCuratedLibrarySettings+UI.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"title"}];

      if (v8)
      {
        goto LABEL_5;
      }
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PresentAlertForNavigationController(NSString *__strong, NSString * _Nullable __strong, UINavigationController *__strong)"}];
    [v13 handleFailureInFunction:v14 file:@"PXCuratedLibrarySettings+UI.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"navigationController"}];

    goto LABEL_5;
  }

  [v2 pushViewController:v3 animated:1];
LABEL_6:
}

- (BOOL)allowsModularLayoutForZoomLevel:(int64_t)level sizeClass:(int64_t)class orientation:(int64_t)orientation layoutStyle:(unint64_t)style
{
  if ((level - 1) > 1)
  {
    return 0;
  }

  if (class == 2 || class == 1 && orientation == 2)
  {
    return 1;
  }

  return level == 2 && style == 1;
}

- (id)acceptableLargeHeroPredicate
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PXCuratedLibrarySettings_acceptableLargeHeroPredicate__block_invoke;
  aBlock[3] = &unk_1E773FB68;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

BOOL __56__PXCuratedLibrarySettings_acceptableLargeHeroPredicate__block_invoke(uint64_t a1, void *a2)
{
  [a2 weightUsingCriterion:2];
  v4 = v3;
  [*(a1 + 32) largeHeroMinimumScore];
  return v4 >= v5;
}

@end