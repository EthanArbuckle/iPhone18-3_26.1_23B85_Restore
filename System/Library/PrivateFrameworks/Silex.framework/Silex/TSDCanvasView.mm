@interface TSDCanvasView
@end

@implementation TSDCanvasView

uint64_t __52__TSDCanvasView_SXAccessibility___speakThisElements__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 accessibilityFrame];
  v6 = v5;
  v8 = v7;
  [v4 accessibilityFrame];
  v10 = v9;
  v12 = v11;

  if (v8 < v12)
  {
    return -1;
  }

  if (v8 > v12)
  {
    return 1;
  }

  if (v6 < v10)
  {
    return -1;
  }

  return v6 > v10;
}

@end