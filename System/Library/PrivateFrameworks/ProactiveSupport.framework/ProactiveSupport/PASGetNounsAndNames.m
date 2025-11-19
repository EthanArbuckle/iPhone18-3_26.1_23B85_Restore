@interface PASGetNounsAndNames
@end

@implementation PASGetNounsAndNames

void ___PASGetNounsAndNames_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) substringWithRange:{a3, a4}];
    [v8 addObject:v9];

    objc_autoreleasePoolPop(v7);
  }
}

void ___PASGetNounsAndNames_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Noun", @"Number", @"PlaceName", @"PersonalName", @"OrganizationalName", 0}];
  objc_autoreleasePoolPop(v1);
  v3 = _PASGetNounsAndNames__pasExprOnceResult;
  _PASGetNounsAndNames__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

@end