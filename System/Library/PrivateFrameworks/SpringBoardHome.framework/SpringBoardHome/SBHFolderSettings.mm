@interface SBHFolderSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHFolderSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHFolderSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBHFolderSettings *)self setAllowNestedFolders:0];
  [(SBHFolderSettings *)self setPinchToClose:0];
  [(SBHFolderSettings *)self setMinPinchScale:0.8];
  [(SBHFolderSettings *)self setAnimatesPageScrubbing:0];
}

+ (id)settingsControllerModule
{
  v14[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Nested Folders" valueKeyPath:@"allowNestedFolders"];
  v14[0] = v2;
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Pinch to Close" valueKeyPath:@"pinchToClose"];
  v14[1] = v3;
  v4 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Pinch Scale" valueKeyPath:@"minPinchScale"];
  v5 = [v4 between:0.0 and:1.0];
  v14[2] = v5;
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Animate page scrubbing" valueKeyPath:@"animatesPageScrubbing"];
  v14[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];

  v8 = [MEMORY[0x1E69C6638] sectionWithRows:v7];
  v9 = MEMORY[0x1E69C6638];
  v13 = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v11 = [v9 moduleWithTitle:@"Folders" contents:v10];

  return v11;
}

@end