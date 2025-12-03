@interface QLIconModeRenderer
+ (id)renderIconWithImages:(id)images size:(CGSize)size scale:(double)scale flavor:(int)flavor variant:(int64_t)variant;
- (QLIconModeRenderer)init;
@end

@implementation QLIconModeRenderer

+ (id)renderIconWithImages:(id)images size:(CGSize)size scale:(double)scale flavor:(int)flavor variant:(int64_t)variant
{
  height = size.height;
  width = size.width;
  sub_261618454(0, &qword_281368628, 0x277D43EA8);
  v11 = sub_26162B95C();
  v12 = _sSo18QLIconModeRendererC27QuickLookThumbnailingDaemonE10renderIcon6images4size5scale6flavor7variantSo011QLTRenderedI0CSgSaySo15QLPlatformImageCG_So6CGSizeV12CoreGraphics7CGFloatVs5Int32VSo021QLThumbnailGenerationI7VariantVtFZ_0(v11, flavor, variant, width, height);

  return v12;
}

- (QLIconModeRenderer)init
{
  v3.receiver = self;
  v3.super_class = QLIconModeRenderer;
  return [(QLIconModeRenderer *)&v3 init];
}

@end