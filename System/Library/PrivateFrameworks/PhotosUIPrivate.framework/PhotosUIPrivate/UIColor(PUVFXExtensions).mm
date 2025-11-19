@interface UIColor(PUVFXExtensions)
+ (id)colorFromDictionary:()PUVFXExtensions;
@end

@implementation UIColor(PUVFXExtensions)

+ (id)colorFromDictionary:()PUVFXExtensions
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"red"];
  [v5 floatValue];
  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:@"green"];
  [v8 floatValue];
  v10 = v9;
  v11 = [v4 objectForKeyedSubscript:@"blue"];
  [v11 floatValue];
  v13 = v12;
  v14 = [v4 objectForKeyedSubscript:@"alpha"];

  [v14 floatValue];
  v16 = [v3 colorWithRed:v7 green:v10 blue:v13 alpha:v15];

  return v16;
}

@end