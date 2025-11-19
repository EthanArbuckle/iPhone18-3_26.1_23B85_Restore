@interface SNAssembly
- (SNAssembly)init;
@end

@implementation SNAssembly

- (SNAssembly)init
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SNAssembly;
  v2 = [(SNAssembly *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SNTestAssembly);
    v9[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    assemblies = v2->_assemblies;
    v2->_assemblies = v4;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

@end