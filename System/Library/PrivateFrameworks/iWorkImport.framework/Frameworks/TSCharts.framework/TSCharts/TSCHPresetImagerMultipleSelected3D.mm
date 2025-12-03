@interface TSCHPresetImagerMultipleSelected3D
- (void)p_drawUnshadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerMultipleSelected3D

- (void)p_drawUnshadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  height = size.height;
  width = size.width;
  v12 = MEMORY[0x277CBEA60];
  v13 = MEMORY[0x277CCABB0];
  presetCopy = preset;
  v19 = objc_msgSend_numberWithUnsignedInteger_(v13, v15, v16, v17, v18, 1405);
  v26 = objc_msgSend_arrayWithObjects_(v12, v20, v21, v22, v23, v19, 0);

  objc_msgSend_drawGenericImageIntoContext_size_preset_usingRepresentativeSpecificSeriesFillProperties_outShouldCache_(TSCHPresetImager, v24, width, height, v25, context, presetCopy, v26, cache);
}

@end