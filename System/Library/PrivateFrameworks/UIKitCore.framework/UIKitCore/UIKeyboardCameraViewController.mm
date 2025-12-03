@interface UIKeyboardCameraViewController
+ (BOOL)isCameraRestricted;
+ (BOOL)isEnabled;
+ (BOOL)isLiveTextEnabled;
+ (BOOL)isSupportedByDevice;
- (UIKeyboardCameraViewController)init;
- (UIKeyboardCameraViewControllerDelegate)delegate;
- (void)keyboardCameraDidAccept;
- (void)keyboardCameraDidCancel;
- (void)keyboardCameraDidUpdateString:(id)string;
- (void)prepareWithCompletion:(id)completion;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation UIKeyboardCameraViewController

+ (BOOL)isLiveTextEnabled
{
  v2 = +[_UIKeyboardCameraLiveTextEnabledObserver sharedInstance];
  isLiveTextEnabled = [v2 isLiveTextEnabled];

  return isLiveTextEnabled;
}

+ (BOOL)isCameraRestricted
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!qword_1ED4994C8)
  {
    [self _updateIsCameraRestricted];
    objc_initWeak(&location, self);
    v8[0] = @"cameraRestriction";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v4 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v6, &location);
    qword_1ED4994C8 = MGRegisterForUpdates();

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return _MergedGlobals_1_29;
}

void __52__UIKeyboardCameraViewController_isCameraRestricted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateIsCameraRestricted];
    WeakRetained = v2;
  }
}

+ (BOOL)isSupportedByDevice
{
  if (qword_1ED4994D0 != -1)
  {
    dispatch_once(&qword_1ED4994D0, &__block_literal_global_25_8);
  }

  return byte_1ED4994B1;
}

uint64_t __53__UIKeyboardCameraViewController_isSupportedByDevice__block_invoke()
{
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetBoolAnswer();
    if (result)
    {
      result = MGGetBoolAnswer();
    }
  }

  byte_1ED4994B1 = result;
  return result;
}

+ (BOOL)isEnabled
{
  isSupportedByDevice = [self isSupportedByDevice];
  if (isSupportedByDevice)
  {
    isSupportedByDevice = [self isLiveTextEnabled];
    if (isSupportedByDevice)
    {
      LOBYTE(isSupportedByDevice) = [self isCameraRestricted] ^ 1;
    }
  }

  return isSupportedByDevice;
}

- (UIKeyboardCameraViewController)init
{
  v3.receiver = self;
  v3.super_class = UIKeyboardCameraViewController;
  return [(UIViewController *)&v3 initWithNibName:0 bundle:0];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCameraViewController;
  [(UIViewController *)&v5 viewDidLoad];
  v3 = +[UIColor blackColor];
  view = [(UIViewController *)self view];
  [view setBackgroundColor:v3];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCameraViewController;
  [(UIViewController *)&v5 viewDidDisappear:disappear];
  remoteViewController = [(UIKeyboardCameraViewController *)self remoteViewController];
  [remoteViewController removeFromParentViewController];

  [(UIKeyboardCameraViewController *)self setRemoteViewController:0];
  [(UIKeyboardCameraViewController *)self setExtension:0];
}

- (void)prepareWithCompletion:(id)completion
{
  completionCopy = completion;
  if (+[UIKeyboardCameraViewController isSupportedByDevice])
  {
    v5 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:@"com.apple.VisionKit.KeyboardCamera" error:0];
    [(UIKeyboardCameraViewController *)self setExtension:v5];

    objc_initWeak(&location, self);
    extension = [(UIKeyboardCameraViewController *)self extension];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__UIKeyboardCameraViewController_prepareWithCompletion___block_invoke;
    v7[3] = &unk_1E7102760;
    objc_copyWeak(&v9, &location);
    v8 = completionCopy;
    [extension instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] connectionHandler:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __56__UIKeyboardCameraViewController_prepareWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = v6;
    if (v8 && !a4)
    {
      v35 = v6;
      [WeakRetained setRemoteViewController:v8];
      [v8 setDelegate:WeakRetained];
      v9 = [v8 serviceViewControllerProxy];
      v10 = [WeakRetained textContentType];
      v34 = v9;
      [v9 setTextContentType:v10];

      [WeakRetained addChildViewController:v8];
      v11 = [v8 view];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v12 = [WeakRetained view];
      [v12 addSubview:v11];

      v26 = MEMORY[0x1E69977A0];
      v32 = [v11 topAnchor];
      v33 = [WeakRetained view];
      v31 = [v33 topAnchor];
      v30 = [v32 constraintEqualToAnchor:v31];
      v36[0] = v30;
      v28 = [v11 leftAnchor];
      v29 = [WeakRetained view];
      v27 = [v29 leftAnchor];
      v25 = [v28 constraintEqualToAnchor:v27];
      v36[1] = v25;
      v23 = [v11 rightAnchor];
      v24 = [WeakRetained view];
      v13 = [v24 rightAnchor];
      v14 = [v23 constraintEqualToAnchor:v13];
      v36[2] = v14;
      v15 = [v11 bottomAnchor];
      v16 = [WeakRetained view];
      v17 = [v16 bottomAnchor];
      v18 = [v15 constraintEqualToAnchor:v17];
      v36[3] = v18;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
      v19 = v22 = a1;
      [v26 activateConstraints:v19];

      v20 = *(v22 + 32);
      if (v20)
      {
        (*(v20 + 16))(v20, 1);
      }

      v6 = v35;
    }
  }

  else
  {
    v21 = *(a1 + 32);
    if (v21)
    {
      (*(v21 + 16))(v21, 0);
    }
  }
}

- (void)keyboardCameraDidUpdateString:(id)string
{
  stringCopy = string;
  delegate = [(UIKeyboardCameraViewController *)self delegate];
  [delegate keyboardCameraDidUpdateString:stringCopy];
}

- (void)keyboardCameraDidAccept
{
  delegate = [(UIKeyboardCameraViewController *)self delegate];
  [delegate keyboardCameraDidAccept];
}

- (void)keyboardCameraDidCancel
{
  delegate = [(UIKeyboardCameraViewController *)self delegate];
  [delegate keyboardCameraDidCancel];
}

- (UIKeyboardCameraViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end