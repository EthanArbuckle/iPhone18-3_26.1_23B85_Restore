@interface PUScrubberSettings
+ (PUScrubberSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PUScrubberSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUScrubberSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUScrubberSettings *)self setInteractiveLoupeBehavior:0];
  [(PUScrubberSettings *)self setDecelerationTargetExpansionDistance:0.0];
  [(PUScrubberSettings *)self setTapAnimationDuration:0.5];
  [(PUScrubberSettings *)self setSettleAnimationDuration:0.75];
  [(PUScrubberSettings *)self setSettleRequiredDecelerationDistance:50.0];
  [(PUScrubberSettings *)self setSmoothingAnimationDuration:0.05];
  [(PUScrubberSettings *)self setLemonadeSlitAspectRatio:0.666];
  [(PUScrubberSettings *)self setSlitAspectRatio:0.5];
  [(PUScrubberSettings *)self setLemonadeInterItemSpacing:3.0];
  [(PUScrubberSettings *)self setLemonadeInterSectionSpacing:4.0];
  [(PUScrubberSettings *)self setInterItemSpacing:1.0];
  [(PUScrubberSettings *)self setInterSectionSpacing:1.0];
  [(PUScrubberSettings *)self setMaxAspectRatio:2.0];
  [(PUScrubberSettings *)self setLemonadeItemCornerRadius:3.0];
  [(PUScrubberSettings *)self setItemCornerRadius:0.0];
  [(PUScrubberSettings *)self setVerticalMargin:1.0];
  [(PUScrubberSettings *)self setTopOutset:32.0];
  [(PUScrubberSettings *)self setMinVideoDuration:1.0];
  [(PUScrubberSettings *)self setBaseVideoWidth:150.0];
  [(PUScrubberSettings *)self setFilmstripAspectRatio:1.77777779];
  [(PUScrubberSettings *)self setDynamicSeekTolerance:1];
  [(PUScrubberSettings *)self setUseSmoothingAnimation:0];
  [(PUScrubberSettings *)self setDefaultPlaybackIndicator:0];
  [(PUScrubberSettings *)self setInitialPlaybackIndicator:2];
  [(PUScrubberSettings *)self setScrubbingPlaybackIndicator:1];
  [(PUScrubberSettings *)self setChromeShownPlaybackIndicator:2];
  [(PUScrubberSettings *)self setPlayingPlaybackIndicator:0];
}

+ (id)settingsControllerModule
{
  v151[8] = *MEMORY[0x1E69E9840];
  v2 = +[PUScrubberSettings sharedInstance];
  v138 = MEMORY[0x1E69C6638];
  v135 = [MEMORY[0x1E69C65F8] rowWithTitle:@"When Idle" valueKeyPath:@"defaultPlaybackIndicator"];
  v132 = [v135 possibleValues:&unk_1F2B7D628 titles:&unk_1F2B7D640];
  v151[0] = v132;
  v129 = [MEMORY[0x1E69C65F8] rowWithTitle:@"When at Beginning" valueKeyPath:@"initialPlaybackIndicator"];
  v126 = [v129 possibleValues:&unk_1F2B7D628 titles:&unk_1F2B7D640];
  v151[1] = v126;
  v123 = [MEMORY[0x1E69C65F8] rowWithTitle:@"When Scrubbing" valueKeyPath:@"scrubbingPlaybackIndicator"];
  v120 = [v123 possibleValues:&unk_1F2B7D628 titles:&unk_1F2B7D640];
  v151[2] = v120;
  v3 = [MEMORY[0x1E69C65F8] rowWithTitle:@"When Chrome is Shown" valueKeyPath:@"chromeShownPlaybackIndicator"];
  v4 = [v3 possibleValues:&unk_1F2B7D628 titles:&unk_1F2B7D640];
  v151[3] = v4;
  v5 = [MEMORY[0x1E69C65F8] rowWithTitle:@"When Playing" valueKeyPath:@"playingPlaybackIndicator"];
  v6 = [v5 possibleValues:&unk_1F2B7D628 titles:&unk_1F2B7D640];
  v151[4] = v6;
  v7 = MEMORY[0x1E69C65E8];
  v145[0] = MEMORY[0x1E69E9820];
  v145[1] = 3221225472;
  v145[2] = __46__PUScrubberSettings_settingsControllerModule__block_invoke;
  v145[3] = &unk_1E7B7E3F0;
  v8 = v2;
  v146 = v8;
  v9 = [v7 pu_rowWithTitle:@"HI Specs" action:v145];
  v151[5] = v9;
  v10 = MEMORY[0x1E69C65E8];
  v143[0] = MEMORY[0x1E69E9820];
  v143[1] = 3221225472;
  v143[2] = __46__PUScrubberSettings_settingsControllerModule__block_invoke_2;
  v143[3] = &unk_1E7B7E3F0;
  v11 = v8;
  v144 = v11;
  v12 = [v10 pu_rowWithTitle:@"Proposed Owned Video" action:v143];
  v151[6] = v12;
  v13 = MEMORY[0x1E69C65E8];
  v141[0] = MEMORY[0x1E69E9820];
  v141[1] = 3221225472;
  v141[2] = __46__PUScrubberSettings_settingsControllerModule__block_invoke_3;
  v141[3] = &unk_1E7B7E3F0;
  v142 = v11;
  v140 = v11;
  v14 = [v13 pu_rowWithTitle:@"Proposed Shared Video" action:v141];
  v151[7] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:8];
  v139 = [v138 sectionWithRows:v15 title:@"Playback Indicator"];

  v102 = MEMORY[0x1E69C6638];
  v16 = MEMORY[0x1E69C65F8];
  v136 = NSStringFromSelector(sel_interactiveLoupeBehavior);
  v133 = [v16 rowWithTitle:@"Interactive Loupe Behavior" valueKeyPath:v136];
  v130 = [v133 possibleValues:&unk_1F2B7D658 titles:&unk_1F2B7D670];
  v150[0] = v130;
  v17 = MEMORY[0x1E69C66A0];
  v127 = NSStringFromSelector(sel_tapAnimationDuration);
  v124 = [v17 rowWithTitle:@"Tap Animation Duration" valueKeyPath:v127];
  v121 = [v124 minValue:0.0 maxValue:1.0];
  v119 = [v121 pu_increment:0.0500000007];
  v150[1] = v119;
  v18 = MEMORY[0x1E69C66A0];
  v118 = NSStringFromSelector(sel_smoothingAnimationDuration);
  v117 = [v18 rowWithTitle:@"Smoothing Animation Duration" valueKeyPath:v118];
  v116 = [v117 minValue:0.0 maxValue:0.300000012];
  v115 = [v116 pu_increment:0.00999999978];
  v150[2] = v115;
  v19 = MEMORY[0x1E69C66A0];
  v114 = NSStringFromSelector(sel_settleAnimationDuration);
  v113 = [v19 rowWithTitle:@"Settle Animation Duration" valueKeyPath:v114];
  v112 = [v113 minValue:0.0 maxValue:1.0];
  v111 = [v112 pu_increment:0.0500000007];
  v150[3] = v111;
  v20 = MEMORY[0x1E69C66A0];
  v110 = NSStringFromSelector(sel_settleRequiredDecelerationDistance);
  v109 = [v20 rowWithTitle:@"Settle Required Deceleration Distance" valueKeyPath:v110];
  v108 = [v109 minValue:0.0 maxValue:1000.0];
  v107 = [v108 pu_increment:25.0];
  v150[4] = v107;
  v21 = MEMORY[0x1E69C66A0];
  v106 = NSStringFromSelector(sel_decelerationTargetExpansionDistance);
  v105 = [v21 rowWithTitle:@"Deceleration Target Expansion Distance" valueKeyPath:v106];
  v104 = [v105 minValue:0.0 maxValue:500.0];
  v101 = [v104 pu_increment:1.0];
  v150[5] = v101;
  v22 = MEMORY[0x1E69C66A0];
  v100 = NSStringFromSelector(sel_verticalMargin);
  v99 = [v22 rowWithTitle:@"Vertical Margin" valueKeyPath:v100];
  v98 = [v99 minValue:0.0 maxValue:10.0];
  v97 = [v98 pu_increment:1.0];
  v150[6] = v97;
  v23 = MEMORY[0x1E69C66A0];
  v96 = NSStringFromSelector(sel_topOutset);
  v95 = [v23 rowWithTitle:@"Top Outset" valueKeyPath:v96];
  v94 = [v95 minValue:0.0 maxValue:200.0];
  v93 = [v94 pu_increment:1.0];
  v150[7] = v93;
  v24 = MEMORY[0x1E69C66A0];
  v92 = NSStringFromSelector(sel_slitAspectRatio);
  v91 = [v24 rowWithTitle:@"Slit Aspect Ratio" valueKeyPath:v92];
  v90 = [v91 minValue:0.00999999978 maxValue:5.0];
  v89 = [v90 pu_increment:0.0500000007];
  v150[8] = v89;
  v25 = MEMORY[0x1E69C66A0];
  v88 = NSStringFromSelector(sel_maxAspectRatio);
  v87 = [v25 rowWithTitle:@"Max Aspect Ratio" valueKeyPath:v88];
  v86 = [v87 minValue:0.100000001 maxValue:30.0];
  v85 = [v86 pu_increment:0.100000001];
  v150[9] = v85;
  v26 = MEMORY[0x1E69C66A0];
  v84 = NSStringFromSelector(sel_interItemSpacing);
  v83 = [v26 rowWithTitle:@"Inter Item Spacing" valueKeyPath:v84];
  v82 = [v83 minValue:0.0 maxValue:20.0];
  v81 = [v82 pu_increment:1.0];
  v150[10] = v81;
  v27 = MEMORY[0x1E69C66A0];
  v80 = NSStringFromSelector(sel_itemCornerRadius);
  v79 = [v27 rowWithTitle:@"Item Corner Radius" valueKeyPath:v80];
  v78 = [v79 minValue:0.0 maxValue:20.0];
  v77 = [v78 pu_increment:1.0];
  v150[11] = v77;
  v28 = MEMORY[0x1E69C66A0];
  v76 = NSStringFromSelector(sel_interSectionSpacing);
  v75 = [v28 rowWithTitle:@"Inter Section Spacing" valueKeyPath:v76];
  v74 = [v75 minValue:0.0 maxValue:40.0];
  v73 = [v74 pu_increment:1.0];
  v150[12] = v73;
  v29 = MEMORY[0x1E69C66A8];
  v72 = NSStringFromSelector(sel_useSmoothingAnimation);
  v71 = [v29 rowWithTitle:@"Smoothing Animation" valueKeyPath:v72];
  v150[13] = v71;
  v30 = MEMORY[0x1E69C66A0];
  v70 = NSStringFromSelector(sel_baseVideoWidth);
  v69 = [v30 rowWithTitle:@"Base Video Width" valueKeyPath:v70];
  v68 = [v69 minValue:10.0 maxValue:1000.0];
  v67 = [v68 pu_increment:5.0];
  v150[14] = v67;
  v31 = MEMORY[0x1E69C66A0];
  v66 = NSStringFromSelector(sel_minVideoDuration);
  v32 = [v31 rowWithTitle:@"Min Video Duration" valueKeyPath:v66];
  v33 = [v32 minValue:0.100000001 maxValue:10.0];
  v34 = [v33 pu_increment:0.100000001];
  v150[15] = v34;
  v35 = MEMORY[0x1E69C66A0];
  v36 = NSStringFromSelector(sel_filmstripAspectRatio);
  v37 = [v35 rowWithTitle:@"Filmstrip Aspect Ratio" valueKeyPath:v36];
  v38 = [v37 minValue:0.100000001 maxValue:3.0];
  v39 = [v38 pu_increment:0.00999999978];
  v150[16] = v39;
  v40 = MEMORY[0x1E69C66A8];
  v41 = NSStringFromSelector(sel_dynamicSeekTolerance);
  v42 = [v40 rowWithTitle:@"Dynamic Seek Tolerance" valueKeyPath:v41];
  v150[17] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:18];
  v103 = [v102 sectionWithRows:v43];

  v44 = MEMORY[0x1E69C6638];
  v45 = MEMORY[0x1E69C65E8];
  v46 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v47 = [v45 rowWithTitle:@"Restore Defaults" action:v46];
  v149 = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
  v137 = [v44 sectionWithRows:v48];

  v122 = MEMORY[0x1E69C6638];
  v49 = MEMORY[0x1E69C66A0];
  v134 = NSStringFromSelector(sel_lemonadeSlitAspectRatio);
  v131 = [v49 rowWithTitle:@"Slit Aspect Ratio" valueKeyPath:v134];
  v128 = [v131 minValue:0.00999999978 maxValue:5.0];
  v125 = [v128 pu_increment:0.0500000007];
  v148[0] = v125;
  v50 = MEMORY[0x1E69C66A0];
  v51 = NSStringFromSelector(sel_lemonadeInterItemSpacing);
  v52 = [v50 rowWithTitle:@"Inter Item Spacing" valueKeyPath:v51];
  v53 = [v52 minValue:0.0 maxValue:20.0];
  v54 = [v53 pu_increment:1.0];
  v148[1] = v54;
  v55 = MEMORY[0x1E69C66A0];
  v56 = NSStringFromSelector(sel_lemonadeItemCornerRadius);
  v57 = [v55 rowWithTitle:@"Item Corner Radius" valueKeyPath:v56];
  v58 = [v57 minValue:0.0 maxValue:20.0];
  v59 = [v58 pu_increment:1.0];
  v148[2] = v59;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:3];
  v61 = [v122 sectionWithRows:v60 title:@"Lemonade"];

  v62 = MEMORY[0x1E69C6638];
  v147[0] = v61;
  v147[1] = v139;
  v147[2] = v103;
  v147[3] = v137;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:4];
  v64 = [v62 moduleWithTitle:@"Scrubber Settings" contents:v63];

  return v64;
}

uint64_t __46__PUScrubberSettings_settingsControllerModule__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDefaultPlaybackIndicator:0];
  [*(a1 + 32) setInitialPlaybackIndicator:2];
  [*(a1 + 32) setScrubbingPlaybackIndicator:1];
  [*(a1 + 32) setChromeShownPlaybackIndicator:2];
  v2 = *(a1 + 32);

  return [v2 setPlayingPlaybackIndicator:0];
}

uint64_t __46__PUScrubberSettings_settingsControllerModule__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDefaultPlaybackIndicator:0];
  [*(a1 + 32) setInitialPlaybackIndicator:0];
  [*(a1 + 32) setScrubbingPlaybackIndicator:1];
  [*(a1 + 32) setChromeShownPlaybackIndicator:0];
  v2 = *(a1 + 32);

  return [v2 setPlayingPlaybackIndicator:0];
}

uint64_t __46__PUScrubberSettings_settingsControllerModule__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setDefaultPlaybackIndicator:0];
  [*(a1 + 32) setInitialPlaybackIndicator:2];
  [*(a1 + 32) setScrubbingPlaybackIndicator:2];
  [*(a1 + 32) setChromeShownPlaybackIndicator:2];
  v2 = *(a1 + 32);

  return [v2 setPlayingPlaybackIndicator:0];
}

+ (PUScrubberSettings)sharedInstance
{
  if (sharedInstance_onceToken_77331 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_77331, &__block_literal_global_77332);
  }

  v3 = sharedInstance_sharedInstance_77333;

  return v3;
}

void __36__PUScrubberSettings_sharedInstance__block_invoke()
{
  v2 = +[PUOneUpSettings sharedInstance];
  v0 = [v2 scrubberSettings];
  v1 = sharedInstance_sharedInstance_77333;
  sharedInstance_sharedInstance_77333 = v0;
}

@end