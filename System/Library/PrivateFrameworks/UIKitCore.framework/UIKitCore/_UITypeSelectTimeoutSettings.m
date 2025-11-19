@interface _UITypeSelectTimeoutSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UITypeSelectTimeoutSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = _UITypeSelectTimeoutSettings;
  [(PTSettings *)&v4 setDefaultValues];
  LODWORD(v3) = 1.5;
  [(_UITypeSelectTimeoutSettings *)self setTimeoutValue:v3];
}

+ (id)settingsControllerModule
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A0] rowWithTitle:@"UISliderTimeoutValue" valueKeyPath:@"timeoutValue"];
  v4 = [v3 minValue:0.1 maxValue:5.0];
  v10 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v6 = [v2 sectionWithRows:v5 title:@"Slide to set timeout time"];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v2 moduleWithTitle:0 contents:v7];

  return v8;
}

@end