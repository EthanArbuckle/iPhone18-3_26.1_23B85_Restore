@interface PUIndexPathSet
- (BOOL)containsIndexPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)count;
- (void)enumerateIndexPathsUsingBlock:(id)block;
@end

@implementation PUIndexPathSet

- (void)enumerateIndexPathsUsingBlock:(id)block
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUIndexPathSet.m" lineNumber:37 description:@"not implemented yet"];
}

- (int64_t)count
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUIndexPathSet.m" lineNumber:32 description:@"not implemented yet"];

  return 0;
}

- (BOOL)containsIndexPath:(id)path
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUIndexPathSet.m" lineNumber:27 description:@"not implemented yet"];

  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUIndexPathSet.m" lineNumber:22 description:@"not implemented yet"];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUIndexPathSet.m" lineNumber:17 description:@"not implemented yet"];

  return 0;
}

@end