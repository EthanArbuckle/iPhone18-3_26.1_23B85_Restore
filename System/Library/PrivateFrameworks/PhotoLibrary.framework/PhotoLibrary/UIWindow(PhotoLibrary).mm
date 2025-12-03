@interface UIWindow(PhotoLibrary)
- (uint64_t)pl_presentViewController:()PhotoLibrary animated:;
@end

@implementation UIWindow(PhotoLibrary)

- (uint64_t)pl_presentViewController:()PhotoLibrary animated:
{
  for (i = [self rootViewController]; ; i = objc_msgSend(v7, "presentedViewController"))
  {
    v7 = i;
    if (![i presentedViewController])
    {
      break;
    }
  }

  return [v7 presentViewController:a3 animated:a4 completion:0];
}

@end