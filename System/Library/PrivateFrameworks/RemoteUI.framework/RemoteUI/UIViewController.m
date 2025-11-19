@interface UIViewController
@end

@implementation UIViewController

uint64_t __49__UIViewController_RemoteUI__containsDescendant___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 1;
  }

  else
  {
    return [a2 containsDescendant:?];
  }
}

@end