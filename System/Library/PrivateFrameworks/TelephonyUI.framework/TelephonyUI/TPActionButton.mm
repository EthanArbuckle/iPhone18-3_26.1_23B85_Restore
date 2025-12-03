@interface TPActionButton
+ (id)button;
@end

@implementation TPActionButton

+ (id)button
{
  v2 = [TPActionButton buttonWithType:1];
  telephonyUIActionButtonGlyphImage = [MEMORY[0x1E69DCAB8] telephonyUIActionButtonGlyphImage];
  [v2 setImage:telephonyUIActionButtonGlyphImage forState:0];

  LODWORD(v4) = -1.0;
  [v2 setCharge:v4];

  return v2;
}

@end