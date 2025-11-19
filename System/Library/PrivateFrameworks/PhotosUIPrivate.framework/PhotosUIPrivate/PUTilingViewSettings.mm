@interface PUTilingViewSettings
+ (PUTilingViewSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PUTilingViewSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = PUTilingViewSettings;
  [(PTSettings *)&v5 setDefaultValues];
  [(PUTilingViewSettings *)self setLemonadeUseSystemSpringAnimations:0];
  [(PUTilingViewSettings *)self setLemonadeUseOvershootingSpringAnimations:0];
  [(PUTilingViewSettings *)self setAnimationDragCoefficient:1.0];
  [(PUTilingViewSettings *)self setUseSpringAnimations:1];
  [(PUTilingViewSettings *)self setUseSystemSpringAnimations:0];
  [(PUTilingViewSettings *)self setSpringAnimationDuration:0.3];
  [(PUTilingViewSettings *)self setDefaultAnimationDuration:0.5];
  [(PUTilingViewSettings *)self setUseOvershootingSpringAnimations:1];
  [(PUTilingViewSettings *)self setTransitionDuration:0.2];
  if (PFIsCamera())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(PUTilingViewSettings *)self setTransitionProgressBehavior:v3];
  if (PFIsCamera())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.5;
  }

  [(PUTilingViewSettings *)self setInteractiveTransitionBackgroundDimming:v4];
  [(PUTilingViewSettings *)self setTransitionChromeDelay:0.0];
  [(PUTilingViewSettings *)self setAllowPaging:1];
  [(PUTilingViewSettings *)self setAllowPreheating:1];
  [(PUTilingViewSettings *)self setAllowTileReuse:1];
  [(PUTilingViewSettings *)self setCarryOverVelocities:1];
  [(PUTilingViewSettings *)self setAllowsEdgeAntialiasing:1];
  [(PUTilingViewSettings *)self setTintTiles:0];
  [(PUTilingViewSettings *)self setShowVisibleRects:0];
  [(PUTilingViewSettings *)self setRotateDisappearingTiles:0];
  [(PUTilingViewSettings *)self setShowSnapshottableTiles:0];
}

+ (id)settingsControllerModule
{
  v108[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v4 = NSStringFromSelector(sel_lemonadeUseSystemSpringAnimations);
  v5 = [v3 rowWithTitle:@"System Spring Animations" valueKeyPath:v4];
  v6 = [v5 conditionFormat:@"useSpringAnimations == 1"];
  v108[0] = v6;
  v7 = MEMORY[0x1E69C66A8];
  v8 = NSStringFromSelector(sel_lemonadeUseOvershootingSpringAnimations);
  v9 = [v7 rowWithTitle:@"Overshoot When Zooming In" valueKeyPath:v8];
  v108[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:2];
  v101 = [v2 sectionWithRows:v10 title:@"Lemonade Overrides"];

  v99 = MEMORY[0x1E69C6638];
  v11 = MEMORY[0x1E69C65F8];
  v96 = NSStringFromSelector(sel_animationDragCoefficient);
  v92 = [v11 rowWithTitle:@"Slow Animations" valueKeyPath:v96];
  v89 = [v92 possibleValues:&unk_1F2B7D850 titles:&unk_1F2B7D868];
  v107[0] = v89;
  v12 = MEMORY[0x1E69C66A8];
  v87 = NSStringFromSelector(sel_useSpringAnimations);
  v85 = [v12 rowWithTitle:@"Spring Animations" valueKeyPath:v87];
  v107[1] = v85;
  v13 = MEMORY[0x1E69C66A8];
  v83 = NSStringFromSelector(sel_useSystemSpringAnimations);
  v82 = [v13 rowWithTitle:@"System Spring Animations" valueKeyPath:v83];
  v81 = [v82 conditionFormat:@"useSpringAnimations == 1"];
  v107[2] = v81;
  v14 = MEMORY[0x1E69C66A0];
  v15 = NSStringFromSelector(sel_springAnimationDuration);
  v16 = [v14 rowWithTitle:@"Spring Animation Duration" valueKeyPath:v15];
  v17 = [v16 conditionFormat:@"useSpringAnimations == 1 && useSystemSpringAnimations == 0"];
  v107[3] = v17;
  v18 = MEMORY[0x1E69C66A0];
  v19 = NSStringFromSelector(sel_defaultAnimationDuration);
  v20 = [v18 rowWithTitle:@"Default Animation Duration" valueKeyPath:v19];
  v21 = [v20 minValue:0.0 maxValue:1.0];
  v22 = [v21 conditionFormat:@"useSpringAnimations == 0"];
  v107[4] = v22;
  v23 = MEMORY[0x1E69C66A8];
  v24 = NSStringFromSelector(sel_useOvershootingSpringAnimations);
  v25 = [v23 rowWithTitle:@"Overshoot When Zooming In" valueKeyPath:v24];
  v107[5] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:6];
  v100 = [v99 sectionWithRows:v26 title:@"Animations"];

  v97 = MEMORY[0x1E69C6638];
  v27 = MEMORY[0x1E69C66A0];
  v93 = NSStringFromSelector(sel_transitionDuration);
  v90 = [v27 rowWithTitle:@"Duration" valueKeyPath:v93];
  v88 = [v90 minValue:0.0 maxValue:0.5];
  v106[0] = v88;
  v28 = MEMORY[0x1E69C65F8];
  v86 = NSStringFromSelector(sel_transitionProgressBehavior);
  v84 = [v28 rowWithTitle:@"Progress Behavior" valueKeyPath:v86];
  v29 = [v84 possibleValues:&unk_1F2B7D880 titles:&unk_1F2B7D898];
  v106[1] = v29;
  v30 = MEMORY[0x1E69C66A0];
  v31 = NSStringFromSelector(sel_interactiveTransitionBackgroundDimming);
  v32 = [v30 rowWithTitle:@"Interactive Background Dimming" valueKeyPath:v31];
  v33 = [v32 minValue:0.0 maxValue:1.0];
  v34 = [v33 pu_increment:0.100000001];
  v106[2] = v34;
  v35 = MEMORY[0x1E69C66A0];
  v36 = NSStringFromSelector(sel_transitionChromeDelay);
  v37 = [v35 rowWithTitle:@"Chrome Delay" valueKeyPath:v36];
  v38 = [v37 minValue:0.0 maxValue:0.899999976];
  v39 = [v38 pu_increment:0.100000001];
  v106[3] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:4];
  v98 = [v97 sectionWithRows:v40 title:@"Transitions"];

  v94 = MEMORY[0x1E69C6638];
  v41 = MEMORY[0x1E69C66A8];
  v91 = NSStringFromSelector(sel_allowPaging);
  v42 = [v41 rowWithTitle:@"Paging" valueKeyPath:v91];
  v105[0] = v42;
  v43 = MEMORY[0x1E69C66A8];
  v44 = NSStringFromSelector(sel_allowPreheating);
  v45 = [v43 rowWithTitle:@"Preheating" valueKeyPath:v44];
  v105[1] = v45;
  v46 = MEMORY[0x1E69C66A8];
  v47 = NSStringFromSelector(sel_allowTileReuse);
  v48 = [v46 rowWithTitle:@"Tile Reuse" valueKeyPath:v47];
  v105[2] = v48;
  v49 = MEMORY[0x1E69C66A8];
  v50 = NSStringFromSelector(sel_allowsEdgeAntialiasing);
  v51 = [v49 rowWithTitle:@"Edge Antialiasing" valueKeyPath:v50];
  v105[3] = v51;
  v52 = MEMORY[0x1E69C66A8];
  v53 = NSStringFromSelector(sel_carryOverVelocities);
  v54 = [v52 rowWithTitle:@"Carry Over Velocities" valueKeyPath:v53];
  v105[4] = v54;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:5];
  v95 = [v94 sectionWithRows:v55 title:@"Features"];

  v56 = MEMORY[0x1E69C6638];
  v57 = MEMORY[0x1E69C66A8];
  v58 = NSStringFromSelector(sel_tintTiles);
  v59 = [v57 rowWithTitle:@"Tint Tiles" valueKeyPath:v58];
  v104[0] = v59;
  v60 = MEMORY[0x1E69C66A8];
  v61 = NSStringFromSelector(sel_showVisibleRects);
  v62 = [v60 rowWithTitle:@"Visible Rects" valueKeyPath:v61];
  v104[1] = v62;
  v63 = MEMORY[0x1E69C66A8];
  v64 = NSStringFromSelector(sel_rotateDisappearingTiles);
  v65 = [v63 rowWithTitle:@"Rotate Disappearing Tiles" valueKeyPath:v64];
  v104[2] = v65;
  v66 = MEMORY[0x1E69C66A8];
  v67 = NSStringFromSelector(sel_showSnapshottableTiles);
  v68 = [v66 rowWithTitle:@"Show Snapshottable Tiles" valueKeyPath:v67];
  v104[3] = v68;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:4];
  v70 = [v56 sectionWithRows:v69 title:@"Debugging"];

  v71 = MEMORY[0x1E69C6638];
  v72 = MEMORY[0x1E69C65E8];
  v73 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v74 = [v72 rowWithTitle:@"Restore Defaults" action:v73];
  v103 = v74;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
  v76 = [v71 sectionWithRows:v75];

  v77 = MEMORY[0x1E69C6638];
  v102[0] = v101;
  v102[1] = v100;
  v102[2] = v98;
  v102[3] = v95;
  v102[4] = v70;
  v102[5] = v76;
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:6];
  v79 = [v77 moduleWithTitle:@"Tiling View" contents:v78];

  return v79;
}

+ (PUTilingViewSettings)sharedInstance
{
  if (sharedInstance_onceToken_88816 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_88816, &__block_literal_global_88817);
  }

  v3 = sharedInstance_sharedInstance_88818;

  return v3;
}

void __38__PUTilingViewSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 tilingViewSettings];
  v1 = sharedInstance_sharedInstance_88818;
  sharedInstance_sharedInstance_88818 = v0;
}

@end