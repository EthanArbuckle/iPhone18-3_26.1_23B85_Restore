@interface UINavigationController(PhotosUI)
- (uint64_t)pu_popToViewControllerIfAllowed:()PhotosUI animated:forced:;
@end

@implementation UINavigationController(PhotosUI)

- (uint64_t)pu_popToViewControllerIfAllowed:()PhotosUI animated:forced:
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a1 viewControllers];
  v10 = [v9 containsObject:v8];

  if (v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v21) = 1;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__UINavigationController_PhotosUI__pu_popToViewControllerIfAllowed_animated_forced___block_invoke;
    v16[3] = &unk_1E7B7F590;
    v19 = a5;
    v18 = buf;
    v11 = v8;
    v17 = v11;
    [a1 pl_visitControllerHierarchyWithBlock:v16];
    v12 = *(*&buf[8] + 24);
    if (v12 == 1)
    {
      [a1 pu_popToViewController:v11 animated:a4 interactive:0];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [a1 viewControllers];
      *buf = 138412802;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = a1;
      *&buf[22] = 2112;
      v21 = v14;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Trying to pop to a view controller %@ that isn't in the view controllers of %@: %@", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

@end