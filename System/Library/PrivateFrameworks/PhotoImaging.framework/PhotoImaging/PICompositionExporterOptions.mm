@interface PICompositionExporterOptions
- (PICompositionExporterOptions)init;
@end

@implementation PICompositionExporterOptions

- (PICompositionExporterOptions)init
{
  v10.receiver = self;
  v10.super_class = PICompositionExporterOptions;
  v2 = [(PICompositionExporterOptions *)&v10 init];
  v3 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:3];
  priority = v2->_priority;
  v2->_priority = v3;

  v5 = [MEMORY[0x1E69B3A10] displayP3ColorSpace];
  colorSpace = v2->_colorSpace;
  v2->_colorSpace = v5;

  v7 = [MEMORY[0x1E69B3A88] oneToOneScalePolicy];
  scalePolicy = v2->_scalePolicy;
  v2->_scalePolicy = v7;

  return v2;
}

@end