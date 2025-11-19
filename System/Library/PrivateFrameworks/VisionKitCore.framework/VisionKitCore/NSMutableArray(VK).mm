@interface NSMutableArray(VK)
- (id)vk_pop;
- (uint64_t)vk_randomize;
- (void)vk_addNonNilObject:()VK;
- (void)vk_addObjectsFromNonNilArray:()VK;
- (void)vk_insertNonNilObject:()VK atIndex:;
- (void)vk_swapItemAtIndex:()VK withItemAtIndex:;
@end

@implementation NSMutableArray(VK)

- (id)vk_pop
{
  v2 = [a1 firstObject];
  if (v2)
  {
    [a1 removeObjectAtIndex:0];
  }

  return v2;
}

- (void)vk_addNonNilObject:()VK
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (uint64_t)vk_randomize
{
  result = [a1 count];
  if (result >= 2)
  {
    v3 = result;
    v4 = 2 * result;
    do
    {
      v5 = arc4random_uniform(v3);
      result = [a1 vk_swapItemAtIndex:v5 withItemAtIndex:arc4random_uniform(v3)];
      --v4;
    }

    while (v4);
  }

  return result;
}

- (void)vk_addObjectsFromNonNilArray:()VK
{
  if (a3)
  {
    return [a1 addObjectsFromArray:?];
  }

  return a1;
}

- (void)vk_insertNonNilObject:()VK atIndex:
{
  v8 = a3;
  if ((a4 & 0x8000000000000000) != 0)
  {
    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[NSMutableArray(VK) vk_insertNonNilObject:atIndex:]" simulateCrash:0 showAlert:0 format:@"Trying to insert object in mutableArray at negative index %ld", a4, v7];
  }

  else if ([a1 count] >= a4)
  {
    v6 = v8;
    if (!v8)
    {
      goto LABEL_9;
    }

    [a1 insertObject:v8 atIndex:a4];
  }

  else
  {
    +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "-[NSMutableArray(VK) vk_insertNonNilObject:atIndex:]", 0, 0, @"Trying to insert object in mutableArray at index (%ld) greater than count (%ld)", a4, [a1 count]);
  }

  v6 = v8;
LABEL_9:
}

- (void)vk_swapItemAtIndex:()VK withItemAtIndex:
{
  if ([a1 count] <= a3 || objc_msgSend(a1, "count") <= a4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "-[NSMutableArray(VK) vk_swapItemAtIndex:withItemAtIndex:]", 0, 0, @"Trying to swap item at index %@, with item at index %@, but array size is %ld", v8, v7, [a1 count]);
  }

  else
  {
    if (a3 == a4)
    {
      return;
    }

    v8 = [a1 objectAtIndexedSubscript:a3];
    v7 = [a1 objectAtIndexedSubscript:a4];
    [a1 replaceObjectAtIndex:a3 withObject:v7];
    [a1 replaceObjectAtIndex:a4 withObject:v8];
  }
}

@end