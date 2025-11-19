@interface _UIButtonBehaviorSettings
+ (id)settingsControllerModule;
- (BOOL)_useImageSettings;
- (BOOL)_useMixedSettings;
- (BOOL)_useTextSettings;
- (void)setDefaultValues;
@end

@implementation _UIButtonBehaviorSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIButtonBehaviorSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetLeading:10.0];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetTrailing:10.0];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetTop:7.5];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetBottom:8.5];
  [(_UIButtonBehaviorSettings *)self setTextButtonMinWidth:0.0];
  [(_UIButtonBehaviorSettings *)self setTextButtonMinHeight:0.0];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetLeading:8.0];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetTrailing:8.0];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetTop:8.0];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetBottom:8.0];
  [(_UIButtonBehaviorSettings *)self setImageButtonMinWidth:0.0];
  [(_UIButtonBehaviorSettings *)self setImageButtonMinHeight:0.0];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetLeading:10.0];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetTrailing:10.0];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetTop:7.5];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetBottom:8.5];
  [(_UIButtonBehaviorSettings *)self setMixedButtonMinWidth:0.0];
  [(_UIButtonBehaviorSettings *)self setMixedButtonMinHeight:0.0];
  [(_UIButtonBehaviorSettings *)self setRoundButtonOutset:8.0];
  [(_UIButtonBehaviorSettings *)self setRoundButtonMinSize:0.0];
  [(_UIButtonBehaviorSettings *)self setCloseButtonOutset:0.0];
  [(_UIButtonBehaviorSettings *)self setCloseButtonMinSize:0.0];
}

- (BOOL)_useTextSettings
{
  [(_UIButtonBehaviorSettings *)self textButtonOutsetLeading];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetLeading:?];
  [(_UIButtonBehaviorSettings *)self textButtonOutsetTrailing];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetTrailing:?];
  [(_UIButtonBehaviorSettings *)self textButtonOutsetTop];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetTop:?];
  [(_UIButtonBehaviorSettings *)self textButtonOutsetBottom];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetBottom:?];
  [(_UIButtonBehaviorSettings *)self textButtonMinWidth];
  [(_UIButtonBehaviorSettings *)self setImageButtonMinWidth:?];
  [(_UIButtonBehaviorSettings *)self textButtonMinHeight];
  [(_UIButtonBehaviorSettings *)self setImageButtonMinHeight:?];
  [(_UIButtonBehaviorSettings *)self textButtonOutsetLeading];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetLeading:?];
  [(_UIButtonBehaviorSettings *)self textButtonOutsetTrailing];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetTrailing:?];
  [(_UIButtonBehaviorSettings *)self textButtonOutsetTop];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetTop:?];
  [(_UIButtonBehaviorSettings *)self textButtonOutsetBottom];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetBottom:?];
  [(_UIButtonBehaviorSettings *)self textButtonMinWidth];
  [(_UIButtonBehaviorSettings *)self setMixedButtonMinWidth:?];
  [(_UIButtonBehaviorSettings *)self textButtonMinHeight];
  [(_UIButtonBehaviorSettings *)self setMixedButtonMinHeight:?];
  return 1;
}

- (BOOL)_useImageSettings
{
  [(_UIButtonBehaviorSettings *)self imageButtonOutsetLeading];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetLeading:?];
  [(_UIButtonBehaviorSettings *)self imageButtonOutsetTrailing];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetTrailing:?];
  [(_UIButtonBehaviorSettings *)self imageButtonOutsetTop];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetTop:?];
  [(_UIButtonBehaviorSettings *)self imageButtonOutsetBottom];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetBottom:?];
  [(_UIButtonBehaviorSettings *)self imageButtonMinWidth];
  [(_UIButtonBehaviorSettings *)self setTextButtonMinWidth:?];
  [(_UIButtonBehaviorSettings *)self imageButtonMinHeight];
  [(_UIButtonBehaviorSettings *)self setTextButtonMinHeight:?];
  [(_UIButtonBehaviorSettings *)self imageButtonOutsetLeading];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetLeading:?];
  [(_UIButtonBehaviorSettings *)self imageButtonOutsetTrailing];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetTrailing:?];
  [(_UIButtonBehaviorSettings *)self imageButtonOutsetTop];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetTop:?];
  [(_UIButtonBehaviorSettings *)self imageButtonOutsetBottom];
  [(_UIButtonBehaviorSettings *)self setMixedButtonOutsetBottom:?];
  [(_UIButtonBehaviorSettings *)self imageButtonMinWidth];
  [(_UIButtonBehaviorSettings *)self setMixedButtonMinWidth:?];
  [(_UIButtonBehaviorSettings *)self imageButtonMinHeight];
  [(_UIButtonBehaviorSettings *)self setMixedButtonMinHeight:?];
  return 1;
}

- (BOOL)_useMixedSettings
{
  [(_UIButtonBehaviorSettings *)self mixedButtonOutsetLeading];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetLeading:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonOutsetTrailing];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetTrailing:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonOutsetTop];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetTop:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonOutsetBottom];
  [(_UIButtonBehaviorSettings *)self setTextButtonOutsetBottom:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonMinWidth];
  [(_UIButtonBehaviorSettings *)self setTextButtonMinWidth:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonMinHeight];
  [(_UIButtonBehaviorSettings *)self setTextButtonMinHeight:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonOutsetLeading];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetLeading:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonOutsetTrailing];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetTrailing:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonOutsetTop];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetTop:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonOutsetBottom];
  [(_UIButtonBehaviorSettings *)self setImageButtonOutsetBottom:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonMinWidth];
  [(_UIButtonBehaviorSettings *)self setImageButtonMinWidth:?];
  [(_UIButtonBehaviorSettings *)self mixedButtonMinHeight];
  [(_UIButtonBehaviorSettings *)self setImageButtonMinHeight:?];
  return 1;
}

+ (id)settingsControllerModule
{
  v86[7] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_414];
  v77 = MEMORY[0x1E69C6638];
  v79 = v2;
  v75 = [MEMORY[0x1E69C6618] rowWithTitle:@"Leading" valueKeyPath:@"textButtonOutsetLeading"];
  v72 = [v75 between:0.0 and:20.0];
  v86[0] = v72;
  v69 = [MEMORY[0x1E69C6618] rowWithTitle:@"Trailing" valueKeyPath:@"textButtonOutsetTrailing"];
  v65 = [v69 between:0.0 and:20.0];
  v86[1] = v65;
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Top" valueKeyPath:@"textButtonOutsetTop"];
  v4 = [v3 between:0.0 and:20.0];
  v86[2] = v4;
  v5 = [MEMORY[0x1E69C6618] rowWithTitle:@"Bottom" valueKeyPath:@"textButtonOutsetBottom"];
  v6 = [v5 between:0.0 and:20.0];
  v86[3] = v6;
  v7 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Width" valueKeyPath:@"textButtonMinWidth"];
  v8 = [v7 between:0.0 and:100.0];
  v86[4] = v8;
  v9 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Height" valueKeyPath:@"textButtonMinHeight"];
  v10 = [v9 between:0.0 and:100.0];
  v86[5] = v10;
  v11 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Use for All Text/Image Buttons" action:v2];
  v86[6] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:7];
  v78 = [v77 sectionWithRows:v12 title:@"Text Only Buttons"];

  v13 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_577];
  v73 = MEMORY[0x1E69C6638];
  v76 = v13;
  v70 = [MEMORY[0x1E69C6618] rowWithTitle:@"Leading" valueKeyPath:@"imageButtonOutsetLeading"];
  v66 = [v70 between:0.0 and:20.0];
  v85[0] = v66;
  v63 = [MEMORY[0x1E69C6618] rowWithTitle:@"Trailing" valueKeyPath:@"imageButtonOutsetTrailing"];
  v61 = [v63 between:0.0 and:20.0];
  v85[1] = v61;
  v14 = [MEMORY[0x1E69C6618] rowWithTitle:@"Top" valueKeyPath:@"imageButtonOutsetTop"];
  v15 = [v14 between:0.0 and:20.0];
  v85[2] = v15;
  v16 = [MEMORY[0x1E69C6618] rowWithTitle:@"Bottom" valueKeyPath:@"imageButtonOutsetBottom"];
  v17 = [v16 between:0.0 and:20.0];
  v85[3] = v17;
  v18 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Width" valueKeyPath:@"imageButtonMinWidth"];
  v19 = [v18 between:0.0 and:100.0];
  v85[4] = v19;
  v20 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Height" valueKeyPath:@"imageButtonMinHeight"];
  v21 = [v20 between:0.0 and:100.0];
  v85[5] = v21;
  v22 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Use for All Text/Image Buttons" action:v13];
  v85[6] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:7];
  v74 = [v73 sectionWithRows:v23 title:@"Image Only Buttons"];

  v24 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_600];
  v67 = MEMORY[0x1E69C6638];
  v71 = v24;
  v64 = [MEMORY[0x1E69C6618] rowWithTitle:@"Leading" valueKeyPath:@"mixedButtonOutsetLeading"];
  v62 = [v64 between:0.0 and:20.0];
  v84[0] = v62;
  v60 = [MEMORY[0x1E69C6618] rowWithTitle:@"Trailing" valueKeyPath:@"mixedButtonOutsetTrailing"];
  v59 = [v60 between:0.0 and:20.0];
  v84[1] = v59;
  v25 = [MEMORY[0x1E69C6618] rowWithTitle:@"Top" valueKeyPath:@"mixedButtonOutsetTop"];
  v26 = [v25 between:0.0 and:20.0];
  v84[2] = v26;
  v27 = [MEMORY[0x1E69C6618] rowWithTitle:@"Bottom" valueKeyPath:@"mixedButtonOutsetBottom"];
  v28 = [v27 between:0.0 and:20.0];
  v84[3] = v28;
  v29 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Width" valueKeyPath:@"mixedButtonMinWidth"];
  v30 = [v29 between:0.0 and:100.0];
  v84[4] = v30;
  v31 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Height" valueKeyPath:@"mixedButtonMinHeight"];
  v32 = [v31 between:0.0 and:100.0];
  v84[5] = v32;
  v33 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Use for All Text/Image Buttons" action:v24];
  v84[6] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:7];
  v68 = [v67 sectionWithRows:v34 title:@"Text & Image Buttons"];

  v35 = MEMORY[0x1E69C6638];
  v36 = [MEMORY[0x1E69C6618] rowWithTitle:@"Outset" valueKeyPath:@"roundButtonOutset"];
  v37 = [v36 between:0.0 and:20.0];
  v83[0] = v37;
  v38 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Size" valueKeyPath:@"roundButtonMinSize"];
  v39 = [v38 between:0.0 and:100.0];
  v83[1] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
  v41 = [v35 sectionWithRows:v40 title:@"Round Buttons"];

  v42 = MEMORY[0x1E69C6638];
  v43 = [MEMORY[0x1E69C6618] rowWithTitle:@"Outset" valueKeyPath:@"closeButtonOutset"];
  v44 = [v43 between:0.0 and:20.0];
  v82[0] = v44;
  v45 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Size" valueKeyPath:@"closeButtonMinSize"];
  v46 = [v45 between:0.0 and:100.0];
  v82[1] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v48 = [v42 sectionWithRows:v47 title:@"Close Buttons"];

  v49 = MEMORY[0x1E69C65E8];
  v50 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v51 = [v49 rowWithTitle:@"Restore Defaults" action:v50];

  v52 = MEMORY[0x1E69C6638];
  v81 = v51;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
  v54 = [v52 sectionWithRows:v53];

  v55 = MEMORY[0x1E69C6638];
  v80[0] = v78;
  v80[1] = v74;
  v80[2] = v68;
  v80[3] = v41;
  v80[4] = v48;
  v80[5] = v54;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:6];
  v57 = [v55 moduleWithTitle:0 contents:v56];

  return v57;
}

@end