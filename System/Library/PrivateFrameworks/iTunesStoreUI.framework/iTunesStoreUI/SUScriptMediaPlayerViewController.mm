@interface SUScriptMediaPlayerViewController
- (SUScriptMediaPlayerViewController)initWithMediaPlayerItem:(id)item;
@end

@implementation SUScriptMediaPlayerViewController

- (SUScriptMediaPlayerViewController)initWithMediaPlayerItem:(id)item
{
  if (!item)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must provide a media item"];
  }

  v6.receiver = self;
  v6.super_class = SUScriptMediaPlayerViewController;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    WebThreadRunOnMainThread();
  }

  return v4;
}

void __61__SUScriptMediaPlayerViewController_initWithMediaPlayerItem___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) copyNativeMediaPlayerItem];
  v2 = [[SUMediaPlayerViewController alloc] initWithMediaPlayerItem:v3];
  [*(a1 + 40) setNativeViewController:v2];
}

@end