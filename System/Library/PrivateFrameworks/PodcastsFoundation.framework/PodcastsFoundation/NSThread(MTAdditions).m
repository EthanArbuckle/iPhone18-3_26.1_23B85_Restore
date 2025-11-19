@interface NSThread(MTAdditions)
+ (void)mainThread:()MTAdditions;
@end

@implementation NSThread(MTAdditions)

+ (void)mainThread:()MTAdditions
{
  v3 = MEMORY[0x1E696AF00];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end