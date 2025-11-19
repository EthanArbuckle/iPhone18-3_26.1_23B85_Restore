@interface PASDomainSelection
@end

@implementation PASDomainSelection

void __34___PASDomainSelection_description__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = description__pasExprOnceResult;
  description__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
  v4 = *MEMORY[0x1E69E9840];
}

@end