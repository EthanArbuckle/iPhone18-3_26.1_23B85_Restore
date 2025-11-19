@interface _UIDynamicValueAnimation(PhotosUI)
+ (id)pu_dynamicValueAnimationWithInitialValue:()PhotosUI initialVelocity:targetValue:stiffness:dampingFactor:epsilon:;
@end

@implementation _UIDynamicValueAnimation(PhotosUI)

+ (id)pu_dynamicValueAnimationWithInitialValue:()PhotosUI initialVelocity:targetValue:stiffness:dampingFactor:epsilon:
{
  v11 = sqrt(a4);
  UIAnimationDragCoefficient();
  v13 = a4 / (v12 * v12);
  v14 = v12;
  v15 = [objc_alloc(MEMORY[0x1E69DD4A0]) initWithValue:a1 velocity:a2 / v12 unitSize:a6];
  v16 = [MEMORY[0x1E69DD490] activeValue:0 ofType:a3];
  [v15 addActiveValue:v16];
  [v16 _setBoundaryPull:v13 * 0.001];
  [v15 _setDecelerationFactor:v11 * -2.0 * a5 / v14 * 0.001 + 1.0];

  return v15;
}

@end