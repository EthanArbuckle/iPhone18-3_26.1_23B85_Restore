@interface UIColor(Bridge)
+ (id)ts_activityIndicatorColor;
+ (id)ts_dynamicColor:()Bridge withDarkStyleVariant:;
@end

@implementation UIColor(Bridge)

+ (id)ts_activityIndicatorColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.45];
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  v3 = [v0 ts_dynamicColor:v1 withDarkStyleVariant:v2];

  return v3;
}

+ (id)ts_dynamicColor:()Bridge withDarkStyleVariant:
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DD1B8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 traitCollectionWithUserInterfaceStyle:0];
  v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v13[0] = v8;
  v13[1] = v9;
  v14[0] = v7;
  v14[1] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [MEMORY[0x1E69DC888] _dynamicColorWithColorsByTraitCollection:v10];

  return v11;
}

@end