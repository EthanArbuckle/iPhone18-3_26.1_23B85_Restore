@interface VCWidgetWorkflow
+ (CGSize)extraSmallGlyphSize;
+ (CGSize)largeGlyphSize;
+ (CGSize)smallGlyphSize;
@end

@implementation VCWidgetWorkflow

+ (CGSize)largeGlyphSize
{
  v2 = 42.0;
  v3 = 42.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)smallGlyphSize
{
  v2 = 21.0;
  v3 = 21.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)extraSmallGlyphSize
{
  v2 = 18.0;
  v3 = 18.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end