@interface UIMultiscriptCandidateViewController
- (BOOL)hidesExpandableButton;
- (BOOL)isVisibleForInputDelegate:(id)a3 inputViews:(id)a4;
- (BOOL)requiresKeyboard;
- (NSArray)displayedCandidates;
- (UIMultiscriptCandidateViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)preferredHeightForTraitCollection:(id)a3;
- (id)alternativeCandidateAction;
- (id)alternativeCandidates;
- (id)predictionView;
- (int64_t)overrideUserInterfaceStyle;
- (void)autocorrectionListDidChange;
- (void)dealloc;
- (void)loadView;
- (void)reloadArrangedSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UIMultiscriptCandidateViewController

- (UIMultiscriptCandidateViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIMultiscriptCandidateViewController;
  v4 = [(UIViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[UIPredictionViewController alloc] initWithNibName:0 bundle:0];
    [(UIMultiscriptCandidateViewController *)v4 setCurrentViewController:v5];
  }

  return v4;
}

- (id)predictionView
{
  v2 = [(UIMultiscriptCandidateViewController *)self currentViewController];
  v3 = [v2 view];

  return v3;
}

- (BOOL)isVisibleForInputDelegate:(id)a3 inputViews:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIMultiscriptCandidateViewController *)self currentViewController];
  v9 = [v8 isVisibleForInputDelegate:v7 inputViews:v6];

  return v9;
}

- (double)preferredHeightForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(UIMultiscriptCandidateViewController *)self currentViewController];
  [v5 preferredHeightForTraitCollection:v4];
  v7 = v6;

  return v7;
}

- (BOOL)hidesExpandableButton
{
  v2 = [(UIMultiscriptCandidateViewController *)self currentViewController];
  v3 = [v2 hidesExpandableButton];

  return v3;
}

- (NSArray)displayedCandidates
{
  v2 = [(UIMultiscriptCandidateViewController *)self currentViewController];
  v3 = [v2 displayedCandidates];

  return v3;
}

- (BOOL)requiresKeyboard
{
  v2 = [(UIMultiscriptCandidateViewController *)self currentViewController];
  v3 = [v2 requiresKeyboard];

  return v3;
}

- (void)loadView
{
  v3 = objc_alloc_init(UIMultiscriptCandidateView);
  [(UIMultiscriptCandidateViewController *)self setCandidateView:v3];
  [(UIViewController *)self setView:v3];

  v4 = [(UIMultiscriptCandidateViewController *)self alternativeCandidateAction];
  v5 = [(UIMultiscriptCandidateViewController *)self candidateView];
  [v5 setAlternativeCandidateAction:v4];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel_reloadArrangedSubviews name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel_reloadArrangedSubviews name:@"UIKeyboardLayoutDidChangedNotification" object:0];

  [(UIMultiscriptCandidateViewController *)self reloadArrangedSubviews];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"UIKeyboardLayoutDidChangedNotification" object:0];

  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 autocorrectionController];
  [v6 removeAutocorrectionObserver:self];

  v7.receiver = self;
  v7.super_class = UIMultiscriptCandidateViewController;
  [(UIViewController *)&v7 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIMultiscriptCandidateViewController;
  [(UIViewController *)&v4 viewWillAppear:a3];
  [(UIMultiscriptCandidateViewController *)self reloadArrangedSubviews];
}

- (id)alternativeCandidates
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 autocorrectionController];
  v4 = [v3 autocorrectionList];

  v5 = [v4 corrections];
  v6 = [v5 autocorrection];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v4 predictions];
  v8 = [v7 count];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v4 emojiList];
  v10 = [v9 count] == 0;

  v11 = v8 > v10;
  v12 = &v8[-v10];
  if (v11)
  {
    v13 = MEMORY[0x1E69D9570];
    v14 = [v4 predictions];
    v15 = [v14 subarrayWithRange:{v10, v12}];
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

  v3 = [(UIMultiscriptCandidateViewController *)self cachedCandidates];

  if (v3)
  {
    v8 = [(UIMultiscriptCandidateViewController *)self candidateView];
    v4 = [v8 alternativeCandidatesButton];
    v5 = v4;
    v6 = 1;
  }

  else
  {
    v7 = [(UIMultiscriptCandidateViewController *)self alternativeCandidates];

    v8 = [(UIMultiscriptCandidateViewController *)self candidateView];
    v4 = [v8 alternativeCandidatesButton];
    v5 = v4;
    if (v7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  [v4 setButtonState:v6];
}

- (void)reloadArrangedSubviews
{
  v3 = [(UIMultiscriptCandidateViewController *)self currentViewController];
  v4 = [v3 view];
  v5 = [v4 superview];
  v6 = [(UIMultiscriptCandidateViewController *)self candidateView];

  if (v5 == v6)
  {
    v11 = [(UIMultiscriptCandidateViewController *)self candidateView];
    v12 = [(UIMultiscriptCandidateViewController *)self currentViewController];
    v13 = [v12 view];
    [v11 reloadArrangedSubviews:v13];
  }

  else
  {
    v7 = [(UIMultiscriptCandidateViewController *)self currentViewController];
    [(UIViewController *)self addChildViewController:v7];

    v8 = [(UIMultiscriptCandidateViewController *)self candidateView];
    v9 = [(UIMultiscriptCandidateViewController *)self currentViewController];
    v10 = [v9 view];
    [v8 reloadArrangedSubviews:v10];

    v11 = [(UIMultiscriptCandidateViewController *)self currentViewController];
    [v11 didMoveToParentViewController:self];
  }

  v14 = [(UIMultiscriptCandidateViewController *)self candidateView];
  v15 = [v14 requiresAlternativeCandidatesButton];

  if (v15)
  {
    v17 = +[UIKeyboardImpl activeInstance];
    v16 = [v17 autocorrectionController];
    [v16 addAutocorrectionObserver:self];
  }
}

- (int64_t)overrideUserInterfaceStyle
{
  v2 = [(UIMultiscriptCandidateViewController *)self currentViewController];
  v3 = [v2 overrideUserInterfaceStyle];

  return v3;
}

@end