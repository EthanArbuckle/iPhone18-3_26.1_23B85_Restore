@interface ContextMenuPreviewItemController
- (_TtC8VideosUI32ContextMenuPreviewItemController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ContextMenuPreviewItemController

- (_TtC8VideosUI32ContextMenuPreviewItemController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1E40D774C(v5, v7, bundle);
}

@end