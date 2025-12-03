@interface UICandidateViewController
+ (double)preferredCandidateBarHeightForTraitCollection:(id)collection;
- (BOOL)extendsFromKeyplane;
- (BOOL)isVisibleForInputDelegate:(id)delegate inputViews:(id)views;
- (NSArray)displayedCandidates;
- (int64_t)overrideUserInterfaceStyle;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UICandidateViewController

- (BOOL)isVisibleForInputDelegate:(id)delegate inputViews:(id)views
{
  v4 = [UIKeyboardImpl activeInstance:delegate];
  _showsScribbleIconsInAssistantView = [v4 _showsScribbleIconsInAssistantView];

  if (_showsScribbleIconsInAssistantView)
  {
    return 0;
  }

  v7 = +[UIKeyboardImpl activeInstance];
  shouldShowCandidateBar = [v7 shouldShowCandidateBar];

  return shouldShowCandidateBar;
}

+ (double)preferredCandidateBarHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (!+[UIKeyboardImpl isFloating])
  {
    SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
    v9 = +[UIKeyboard activeKeyboard];
    interfaceOrientation = [v9 interfaceOrientation];

    v11 = +[UIKeyboardImpl keyboardScreen];
    v4 = [UIKBScreenTraits traitsWithScreen:v11 orientation:interfaceOrientation];

    if (SafeDeviceIdiom == -1)
    {
      SafeDeviceIdiom = [v4 idiom];
    }

    v12 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(v4, SafeDeviceIdiom, 0);
    if ((v12 - 23) < 4 || v12 == 1)
    {
      [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:collectionCopy];
      v7 = v14;
      goto LABEL_11;
    }

    v16 = +[UIKeyboardImpl activeInstance];
    candidateController = [v16 candidateController];
    screenTraits = [candidateController screenTraits];
    if ([screenTraits idiom] != 1)
    {
      v19 = +[UIKeyboardImpl activeInstance];
      candidateController2 = [v19 candidateController];
      screenTraits2 = [candidateController2 screenTraits];
      if ([screenTraits2 idiom] == 24)
      {
      }

      else
      {
        v42 = screenTraits2;
        v43 = candidateController2;
        v44 = v19;
        v22 = +[UIKeyboardImpl activeInstance];
        candidateController3 = [v22 candidateController];
        screenTraits3 = [candidateController3 screenTraits];
        if ([screenTraits3 idiom] != 25)
        {
          v38 = screenTraits3;
          v39 = candidateController3;
          v41 = v22;
          v37 = +[UIKeyboardImpl activeInstance];
          candidateController4 = [v37 candidateController];
          screenTraits4 = [candidateController4 screenTraits];
          if ([screenTraits4 idiom] == 26)
          {
            v40 = 0;
          }

          else
          {
            v35 = +[UIKeyboardImpl activeInstance];
            candidateController5 = [v35 candidateController];
            screenTraits5 = [candidateController5 screenTraits];
            v40 = [screenTraits5 idiom] != 23;
          }

          if (v40)
          {
            v28 = +[UIKeyboardImpl activeInstance];
            candidateController6 = [v28 candidateController];
            [candidateController6 candidateBarHeight];
            v31 = v30;
            v32 = +[UIKeyboardImpl activeInstance];
            candidateController7 = [v32 candidateController];
            [candidateController7 candidateBarEdgeInsetsForOrientation:interfaceOrientation];
            v7 = v31 + v34;

            goto LABEL_11;
          }

          goto LABEL_18;
        }
      }
    }

LABEL_18:
    v7 = 42.0;
    goto LABEL_11;
  }

  v4 = +[UIKeyboardImpl activeInstance];
  candidateController8 = [v4 candidateController];
  [candidateController8 candidateBarHeight];
  v7 = v6;

LABEL_11:
  return v7;
}

- (NSArray)displayedCandidates
{
  v2 = +[UIKeyboardImpl activeInstance];
  candidateController = [v2 candidateController];
  candidateResultSet = [candidateController candidateResultSet];
  candidates = [candidateResultSet candidates];

  return candidates;
}

- (BOOL)extendsFromKeyplane
{
  v2 = +[UIKeyboardImpl activeInstance];
  candidateController = [v2 candidateController];

  v4 = ([candidateController activeCandidateViewType] >> 1) & 1;
  return v4;
}

- (void)loadView
{
  v3 = [UIView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIViewController *)self setView:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4 = +[UIKeyboardImpl activeInstance];
  candidateController = [v4 candidateController];

  loadCandidateBar = [candidateController loadCandidateBar];
  [(UICandidateViewController *)self setCandidateView:loadCandidateBar];

  view = [(UIViewController *)self view];
  candidateView = [(UICandidateViewController *)self candidateView];
  [view addSubview:candidateView];
}

- (int64_t)overrideUserInterfaceStyle
{
  v2 = +[UIKeyboardImpl activeInstance];
  _inheritedRenderConfig = [v2 _inheritedRenderConfig];
  if ([_inheritedRenderConfig lightKeyboard])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v3 = +[UIKeyboardImpl activeInstance];
  candidateController = [v3 candidateController];

  v4 = +[UIKeyboardImpl activeInstance];
  _layout = [v4 _layout];

  view = [(UIViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  width = v11;
  v14 = v13;

  v46.origin.x = v8;
  v46.origin.y = v10;
  v46.size.width = width;
  v46.size.height = v14;
  if (!CGRectIsNull(v46))
  {
    v47.origin.x = v8;
    v47.origin.y = v10;
    v47.size.width = width;
    v47.size.height = v14;
    if (!CGRectIsEmpty(v47))
    {
      [candidateController candidateBarEdgeInsetsForOrientation:{objc_msgSend(_layout, "orientation")}];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = +[UIKeyboardImpl isFloating];
      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && v23)
      {
        +[UIKeyboardPopoverContainer extraWidth];
        if (v24 > 0.0)
        {
          v22 = v24 * -0.5;
          v18 = v24 * -0.5;
        }
      }

      if ([_layout idiom] || (objc_msgSend(_layout, "orientation") - 3) > 1)
      {
        v14 = v14 - v16 - v20;
      }

      else
      {
        currentKeyplane = [_layout currentKeyplane];
        [currentKeyplane keyUnionPaddedFrame];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        v48.origin.x = v27;
        v48.origin.y = v29;
        v48.size.width = v31;
        v48.size.height = v33;
        v49 = CGRectIntegral(v48);
        width = v49.size.width;
      }

      v34 = width - v18 - v22;
      view2 = [(UIViewController *)self view];
      [view2 bounds];
      v37 = (v36 - v34) * 0.5;

      candidateView = [(UICandidateViewController *)self candidateView];
      [candidateView setFrame:{v37, v16, v34, v14}];

      candidateView2 = [(UICandidateViewController *)self candidateView];
      superview = [candidateView2 superview];
      view3 = [(UIViewController *)self view];

      if (superview != view3)
      {
        view4 = [(UIViewController *)self view];
        candidateView3 = [(UICandidateViewController *)self candidateView];
        [view4 addSubview:candidateView3];
      }
    }
  }
}

@end