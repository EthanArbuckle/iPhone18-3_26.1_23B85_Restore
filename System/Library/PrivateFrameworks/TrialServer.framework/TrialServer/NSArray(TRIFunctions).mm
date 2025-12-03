@interface NSArray(TRIFunctions)
- (id)tri_contains:()TRIFunctions;
- (id)tri_intersects:()TRIFunctions;
@end

@implementation NSArray(TRIFunctions)

- (id)tri_intersects:()TRIFunctions
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:self];
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v5];

  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{objc_msgSend(v6, "intersectsSet:", v7)}];

  return v8;
}

- (id)tri_contains:()TRIFunctions
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:self];
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v5];

  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{objc_msgSend(v7, "isSubsetOfSet:", v6)}];

  return v8;
}

@end