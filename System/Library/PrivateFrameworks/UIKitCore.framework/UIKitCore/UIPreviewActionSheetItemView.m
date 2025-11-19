@interface UIPreviewActionSheetItemView
@end

@implementation UIPreviewActionSheetItemView

void __54___UIPreviewActionSheetItemView_setSelected_animated___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) selected])
  {
    [UIColor colorWithWhite:0.74902 alpha:0.3];
  }

  else
  {
    +[UIColor clearColor];
  }
  v2 = ;
  [*(a1 + 32) setBackgroundColor:v2];
}

@end