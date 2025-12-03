@interface _UISpringAnimationPrototypeSettings
+ (id)settingsControllerModule;
- (id)springAnimationBehavior;
- (void)setDefaultValues;
@end

@implementation _UISpringAnimationPrototypeSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UISpringAnimationPrototypeSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UISpringAnimationPrototypeSettings *)self setDampingRatio:1.0];
  [(_UISpringAnimationPrototypeSettings *)self setResponse:0.3];
}

- (id)springAnimationBehavior
{
  [(_UISpringAnimationPrototypeSettings *)self dampingRatio];
  v4 = v3;
  [(_UISpringAnimationPrototypeSettings *)self response];

  return [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v4 response:v5];
}

+ (id)settingsControllerModule
{
  v22[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Damping Ratio" valueKeyPath:@"dampingRatio"];
  v4 = [v3 between:0.0 and:1.0];
  v5 = [v4 precision:3];
  v22[0] = v5;
  v6 = [MEMORY[0x1E69C6618] rowWithTitle:@"Response" valueKeyPath:@"response"];
  v7 = [v6 between:0.0 and:10.0];
  v8 = [v7 precision:3];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v10 = [v2 sectionWithRows:v9];

  v11 = MEMORY[0x1E69C6638];
  v21[0] = v10;
  v12 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v14 = [v12 rowWithTitle:@"Restore Defaults" action:action];
  v20 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v16 = [v11 sectionWithRows:v15];
  v21[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v18 = [v11 moduleWithTitle:0 contents:v17];

  return v18;
}

@end