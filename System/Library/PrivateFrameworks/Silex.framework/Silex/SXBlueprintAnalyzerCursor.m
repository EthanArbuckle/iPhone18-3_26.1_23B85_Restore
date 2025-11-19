@interface SXBlueprintAnalyzerCursor
- (SXBlueprintAnalyzerCursor)init;
- (double)highestMaxY;
- (id)path;
- (uint64_t)addPathComponent:(uint64_t)result;
- (uint64_t)removePathComponent:(uint64_t)result;
- (uint64_t)setHighestMaxY:(uint64_t)result;
@end

@implementation SXBlueprintAnalyzerCursor

- (SXBlueprintAnalyzerCursor)init
{
  v6.receiver = self;
  v6.super_class = SXBlueprintAnalyzerCursor;
  v2 = [(SXBlueprintAnalyzerCursor *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    mutablePath = v2->_mutablePath;
    v2->_mutablePath = v3;
  }

  return v2;
}

- (uint64_t)addPathComponent:(uint64_t)result
{
  if (result)
  {
    return [*(result + 24) addObject:a2];
  }

  return result;
}

- (uint64_t)removePathComponent:(uint64_t)result
{
  if (result)
  {
    return [*(result + 24) removeObject:a2];
  }

  return result;
}

- (id)path
{
  if (a1)
  {
    a1 = [a1[3] copy];
    v1 = vars8;
  }

  return a1;
}

- (double)highestMaxY
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setHighestMaxY:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

@end