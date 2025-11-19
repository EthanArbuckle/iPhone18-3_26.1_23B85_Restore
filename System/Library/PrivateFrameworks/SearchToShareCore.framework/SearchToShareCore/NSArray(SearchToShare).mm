@interface NSArray(SearchToShare)
- (id)sts_map:()SearchToShare;
@end

@implementation NSArray(SearchToShare)

- (id)sts_map:()SearchToShare
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__NSArray_SearchToShare__sts_map___block_invoke;
  v11[3] = &unk_279B8B670;
  v6 = v5;
  v12 = v6;
  v13 = v4;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

@end