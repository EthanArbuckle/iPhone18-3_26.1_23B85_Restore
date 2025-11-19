@interface NSKeyedUnarchiver
@end

@implementation NSKeyedUnarchiver

void __103__NSKeyedUnarchiver_PosterFoundation__pf_unarchivedObjectOfClasses_fromData_classReplacementMap_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __103__NSKeyedUnarchiver_PosterFoundation__pf_unarchivedObjectOfClasses_fromData_classReplacementMap_error___block_invoke_2;
  v6[3] = &unk_1E8189DD0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

@end