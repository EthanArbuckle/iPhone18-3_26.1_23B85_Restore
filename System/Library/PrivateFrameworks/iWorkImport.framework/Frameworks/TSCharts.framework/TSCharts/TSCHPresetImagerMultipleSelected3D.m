@interface TSCHPresetImagerMultipleSelected3D
- (void)p_drawUnshadowedContentIntoContext:(CGContext *)a3 size:(CGSize)a4 contentsScale:(double)a5 preset:(id)a6 target:(int)a7 shouldCache:(BOOL *)a8;
@end

@implementation TSCHPresetImagerMultipleSelected3D

- (void)p_drawUnshadowedContentIntoContext:(CGContext *)a3 size:(CGSize)a4 contentsScale:(double)a5 preset:(id)a6 target:(int)a7 shouldCache:(BOOL *)a8
{
  height = a4.height;
  width = a4.width;
  v12 = MEMORY[0x277CBEA60];
  v13 = MEMORY[0x277CCABB0];
  v14 = a6;
  v19 = objc_msgSend_numberWithUnsignedInteger_(v13, v15, v16, v17, v18, 1405);
  v26 = objc_msgSend_arrayWithObjects_(v12, v20, v21, v22, v23, v19, 0);

  objc_msgSend_drawGenericImageIntoContext_size_preset_usingRepresentativeSpecificSeriesFillProperties_outShouldCache_(TSCHPresetImager, v24, width, height, v25, a3, v14, v26, a8);
}

@end