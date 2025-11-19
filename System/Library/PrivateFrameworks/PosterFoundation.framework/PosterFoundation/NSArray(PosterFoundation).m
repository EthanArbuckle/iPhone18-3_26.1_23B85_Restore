@interface NSArray(PosterFoundation)
- (void)pf_eachRespondingToSelector:()PosterFoundation performBlock:;
@end

@implementation NSArray(PosterFoundation)

- (void)pf_eachRespondingToSelector:()PosterFoundation performBlock:
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__NSArray_PosterFoundation__pf_eachRespondingToSelector_performBlock___block_invoke;
  v8[3] = &unk_1E8189F60;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [a1 enumerateObjectsUsingBlock:v8];
}

@end