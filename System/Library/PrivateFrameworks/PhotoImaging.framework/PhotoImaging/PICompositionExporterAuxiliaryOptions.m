@interface PICompositionExporterAuxiliaryOptions
- (PICompositionExporterAuxiliaryOptions)init;
@end

@implementation PICompositionExporterAuxiliaryOptions

- (PICompositionExporterAuxiliaryOptions)init
{
  v6.receiver = self;
  v6.super_class = PICompositionExporterAuxiliaryOptions;
  v2 = [(PICompositionExporterOptions *)&v6 init];
  v3 = [MEMORY[0x1E69B3B08] defaultAuxiliaryImageTypes];
  auxiliaryImageTypes = v2->_auxiliaryImageTypes;
  v2->_auxiliaryImageTypes = v3;

  return v2;
}

@end