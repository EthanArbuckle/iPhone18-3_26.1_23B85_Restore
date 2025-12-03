@interface SBHIconResizingSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHIconResizingSettings

- (void)setDefaultValues
{
  [(SBHIconResizingSettings *)self setResizeHandleFollowsIconCornerRadius:0];
  [(SBHIconResizingSettings *)self setResizeHandleLineWidth:13.0];
  [(SBHIconResizingSettings *)self setResizeHandleLineLength:36.0];
  [(SBHIconResizingSettings *)self setResizeHandleCornerRadius:18.0];
  [(SBHIconResizingSettings *)self setResizeHandleHorizontalOffset:-1.0];
  [(SBHIconResizingSettings *)self setResizeHandleVerticalOffset:-1.0];
  [(SBHIconResizingSettings *)self setResizeHandleUsesTruncatedSectorHitArea:0];
  [(SBHIconResizingSettings *)self setResizeHandleHitAreaTopInset:-15.0];
  [(SBHIconResizingSettings *)self setResizeHandleHitAreaLeadingInset:-15.0];
  [(SBHIconResizingSettings *)self setResizeHandleHitAreaTrailingInset:-15.0];
  [(SBHIconResizingSettings *)self setResizeHandleHitAreaBottomInset:-15.0];
  [(SBHIconResizingSettings *)self setResizeHandleTruncatedSectorHitAreaTopInset:0.0];
  [(SBHIconResizingSettings *)self setResizeHandleTruncatedSectorHitAreaLeadingInset:0.0];
  [(SBHIconResizingSettings *)self setResizeHandleTruncatedSectorHitAreaTrailingInset:-20.0];

  [(SBHIconResizingSettings *)self setResizeHandleTruncatedSectorHitAreaBottomInset:0.0];
}

+ (id)settingsControllerModule
{
  v45[11] = *MEMORY[0x1E69E9840];
  v42 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Follow Icon Corner Radius" valueKeyPath:@"resizeHandleFollowsIconCornerRadius"];
  v45[0] = v42;
  v41 = [MEMORY[0x1E69C6618] rowWithTitle:@"Line Width" valueKeyPath:@"resizeHandleLineWidth"];
  v40 = [v41 between:0.0 and:30.0];
  v39 = [v40 precision:2];
  v45[1] = v39;
  v38 = [MEMORY[0x1E69C6618] rowWithTitle:@"Line Length" valueKeyPath:@"resizeHandleLineLength"];
  v37 = [v38 between:0.0 and:200.0];
  v36 = [v37 precision:2];
  v45[2] = v36;
  v35 = [MEMORY[0x1E69C6618] rowWithTitle:@"Custom Corner Radius" valueKeyPath:@"resizeHandleCornerRadius"];
  v34 = [v35 between:0.0 and:200.0];
  v33 = [v34 precision:2];
  v45[3] = v33;
  v32 = [MEMORY[0x1E69C6618] rowWithTitle:@"Horizontal Offset" valueKeyPath:@"resizeHandleHorizontalOffset"];
  v31 = [v32 between:0.0 and:50.0];
  v30 = [v31 precision:2];
  v45[4] = v30;
  v29 = [MEMORY[0x1E69C6618] rowWithTitle:@"Vertical Offset" valueKeyPath:@"resizeHandleVerticalOffset"];
  v28 = [v29 between:0.0 and:50.0];
  v27 = [v28 precision:2];
  v45[5] = v27;
  v26 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Arc Hit Area" valueKeyPath:@"resizeHandleUsesTruncatedSectorHitArea"];
  v45[6] = v26;
  v25 = [MEMORY[0x1E69C6618] rowWithTitle:@"Arc Hit Area Top End Cap Inset" valueKeyPath:@"resizeHandleTruncatedSectorHitAreaTopInset"];
  v24 = [v25 between:-50.0 and:50.0];
  v2 = [v24 precision:2];
  v45[7] = v2;
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Arc Hit Area Leading Edge Inset" valueKeyPath:@"resizeHandleTruncatedSectorHitAreaLeadingInset"];
  v4 = [v3 between:-50.0 and:50.0];
  v5 = [v4 precision:2];
  v45[8] = v5;
  v6 = [MEMORY[0x1E69C6618] rowWithTitle:@"Arc Hit Area Trailing Edge Inset" valueKeyPath:@"resizeHandleTruncatedSectorHitAreaTrailingInset"];
  v7 = [v6 between:-50.0 and:50.0];
  v8 = [v7 precision:2];
  v45[9] = v8;
  v9 = [MEMORY[0x1E69C6618] rowWithTitle:@"Arc Hit Area Bottom End Cap Inset" valueKeyPath:@"resizeHandleTruncatedSectorHitAreaBottomInset"];
  v10 = [v9 between:-50.0 and:50.0];
  v11 = [v10 precision:2];
  v45[10] = v11;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:11];

  v12 = [MEMORY[0x1E69C6638] sectionWithRows:v23];
  v13 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v15 = [v13 rowWithTitle:@"Restore Defaults" action:action];

  v16 = MEMORY[0x1E69C6638];
  v44 = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v18 = [v16 sectionWithRows:v17];

  v19 = MEMORY[0x1E69C6638];
  v43[0] = v12;
  v43[1] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v21 = [v19 moduleWithTitle:@"Icon Resizing" contents:v20];

  return v21;
}

@end