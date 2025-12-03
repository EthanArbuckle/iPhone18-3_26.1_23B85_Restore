@interface TSCHPresetImagerMultipleSelected
- (void)p_drawUnshadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerMultipleSelected

- (void)p_drawUnshadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  height = size.height;
  width = size.width;
  v12 = MEMORY[0x277CBEA60];
  v13 = MEMORY[0x277CCABB0];
  presetCopy = preset;
  v19 = objc_msgSend_numberWithUnsignedInteger_(v13, v15, v16, v17, v18, 1405);
  v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v20, v21, v22, v23, 1410);
  v31 = objc_msgSend_arrayWithObjects_(v12, v25, v26, v27, v28, v19, v24, 0);

  objc_msgSend_drawGenericImageIntoContext_size_preset_usingRepresentativeSpecificSeriesFillProperties_outShouldCache_(TSCHPresetImager, v29, width, height, v30, context, presetCopy, v31, cache);
}

@end