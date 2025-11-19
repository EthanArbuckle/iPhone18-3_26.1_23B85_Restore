@interface UIView(SBUtilities)
- (uint64_t)sb_setBoundsAndPositionFromFrame:()SBUtilities;
- (void)sb_setPresentationBoundsAndPositionFromFrame:()SBUtilities;
@end

@implementation UIView(SBUtilities)

- (uint64_t)sb_setBoundsAndPositionFromFrame:()SBUtilities
{
  [a1 bounds];
  [a1 setBounds:?];
  v10 = [a1 layer];
  [v10 anchorPoint];
  v12 = v11;
  v14 = v13;

  return [a1 setCenter:{a2 + v12 * a4, a3 + v14 * a5}];
}

- (void)sb_setPresentationBoundsAndPositionFromFrame:()SBUtilities
{
  [a1 bounds];
  v11 = v10;
  v13 = v12;
  v14 = [a1 layer];
  [v14 anchorPoint];
  v16 = v15;
  v18 = v17;

  v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{a2 + v16 * a4, a3 + v18 * a5}];
  [a1 _setPresentationValue:v19 forKey:@"position"];

  v20 = [MEMORY[0x1E696B098] valueWithCGRect:{v11, v13, a4, a5}];
  [a1 _setPresentationValue:v20 forKey:@"bounds"];
}

@end