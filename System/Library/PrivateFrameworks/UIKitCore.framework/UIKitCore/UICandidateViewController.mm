@interface UICandidateViewController
+ (double)preferredCandidateBarHeightForTraitCollection:(id)a3;
- (BOOL)extendsFromKeyplane;
- (BOOL)isVisibleForInputDelegate:(id)a3 inputViews:(id)a4;
- (NSArray)displayedCandidates;
- (int64_t)overrideUserInterfaceStyle;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UICandidateViewController

- (BOOL)isVisibleForInputDelegate:(id)a3 inputViews:(id)a4
{
  v4 = [UIKeyboardImpl activeInstance:a3];
  v5 = [v4 _showsScribbleIconsInAssistantView];

  if (v5)
  {
    return 0;
  }

  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 shouldShowCandidateBar];

  return v8;
}

+ (double)preferredCandidateBarHeightForTraitCollection:(id)a3
{
  v3 = a3;
  if (!+[UIKeyboardImpl isFloating])
  {
    SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
    v9 = +[UIKeyboard activeKeyboard];
    v10 = [v9 interfaceOrientation];

    v11 = +[UIKeyboardImpl keyboardScreen];
    v4 = [UIKBScreenTraits traitsWithScreen:v11 orientation:v10];

    if (SafeDeviceIdiom == -1)
    {
      SafeDeviceIdiom = [v4 idiom];
    }

    v12 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(v4, SafeDeviceIdiom, 0);
    if ((v12 - 23) < 4 || v12 == 1)
    {
      [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:v3];
      v7 = v14;
      goto LABEL_11;
    }

    v16 = +[UIKeyboardImpl activeInstance];
    v17 = [v16 candidateController];
    v18 = [v17 screenTraits];
    if ([v18 idiom] != 1)
    {
      v19 = +[UIKeyboardImpl activeInstance];
      v20 = [v19 candidateController];
      v21 = [v20 screenTraits];
      if ([v21 idiom] == 24)
      {
      }

      else
      {
        v42 = v21;
        v43 = v20;
        v44 = v19;
        v22 = +[UIKeyboardImpl activeInstance];
        v23 = [v22 candidateController];
        v24 = [v23 screenTraits];
        if ([v24 idiom] != 25)
        {
          v38 = v24;
          v39 = v23;
          v41 = v22;
          v37 = +[UIKeyboardImpl activeInstance];
          v36 = [v37 candidateController];
          v25 = [v36 screenTraits];
          if ([v25 idiom] == 26)
          {
            v40 = 0;
          }

          else
          {
            v35 = +[UIKeyboardImpl activeInstance];
            v26 = [v35 candidateController];
            v27 = [v26 screenTraits];
            v40 = [v27 idiom] != 23;
          }

          if (v40)
          {
            v28 = +[UIKeyboardImpl activeInstance];
            v29 = [v28 candidateController];
            [v29 candidateBarHeight];
            v31 = v30;
            v32 = +[UIKeyboardImpl activeInstance];
            v33 = [v32 candidateController];
            [v33 candidateBarEdgeInsetsForOrientation:v10];
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
  v5 = [v4 candidateController];
  [v5 candidateBarHeight];
  v7 = v6;

LABEL_11:
  return v7;
}

- (NSArray)displayedCandidates
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 candidateController];
  v4 = [v3 candidateResultSet];
  v5 = [v4 candidates];

  return v5;
}

- (BOOL)extendsFromKeyplane
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 candidateController];

  v4 = ([v3 activeCandidateViewType] >> 1) & 1;
  return v4;
}

- (void)loadView
{
  v3 = [UIView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIViewController *)self setView:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = +[UIKeyboardImpl activeInstance];
  v8 = [v4 candidateController];

  v5 = [v8 loadCandidateBar];
  [(UICandidateViewController *)self setCandidateView:v5];

  v6 = [(UIViewController *)self view];
  v7 = [(UICandidateViewController *)self candidateView];
  [v6 addSubview:v7];
}

- (int64_t)overrideUserInterfaceStyle
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 _inheritedRenderConfig];
  if ([v3 lightKeyboard])
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
  v44 = [v3 candidateController];

  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 _layout];

  v6 = [(UIViewController *)self view];
  [v6 bounds];
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
      [v44 candidateBarEdgeInsetsForOrientation:{objc_msgSend(v5, "orientation")}];
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

      if ([v5 idiom] || (objc_msgSend(v5, "orientation") - 3) > 1)
      {
        v14 = v14 - v16 - v20;
      }

      else
      {
        v25 = [v5 currentKeyplane];
        [v25 keyUnionPaddedFrame];
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
      v35 = [(UIViewController *)self view];
      [v35 bounds];
      v37 = (v36 - v34) * 0.5;

      v38 = [(UICandidateViewController *)self candidateView];
      [v38 setFrame:{v37, v16, v34, v14}];

      v39 = [(UICandidateViewController *)self candidateView];
      v40 = [v39 superview];
      v41 = [(UIViewController *)self view];

      if (v40 != v41)
      {
        v42 = [(UIViewController *)self view];
        v43 = [(UICandidateViewController *)self candidateView];
        [v42 addSubview:v43];
      }
    }
  }
}

@end