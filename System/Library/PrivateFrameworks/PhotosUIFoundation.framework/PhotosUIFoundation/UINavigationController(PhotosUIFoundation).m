@interface UINavigationController(PhotosUIFoundation)
- (id)px_childViewControllersForModalInPresentation;
- (id)px_popToViewControllerPrecedingViewController:()PhotosUIFoundation animated:;
- (uint64_t)px_preparePopToViewController:()PhotosUIFoundation forced:;
- (uint64_t)px_pushViewController:()PhotosUIFoundation animated:completion:;
@end

@implementation UINavigationController(PhotosUIFoundation)

- (id)px_childViewControllersForModalInPresentation
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 topViewController];
  v2 = v1;
  if (v1)
  {
    v5[0] = v1;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (uint64_t)px_pushViewController:()PhotosUIFoundation animated:completion:
{
  v8 = MEMORY[0x1E6979518];
  v9 = a5;
  v10 = a3;
  [v8 begin];
  [MEMORY[0x1E6979518] setCompletionBlock:v9];

  [a1 pushViewController:v10 animated:a4];
  v11 = MEMORY[0x1E6979518];

  return [v11 commit];
}

- (id)px_popToViewControllerPrecedingViewController:()PhotosUIFoundation animated:
{
  v6 = a3;
  v7 = [a1 viewControllers];
  v8 = [v7 indexOfObjectIdenticalTo:v6];

  v9 = 0;
  if (v8 && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v7 objectAtIndexedSubscript:v8 - 1];
    v9 = [a1 popToViewController:v10 animated:a4];
  }

  return v9;
}

- (uint64_t)px_preparePopToViewController:()PhotosUIFoundation forced:
{
  v7 = a3;
  v8 = [a1 viewControllers];
  v9 = [v8 containsObject:v7];

  if ((v9 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [a1 viewControllers];
    [v12 handleFailureInMethod:a2 object:a1 file:@"UINavigationController+PhotosUIFoundation.m" lineNumber:22 description:{@"Trying to pop to a view controller %@ that isn't in the view controllers of %@: %@", v7, a1, v13}];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  if (a4 & 1) != 0 || (v16[0] = MEMORY[0x1E69E9820], v16[1] = 3221225472, v16[2] = __83__UINavigationController_PhotosUIFoundation__px_preparePopToViewController_forced___block_invoke, v16[3] = &unk_1E7BB56F8, v17 = v7, v18 = &v19, [a1 px_enumerateDescendantViewControllersWithOptions:2 usingBlock:v16], v17, (v20[3]))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__UINavigationController_PhotosUIFoundation__px_preparePopToViewController_forced___block_invoke_2;
    v14[3] = &unk_1E7BB5720;
    v15 = v7;
    [a1 px_enumerateDescendantViewControllersWithOptions:2 usingBlock:v14];

    v10 = *(v20 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v10 & 1;
}

@end