@interface UIMultiscriptCandidateViewController
- (BOOL)hidesExpandableButton;
- (BOOL)isVisibleForInputDelegate:(id)delegate inputViews:(id)views;
- (BOOL)requiresKeyboard;
- (NSArray)displayedCandidates;
- (UIMultiscriptCandidateViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)preferredHeightForTraitCollection:(id)collection;
- (id)alternativeCandidateAction;
- (id)alternativeCandidates;
- (id)predictionView;
- (int64_t)overrideUserInterfaceStyle;
- (void)autocorrectionListDidChange;
- (void)dealloc;
- (void)loadView;
- (void)reloadArrangedSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIMultiscriptCandidateViewController

- (UIMultiscriptCandidateViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = UIMultiscriptCandidateViewController;
  v4 = [(UIViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [[UIPredictionViewController alloc] initWithNibName:0 bundle:0];
    [(UIMultiscriptCandidateViewController *)v4 setCurrentViewController:v5];
  }

  return v4;
}

- (id)predictionView
{
  currentViewController = [(UIMultiscriptCandidateViewController *)self currentViewController];
  view = [currentViewController view];

  return view;
}

- (BOOL)isVisibleForInputDelegate:(id)delegate inputViews:(id)views
{
  viewsCopy = views;
  delegateCopy = delegate;
  currentViewController = [(UIMultiscriptCandidateViewController *)self currentViewController];
  v9 = [currentViewController isVisibleForInputDelegate:delegateCopy inputViews:viewsCopy];

  return v9;
}

- (double)preferredHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  currentViewController = [(UIMultiscriptCandidateViewController *)self currentViewController];
  [currentViewController preferredHeightForTraitCollection:collectionCopy];
  v7 = v6;

  return v7;
}

- (BOOL)hidesExpandableButton
{
  currentViewController = [(UIMultiscriptCandidateViewController *)self currentViewController];
  hidesExpandableButton = [currentViewController hidesExpandableButton];

  return hidesExpandableButton;
}

- (NSArray)displayedCandidates
{
  currentViewController = [(UIMultiscriptCandidateViewController *)self currentViewController];
  displayedCandidates = [currentViewController displayedCandidates];

  return displayedCandidates;
}

- (BOOL)requiresKeyboard
{
  currentViewController = [(UIMultiscriptCandidateViewController *)self currentViewController];
  requiresKeyboard = [currentViewController requiresKeyboard];

  return requiresKeyboard;
}

- (void)loadView
{
  v3 = objc_alloc_init(UIMultiscriptCandidateView);
  [(UIMultiscriptCandidateViewController *)self setCandidateView:v3];
  [(UIViewController *)self setView:v3];

  alternativeCandidateAction = [(UIMultiscriptCandidateViewController *)self alternativeCandidateAction];
  candidateView = [(UIMultiscriptCandidateViewController *)self candidateView];
  [candidateView setAlternativeCandidateAction:alternativeCandidateAction];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_reloadArrangedSubviews name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_reloadArrangedSubviews name:@"UIKeyboardLayoutDidChangedNotification" object:0];

  [(UIMultiscriptCandidateViewController *)self reloadArrangedSubviews];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"UIKeyboardLayoutDidChangedNotification" object:0];

  v5 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v5 autocorrectionController];
  [autocorrectionController removeAutocorrectionObserver:self];

  v7.receiver = self;
  v7.super_class = UIMultiscriptCandidateViewController;
  [(UIViewController *)&v7 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = UIMultiscriptCandidateViewController;
  [(UIViewController *)&v4 viewWillAppear:appear];
  [(UIMultiscriptCandidateViewController *)self reloadArrangedSubviews];
}

- (id)alternativeCandidates
{
  v2 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v2 autocorrectionController];
  autocorrectionList = [autocorrectionController autocorrectionList];

  corrections = [autocorrectionList corrections];
  autocorrection = [corrections autocorrection];

  if (!autocorrection)
  {
    goto LABEL_6;
  }

  predictions = [autocorrectionList predictions];
  v8 = [predictions count];

  if (!v8)
  {
    goto LABEL_7;
  }

  emojiList = [autocorrectionList emojiList];
  v10 = [emojiList count] == 0;

  v11 = v8 > v10;
  v12 = &v8[-v10];
  if (v11)
  {
    v13 = MEMORY[0x1E69D9570];
    predictions2 = [autocorrectionList predictions];
    v15 = [predictions2 subarrayWithRange:{v10, v12}];
    v8 = [v13 listWithCorrections:0 predictions:v15];
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (id)alternativeCandidateAction
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__UIMultiscriptCandidateViewController_alternativeCandidateAction__block_invoke;
  v4[3] = &unk_1E70F4708;
  v4[4] = self;
  v2 = [UIAction actionWithHandler:v4];

  return v2;
}

void __66__UIMultiscriptCandidateViewController_alternativeCandidateAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedCandidates];

  if (v2)
  {
    [*(a1 + 32) setUpdatingCandidates:1];
    v9 = [*(a1 + 32) cachedCandidates];
    [*(a1 + 32) setCachedCandidates:0];
  }

  else
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v4 = [v3 autocorrectionController];
    v5 = [v4 autocorrectionList];
    [*(a1 + 32) setCachedCandidates:v5];

    v6 = [*(a1 + 32) alternativeCandidates];
    if (!v6)
    {
      goto LABEL_6;
    }

    v9 = v6;
    [*(a1 + 32) setUpdatingCandidates:1];
  }

  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 autocorrectionController];
  [v8 setAutocorrectionList:v9];

  [*(a1 + 32) setUpdatingCandidates:0];
  v6 = v9;
LABEL_6:
}

- (void)autocorrectionListDidChange
{
  if (![(UIMultiscriptCandidateViewController *)self updatingCandidates])
  {
    [(UIMultiscriptCandidateViewController *)self setCachedCandidates:0];
  }

  cachedCandidates = [(UIMultiscriptCandidateViewController *)self cachedCandidates];

  if (cachedCandidates)
  {
    candidateView = [(UIMultiscriptCandidateViewController *)self candidateView];
    alternativeCandidatesButton = [candidateView alternativeCandidatesButton];
    v5 = alternativeCandidatesButton;
    v6 = 1;
  }

  else
  {
    alternativeCandidates = [(UIMultiscriptCandidateViewController *)self alternativeCandidates];

    candidateView = [(UIMultiscriptCandidateViewController *)self candidateView];
    alternativeCandidatesButton = [candidateView alternativeCandidatesButton];
    v5 = alternativeCandidatesButton;
    if (alternativeCandidates)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  [alternativeCandidatesButton setButtonState:v6];
}

- (void)reloadArrangedSubviews
{
  currentViewController = [(UIMultiscriptCandidateViewController *)self currentViewController];
  view = [currentViewController view];
  superview = [view superview];
  candidateView = [(UIMultiscriptCandidateViewController *)self candidateView];

  if (superview == candidateView)
  {
    candidateView2 = [(UIMultiscriptCandidateViewController *)self candidateView];
    currentViewController2 = [(UIMultiscriptCandidateViewController *)self currentViewController];
    view2 = [currentViewController2 view];
    [candidateView2 reloadArrangedSubviews:view2];
  }

  else
  {
    currentViewController3 = [(UIMultiscriptCandidateViewController *)self currentViewController];
    [(UIViewController *)self addChildViewController:currentViewController3];

    candidateView3 = [(UIMultiscriptCandidateViewController *)self candidateView];
    currentViewController4 = [(UIMultiscriptCandidateViewController *)self currentViewController];
    view3 = [currentViewController4 view];
    [candidateView3 reloadArrangedSubviews:view3];

    candidateView2 = [(UIMultiscriptCandidateViewController *)self currentViewController];
    [candidateView2 didMoveToParentViewController:self];
  }

  candidateView4 = [(UIMultiscriptCandidateViewController *)self candidateView];
  requiresAlternativeCandidatesButton = [candidateView4 requiresAlternativeCandidatesButton];

  if (requiresAlternativeCandidatesButton)
  {
    v17 = +[UIKeyboardImpl activeInstance];
    autocorrectionController = [v17 autocorrectionController];
    [autocorrectionController addAutocorrectionObserver:self];
  }
}

- (int64_t)overrideUserInterfaceStyle
{
  currentViewController = [(UIMultiscriptCandidateViewController *)self currentViewController];
  overrideUserInterfaceStyle = [currentViewController overrideUserInterfaceStyle];

  return overrideUserInterfaceStyle;
}

@end