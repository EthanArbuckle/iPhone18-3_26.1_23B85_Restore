@interface SiriSharedUICAFiltering
+ (void)applyGaussianBlurFilterToView:(id)view;
@end

@implementation SiriSharedUICAFiltering

+ (void)applyGaussianBlurFilterToView:(id)view
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD9EA0];
  v4 = *MEMORY[0x277CDA328];
  viewCopy = view;
  v6 = [v3 filterWithType:v4];
  [v6 setValue:&unk_282F90FA8 forKeyPath:*MEMORY[0x277CDA4F0]];
  layer = [viewCopy layer];

  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [layer setFilters:v8];
}

@end