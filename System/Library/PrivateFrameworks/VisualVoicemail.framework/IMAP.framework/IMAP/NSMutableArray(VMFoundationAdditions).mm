@interface NSMutableArray(VMFoundationAdditions)
- (BOOL)vf_addObjectIfAbsent:()VMFoundationAdditions;
- (uint64_t)vf_insertObject:()VMFoundationAdditions usingComparator:allowDuplicates:;
- (uint64_t)vf_insertObject:()VMFoundationAdditions usingSortFunction:context:allowDuplicates:;
- (uint64_t)vf_removeObject:()VMFoundationAdditions usingComparator:;
@end

@implementation NSMutableArray(VMFoundationAdditions)

- (BOOL)vf_addObjectIfAbsent:()VMFoundationAdditions
{
  v4 = a3;
  v5 = [self indexOfObjectIdenticalTo:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [self addObject:v4];
  }

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

- (uint64_t)vf_insertObject:()VMFoundationAdditions usingComparator:allowDuplicates:
{
  v8 = a3;
  v9 = a4;
  v10 = [self vf_indexWhereObjectWouldBeInserted:v8 usingComparator:v9];
  v11 = v10;
  if ((a5 & 1) != 0 || !v10 || v10 > [self count] || (objc_msgSend(self, "objectAtIndex:", v11 - 1), v12 = objc_claimAutoreleasedReturnValue(), v13 = v9[2](v9, v12, v8), v12, v13))
  {
    [self insertObject:v8 atIndex:v11];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (uint64_t)vf_insertObject:()VMFoundationAdditions usingSortFunction:context:allowDuplicates:
{
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __99__NSMutableArray_VMFoundationAdditions__vf_insertObject_usingSortFunction_context_allowDuplicates___block_invoke;
  v15 = &__block_descriptor_48_e11_q24__0_8_16l;
  v16 = a4;
  v17 = a5;
  v8 = a3;
  v9 = MEMORY[0x2743C3100](&v12);
  v10 = [self vf_insertObject:v8 usingComparator:v9 allowDuplicates:{a6, v12, v13, v14, v15, v16, v17}];

  return v10;
}

- (uint64_t)vf_removeObject:()VMFoundationAdditions usingComparator:
{
  v2 = [self vf_indexOfObject:? usingComparator:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self removeObjectAtIndex:v2];
  }

  return v2;
}

@end