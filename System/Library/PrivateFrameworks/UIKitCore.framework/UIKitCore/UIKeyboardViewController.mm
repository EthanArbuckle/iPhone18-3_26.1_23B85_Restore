@interface UIKeyboardViewController
- (UIKeyboardAutocorrectionController)autocorrectionController;
- (UIKeyboardViewController)initWithServiceRole:(unint64_t)role;
- (UIView)pathEffectView;
- (void)didSelectPredictiveCandidate:(id)candidate;
- (void)loadView;
- (void)setShouldUpdateLayoutAutomatically:(BOOL)automatically;
- (void)shouldAcceptAutocorrection;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation UIKeyboardViewController

- (UIKeyboardViewController)initWithServiceRole:(unint64_t)role
{
  [objc_opt_class() _verifyClient];
  v17.receiver = self;
  v17.super_class = UIKeyboardViewController;
  v5 = [(UIViewController *)&v17 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_serviceRole = role;
    initWithDefaultSize = [[UIKeyboard alloc] initWithDefaultSize];
    [(UIKeyboard *)initWithDefaultSize setShouldUpdateLayoutAutomatically:0];
    [(UIKeyboard *)initWithDefaultSize setRequestedInteractionModel:1];
    [(UIKeyboard *)initWithDefaultSize setOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
    keyboard = v6->_keyboard;
    v6->_keyboard = initWithDefaultSize;
    v9 = initWithDefaultSize;

    v10 = [UICompatibilityInputViewController inputViewControllerWithView:v9];
    inputViewController = v6->_inputViewController;
    v6->_inputViewController = v10;

    v12 = objc_alloc_init(UISystemInputAssistantViewController);
    systemInputAssistantViewController = v6->_systemInputAssistantViewController;
    v6->_systemInputAssistantViewController = v12;

    view = [(UIViewController *)v6->_systemInputAssistantViewController view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    keyboard = [(UIKeyboardViewController *)v6 keyboard];
    [keyboard deactivate];
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
  inputViewController = [(UIKeyboardViewController *)self inputViewController];
  [(UIViewController *)self addChildViewController:inputViewController];

  view = [(UIViewController *)self view];
  keyboard = [(UIKeyboardViewController *)self keyboard];
  [view addSubview:keyboard];

  inputViewController2 = [(UIKeyboardViewController *)self inputViewController];
  view2 = [inputViewController2 view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[UIColor clearColor];
  [view2 setBackgroundColor:v8];

  v19 = MEMORY[0x1E69977A0];
  topAnchor = [view2 topAnchor];
  view3 = [(UIViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v23;
  bottomAnchor = [view2 bottomAnchor];
  view4 = [(UIViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28[1] = v18;
  leadingAnchor = [view2 leadingAnchor];
  view5 = [(UIViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v28[2] = v12;
  trailingAnchor = [view2 trailingAnchor];
  view6 = [(UIViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v28[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  [v19 activateConstraints:v17];
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = UIKeyboardViewController;
  [(UIViewController *)&v14 viewWillAppear:appear];
  textInputView = [(UIKeyboardViewController *)self textInputView];

  if (!textInputView)
  {
    v5 = objc_alloc_init(UITextView);
    [(UIKeyboardViewController *)self setTextInputView:v5];
  }

  [UIKeyboard setServiceRole:[(UIKeyboardViewController *)self serviceRole]];
  v6 = +[UIKeyboardImpl activeInstance];
  textInputView2 = [(UIKeyboardViewController *)self textInputView];
  [v6 setDelegate:textInputView2];

  keyboard = [(UIKeyboardViewController *)self keyboard];
  [keyboard activate];

  keyboard2 = [(UIKeyboardViewController *)self keyboard];
  createPathEffectViewIfNecessary = [keyboard2 createPathEffectViewIfNecessary];
  objc_storeWeak(&self->_pathEffectView, createPathEffectViewIfNecessary);

  systemInputAssistantViewController = self->_systemInputAssistantViewController;
  v12 = +[UIKeyboardImpl activeInstance];
  delegate = [v12 delegate];
  [(UISystemInputAssistantViewController *)systemInputAssistantViewController automaticallySetCenterViewControllerBasedOnInputDelegate:delegate];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = UIKeyboardViewController;
  [(UIViewController *)&v5 viewWillDisappear:disappear];
  if (_UIApplicationIsEmojiPoster())
  {
    v3 = +[UIKeyboardImpl activeInstance];
    _layout = [v3 _layout];
    [_layout clearUnusedObjects:0];
  }

  +[UIKeyboard resetServiceRole];
}

- (void)setShouldUpdateLayoutAutomatically:(BOOL)automatically
{
  automaticallyCopy = automatically;
  self->_shouldUpdateLayoutAutomatically = automatically;
  keyboard = [(UIKeyboardViewController *)self keyboard];
  [keyboard setShouldUpdateLayoutAutomatically:automaticallyCopy];
}

- (UIKeyboardAutocorrectionController)autocorrectionController
{
  v2 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v2 autocorrectionController];

  return autocorrectionController;
}

- (void)didSelectPredictiveCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 acceptPredictiveInput:candidateCopy];
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