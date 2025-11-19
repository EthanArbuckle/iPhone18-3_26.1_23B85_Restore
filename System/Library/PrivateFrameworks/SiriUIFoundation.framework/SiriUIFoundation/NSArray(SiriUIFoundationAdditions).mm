@interface NSArray(SiriUIFoundationAdditions)
- (id)sruif_arrayByMappingWithBlock:()SiriUIFoundationAdditions;
@end

@implementation NSArray(SiriUIFoundationAdditions)

- (id)sruif_arrayByMappingWithBlock:()SiriUIFoundationAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__NSArray_SiriUIFoundationAdditions__sruif_arrayByMappingWithBlock___block_invoke;
    v10[3] = &unk_279C62248;
    v12 = v4;
    v6 = v5;
    v11 = v6;
    [a1 enumerateObjectsUsingBlock:v10];
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

@end