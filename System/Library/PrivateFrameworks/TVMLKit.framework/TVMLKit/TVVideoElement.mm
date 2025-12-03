@interface TVVideoElement
- (BOOL)isEqual:(id)equal;
- (NSArray)assets;
@end

@implementation TVVideoElement

- (NSArray)assets
{
  childViewElements = [(TVViewElement *)self childViewElements];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_4];
  v4 = [childViewElements filteredArrayUsingPredicate:v3];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assets = [(TVVideoElement *)self assets];
    assets2 = [equalCopy assets];
    v7 = [assets isEqualToArray:assets2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end