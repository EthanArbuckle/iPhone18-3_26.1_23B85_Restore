@interface SBHIconEditingSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHIconEditingSettings

- (void)setDefaultValues
{
  [(SBHIconEditingSettings *)self setShowDragPlatterIconBorder:0];
  [(SBHIconEditingSettings *)self setEditingLiftDelay:0.1];
  [(SBHIconEditingSettings *)self setLongPressToEditDuration:0.5];
  [(SBHIconEditingSettings *)self setDefaultSpringDampingRatio:0.85];
  [(SBHIconEditingSettings *)self setDefaultSpringDuration:0.67];
  [(SBHIconEditingSettings *)self setClusterFastestDuration:0.67];
  [(SBHIconEditingSettings *)self setClusterSlowestDuration:0.85];
  [(SBHIconEditingSettings *)self setClusterMiddleFastDuration:0.77];
  [(SBHIconEditingSettings *)self setClusterMiddleSlowDuration:0.82];

  [(SBHIconEditingSettings *)self setOverrideAnimationType:-1];
}

+ (id)settingsControllerModule
{
  v54[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v47 = [v2 rowWithTitle:@"Restore Defaults" action:action];

  v4 = MEMORY[0x1E69C6638];
  v54[0] = v47;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  v45 = [v4 sectionWithRows:v5];

  v46 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Reset Home Screen Layout" outletKeyPath:@"resetHomeScreenLayoutOutlet"];
  v6 = MEMORY[0x1E69C6638];
  v53 = v46;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v44 = [v6 sectionWithRows:v7];

  v8 = [MEMORY[0x1E69C6618] rowWithTitle:@"Editing Lift Delay" valueKeyPath:@"editingLiftDelay"];
  v9 = [v8 between:0.0 and:2.0];
  v10 = [v9 precision:2];
  v52[0] = v10;
  v11 = [MEMORY[0x1E69C6618] rowWithTitle:@"Long Press To Edit Duration" valueKeyPath:@"longPressToEditDuration"];
  v12 = [v11 between:0.0 and:2.0];
  v13 = [v12 precision:2];
  v52[1] = v13;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];

  v43 = [MEMORY[0x1E69C6638] sectionWithRows:v39];
  v14 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Override Animation Type" valueKeyPath:@"overrideAnimationType"];
  v48 = [v14 possibleValues:&unk_1F3DB2BB8 titles:&unk_1F3DB2BD0];

  v42 = [MEMORY[0x1E69C6618] rowWithTitle:@"Default Spring Duration" valueKeyPath:@"defaultSpringDuration"];
  v41 = [v42 between:0.0 and:2.0];
  v40 = [v41 precision:2];
  v51[0] = v40;
  v38 = [MEMORY[0x1E69C6618] rowWithTitle:@"Default Spring Damping Ratio" valueKeyPath:@"defaultSpringDampingRatio"];
  v37 = [v38 between:0.0 and:2.0];
  v36 = [v37 precision:2];
  v51[1] = v36;
  v35 = [MEMORY[0x1E69C6618] rowWithTitle:@"Cluster Fastest Duration" valueKeyPath:@"clusterFastestDuration"];
  v34 = [v35 between:0.0 and:2.0];
  v33 = [v34 precision:2];
  v51[2] = v33;
  v15 = [MEMORY[0x1E69C6618] rowWithTitle:@"Cluster Slowest Duration" valueKeyPath:@"clusterSlowestDuration"];
  v16 = [v15 between:0.0 and:2.0];
  v17 = [v16 precision:2];
  v51[3] = v17;
  v18 = [MEMORY[0x1E69C6618] rowWithTitle:@"Cluster Middle Fast Duration" valueKeyPath:@"clusterMiddleFastDuration"];
  v19 = [v18 between:0.0 and:2.0];
  v20 = [v19 precision:2];
  v51[4] = v20;
  v21 = [MEMORY[0x1E69C6618] rowWithTitle:@"Cluster Middle Slow Duration" valueKeyPath:@"clusterMiddleSlowDuration"];
  v22 = [v21 between:0.0 and:2.0];
  v23 = [v22 precision:2];
  v51[5] = v23;
  v51[6] = v48;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:7];

  v25 = [MEMORY[0x1E69C6638] sectionWithRows:v24];
  v26 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Drag Platter Icon Border" valueKeyPath:@"showDragPlatterIconBorder"];
  v50 = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];

  v28 = [MEMORY[0x1E69C6638] sectionWithRows:v27];
  v29 = MEMORY[0x1E69C6638];
  v49[0] = v45;
  v49[1] = v44;
  v49[2] = v43;
  v49[3] = v25;
  v49[4] = v28;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:5];
  v31 = [v29 moduleWithTitle:@"Icon Editing" contents:v30];

  return v31;
}

@end