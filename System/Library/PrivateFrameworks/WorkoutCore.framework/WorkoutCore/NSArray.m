@interface NSArray
@end

@implementation NSArray

void __48__NSArray_NLSessionAdditions__nl_mapUsingBlock___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = *(*(a1[5] + 8) + 40);
  v4 = (*(a1[4] + 16))();
  [v3 addObject:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

void __58__NSArray_NLSessionAdditions__nl_filteredArrayUsingBlock___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ((*(a1[4] + 16))() == 1)
  {
    [*(*(a1[5] + 8) + 40) addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

@end