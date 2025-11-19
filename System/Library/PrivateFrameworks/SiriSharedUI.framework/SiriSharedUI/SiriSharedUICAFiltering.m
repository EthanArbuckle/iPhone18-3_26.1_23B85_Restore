@interface SiriSharedUICAFiltering
+ (void)applyGaussianBlurFilterToView:(id)a3;
@end

@implementation SiriSharedUICAFiltering

+ (void)applyGaussianBlurFilterToView:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD9EA0];
  v4 = *MEMORY[0x277CDA328];
  v5 = a3;
  v6 = [v3 filterWithType:v4];
  [v6 setValue:&unk_282F90FA8 forKeyPath:*MEMORY[0x277CDA4F0]];
  v7 = [v5 layer];

  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 setFilters:v8];
}

@end