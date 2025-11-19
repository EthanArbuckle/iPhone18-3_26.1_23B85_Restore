@interface UIInputViewContent
@end

@implementation UIInputViewContent

void __47___UIInputViewContent__sizeFittingContentViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  Width = CGRectGetWidth(v16);
  v5 = *(*(a1 + 32) + 8);
  if (Width > *(v5 + 24))
  {
    *(v5 + 24) = Width;
  }

  [v3 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  Height = CGRectGetHeight(v17);
  v15 = *(*(a1 + 40) + 8);
  if (Height > *(v15 + 24))
  {
    *(v15 + 24) = Height;
  }
}

@end