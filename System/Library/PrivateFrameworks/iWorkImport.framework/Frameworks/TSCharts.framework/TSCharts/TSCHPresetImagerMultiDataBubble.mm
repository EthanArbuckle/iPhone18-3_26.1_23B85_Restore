@interface TSCHPresetImagerMultiDataBubble
- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerMultiDataBubble

- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  v9 = *&target;
  height = size.height;
  width = size.width;
  presetCopy = preset;
  CGContextSaveGState(context);
  objc_msgSend_p_drawAndOffsetMultiDataSliderIntoContext_size_contentsScale_(self, v16, width, height, scale, context);
  v17.receiver = self;
  v17.super_class = TSCHPresetImagerMultiDataBubble;
  [TSCHPresetImagerBubble p_drawShadowedContentIntoContext:sel_p_drawShadowedContentIntoContext_size_contentsScale_preset_target_shouldCache_ size:context contentsScale:presetCopy preset:v9 target:cache shouldCache:?];

  CGContextRestoreGState(context);
}

@end