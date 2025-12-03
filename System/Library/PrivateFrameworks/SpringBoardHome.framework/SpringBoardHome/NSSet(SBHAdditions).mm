@interface NSSet(SBHAdditions)
- (id)sbh_map:()SBHAdditions;
@end

@implementation NSSet(SBHAdditions)

- (id)sbh_map:()SBHAdditions
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __31__NSSet_SBHAdditions__sbh_map___block_invoke;
  v11[3] = &unk_1E8092020;
  v6 = v5;
  v12 = v6;
  v13 = v4;
  v7 = v4;
  [self enumerateObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

@end