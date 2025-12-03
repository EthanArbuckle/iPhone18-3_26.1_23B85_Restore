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
  if ([self count] >= 2)
  {
    [(NSArray(SBSAAdditions) *)a2 sbsa_onlyObjectOrNilAssert];
  }

  return [self lastObject];
}

- (id)sbsa_onlyObjectOrNil
{
  if ([self count] == 1)
  {
    lastObject = [self lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)sbsa_arrayByAddingOrReplacingObject:()SBSAAdditions passingTest:
{
  v6 = a3;
  selfCopy = self;
  v8 = selfCopy;
  if (v6)
  {
    v9 = [selfCopy indexOfObjectPassingTest:a4];
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
    v11 = selfCopy;
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
  v6 = [self sbsa_arrayByAddingOrReplacingObject:v5 passingTest:v8];

  return v6;
}

- (void)sbsa_onlyObjectOrNilAssert
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSystemApertureUtilities.m" lineNumber:200 description:{@"Collection contains more than a single object: %@", a2}];
}

@end