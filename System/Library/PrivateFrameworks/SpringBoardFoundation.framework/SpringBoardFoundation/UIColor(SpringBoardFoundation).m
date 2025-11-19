@interface UIColor(SpringBoardFoundation)
+ (id)sbf_siriIntelligenceLightColors;
@end

@implementation UIColor(SpringBoardFoundation)

+ (id)sbf_siriIntelligenceLightColors
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [a1 sbf_siriIntelligenceLightBlueColor];
  v8[0] = v2;
  v3 = [a1 sbf_siriIntelligenceLightPurpleColor];
  v8[1] = v3;
  v4 = [a1 sbf_siriIntelligenceLightRedColor];
  v8[2] = v4;
  v5 = [a1 sbf_siriIntelligenceLightOrangeColor];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

@end