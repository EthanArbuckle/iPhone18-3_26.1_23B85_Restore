@interface PXStoryTransitionsSettings
+ (PXStoryTransitionsSettings)sharedInstance;
+ (id)settingsControllerModule;
- (double)cueAlignmentForTransitionKind:(char)kind;
- (void)setDefaultValues;
@end

@implementation PXStoryTransitionsSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXStoryTransitionsSettings;
  [(PTSettings *)&v3 setDefaultValues];
  if (PXStoryIsSlowDevice_onceToken != -1)
  {
    dispatch_once(&PXStoryIsSlowDevice_onceToken, &__block_literal_global_1674);
  }

  [(PXStoryTransitionsSettings *)self setTransitionQuality:3];
  [(PXStoryTransitionsSettings *)self setSuppressUnsupportedTransitionErrors:1];
  [(PXStoryTransitionsSettings *)self setSuppressInvalidTransitionErrors:1];
  [(PXStoryTransitionsSettings *)self setSuppressInterruptedTransitionErrors:1];
  [(PXStoryTransitionsSettings *)self setFadeToBlackTransitionBlackRelativeDuration:0.2];
  [(PXStoryTransitionsSettings *)self setFadeToBlackTransitionCueAlignment:1.0];
  [(PXStoryTransitionsSettings *)self setExposureBleedTransitionMidpoint:0.375];
  [(PXStoryTransitionsSettings *)self setExposureBleedTransitionExposure:2.0];
  [(PXStoryTransitionsSettings *)self setExposureBleedTransitionBlurRadius:20.0];
  [(PXStoryTransitionsSettings *)self setExposureBleedTransitionCueAlignment:1.0];
  [(PXStoryTransitionsSettings *)self setUseSplitWipeTransitionsFromOneUp:1];
  [(PXStoryTransitionsSettings *)self setDividerAnimationDurationFraction:0.1];
  [(PXStoryTransitionsSettings *)self setReverseDividerAnimationDurationFraction:0.18];
  [(PXStoryTransitionsSettings *)self setWipeTransitionCueAlignment:1.0];
  [(PXStoryTransitionsSettings *)self setPanTransitionMaxIntensity:0.07];
  [(PXStoryTransitionsSettings *)self setPanTransitionBlurMidpoint:0.16];
  [(PXStoryTransitionsSettings *)self setPanTransitionBlurOffset:0.35];
  [(PXStoryTransitionsSettings *)self setPanTransitionCueAlignment:1.0];
  [(PXStoryTransitionsSettings *)self setScaleTransitionRelativeFactor:1.15];
  [(PXStoryTransitionsSettings *)self setScaleTransitionBlurMidpoint:0.2];
  [(PXStoryTransitionsSettings *)self setScaleTransitionMaxBlurIntensity:0.4];
  [(PXStoryTransitionsSettings *)self setScaleTransitionCueAlignment:1.0];
  [(PXStoryTransitionsSettings *)self setRotateTransitionAngle:15.0];
  [(PXStoryTransitionsSettings *)self setRotateTransitionBlurMidpoint:0.5];
  [(PXStoryTransitionsSettings *)self setRotateTransitionMaxBlurIntensity:0.1];
  [(PXStoryTransitionsSettings *)self setRotateTransitionBlurAnimationRelativeDuration:0.68];
  [(PXStoryTransitionsSettings *)self setRotateTransitionCueAlignment:1.0];
  [(PXStoryTransitionsSettings *)self setZoomTransitionRelativeFactor:2.0];
  [(PXStoryTransitionsSettings *)self setZoomTransitionCueAlignment:1.0];
  [(PXStoryTransitionsSettings *)self setCrossfadeTransitionCueAlignment:1.0];
  [(PXStoryTransitionsSettings *)self setDisableUnsupportedTransitionsAtChapterBoundary:1];
  [(PXStoryTransitionsSettings *)self setForcedTransitionKindAtChapterBoundary:0];
}

+ (id)settingsControllerModule
{
  v163[11] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v113 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v152 = NSStringFromSelector(sel_suppressUnsupportedTransitionErrors);
  v151 = [v3 rowWithTitle:@"Suppress Unsupported Transition Errors" valueKeyPath:v152];
  v162[0] = v151;
  v4 = MEMORY[0x1E69C66A8];
  v150 = NSStringFromSelector(sel_suppressInvalidTransitionErrors);
  v149 = [v4 rowWithTitle:@"Suppress Invalid Transition Errors" valueKeyPath:v150];
  v162[1] = v149;
  v5 = MEMORY[0x1E69C66A8];
  v148 = NSStringFromSelector(sel_suppressInterruptedTransitionErrors);
  v147 = [v5 rowWithTitle:@"Suppress Interrupted Transition Errors" valueKeyPath:v148];
  v162[2] = v147;
  v146 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:3];
  v145 = [v2 sectionWithRows:v146 title:@"Errors"];
  v163[0] = v145;
  v6 = MEMORY[0x1E69C6638];
  v7 = MEMORY[0x1E69C66A0];
  v144 = NSStringFromSelector(sel_exposureBleedTransitionMidpoint);
  v143 = [v7 rowWithTitle:@"Midpoint" valueKeyPath:v144];
  v142 = [v143 minValue:0.0 maxValue:1.0];
  v161[0] = v142;
  v8 = MEMORY[0x1E69C66A0];
  v141 = NSStringFromSelector(sel_exposureBleedTransitionExposure);
  v140 = [v8 rowWithTitle:@"Exposure" valueKeyPath:v141];
  v139 = [v140 minValue:0.0 maxValue:5.0];
  v161[1] = v139;
  v9 = MEMORY[0x1E69C66A0];
  v138 = NSStringFromSelector(sel_exposureBleedTransitionBlurRadius);
  v137 = [v9 rowWithTitle:@"Blur Radius" valueKeyPath:v138];
  v136 = [v137 minValue:0.0 maxValue:50.0];
  v161[2] = v136;
  v10 = MEMORY[0x1E69C66A0];
  v135 = NSStringFromSelector(sel_exposureBleedTransitionCueAlignment);
  v134 = [v10 rowWithTitle:@"Alignment" valueKeyPath:v135];
  v133 = [v134 minValue:0.0 maxValue:1.0];
  v161[3] = v133;
  v132 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:4];
  v131 = [v6 sectionWithRows:v132 title:@"Exposure Bleed Transition"];
  v163[1] = v131;
  v11 = MEMORY[0x1E69C6638];
  v12 = MEMORY[0x1E69C66A0];
  v130 = NSStringFromSelector(sel_fadeToBlackTransitionBlackRelativeDuration);
  v129 = [v12 rowWithTitle:@"Fade to Black % of Black" valueKeyPath:v130];
  v128 = [v129 minValue:0.0 maxValue:1.0];
  v160[0] = v128;
  v13 = MEMORY[0x1E69C66A0];
  v127 = NSStringFromSelector(sel_fadeToBlackTransitionCueAlignment);
  v126 = [v13 rowWithTitle:@"Alignment" valueKeyPath:v127];
  v125 = [v126 minValue:0.0 maxValue:1.0];
  v160[1] = v125;
  v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:2];
  v123 = [v11 sectionWithRows:v124 title:@"Fade to Black Transition"];
  v163[2] = v123;
  v14 = MEMORY[0x1E69C6638];
  v15 = MEMORY[0x1E69C66A8];
  v122 = NSStringFromSelector(sel_useSplitWipeTransitionsFromOneUp);
  v121 = [v15 rowWithTitle:@"Force Split Wipes (1-Up → N-Up)" valueKeyPath:v122];
  v159[0] = v121;
  v16 = MEMORY[0x1E69C66A0];
  v120 = NSStringFromSelector(sel_dividerAnimationDurationFraction);
  v119 = [v16 rowWithTitle:@"Divider Animation Duration %" valueKeyPath:v120];
  v118 = [v119 minValue:0.00999999978 maxValue:1.0];
  v159[1] = v118;
  v17 = MEMORY[0x1E69C66A0];
  v117 = NSStringFromSelector(sel_reverseDividerAnimationDurationFraction);
  v116 = [v17 rowWithTitle:@"Reverse Divider Animation Duration %" valueKeyPath:v117];
  v115 = [v116 minValue:0.00999999978 maxValue:1.0];
  v159[2] = v115;
  v18 = MEMORY[0x1E69C66A0];
  v112 = NSStringFromSelector(sel_wipeTransitionCueAlignment);
  v111 = [v18 rowWithTitle:@"Alignment" valueKeyPath:v112];
  v110 = [v111 minValue:0.0 maxValue:1.0];
  v159[3] = v110;
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:4];
  v108 = [v14 sectionWithRows:v109 title:@"Wipe Transition"];
  v163[3] = v108;
  v19 = MEMORY[0x1E69C6638];
  v20 = MEMORY[0x1E69C66A0];
  v107 = NSStringFromSelector(sel_panTransitionMaxIntensity);
  v106 = [v20 rowWithTitle:@"Blur Max Intensity" valueKeyPath:v107];
  v105 = [v106 minValue:0.0 maxValue:1.0];
  v158[0] = v105;
  v21 = MEMORY[0x1E69C66A0];
  v104 = NSStringFromSelector(sel_panTransitionBlurMidpoint);
  v103 = [v21 rowWithTitle:@"Blur Midpoint" valueKeyPath:v104];
  v102 = [v103 minValue:0.0 maxValue:1.0];
  v158[1] = v102;
  v22 = MEMORY[0x1E69C66A0];
  v101 = NSStringFromSelector(sel_panTransitionBlurOffset);
  v100 = [v22 rowWithTitle:@"Blur Offset From End" valueKeyPath:v101];
  v99 = [v100 minValue:0.0 maxValue:1.0];
  v158[2] = v99;
  v23 = MEMORY[0x1E69C66A0];
  v98 = NSStringFromSelector(sel_panTransitionCueAlignment);
  v97 = [v23 rowWithTitle:@"Alignment" valueKeyPath:v98];
  v96 = [v97 minValue:0.0 maxValue:1.0];
  v158[3] = v96;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:4];
  v94 = [v19 sectionWithRows:v95 title:@"Pan Transition"];
  v163[4] = v94;
  v24 = MEMORY[0x1E69C6638];
  v25 = MEMORY[0x1E69C66A0];
  v93 = NSStringFromSelector(sel_scaleTransitionRelativeFactor);
  v92 = [v25 rowWithTitle:@"Relative Scale Factor" valueKeyPath:v93];
  v91 = [v92 minValue:0.0 maxValue:5.0];
  v157[0] = v91;
  v26 = MEMORY[0x1E69C66A0];
  v90 = NSStringFromSelector(sel_scaleTransitionBlurMidpoint);
  v89 = [v26 rowWithTitle:@"Blur Midpoint" valueKeyPath:v90];
  v88 = [v89 minValue:0.0 maxValue:1.0];
  v157[1] = v88;
  v27 = MEMORY[0x1E69C66A0];
  v87 = NSStringFromSelector(sel_scaleTransitionMaxBlurIntensity);
  v86 = [v27 rowWithTitle:@"Blur Max Intensity" valueKeyPath:v87];
  v85 = [v86 minValue:0.0 maxValue:1.0];
  v157[2] = v85;
  v28 = MEMORY[0x1E69C66A0];
  v84 = NSStringFromSelector(sel_scaleTransitionCueAlignment);
  v83 = [v28 rowWithTitle:@"Alignment" valueKeyPath:v84];
  v82 = [v83 minValue:0.0 maxValue:1.0];
  v157[3] = v82;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:4];
  v80 = [v24 sectionWithRows:v81 title:@"Scale Transition"];
  v163[5] = v80;
  v29 = MEMORY[0x1E69C6638];
  v30 = MEMORY[0x1E69C66A0];
  v79 = NSStringFromSelector(sel_rotateTransitionAngle);
  v78 = [v30 rowWithTitle:@"Angle" valueKeyPath:v79];
  v77 = [v78 minValue:0.0 maxValue:180.0];
  v156[0] = v77;
  v31 = MEMORY[0x1E69C66A0];
  v76 = NSStringFromSelector(sel_rotateTransitionBlurMidpoint);
  v75 = [v31 rowWithTitle:@"Blur Midpoint" valueKeyPath:v76];
  v74 = [v75 minValue:0.0 maxValue:1.0];
  v156[1] = v74;
  v32 = MEMORY[0x1E69C66A0];
  v73 = NSStringFromSelector(sel_rotateTransitionMaxBlurIntensity);
  v72 = [v32 rowWithTitle:@"Blur Max Intensity" valueKeyPath:v73];
  v71 = [v72 minValue:0.0 maxValue:1.0];
  v156[2] = v71;
  v33 = MEMORY[0x1E69C66A0];
  v70 = NSStringFromSelector(sel_rotateTransitionBlurAnimationRelativeDuration);
  v69 = [v33 rowWithTitle:@"Blur Relative Duration" valueKeyPath:v70];
  v68 = [v69 minValue:0.5 maxValue:1.0];
  v156[3] = v68;
  v34 = MEMORY[0x1E69C66A0];
  v67 = NSStringFromSelector(sel_rotateTransitionCueAlignment);
  v66 = [v34 rowWithTitle:@"Alignment" valueKeyPath:v67];
  v65 = [v66 minValue:0.0 maxValue:1.0];
  v156[4] = v65;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:5];
  v63 = [v29 sectionWithRows:v64 title:@"Rotate Transition"];
  v163[6] = v63;
  v35 = MEMORY[0x1E69C6638];
  v36 = MEMORY[0x1E69C66A0];
  v62 = NSStringFromSelector(sel_crossfadeTransitionCueAlignment);
  v61 = [v36 rowWithTitle:@"Alignment" valueKeyPath:v62];
  v60 = [v61 minValue:0.0 maxValue:1.0];
  v155 = v60;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1];
  v58 = [v35 sectionWithRows:v59 title:@"Crossfade Transition"];
  v163[7] = v58;
  v37 = MEMORY[0x1E69C6638];
  v38 = MEMORY[0x1E69C66A0];
  v57 = NSStringFromSelector(sel_zoomTransitionCueAlignment);
  v56 = [v38 rowWithTitle:@"Alignment" valueKeyPath:v57];
  v55 = [v56 minValue:0.0 maxValue:1.0];
  v154 = v55;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v154 count:1];
  v53 = [v37 sectionWithRows:v54 title:@"Zoom Transition"];
  v163[8] = v53;
  v39 = MEMORY[0x1E69C6638];
  v40 = MEMORY[0x1E69C66A8];
  v41 = NSStringFromSelector(sel_disableUnsupportedTransitionsAtChapterBoundary);
  v42 = [v40 rowWithTitle:@"Disable Unsupported Transitions" valueKeyPath:v41];
  v153[0] = v42;
  v43 = MEMORY[0x1E69C65F8];
  v44 = NSStringFromSelector(sel_forcedTransitionKindAtChapterBoundary);
  v45 = [v43 rowWithTitle:@"Forced Transition Kind" valueKeyPath:v44];
  v46 = [MEMORY[0x1E695DEC8] px_integersFrom:0 to:8];
  v47 = [v45 px_possibleValues:v46 formatter:&__block_literal_global_165166];
  v153[1] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:2];
  v49 = [v39 sectionWithRows:v48 title:@"Chapter Boundaries"];
  v163[9] = v49;
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v163[10] = px_restoreDefaultsSection;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:11];
  v114 = [v113 moduleWithTitle:@"Transitions" contents:v51];

  return v114;
}

__CFString *__58__PXStoryTransitionsSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 0xAu)
  {
    return @"??";
  }

  else
  {
    return off_1E7740168[v2 & 0xF];
  }
}

- (double)cueAlignmentForTransitionKind:(char)kind
{
  if (kind > 5)
  {
    if (kind > 7)
    {
      if (kind == 8)
      {
        [(PXStoryTransitionsSettings *)self wipeTransitionCueAlignment];
        return result;
      }

      if (kind == 9)
      {
        [(PXStoryTransitionsSettings *)self zoomTransitionCueAlignment];
        return result;
      }

      return 0.0;
    }

    if (kind == 6)
    {
      [(PXStoryTransitionsSettings *)self scaleTransitionCueAlignment];
    }

    else
    {
      [(PXStoryTransitionsSettings *)self rotateTransitionCueAlignment];
    }
  }

  else
  {
    if (kind <= 3)
    {
      if (kind == 2)
      {
        [(PXStoryTransitionsSettings *)self crossfadeTransitionCueAlignment];
        return result;
      }

      if (kind == 3)
      {
        [(PXStoryTransitionsSettings *)self fadeToBlackTransitionCueAlignment];
        return result;
      }

      return 0.0;
    }

    if (kind == 4)
    {
      [(PXStoryTransitionsSettings *)self exposureBleedTransitionCueAlignment];
    }

    else
    {
      [(PXStoryTransitionsSettings *)self panTransitionCueAlignment];
    }
  }

  return result;
}

+ (PXStoryTransitionsSettings)sharedInstance
{
  if (sharedInstance_onceToken_225700 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_225700, &__block_literal_global_225701);
  }

  v3 = sharedInstance_sharedInstance_225702;

  return v3;
}

void __44__PXStoryTransitionsSettings_sharedInstance__block_invoke()
{
  v2 = +[PXStorySettings sharedInstance];
  v0 = [v2 transitionsSettings];
  v1 = sharedInstance_sharedInstance_225702;
  sharedInstance_sharedInstance_225702 = v0;
}

@end