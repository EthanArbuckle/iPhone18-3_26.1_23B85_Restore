@interface TPActionButton
+ (id)button;
@end

@implementation TPActionButton

+ (id)button
{
  v2 = [TPActionButton buttonWithType:1];
  v3 = [MEMORY[0x1E69DCAB8] telephonyUIActionButtonGlyphImage];
  [v2 setImage:v3 forState:0];

  LODWORD(v4) = -1.0;
  [v2 setCharge:v4];

  return v2;
}

@end