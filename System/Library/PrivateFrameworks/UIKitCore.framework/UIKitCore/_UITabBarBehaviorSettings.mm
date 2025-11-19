@interface _UITabBarBehaviorSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UITabBarBehaviorSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UITabBarBehaviorSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UITabBarBehaviorSettings *)self setStackedLeadingPadding:35.0];
  [(_UITabBarBehaviorSettings *)self setStackedTrailingPadding:35.0];
  [(_UITabBarBehaviorSettings *)self setStackedTopInset:0.5];
  [(_UITabBarBehaviorSettings *)self setStackedBottomInset:1.5];
  [(_UITabBarBehaviorSettings *)self setStackedCornerRadius:8.0];
  [(_UITabBarBehaviorSettings *)self setInlineLeadingPadding:35.0];
  [(_UITabBarBehaviorSettings *)self setInlineTrailingPadding:40.0];
  [(_UITabBarBehaviorSettings *)self setInlineTopInset:4.0];
  [(_UITabBarBehaviorSettings *)self setInlineBottomInset:4.0];
  [(_UITabBarBehaviorSettings *)self setInlineCornerRadius:8.0];
  [(_UITabBarBehaviorSettings *)self setInlineHomeButtonVerticalOffset:-0.5];
  [(_UITabBarBehaviorSettings *)self setInlineHomeAffordanceVerticalOffset:0.5];
}

+ (id)settingsControllerModule
{
  v41[12] = *MEMORY[0x1E69E9840];
  v30 = MEMORY[0x1E69C6638];
  v38 = [MEMORY[0x1E69C6618] rowWithTitle:@"Leading Padding (vertically stacked)" valueKeyPath:@"stackedLeadingPadding"];
  v37 = [v38 between:0.0 and:80.0];
  v41[0] = v37;
  v36 = [MEMORY[0x1E69C6618] rowWithTitle:@"Trailing Padding (vertically stacked)" valueKeyPath:@"stackedTrailingPadding"];
  v35 = [v36 between:0.0 and:80.0];
  v41[1] = v35;
  v34 = [MEMORY[0x1E69C6618] rowWithTitle:@"Top Inset (vertically stacked)" valueKeyPath:@"stackedTopInset"];
  v33 = [v34 between:-5.0 and:5.0];
  v41[2] = v33;
  v32 = [MEMORY[0x1E69C6618] rowWithTitle:@"Bottom Inset (vertically stacked)" valueKeyPath:@"stackedBottomInset"];
  v29 = [v32 between:-5.0 and:5.0];
  v41[3] = v29;
  v28 = [MEMORY[0x1E69C6618] rowWithTitle:@"Corner Radius (vertically stacked)" valueKeyPath:@"stackedCornerRadius"];
  v27 = [v28 between:4.0 and:20.0];
  v41[4] = v27;
  v26 = [MEMORY[0x1E69C6618] rowWithTitle:@"Leading Padding (inline)" valueKeyPath:@"inlineLeadingPadding"];
  v25 = [v26 between:0.0 and:80.0];
  v41[5] = v25;
  v24 = [MEMORY[0x1E69C6618] rowWithTitle:@"Trailing Padding (inline)" valueKeyPath:@"inlineTrailingPadding"];
  v23 = [v24 between:0.0 and:80.0];
  v41[6] = v23;
  v22 = [MEMORY[0x1E69C6618] rowWithTitle:@"Top Inset (inline)" valueKeyPath:@"inlineTopInset"];
  v2 = [v22 between:-5.0 and:5.0];
  v41[7] = v2;
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Bottom Inset (inline)" valueKeyPath:@"inlineBottomInset"];
  v4 = [v3 between:-5.0 and:5.0];
  v41[8] = v4;
  v5 = [MEMORY[0x1E69C6618] rowWithTitle:@"Corner Radius (inline)" valueKeyPath:@"inlineCornerRadius"];
  v6 = [v5 between:4.0 and:20.0];
  v41[9] = v6;
  v7 = [MEMORY[0x1E69C6618] rowWithTitle:@"Vertical Offset (inline valueKeyPath:{home button devices)", @"inlineHomeButtonVerticalOffset"}];
  v8 = [v7 between:-5.0 and:5.0];
  v41[10] = v8;
  v9 = [MEMORY[0x1E69C6618] rowWithTitle:@"Vertical Offset (inline valueKeyPath:{home affordance devices)", @"inlineHomeAffordanceVerticalOffset"}];
  v10 = [v9 between:-5.0 and:5.0];
  v41[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:12];
  v31 = [v30 sectionWithRows:v11 title:@"TabBar Button Highlight"];

  v12 = MEMORY[0x1E69C65E8];
  v13 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v14 = [v12 rowWithTitle:@"Restore Defaults" action:v13];

  v15 = MEMORY[0x1E69C6638];
  v40 = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v17 = [v15 sectionWithRows:v16];

  v18 = MEMORY[0x1E69C6638];
  v39[0] = v31;
  v39[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v20 = [v18 moduleWithTitle:0 contents:v19];

  return v20;
}

@end