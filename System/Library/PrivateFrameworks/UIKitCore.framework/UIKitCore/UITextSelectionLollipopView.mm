@interface UITextSelectionLollipopView
@end

@implementation UITextSelectionLollipopView

void __44___UITextSelectionLollipopView__visualStyle__block_invoke()
{
  v0 = +[_UITextSelectionLollipopVisualStyle inferredVisualStyle];
  v1 = qword_1ED49A568;
  qword_1ED49A568 = v0;
}

uint64_t __47___UITextSelectionLollipopView__layoutStemView__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) isVertical];
  v4 = 4;
  if (v3)
  {
    v4 = 8;
  }

  v5 = 10;
  if (v3)
  {
    v5 = 3;
  }

  v6 = 1;
  if (v3)
  {
    v6 = 2;
  }

  v7 = 5;
  if (v3)
  {
    v7 = 12;
  }

  v8 = v4 == a2;
  v9 = 15;
  if (v8)
  {
    v9 = v5;
  }

  if (v6 == a2)
  {
    return v7;
  }

  else
  {
    return v9;
  }
}

@end