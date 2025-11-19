@interface _UITextSelectionLollipopVisualStyle
+ (id)inferredVisualStyle;
- (CGSize)remoteEffectSize;
- (CGSize)shadowOffset;
@end

@implementation _UITextSelectionLollipopVisualStyle

+ (id)inferredVisualStyle
{
  v2 = objc_alloc_init(_UITextSelectionLollipopVisualStyle);

  return v2;
}

- (CGSize)shadowOffset
{
  v2 = 0.0;
  v3 = 2.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)remoteEffectSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end