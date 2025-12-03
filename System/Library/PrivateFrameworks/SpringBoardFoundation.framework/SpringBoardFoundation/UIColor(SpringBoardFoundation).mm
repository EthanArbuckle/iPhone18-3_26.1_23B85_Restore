@interface UIColor(SpringBoardFoundation)
+ (id)sbf_siriIntelligenceLightColors;
@end

@implementation UIColor(SpringBoardFoundation)

+ (id)sbf_siriIntelligenceLightColors
{
  v8[4] = *MEMORY[0x1E69E9840];
  sbf_siriIntelligenceLightBlueColor = [self sbf_siriIntelligenceLightBlueColor];
  v8[0] = sbf_siriIntelligenceLightBlueColor;
  sbf_siriIntelligenceLightPurpleColor = [self sbf_siriIntelligenceLightPurpleColor];
  v8[1] = sbf_siriIntelligenceLightPurpleColor;
  sbf_siriIntelligenceLightRedColor = [self sbf_siriIntelligenceLightRedColor];
  v8[2] = sbf_siriIntelligenceLightRedColor;
  sbf_siriIntelligenceLightOrangeColor = [self sbf_siriIntelligenceLightOrangeColor];
  v8[3] = sbf_siriIntelligenceLightOrangeColor;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

@end