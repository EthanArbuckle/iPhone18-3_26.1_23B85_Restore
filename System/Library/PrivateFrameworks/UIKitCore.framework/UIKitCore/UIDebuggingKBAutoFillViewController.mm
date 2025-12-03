@interface UIDebuggingKBAutoFillViewController
- (id)_formTypeFileName:(int64_t)name;
- (id)_getTopMostViewControllerInWindow:(id)window;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_archiveTopMostViewControllerForAutoFillTest;
- (void)autoFillTestGroundTruthGenerationViewController:(id)controller didFinishWithResult:(id)result;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation UIDebuggingKBAutoFillViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = UIDebuggingKBAutoFillViewController;
  [(UIViewController *)&v10 viewDidLoad];
  v3 = [UITableView alloc];
  view = [(UIViewController *)self view];
  [view bounds];
  v5 = [(UITableView *)v3 initWithFrame:0 style:?];
  tableView = self->_tableView;
  self->_tableView = v5;

  [(UIView *)self->_tableView setAutoresizingMask:18];
  view2 = [(UIViewController *)self view];
  [view2 addSubview:self->_tableView];

  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  v8 = +[UIColor whiteColor];
  view3 = [(UIViewController *)self view];
  [view3 setBackgroundColor:v8];
}

- (id)_getTopMostViewControllerInWindow:(id)window
{
  rootViewController = [window rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v5PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v5PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [presentedViewController2 topViewController];
  }

  else
  {
    topViewController = presentedViewController2;
  }

  v8 = topViewController;

  return v8;
}

- (void)_archiveTopMostViewControllerForAutoFillTest
{
  v3 = +[UIDebuggingInformationOverlay overlay];
  inspectedWindow = [v3 inspectedWindow];
  v11 = [(UIDebuggingKBAutoFillViewController *)self _getTopMostViewControllerInWindow:inspectedWindow];

  v5 = [UIKBAutoFillTestArchiveMaker archiveMakerWithViewControllerToSnapshot:v11];
  makeArchive = [v5 makeArchive];
  v7 = [makeArchive copy];

  v8 = [[UIKBAutoFillTestViewController alloc] initWithAutoFillTestArchive:v7];
  v9 = [[UIKBAutoFillTestGroundTruthGenerationViewController alloc] initWithAutoFillTestViewController:v8];
  [(UIKBAutoFillTestGroundTruthGenerationViewController *)v9 setDelegate:self];
  v10 = [[UINavigationController alloc] initWithRootViewController:v9];
  [(UIViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (id)_formTypeFileName:(int64_t)name
{
  if (name <= 2)
  {
    if ((name - 1) < 2)
    {
      return @"SignIn";
    }

    if (!name)
    {
      return @"Unspecified";
    }

    return &stru_1EFB14550;
  }

  if ((name - 3) < 2)
  {
    return @"SignUp";
  }

  if (name != 5)
  {
    if (name == 10000)
    {
      return @"Other";
    }

    return &stru_1EFB14550;
  }

  return @"ChangePassword";
}

- (void)autoFillTestGroundTruthGenerationViewController:(id)controller didFinishWithResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  if (resultCopy)
  {
    testViewController = [controllerCopy testViewController];
    testArchive = [testViewController testArchive];

    [testArchive setExpectedResult:resultCopy];
    v10 = [UIAlertController alertControllerWithTitle:0 message:@"Saving AutoFill Test Archive" preferredStyle:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __107__UIDebuggingKBAutoFillViewController_autoFillTestGroundTruthGenerationViewController_didFinishWithResult___block_invoke;
    aBlock[3] = &unk_1E7127AC8;
    v22 = v10;
    v11 = controllerCopy;
    v23 = v11;
    v12 = v10;
    v13 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __107__UIDebuggingKBAutoFillViewController_autoFillTestGroundTruthGenerationViewController_didFinishWithResult___block_invoke_46;
    v16[3] = &unk_1E7127AF0;
    v20 = v13;
    v17 = testArchive;
    selfCopy = self;
    v19 = resultCopy;
    v14 = v13;
    v15 = testArchive;
    [v11 presentViewController:v12 animated:1 completion:v16];
  }

  else
  {
    [controllerCopy dismissViewControllerAnimated:1 completion:0];
  }
}

void __107__UIDebuggingKBAutoFillViewController_autoFillTestGroundTruthGenerationViewController_didFinishWithResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_time(0, 500000000);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __107__UIDebuggingKBAutoFillViewController_autoFillTestGroundTruthGenerationViewController_didFinishWithResult___block_invoke_2;
  v10[3] = &unk_1E70F6B40;
  v11 = v6;
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v10);
}

void __107__UIDebuggingKBAutoFillViewController_autoFillTestGroundTruthGenerationViewController_didFinishWithResult___block_invoke_2(id *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = MEMORY[0x1E696AEC0];
  if (v2)
  {
    v4 = [a1[4] localizedDescription];
    v5 = [v3 stringWithFormat:@"Failed to save the archive with error %@", v4];
    [a1[5] setMessage:v5];
  }

  else
  {
    v6 = _UIMainBundleIdentifier();
    v7 = [v3 stringWithFormat:@"Successfully saved AutoFill Test Archive in app's container temp directory.\nBundle identifier: %@", v6];
    [a1[5] setMessage:v7];

    v8 = *(__UILogGetCategoryCachedImpl("AutoFillTest", &_block_invoke___s_category_8) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = _UIMainBundleIdentifier();
      v11 = [a1[6] path];
      *buf = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Saved archive for bundle id: %{public}@, at path: %{public}@", buf, 0x16u);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __107__UIDebuggingKBAutoFillViewController_autoFillTestGroundTruthGenerationViewController_didFinishWithResult___block_invoke_42;
  v13[3] = &unk_1E7127AA0;
  v16 = v2 == 0;
  v14 = a1[6];
  v15 = a1[7];
  v12 = [UIAlertAction actionWithTitle:@"Done" style:0 handler:v13];
  [a1[5] addAction:v12];
}

uint64_t __107__UIDebuggingKBAutoFillViewController_autoFillTestGroundTruthGenerationViewController_didFinishWithResult___block_invoke_42(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v2 = *(__UILogGetCategoryCachedImpl("AutoFillTest", &_block_invoke_2___s_category_1) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = _UIMainBundleIdentifier();
      v5 = [*(a1 + 32) path];
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Saved archive for bundle id: %{public}@, at path: %{public}@", &v7, 0x16u);
    }
  }

  return [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
}

void __107__UIDebuggingKBAutoFillViewController_autoFillTestGroundTruthGenerationViewController_didFinishWithResult___block_invoke_46(uint64_t a1)
{
  v2 = [*(a1 + 32) autoFillTestArchiveData];
  v3 = MEMORY[0x1E695DFF8];
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"AutoFillTestArchives"];
  v6 = [v3 fileURLWithPath:v5 isDirectory:1];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = 0;
  v8 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v22];
  v9 = v22;
  if (v8)
  {
    v19 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
    v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v10 setLocale:v19];
    [v10 setDateFormat:@"yyyy-MM-dd'T'HH-mm-ss"];
    v20 = v2;
    v18 = [*(a1 + 40) _formTypeFileName:{objc_msgSend(*(a1 + 48), "formType")}];
    v11 = MEMORY[0x1E696AEC0];
    v12 = _UIMainBundleIdentifier();
    v13 = [MEMORY[0x1E695DF00] date];
    v14 = [v10 stringFromDate:v13];
    v15 = [v11 stringWithFormat:@"AutoFill_%@_%@_%@.autofillarchive", v12, v18, v14];
    v16 = [v6 URLByAppendingPathComponent:v15];

    v2 = v20;
    v21 = v9;
    [v20 writeToURL:v16 options:1 error:&v21];
    v17 = v21;

    (*(*(a1 + 56) + 16))();
    v9 = v17;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = [pathCopy row];

  if (!v7)
  {

    [(UIDebuggingKBAutoFillViewController *)self _archiveTopMostViewControllerForAutoFillTest];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view dequeueReusableCellWithIdentifier:@"cell"];
  v7 = [pathCopy row];

  if (!v7)
  {
    textLabel = [v6 textLabel];
    [textLabel setText:@"Create AutoFill Test Archive"];
  }

  return v6;
}

@end