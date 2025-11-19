@interface CABasicAnimation(Normalized)
+ (id)normalizedAnimationWithKeyPath:()Normalized fromValue:toValue:;
@end

@implementation CABasicAnimation(Normalized)

+ (id)normalizedAnimationWithKeyPath:()Normalized fromValue:toValue:
{
  v7 = MEMORY[0x1E6979318];
  v8 = a5;
  v9 = a4;
  v10 = [v7 animationWithKeyPath:a3];
  [v10 setBeginTime:1.0e-100];
  [v10 setDuration:1.0];
  [v10 setFillMode:*MEMORY[0x1E69797E0]];
  [v10 setRemovedOnCompletion:0];
  [v10 setFromValue:v9];

  [v10 setToValue:v8];

  return v10;
}

@end