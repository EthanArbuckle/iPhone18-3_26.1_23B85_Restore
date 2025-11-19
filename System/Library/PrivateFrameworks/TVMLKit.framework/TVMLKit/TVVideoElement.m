@interface TVVideoElement
- (BOOL)isEqual:(id)a3;
- (NSArray)assets;
@end

@implementation TVVideoElement

- (NSArray)assets
{
  v2 = [(TVViewElement *)self childViewElements];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_4];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [v4 copy];

  return v5;
}

uint64_t __24__TVVideoElement_assets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TVVideoElement *)self assets];
    v6 = [v4 assets];
    v7 = [v5 isEqualToArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end