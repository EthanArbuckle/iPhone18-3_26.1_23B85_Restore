@interface NSArray(SBSAAdditions)
- (id)sbsa_arrayByAddingOrReplacingObject:()SBSAAdditions passingTest:;
- (id)sbsa_arrayByAddingOrReplacingObjectMatchingClass:()SBSAAdditions;
- (id)sbsa_onlyObjectOrNil;
- (uint64_t)sbsa_onlyObjectOrNilAssert;
- (void)sbsa_onlyObjectOrNilAssert;
@end

@implementation NSArray(SBSAAdditions)

- (uint64_t)sbsa_onlyObjectOrNilAssert
{
  if ([a1 count] >= 2)
  {
    [(NSArray(SBSAAdditions) *)a2 sbsa_onlyObjectOrNilAssert];
  }

  return [a1 lastObject];
}

- (id)sbsa_onlyObjectOrNil
{
  if ([a1 count] == 1)
  {
    v2 = [a1 lastObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)sbsa_arrayByAddingOrReplacingObject:()SBSAAdditions passingTest:
{
  v6 = a3;
  v7 = a1;
  v8 = v7;
  if (v6)
  {
    v9 = [v7 indexOfObjectPassingTest:a4];
    v10 = [v8 mutableCopy];
    v11 = v10;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 addObject:v6];
    }

    else
    {
      [v10 replaceObjectAtIndex:v9 withObject:v6];
    }
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (id)sbsa_arrayByAddingOrReplacingObjectMatchingClass:()SBSAAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__NSArray_SBSAAdditions__sbsa_arrayByAddingOrReplacingObjectMatchingClass___block_invoke;
  v8[3] = &unk_2783AC6B0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 sbsa_arrayByAddingOrReplacingObject:v5 passingTest:v8];

  return v6;
}

- (void)sbsa_onlyObjectOrNilAssert
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureUtilities.m" lineNumber:200 description:{@"Collection contains more than a single object: %@", a2}];
}

@end