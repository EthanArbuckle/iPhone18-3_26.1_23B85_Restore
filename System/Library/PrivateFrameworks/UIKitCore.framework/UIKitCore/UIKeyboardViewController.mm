@interface UIKeyboardViewController
- (UIKeyboardAutocorrectionController)autocorrectionController;
- (UIKeyboardViewController)initWithServiceRole:(unint64_t)a3;
- (UIView)pathEffectView;
- (void)didSelectPredictiveCandidate:(id)a3;
- (void)loadView;
- (void)setShouldUpdateLayoutAutomatically:(BOOL)a3;
- (void)shouldAcceptAutocorrection;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation UIKeyboardViewController

- (UIKeyboardViewController)initWithServiceRole:(unint64_t)a3
{
  [objc_opt_class() _verifyClient];
  v17.receiver = self;
  v17.super_class = UIKeyboardViewController;
  v5 = [(UIViewController *)&v17 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_serviceRole = a3;
    v7 = [[UIKeyboard alloc] initWithDefaultSize];
    [(UIKeyboard *)v7 setShouldUpdateLayoutAutomatically:0];
    [(UIKeyboard *)v7 setRequestedInteractionModel:1];
    [(UIKeyboard *)v7 setOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
    keyboard = v6->_keyboard;
    v6->_keyboard = v7;
    v9 = v7;

    v10 = [UICompatibilityInputViewController inputViewControllerWithView:v9];
    inputViewController = v6->_inputViewController;
    v6->_inputViewController = v10;

    v12 = objc_alloc_init(UISystemInputAssistantViewController);
    systemInputAssistantViewController = v6->_systemInputAssistantViewController;
    v6->_systemInputAssistantViewController = v12;

    v14 = [(UIViewController *)v6->_systemInputAssistantViewController view];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(UIKeyboardViewController *)v6 keyboard];
    [v15 deactivate];
  }

  return v6;
}

- (void)loadView
{
  v3 = [_UIKeyboardViewControllerView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = UIKeyboardViewController;
  [(UIViewController *)&v27 viewDidLoad];
  v3 = [(UIKeyboardViewController *)self inputViewController];
  [(UIViewController *)self addChildViewController:v3];

  v4 = [(UIViewController *)self view];
  v5 = [(UIKeyboardViewController *)self keyboard];
  [v4 addSubview:v5];

  v6 = [(UIKeyboardViewController *)self inputViewController];
  v7 = [v6 view];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[UIColor clearColor];
  [v7 setBackgroundColor:v8];

  v19 = MEMORY[0x1E69977A0];
  v25 = [v7 topAnchor];
  v26 = [(UIViewController *)self view];
  v24 = [v26 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v28[0] = v23;
  v21 = [v7 bottomAnchor];
  v22 = [(UIViewController *)self view];
  v20 = [v22 bottomAnchor];
  v18 = [v21 constraintEqualToAnchor:v20];
  v28[1] = v18;
  v9 = [v7 leadingAnchor];
  v10 = [(UIViewController *)self view];
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v28[2] = v12;
  v13 = [v7 trailingAnchor];
  v14 = [(UIViewController *)self view];
  v15 = [v14 trailingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v28[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  [v19 activateConstraints:v17];
}

- (void)viewWillAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = UIKeyboardViewController;
  [(UIViewController *)&v14 viewWillAppear:a3];
  v4 = [(UIKeyboardViewController *)self textInputView];

  if (!v4)
  {
    v5 = objc_alloc_init(UITextView);
    [(UIKeyboardViewController *)self setTextInputView:v5];
  }

  [UIKeyboard setServiceRole:[(UIKeyboardViewController *)self serviceRole]];
  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [(UIKeyboardViewController *)self textInputView];
  [v6 setDelegate:v7];

  v8 = [(UIKeyboardViewController *)self keyboard];
  [v8 activate];

  v9 = [(UIKeyboardViewController *)self keyboard];
  v10 = [v9 createPathEffectViewIfNecessary];
  objc_storeWeak(&self->_pathEffectView, v10);

  systemInputAssistantViewController = self->_systemInputAssistantViewController;
  v12 = +[UIKeyboardImpl activeInstance];
  v13 = [v12 delegate];
  [(UISystemInputAssistantViewController *)systemInputAssistantViewController automaticallySetCenterViewControllerBasedOnInputDelegate:v13];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UIKeyboardViewController;
  [(UIViewController *)&v5 viewWillDisappear:a3];
  if (_UIApplicationIsEmojiPoster())
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v4 = [v3 _layout];
    [v4 clearUnusedObjects:0];
  }

  +[UIKeyboard resetServiceRole];
}

- (void)setShouldUpdateLayoutAutomatically:(BOOL)a3
{
  v3 = a3;
  self->_shouldUpdateLayoutAutomatically = a3;
  v4 = [(UIKeyboardViewController *)self keyboard];
  [v4 setShouldUpdateLayoutAutomatically:v3];
}

- (UIKeyboardAutocorrectionController)autocorrectionController
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 autocorrectionController];

  return v3;
}

- (void)didSelectPredictiveCandidate:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 acceptPredictiveInput:v3];
}

- (void)shouldAcceptAutocorrection
{
  v2 = +[UIKeyboard activeKeyboard];
  [v2 acceptAutocorrectionWithCompletionHandler:0];
}

- (UIView)pathEffectView
{
  WeakRetained = objc_loadWeakRetained(&self->_pathEffectView);

  return WeakRetained;
}

@end