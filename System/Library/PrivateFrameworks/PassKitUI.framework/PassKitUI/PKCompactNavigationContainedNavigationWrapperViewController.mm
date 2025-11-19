@interface PKCompactNavigationContainedNavigationWrapperViewController
- (PKCompactNavigationContainedNavigationWrapperViewController)initWithWrappedViewController:(id)a3 parentViewController:(id)a4;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
@end

@implementation PKCompactNavigationContainedNavigationWrapperViewController

- (PKCompactNavigationContainedNavigationWrapperViewController)initWithWrappedViewController:(id)a3 parentViewController:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = PKCompactNavigationContainedNavigationWrapperViewController;
  v7 = [(PKWrapperViewController *)&v10 initWithWrappedViewController:a3 type:1];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_parentViewController, v6);
  }

  return v8;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = a3;
  v7 = [(PKWrapperViewController *)self wrappedViewController];
  v8 = v7;
  if (v7 != v6)
  {

LABEL_3:
    v25.receiver = self;
    v25.super_class = PKCompactNavigationContainedNavigationWrapperViewController;
    [(PKCompactNavigationContainedNavigationWrapperViewController *)&v25 _edgeInsetsForChildViewController:v6 insetsAreAbsolute:a4];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    WeakRetained = 0;
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  if (!WeakRetained)
  {
    goto LABEL_3;
  }

  if (a4)
  {
    *a4 = 1;
  }

  v10 = *MEMORY[0x1E69DDCE0];
  v12 = *(MEMORY[0x1E69DDCE0] + 8);
  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  v16 = *(MEMORY[0x1E69DDCE0] + 24);
  if (self->_useParentSafeAreaInsets)
  {
    v22 = [WeakRetained viewIfLoaded];
    v23 = v22;
    if (v22)
    {
      [v22 safeAreaInsets];
      v14 = fmax(v24, v14);
    }
  }

LABEL_4:

  v18 = v10;
  v19 = v12;
  v20 = v14;
  v21 = v16;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

@end