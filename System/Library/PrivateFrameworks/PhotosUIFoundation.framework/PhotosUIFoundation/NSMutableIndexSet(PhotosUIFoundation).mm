@interface NSMutableIndexSet(PhotosUIFoundation)
- (uint64_t)px_adjustIndexesForDeletions:()PhotosUIFoundation;
- (uint64_t)px_adjustIndexesForInsertions:()PhotosUIFoundation;
@end

@implementation NSMutableIndexSet(PhotosUIFoundation)

- (uint64_t)px_adjustIndexesForInsertions:()PhotosUIFoundation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__NSMutableIndexSet_PhotosUIFoundation__px_adjustIndexesForInsertions___block_invoke;
  v4[3] = &unk_1E7BB7918;
  v4[4] = a1;
  return [a3 enumerateRangesUsingBlock:v4];
}

- (uint64_t)px_adjustIndexesForDeletions:()PhotosUIFoundation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__NSMutableIndexSet_PhotosUIFoundation__px_adjustIndexesForDeletions___block_invoke;
  v4[3] = &unk_1E7BB7918;
  v4[4] = a1;
  return [a3 enumerateRangesWithOptions:2 usingBlock:v4];
}

@end