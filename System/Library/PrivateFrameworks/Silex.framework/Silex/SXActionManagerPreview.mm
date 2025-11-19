@interface SXActionManagerPreview
- (id)initWithAction:(void *)a3 viewController:(void *)a4 previewActivity:;
- (id)viewController;
@end

@implementation SXActionManagerPreview

- (id)initWithAction:(void *)a3 viewController:(void *)a4 previewActivity:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = SXActionManagerPreview;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeWeak(a1 + 3, v9);
      objc_storeStrong(a1 + 2, a4);
    }
  }

  return a1;
}

- (id)viewController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    v1 = vars8;
  }

  return WeakRetained;
}

@end