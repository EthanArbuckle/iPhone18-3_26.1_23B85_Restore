@interface SXViewControllerPresentingManager
- (UIViewController)presentingViewController;
- (void)popOrDismissViewControllerAnimated:(BOOL)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 sourceView:(id)a5 sourceRect:(CGRect)a6;
@end

@implementation SXViewControllerPresentingManager

- (void)presentViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SXViewControllerPresentingManager *)self presentingViewController];
  [v7 presentViewController:v6 animated:v4 completion:0];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 sourceView:(id)a5 sourceRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a4;
  v35 = a3;
  v13 = a5;
  v14 = [v35 popoverPresentationController];
  v15 = v14;
  if (v13 && v14)
  {
    [v35 setModalPresentationStyle:7];
    v16 = [(SXViewControllerPresentingManager *)self presentingViewController];
    v17 = [v16 view];
    [v17 convertRect:v13 fromView:{x, y, width, height}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [(SXViewControllerPresentingManager *)self presentingViewController];
    v27 = [v26 view];
    [v27 bounds];
    v39.origin.x = v19;
    v39.origin.y = v21;
    v39.size.width = v23;
    v39.size.height = v25;
    v38 = CGRectIntersection(v37, v39);
    v28 = v38.origin.x;
    v29 = v38.origin.y;
    v30 = v38.size.width;
    v31 = v38.size.height;

    [v15 setSourceRect:{v28, v29, v30, v31}];
    v32 = [(SXViewControllerPresentingManager *)self presentingViewController];
    v33 = [v32 view];
    [v15 setSourceView:v33];
  }

  v34 = [(SXViewControllerPresentingManager *)self presentingViewController];
  [v34 presentViewController:v35 animated:v11 completion:0];
}

- (void)popOrDismissViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v10 = [(SXViewControllerPresentingManager *)self presentingViewController];
  v4 = [v10 presentingViewController];

  if (v4)
  {
    [v10 dismissViewControllerAnimated:v3 completion:0];
  }

  else
  {
    v5 = [v10 navigationController];

    if (v5)
    {
      v6 = [v10 navigationController];
      if (v6)
      {
        v7 = v6;
        do
        {
          v8 = [v7 popViewControllerAnimated:v3];

          if (v8)
          {
            break;
          }

          v9 = [v7 navigationController];

          v7 = v9;
        }

        while (v9);
      }
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end