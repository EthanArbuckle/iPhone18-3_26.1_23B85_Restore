@interface TSCHPresetImagerMultiDataScatter
- (void)p_drawShadowedContentIntoContext:(CGContext *)a3 size:(CGSize)a4 contentsScale:(double)a5 preset:(id)a6 target:(int)a7 shouldCache:(BOOL *)a8;
@end

@implementation TSCHPresetImagerMultiDataScatter

- (void)p_drawShadowedContentIntoContext:(CGContext *)a3 size:(CGSize)a4 contentsScale:(double)a5 preset:(id)a6 target:(int)a7 shouldCache:(BOOL *)a8
{
  v9 = *&a7;
  height = a4.height;
  width = a4.width;
  v15 = a6;
  CGContextSaveGState(a3);
  objc_msgSend_p_drawAndOffsetMultiDataSliderIntoContext_size_contentsScale_(self, v16, width, height, a5, a3);
  v17.receiver = self;
  v17.super_class = TSCHPresetImagerMultiDataScatter;
  [TSCHPresetImagerScatter p_drawShadowedContentIntoContext:sel_p_drawShadowedContentIntoContext_size_contentsScale_preset_target_shouldCache_ size:a3 contentsScale:v15 preset:v9 target:a8 shouldCache:?];

  CGContextRestoreGState(a3);
}

@end