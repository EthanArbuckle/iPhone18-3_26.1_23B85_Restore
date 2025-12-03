@interface UIKeyboardCandidateController
+ (double)candidateViewAnimationDuration;
+ (id)sharedInstance;
- (BOOL)barIsExtended;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)handleNumberKey:(unint64_t)key;
- (BOOL)handleTabKeyWithShift:(BOOL)shift;
- (BOOL)hasCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (BOOL)hasCandidates;
- (BOOL)hostTextIsVertical;
- (BOOL)inlineViewIsExtended;
- (BOOL)isExtended;
- (BOOL)isExtendedList;
- (BOOL)isKeyExtended;
- (BOOL)shouldShowDisambiguationCandidates;
- (BOOL)shouldShowSortControlForConfiguration:(id)configuration;
- (BOOL)showCandidate:(id)candidate animated:(BOOL)animated scrollPosition:(unint64_t)position;
- (CGRect)candidateViewFrame;
- (CGRect)inlineRect;
- (CGSize)maximumSizeForInlineView;
- (NSArray)activeCandidateViews;
- (TIKeyboardCandidate)currentCandidate;
- (UIEdgeInsets)candidateBarEdgeInsetsForOrientation:(int64_t)orientation;
- (UIKeyboardCandidateController)init;
- (UIKeyboardCandidateControllerDelegate)delegate;
- (UIKeyboardCandidateListDelegate)candidateListDelegate;
- (double)candidateBarHeight;
- (double)candidateBarHeightForOrientation:(int64_t)orientation;
- (double)candidateBarWidth;
- (double)rowHeightForBarForOrientation:(int64_t)orientation;
- (id)candidateAtIndex:(unint64_t)index;
- (id)firstNonEmptyActiveCandidateView;
- (id)keyboardBehaviors;
- (id)loadCandidateBar;
- (id)loadInProcessInlineCandidateView;
- (id)loadInlineCandidateView;
- (id)newCandidateKeyWithFrame:(CGRect)frame configuration:(id)configuration;
- (id)secureCandidateRenderTraits;
- (id)snapshot;
- (id)statisticsIdentifier;
- (int64_t)candidateViewTypeForView:(id)view;
- (int64_t)layoutDirectionForCurrentInputMode;
- (int64_t)rowForCandidateAtIndex:(unint64_t)index;
- (int64_t)viewOffsetForCandidateAtIndex:(unint64_t)index;
- (unint64_t)currentIndex;
- (unint64_t)selectedSortIndex;
- (void)_setRenderConfig:(id)config;
- (void)acceptSelectedCandidate;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)candidateView:(id)view didAcceptCandidate:(id)candidate atIndexPath:(id)path inGridType:(int64_t)type;
- (void)candidateView:(id)view didAcceptCandidate:(id)candidate atIndexPath:(id)path inGridType:(int64_t)type generateFeedback:(BOOL)feedback;
- (void)candidateViewDidTapInlineText:(id)text;
- (void)candidateViewNeedsToExpand:(id)expand;
- (void)candidateViewSelectionDidChange:(id)change inGridType:(int64_t)type;
- (void)candidateViewWillBeginDragging:(id)dragging;
- (void)candidatesDidChange;
- (void)clientExpandedStateChanged:(BOOL)changed;
- (void)clientStateChangedWithIsExpanded:(BOOL)expanded isVisible:(BOOL)visible;
- (void)collapse;
- (void)dealloc;
- (void)dimKeys:(id)keys;
- (void)extendKeyboardBackdropHeight:(double)height;
- (void)hostedInlineFloatingViewFrameUpdated;
- (void)hostedInlineFloatingViewIsTextVerticalUpdated:(BOOL)updated;
- (void)loadDefaultStates;
- (void)panGestureRecognizerAction:(id)action;
- (void)removeInlineView;
- (void)resetHostedInlineCandidateView;
- (void)resetSortControlIndexAfterCandidatesChanged;
- (void)revealHiddenCandidates;
- (void)setActiveCandidateViewType:(int64_t)type;
- (void)setCandidateResultSet:(id)set;
- (void)setCandidates:(id)candidates type:(int)type inlineText:(id)text inlineRect:(CGRect)rect maxX:(double)x layout:(BOOL)layout inlineCandidatesAreHosted:(BOOL)hosted;
- (void)setHideDisambiguationCandidates:(BOOL)candidates;
- (void)setInlineState:(id)state extended:(BOOL)extended animated:(BOOL)animated options:(unint64_t)options force:(BOOL)force completion:(id)completion;
- (void)setInlineText:(id)text;
- (void)setScreenTraits:(id)traits;
- (void)setUIKeyboardCandidateListDelegate:(id)delegate;
- (void)setupAnimatorWithCurve:(int64_t)curve;
- (void)setupPanGestureRecognizerIfNeeded;
- (void)showCandidateAtIndex:(unint64_t)index animated:(BOOL)animated scrollPosition:(unint64_t)position;
- (void)showCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (void)syncIsExtended;
- (void)toggleBarExtended;
- (void)toggleBarExtendedUnanimated;
- (void)toggleBarExtendedWithAnimator:(id)animator;
- (void)toggleCandidateView:(id)view animated:(BOOL)animated completion:(id)completion;
- (void)toggleInlineViewExtendedAnimated:(BOOL)animated completion:(id)completion;
- (void)toggleKeyViewExtendedAnimated:(BOOL)animated completion:(id)completion;
- (void)updateArrowButtonImageNameToState:(id)state;
- (void)updateConfigurations;
- (void)updateHostedInlineCandidatesWithInlineText:(id)text type:(int)type inlineRect:(CGRect)rect maxX:(double)x layout:(BOOL)layout;
- (void)updateOpacitiesToState:(id)state;
- (void)updateStates;
- (void)updateStatesForBar;
- (void)updateStatesForInlineView;
- (void)updateStatesForKey;
- (void)updateStyles;
@end

@implementation UIKeyboardCandidateController

- (BOOL)isExtended
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    isExtended = self->_isExtended;
  }

  else if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 2) != 0 && [(UIKeyboardCandidateController *)self barIsExtended]|| ([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) != 0 && [(UIKeyboardCandidateController *)self inlineViewIsExtended])
  {
    isExtended = 1;
  }

  else
  {
    isExtended = [(UIKeyboardCandidateController *)self activeCandidateViewType]& 1;
  }

  return isExtended & 1;
}

- (void)updateConfigurations
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v3 currentInputMode];

  screenTraits = [(UIKeyboardCandidateController *)self screenTraits];
  v5 = [screenTraits orientation] - 3;

  screenTraits2 = [(UIKeyboardCandidateController *)self screenTraits];
  idiom = [screenTraits2 idiom];

  if (idiom == 1)
  {
    v8 = [(UIKeyboardCandidateController *)self bar];
    _rootInputWindowController = [v8 _rootInputWindowController];
    placement = [_rootInputWindowController placement];
    v11 = placement;
    if (placement)
    {
      placement2 = placement;
    }

    else
    {
      v19 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      containerRootController = [v19 containerRootController];
      placement2 = [containerRootController placement];
    }

    if ([placement2 isFloatingAssistantView])
    {
      v21 = off_1E70E9F38;
      if (v5 < 2)
      {
        v21 = off_1E70E9F40;
      }
    }

    else
    {
      if (+[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit") && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 centerFilled], v22, (v23 & 1) == 0))
      {
        identifier = [currentInputMode identifier];
        v28 = TIInputModeGetBaseLanguage();
        v29 = [v28 isEqualToString:@"ja"];

        v21 = off_1E70E9F68;
        v25 = off_1E70E9F70;
        v26 = v29 == 0;
      }

      else
      {
        v24 = +[UIKeyboardImpl isFloating];
        v21 = off_1E70E9F28;
        if (v5 < 2)
        {
          v21 = off_1E70E9F30;
        }

        v25 = off_1E70E9F48;
        v26 = !v24;
      }

      if (!v26)
      {
        v21 = v25;
      }
    }

    configuration = [(__objc2_class *)*v21 configuration];
    [(UIKeyboardCandidateController *)self setBarConfiguration:configuration];

    inlineRectIsVertical = [(UIKeyboardCandidateController *)self inlineRectIsVertical];
    v32 = off_1E70E9F78;
    if (!inlineRectIsVertical)
    {
      v32 = off_1E70E9F50;
    }

    configuration2 = [(__objc2_class *)*v32 configuration];
    [(UIKeyboardCandidateController *)self setInlineConfiguration:configuration2];
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v58 = TIGetCandidateViewExperimentsValue();
      integerValue = [v58 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    screenTraits3 = [(UIKeyboardCandidateController *)self screenTraits];
    +[UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:inputMode:](UIKeyboardImpl, "deviceSpecificPaddingForInterfaceOrientation:inputMode:", [screenTraits3 orientation], currentInputMode);
    v16 = v15;

    if (v16 <= 0.0)
    {
      if (v5 >= 2)
      {
        if (integerValue >= 2)
        {
          screenTraits4 = [(UIKeyboardCandidateController *)self screenTraits];
          [screenTraits4 bounds];
          v36 = v35;

          screenTraits5 = [(UIKeyboardCandidateController *)self screenTraits];
          [screenTraits5 bounds];
          v39 = v38;

          if (v36 >= v39)
          {
            v40 = v36;
          }

          else
          {
            v40 = v39;
          }

          v41 = integerValue != 2 && v40 <= 568.0;
          v17 = off_1E70E9F88;
          if (!v41)
          {
            v17 = off_1E70E9FB0;
          }
        }

        else
        {
          v17 = off_1E70E9F90;
        }
      }

      else
      {
        v17 = off_1E70E9FA0;
      }
    }

    else
    {
      v17 = off_1E70E9FA8;
      v18 = off_1E70E9FB8;
      if (integerValue < 2)
      {
        v18 = off_1E70E9F98;
      }

      if (v5 >= 2)
      {
        v17 = v18;
      }
    }

    configuration3 = [(__objc2_class *)*v17 configuration];
    [(UIKeyboardCandidateController *)self setBarConfiguration:configuration3];

    inlineRectIsVertical2 = [(UIKeyboardCandidateController *)self inlineRectIsVertical];
    v44 = off_1E70E9FC8;
    if (!inlineRectIsVertical2)
    {
      v44 = off_1E70E9FC0;
    }

    configuration4 = [(__objc2_class *)*v44 configuration];
    [(UIKeyboardCandidateController *)self setInlineConfiguration:configuration4];

    placement2 = +[UIKeyboardImpl activeInstance];
    configuration2 = [placement2 textInputTraits];
    keyboardType = [configuration2 keyboardType];
    if (keyboardType <= 0xB && ((1 << keyboardType) & 0x930) != 0 || keyboardType == 127)
    {

      placement2 = +[UIKeyboardCandidateViewConfigurationPhoneNumberPad configuration];
      [(UIKeyboardCandidateController *)self setBarConfiguration:placement2];
      goto LABEL_47;
    }
  }

LABEL_47:
  screenTraits6 = [(UIKeyboardCandidateController *)self screenTraits];
  idiom2 = [screenTraits6 idiom];

  v49 = +[UIKeyboardImpl activeInstance];
  liveConversionEnabled = [v49 liveConversionEnabled];

  if (liveConversionEnabled && idiom2 == 1)
  {
    inlineRectIsVertical3 = [(UIKeyboardCandidateController *)self inlineRectIsVertical];
    identifier2 = [currentInputMode identifier];
    v53 = TIInputModeGetVariant();
    v54 = [v53 isEqualToString:@"Zhuyin"];

    v55 = off_1E70E9F80;
    if (!v54)
    {
      v55 = off_1E70E9F78;
    }

    v56 = off_1E70E9F60;
    if (!v54)
    {
      v56 = off_1E70E9F58;
    }

    if (!inlineRectIsVertical3)
    {
      v55 = v56;
    }

    configuration5 = [(__objc2_class *)*v55 configuration];
    [(UIKeyboardCandidateController *)self setInlineConfiguration:configuration5];
  }

  [(UIKeyboardCandidateController *)self updateStyles];
}

- (void)updateStyles
{
  darkKeyboard = [(UIKeyboardCandidateController *)self darkKeyboard];
  barConfiguration = [(UIKeyboardCandidateController *)self barConfiguration];
  [barConfiguration setDarkKeyboard:darkKeyboard];

  darkKeyboard2 = [(UIKeyboardCandidateController *)self darkKeyboard];
  inlineConfiguration = [(UIKeyboardCandidateController *)self inlineConfiguration];
  [inlineConfiguration setDarkKeyboard:darkKeyboard2];

  darkKeyboard3 = [(UIKeyboardCandidateController *)self darkKeyboard];
  keyConfiguration = [(UIKeyboardCandidateController *)self keyConfiguration];
  [keyConfiguration setDarkKeyboard:darkKeyboard3];
}

- (BOOL)barIsExtended
{
  v3 = [(UIKeyboardCandidateController *)self bar];
  state = [v3 state];
  if (state)
  {
    v5 = [(UIKeyboardCandidateController *)self bar];
    state2 = [v5 state];
    extendedBarState = [(UIKeyboardCandidateController *)self extendedBarState];
    if (state2 == extendedBarState)
    {
      v11 = 1;
    }

    else
    {
      v8 = [(UIKeyboardCandidateController *)self bar];
      state3 = [v8 state];
      extendedScrolledBarState = [(UIKeyboardCandidateController *)self extendedScrolledBarState];
      v11 = state3 == extendedScrolledBarState;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateStates
{
  [(UIKeyboardCandidateController *)self updateConfigurations];
  [(UIKeyboardCandidateController *)self updateStatesForBar];
  [(UIKeyboardCandidateController *)self updateStatesForInlineView];

  [(UIKeyboardCandidateController *)self updateStatesForKey];
}

- (void)updateStatesForBar
{
  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 2) == 0)
  {
    return;
  }

  v3 = [(UIKeyboardCandidateController *)self bar];
  v4 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  [v4 setViewForTraitCollection:v3];

  barConfiguration = [(UIKeyboardCandidateController *)self barConfiguration];
  initialState = [barConfiguration initialState];

  barConfiguration2 = [(UIKeyboardCandidateController *)self barConfiguration];
  extendedState = [barConfiguration2 extendedState];

  barConfiguration3 = [(UIKeyboardCandidateController *)self barConfiguration];
  extendedScrolledState = [barConfiguration3 extendedScrolledState];

  screenTraits = [(UIKeyboardCandidateController *)self screenTraits];
  -[UIKeyboardCandidateController rowHeightForBarForOrientation:](self, "rowHeightForBarForOrientation:", [screenTraits orientation]);
  v13 = v12;

  style = [initialState style];
  [style setRowHeight:v13];

  style2 = [extendedState style];
  [style2 setRowHeight:v13];

  style3 = [extendedScrolledState style];
  [style3 setRowHeight:v13];

  renderConfig = [(UIKeyboardCandidateController *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    style4 = [initialState style];
    [style4 setArrowButtonHighlightBackgroundHidden:1];

    style5 = [extendedState style];
    [style5 setArrowButtonHighlightBackgroundHidden:1];

    style6 = [extendedScrolledState style];
    [style6 setArrowButtonHighlightBackgroundHidden:1];

    barConfiguration4 = [(UIKeyboardCandidateController *)self barConfiguration];
    willCoverKeyboardLayout = [barConfiguration4 willCoverKeyboardLayout];

    if (willCoverKeyboardLayout)
    {
      [initialState setHasBackdrop:0];
      style7 = [initialState style];
      [style7 setDoNotClipToBounds:0];

      style8 = [initialState style];
      [style8 setMaskedCorners:3];

      style9 = [initialState style];
      [style9 setCornerRadius:27.0];

      style10 = [initialState style];
      [style10 setGridPadding:{0.0, 14.0, 0.0, 0.0}];

      [extendedState setHasBackdrop:0];
      style11 = [extendedState style];
      [style11 setDoNotClipToBounds:0];

      style12 = [extendedState style];
      [style12 setCornerRadius:27.0];

      style13 = [extendedState style];
      [style13 setGridPadding:{0.0, 14.0, 0.0, 0.0}];

      style14 = [extendedState style];
      [style14 setSortControlPadding:{0.0, 14.0, 0.0, 0.0}];
    }
  }

  if (self->_activeCandidateViewType == 6)
  {
    [initialState setArrowButtonPosition:0];
    style15 = [initialState style];
    arrowButtonSeparatorImage = [style15 arrowButtonSeparatorImage];
    style16 = [initialState style];
    [style16 setRightEdgeSeparatorImage:arrowButtonSeparatorImage];
  }

  [(UIKeyboardCandidateController *)self setAdditionalExtendedBarBackdropOffset:0.0];
  v35 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v35 inputDelegateManager];
  forwardingInputDelegate = [inputDelegateManager forwardingInputDelegate];

  if ([(UIKeyboardCandidateController *)self barIsExtended])
  {
    extendedBarState = [(UIKeyboardCandidateController *)self extendedBarState];
    [extendedBarState yOffset];
    [extendedState setYOffset:?];

    extendedBarState2 = [(UIKeyboardCandidateController *)self extendedBarState];
    [extendedBarState2 additionalHeight];
    [extendedState setAdditionalHeight:?];

    extendedScrolledBarState = [(UIKeyboardCandidateController *)self extendedScrolledBarState];
    [extendedScrolledBarState yOffset];
    [extendedScrolledState setYOffset:?];

    extendedScrolledBarState2 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];
    [extendedScrolledBarState2 additionalHeight];
    [extendedScrolledState setAdditionalHeight:?];

    goto LABEL_40;
  }

  v42 = +[UIKeyboardImpl activeInstance];
  [v42 frame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  showsCandidateBar = [v42 showsCandidateBar];
  v51 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v51 currentInputMode];

  screenTraits2 = [(UIKeyboardCandidateController *)self screenTraits];
  +[UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:inputMode:](UIKeyboardImpl, "deviceSpecificPaddingForInterfaceOrientation:inputMode:", [screenTraits2 orientation], currentInputMode);
  v55 = v54;

  screenTraits3 = [(UIKeyboardCandidateController *)self screenTraits];
  +[UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:inputMode:](UIKeyboardImpl, "deviceSpecificStaticHitBufferForInterfaceOrientation:inputMode:", [screenTraits3 orientation], currentInputMode);
  v58 = v57;

  v293.origin.x = v44;
  v293.origin.y = v46;
  v293.size.width = v48;
  v293.size.height = v50;
  v59 = v55 + CGRectGetHeight(v293) - v58;
  screenTraits4 = [(UIKeyboardCandidateController *)self screenTraits];
  -[UIKeyboardCandidateController candidateBarEdgeInsetsForOrientation:](self, "candidateBarEdgeInsetsForOrientation:", [screenTraits4 orientation]);
  v62 = v61;

  screenTraits5 = [(UIKeyboardCandidateController *)self screenTraits];
  -[UIKeyboardCandidateController candidateBarHeightForOrientation:](self, "candidateBarHeightForOrientation:", [screenTraits5 orientation]);
  v65 = v62 + v64;

  window = [v42 window];
  if (window)
  {
    [v42 window];
  }

  else
  {
    [(UIKeyboardCandidateController *)self screenTraits];
  }
  v67 = ;
  [v67 bounds];
  Height = CGRectGetHeight(v294);

  v69 = v59 + v65;
  barConfiguration5 = [(UIKeyboardCandidateController *)self barConfiguration];
  rowsToExtend = [barConfiguration5 rowsToExtend];

  if (rowsToExtend)
  {
    extendedBarState3 = [(UIKeyboardCandidateController *)self extendedBarState];
    style17 = [extendedBarState3 style];
    [style17 rowHeight];
    v75 = v74;
    barConfiguration6 = [(UIKeyboardCandidateController *)self barConfiguration];
    v77 = v75 * [barConfiguration6 rowsToExtend];

    barConfiguration7 = [(UIKeyboardCandidateController *)self barConfiguration];
    LODWORD(extendedBarState3) = [(UIKeyboardCandidateController *)self shouldShowSortControlForConfiguration:barConfiguration7];

    v79 = 0.0;
    if (extendedBarState3)
    {
      extendedBarState4 = [(UIKeyboardCandidateController *)self extendedBarState];
      style18 = [extendedBarState4 style];
      [style18 rowHeight];
      v77 = v77 + v82;
    }
  }

  else
  {
    window2 = [v42 window];
    v84 = __UIStatusBarManagerForWindow(window2);
    [v84 statusBarHeight];
    v86 = v85;

    v79 = 0.0;
    if (v86 > v62)
    {
      [(UIKeyboardCandidateController *)self setAdditionalExtendedBarBackdropOffset:-(v86 - v62)];
      v79 = v86;
    }

    v77 = v62 + Height - v69 - v86;
  }

  if ([initialState arrowButtonDirection])
  {
    v87 = v69 - v55;
    v88 = 0.0;
    if (showsCandidateBar)
    {
      v88 = v65;
    }

    v89 = v87 - v88;
    [extendedState setAdditionalHeight:v87 - v88];
    v90 = extendedScrolledState;
    v91 = v89;
  }

  else
  {
    if (forwardingInputDelegate)
    {
      v289 = 0;
      v290 = &v289;
      v291 = 0x2050000000;
      v92 = qword_1ED49EE30;
      v292 = qword_1ED49EE30;
      if (!qword_1ED49EE30)
      {
        v288[0] = MEMORY[0x1E69E9820];
        v288[1] = 3221225472;
        v288[2] = __getTUIEmojiSearchTextFieldClass_block_invoke_0;
        v288[3] = &unk_1E70F2F20;
        v288[4] = &v289;
        __getTUIEmojiSearchTextFieldClass_block_invoke_0(v288);
        v92 = v290[3];
      }

      v93 = v92;
      _Block_object_dispose(&v289, 8);
      [v92 preferredHeight];
      v69 = v69 + v94;
    }

    [extendedState setYOffset:-v77];
    [extendedState setAdditionalHeight:v77];
    [extendedScrolledState setYOffset:-v77 - v69];
    v91 = Height - v65 - v79;
    v90 = extendedScrolledState;
  }

  [v90 setAdditionalHeight:v91];
  if ([v42 usesContinuousPath])
  {
    if (qword_1ED49EE38 != -1)
    {
      dispatch_once(&qword_1ED49EE38, &__block_literal_global_601);
    }

    mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v96 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"DisableCPCandidateBarScrolling"];

    LODWORD(mEMORY[0x1E69D9680]) = [v96 BOOLValue];
    if (mEMORY[0x1E69D9680])
    {
      style19 = [initialState style];
      [style19 setScrollDisabled:1];
    }
  }

  if (-[UIKeyboardCandidateController reuseArrowButtonToExpandAssistantBarItems](self, "reuseArrowButtonToExpandAssistantBarItems") && [initialState arrowButtonPosition] == 7)
  {
    candidateResultSet = [(UIKeyboardCandidateController *)self candidateResultSet];
    if ([candidateResultSet hasCandidates])
    {
      candidateResultSet2 = [(UIKeyboardCandidateController *)self candidateResultSet];
      hasOnlyCompletionCandidates = [candidateResultSet2 hasOnlyCompletionCandidates];

      if (!hasOnlyCompletionCandidates)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    [initialState setArrowButtonDirection:2];
  }

LABEL_39:

LABEL_40:
  if ([initialState arrowButtonPosition] == 2)
  {
    v101 = 0.0;
    if (+[UIKeyboardImpl isSplit])
    {
      v102 = +[UIKeyboardImpl activeInstance];
      centerFilled = [v102 centerFilled];

      if ((centerFilled & 1) == 0)
      {
        [(UIKeyboardCandidateController *)self splitGap];
        v101 = v104;
      }
    }

    [initialState setArrowButtonOffset:{v101, 0.0}];
    [extendedState setArrowButtonOffset:{v101, 0.0}];
    [extendedScrolledState setArrowButtonOffset:{v101, 0.0}];
    style20 = [initialState style];
    [style20 rowHeight];
    v107 = v106;
    style21 = [extendedState style];
    [style21 setRowHeight:v107];

    style22 = [initialState style];
    [style22 rowHeight];
    v111 = v110;
    style23 = [extendedScrolledState style];
    [style23 setRowHeight:v111];
  }

  if ([initialState arrowButtonPosition] == 7)
  {
    screenTraits6 = [(UIKeyboardCandidateController *)self screenTraits];
    if (([screenTraits6 orientation] - 1) > 1)
    {
      v116 = +[UIKeyboardImpl isFloating];

      if (!v116)
      {
        goto LABEL_59;
      }
    }

    else
    {
      screenTraits7 = [(UIKeyboardCandidateController *)self screenTraits];
      if ([screenTraits7 idiom])
      {
        v115 = +[UIKeyboardImpl isFloating];

        if (!v115)
        {
          goto LABEL_59;
        }
      }

      else
      {
      }
    }
  }

  else if (!+[UIKeyboardImpl isFloating])
  {
    goto LABEL_59;
  }

  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 2) != 0)
  {
    v117 = 4.0;
  }

  else
  {
    v117 = 0.0;
  }

  [initialState setArrowButtonOffset:{0.0, v117}];
  [extendedState setArrowButtonOffset:{0.0, v117}];
  [extendedScrolledState setArrowButtonOffset:{0.0, v117}];
LABEL_59:
  barConfiguration8 = [(UIKeyboardCandidateController *)self barConfiguration];
  v119 = [(UIKeyboardCandidateController *)self shouldShowSortControlForConfiguration:barConfiguration8];

  if (!v119)
  {
    [extendedState setSortControlPosition:0];
    [extendedScrolledState setSortControlPosition:0];
  }

  if (![(UIKeyboardCandidateController *)self shouldShowDisambiguationCandidates])
  {
    [initialState setDisambiguationGridPosition:0];
  }

  if (![(UIKeyboardCandidateController *)self shouldShowDisambiguationCandidatesInExtendedView])
  {
    [extendedState setDisambiguationGridPosition:0];
    [extendedScrolledState setDisambiguationGridPosition:0];
  }

  renderConfig2 = [(UIKeyboardCandidateController *)self renderConfig];
  if (![renderConfig2 colorAdaptiveBackground])
  {
    goto LABEL_68;
  }

  v121 = +[UIKeyboardImpl isFloating];

  if (v121)
  {
    [initialState setHasBackdrop:0];
    style24 = [initialState style];
    [style24 setDoNotClipToBounds:0];

    [initialState setBorders:0];
    style25 = [initialState style];
    [style25 setCornerRadius:22.0];

    [extendedState setHasBackdrop:0];
    style26 = [extendedState style];
    [style26 setDoNotClipToBounds:0];

    [extendedState setBorders:0];
    renderConfig2 = [extendedState style];
    [renderConfig2 setCornerRadius:22.0];
LABEL_68:
  }

  v125 = +[UIKeyboardImpl activeInstance];
  currentHandBias = [v125 currentHandBias];

  if (!forwardingInputDelegate && (currentHandBias == 1 || currentHandBias == 2 && [(UIKeyboardCandidateController *)self adjustForLeftHandBias]))
  {
    v127 = +[UIKeyboardImpl activeInstance];
    [v127 frame];
    v129 = v128;
    v130 = +[UIKeyboardImpl activeInstance];
    _layout = [v130 _layout];
    [_layout biasedKeyboardWidthRatio];
    v133 = v129 * (1.0 - v132);

    if (currentHandBias == 1)
    {
      v134 = 0.0;
    }

    else
    {
      v134 = v133;
    }

    if (currentHandBias != 1)
    {
      v133 = 0.0;
    }

    layoutDirectionForCurrentInputMode = [(UIKeyboardCandidateController *)self layoutDirectionForCurrentInputMode];
    if ((currentHandBias != 2) == (layoutDirectionForCurrentInputMode == 1))
    {
      style27 = [initialState style];
      [style27 setArrowButtonPadding:{0.0, v133, 0.0, v134}];

      style28 = [extendedState style];
      [style28 setArrowButtonPadding:{0.0, v133, 0.0, v134}];

      style29 = [extendedScrolledState style];
      [style29 setArrowButtonPadding:{0.0, v133, 0.0, v134}];
    }

    if (layoutDirectionForCurrentInputMode == 1)
    {
      v139 = v133;
    }

    else
    {
      v139 = v134;
    }

    if (layoutDirectionForCurrentInputMode == 1)
    {
      v140 = v134;
    }

    else
    {
      v140 = v133;
    }

    style30 = [initialState style];
    [style30 gridPadding];
    v143 = v142 + 0.0;
    v145 = v140 + v144;
    v147 = v146 + 0.0;
    v149 = v139 + v148;
    style31 = [initialState style];
    [style31 setGridPadding:{v143, v145, v147, v149}];

    style32 = [extendedState style];
    [style32 gridPadding];
    v153 = v152 + 0.0;
    v155 = v140 + v154;
    v157 = v156 + 0.0;
    v159 = v139 + v158;
    style33 = [extendedState style];
    [style33 setGridPadding:{v153, v155, v157, v159}];

    style34 = [extendedScrolledState style];
    [style34 gridPadding];
    v163 = v162 + 0.0;
    v165 = v140 + v164;
    v167 = v166 + 0.0;
    v169 = v139 + v168;
    style35 = [extendedScrolledState style];
    [style35 setGridPadding:{v163, v165, v167, v169}];

    style36 = [initialState style];
    [style36 gridPadding];
    v173 = v172;
    v175 = v174;
    v177 = v176;
    v179 = v178;
    style37 = [initialState style];
    [style37 setGridLinePadding:{v173, v175, v177, v179}];

    style38 = [extendedState style];
    [style38 gridPadding];
    v183 = v182;
    v185 = v184;
    v187 = v186;
    v189 = v188;
    style39 = [extendedState style];
    [style39 setGridLinePadding:{v183, v185, v187, v189}];

    style40 = [extendedScrolledState style];
    [style40 gridPadding];
    v193 = v192;
    v195 = v194;
    v197 = v196;
    v199 = v198;
    style41 = [extendedScrolledState style];
    [style41 setGridLinePadding:{v193, v195, v197, v199}];

    style42 = [initialState style];
    [style42 sortControlPadding];
    v203 = v202 + 0.0;
    v205 = v140 + v204;
    v207 = v206 + 0.0;
    v209 = v139 + v208;
    style43 = [initialState style];
    [style43 setSortControlPadding:{v203, v205, v207, v209}];

    style44 = [extendedState style];
    [style44 sortControlPadding];
    v213 = v212 + 0.0;
    v215 = v140 + v214;
    v217 = v216 + 0.0;
    v219 = v139 + v218;
    style45 = [extendedState style];
    [style45 setSortControlPadding:{v213, v215, v217, v219}];

    style46 = [extendedScrolledState style];
    [style46 sortControlPadding];
    v223 = v222 + 0.0;
    v225 = v140 + v224;
    v227 = v226 + 0.0;
    v229 = v139 + v228;
    style47 = [extendedScrolledState style];
    [style47 setSortControlPadding:{v223, v225, v227, v229}];

    disambiguationStyle = [initialState disambiguationStyle];
    [disambiguationStyle gridPadding];
    v233 = v232 + 0.0;
    v235 = v140 + v234;
    v237 = v236 + 0.0;
    v239 = v139 + v238;
    disambiguationStyle2 = [initialState disambiguationStyle];
    [disambiguationStyle2 setGridPadding:{v233, v235, v237, v239}];

    disambiguationStyle3 = [extendedState disambiguationStyle];
    [disambiguationStyle3 gridPadding];
    v243 = v242 + 0.0;
    v245 = v140 + v244;
    v247 = v246 + 0.0;
    v249 = v139 + v248;
    disambiguationStyle4 = [extendedState disambiguationStyle];
    [disambiguationStyle4 setGridPadding:{v243, v245, v247, v249}];

    disambiguationStyle5 = [extendedScrolledState disambiguationStyle];
    [disambiguationStyle5 gridPadding];
    v253 = v252 + 0.0;
    v255 = v140 + v254;
    v257 = v256 + 0.0;
    v259 = v139 + v258;
    disambiguationStyle6 = [extendedScrolledState disambiguationStyle];
    [disambiguationStyle6 setGridPadding:{v253, v255, v257, v259}];
  }

  style48 = [initialState style];
  [style48 singleSlottedCellMargin];
  if (v262 <= 0.0)
  {
    goto LABEL_90;
  }

  [(UIKeyboardCandidateController *)self singleSlottedCellMargin];
  v264 = v263;

  if (v264 > 0.0)
  {
    [(UIKeyboardCandidateController *)self singleSlottedCellMargin];
    v266 = v265;
    style48 = [initialState style];
    [style48 setSingleSlottedCellMargin:v266];
LABEL_90:
  }

  [(UIKeyboardCandidateController *)self updateOpacitiesToState:initialState];
  [(UIKeyboardCandidateController *)self updateArrowButtonImageNameToState:initialState];
  barState = [(UIKeyboardCandidateController *)self barState];
  v268 = [barState isEqual:initialState];

  if ((v268 & 1) == 0)
  {
    v269 = [(UIKeyboardCandidateController *)self bar];
    state = [v269 state];
    barState2 = [(UIKeyboardCandidateController *)self barState];

    if (state == barState2)
    {
      v272 = [(UIKeyboardCandidateController *)self bar];
      [v272 setState:initialState animated:0 force:1 completion:0];

      [(UIKeyboardCandidateController *)self syncIsExtended];
    }

    [(UIKeyboardCandidateController *)self setBarState:initialState];
  }

  extendedBarState5 = [(UIKeyboardCandidateController *)self extendedBarState];
  v274 = [extendedBarState5 isEqual:extendedState];

  if ((v274 & 1) == 0)
  {
    v275 = [(UIKeyboardCandidateController *)self bar];
    state2 = [v275 state];
    extendedBarState6 = [(UIKeyboardCandidateController *)self extendedBarState];

    if (state2 == extendedBarState6)
    {
      v278 = [(UIKeyboardCandidateController *)self bar];
      [v278 setState:extendedState animated:0 force:1 completion:0];

      [(UIKeyboardCandidateController *)self syncIsExtended];
    }

    [(UIKeyboardCandidateController *)self setExtendedBarState:extendedState];
  }

  extendedScrolledBarState3 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];
  v280 = [extendedScrolledBarState3 isEqual:extendedScrolledState];

  if ((v280 & 1) == 0)
  {
    v281 = [(UIKeyboardCandidateController *)self bar];
    state3 = [v281 state];
    extendedScrolledBarState4 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];

    if (state3 == extendedScrolledBarState4)
    {
      v284 = [(UIKeyboardCandidateController *)self bar];
      [v284 setState:extendedScrolledState animated:0 force:1 completion:0];

      [(UIKeyboardCandidateController *)self syncIsExtended];
    }

    [(UIKeyboardCandidateController *)self setExtendedScrolledBarState:extendedScrolledState];
  }

  v285 = [(UIKeyboardCandidateController *)self bar];
  v286 = [UITraitCollection traitCollectionWithLayoutDirection:[(UIKeyboardCandidateController *)self layoutDirectionForCurrentInputMode]];
  [v285 _setLocalOverrideTraitCollection:v286];

  [(UIKeyboardCandidateController *)self setupPanGestureRecognizerIfNeeded];
}

- (void)updateStatesForInlineView
{
  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) == 0)
  {
    return;
  }

  inlineView = [(UIKeyboardCandidateController *)self inlineView];
  v4 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  [v4 setViewForTraitCollection:inlineView];

  inlineConfiguration = [(UIKeyboardCandidateController *)self inlineConfiguration];
  initialState = [inlineConfiguration initialState];

  inlineConfiguration2 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  extendedState = [inlineConfiguration2 extendedState];

  v8 = +[UIKeyboardImpl activeInstance];
  inputDelegate = [v8 inputDelegate];

  if (objc_opt_respondsToSelector())
  {
    v10 = inputDelegate;
    v11 = [UITextInputTraits traitEnvironmentFromTraits:v10];
    traitCollection = [v11 traitCollection];
    insertionPointColor = [v10 insertionPointColor];
    v14 = [insertionPointColor resolvedColorWithTraitCollection:traitCollection];

    style = [initialState style];
    [style setHighlightedBackgroundColor:v14];

    style2 = [extendedState style];
    [style2 setHighlightedBackgroundColor:v14];

    v17 = v14;
    style3 = [initialState style];
    highlightedTextColor = [style3 highlightedTextColor];

    [v17 _distanceFrom:highlightedTextColor];
    if (v20 != 1.79769313e308 && v20 <= 0.1)
    {
      _inverseColor = [v17 _inverseColor];
      style4 = [initialState style];
      [style4 setHighlightedTextColor:_inverseColor];

      _inverseColor2 = [v17 _inverseColor];
      style5 = [initialState style];
      [style5 setHighlightedCandidateNumberColor:_inverseColor2];

      _inverseColor3 = [v17 _inverseColor];
      style6 = [extendedState style];
      [style6 setHighlightedTextColor:_inverseColor3];

      _inverseColor4 = [v17 _inverseColor];
      style7 = [extendedState style];
      [style7 setHighlightedCandidateNumberColor:_inverseColor4];
    }
  }

  +[UIKeyboardCandidateViewConfiguration lineHeightMultiplierForCurrentLanguage];
  v30 = v29;
  style8 = [initialState style];
  [style8 rowHeight];
  v33 = v30 * v32;
  style9 = [initialState style];
  [style9 setRowHeight:v33];

  style10 = [extendedState style];
  [style10 rowHeight];
  v182 = v30;
  v37 = v30 * v36;
  style11 = [extendedState style];
  [style11 setRowHeight:v37];

  renderConfig = [(UIKeyboardCandidateController *)self renderConfig];
  LODWORD(style11) = [renderConfig colorAdaptiveBackground];

  if (style11)
  {
    v40 = [[_UIViewGlass alloc] initWithVariant:0];
    style12 = [initialState style];
    [style12 setBackgroundMaterial:v40];

    v42 = +[UIColor clearColor];
    style13 = [initialState style];
    [style13 setBackgroundColor:v42];

    v44 = +[UIColor clearColor];
    style14 = [initialState style];
    [style14 setGridBackgroundColor:v44];

    v46 = +[UIColor clearColor];
    style15 = [initialState style];
    [style15 setBorderColor:v46];

    style16 = [initialState style];
    [style16 setBorderWidth:0.0];

    style17 = [initialState style];
    [style17 setArrowButtonBackgroundHidden:0];

    style18 = [initialState style];
    [style18 setArrowButtonHighlightBackgroundHidden:1];

    [initialState setHasBackdrop:0];
    style19 = [initialState style];
    [style19 rowHeight];
    v53 = v52 * 0.5;
    style20 = [initialState style];
    [style20 setCellCornerRadius:v53];

    style21 = [initialState style];
    [style21 rowHeight];
    v57 = v56 * 0.5;
    style22 = [initialState style];
    [style22 setCornerRadius:v57];

    style23 = [initialState style];
    [style23 setOuterGridPadding:{2.0, 2.0, 2.0, 2.0}];

    style24 = [initialState style];
    [style24 setGridLinePadding:{0.0, 0.0, 2.0, 0.0}];

    style25 = [initialState style];
    [style25 setCellTopOffset:2.0];

    style26 = [initialState style];
    [style26 rowHeight];
    v64 = v63 + 4.0;
    style27 = [initialState style];
    [style27 setArrowButtonHeight:v64];

    style28 = [initialState style];
    [style28 setShowExtraLineBeforeFirstRow:0];

    [initialState setAdditionalHeight:4.0];
    v67 = [[_UIViewGlass alloc] initWithVariant:0];
    style29 = [extendedState style];
    [style29 setBackgroundMaterial:v67];

    v69 = +[UIColor clearColor];
    style30 = [extendedState style];
    [style30 setBackgroundColor:v69];

    v71 = +[UIColor clearColor];
    style31 = [extendedState style];
    [style31 setGridBackgroundColor:v71];

    v73 = +[UIColor clearColor];
    style32 = [extendedState style];
    [style32 setBorderColor:v73];

    style33 = [extendedState style];
    [style33 setBorderWidth:0.0];

    style34 = [extendedState style];
    [style34 setArrowButtonBackgroundHidden:0];

    style35 = [extendedState style];
    [style35 setArrowButtonHighlightBackgroundHidden:1];

    [extendedState setHasBackdrop:0];
    style36 = [extendedState style];
    [style36 rowHeight];
    v80 = v79 * 0.5;
    style37 = [extendedState style];
    [style37 setCellCornerRadius:v80];

    style38 = [extendedState style];
    [style38 setGridLinePadding:{0.0, 0.0, 2.0, 0.0}];

    style39 = [extendedState style];
    [style39 setOuterGridPadding:{2.0, 2.0, 2.0, 2.0}];

    style40 = [extendedState style];
    [style40 setCellTopOffset:2.0];

    style41 = [extendedState style];
    [style41 setInterRowSpacing:2.0];

    style42 = [extendedState style];
    [style42 setLineTopOffset:-2.0];

    style43 = [extendedState style];
    [style43 setShowExtraLineBeforeFirstRow:0];

    [extendedState additionalHeight];
    [extendedState setAdditionalHeight:v88 + 4.0];
  }

  [(UIKeyboardCandidateController *)self inlineRect];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v181 = v95;
  inlineViewContainer = [(UIKeyboardCandidateController *)self inlineViewContainer];
  superview = [inlineViewContainer superview];
  [superview bounds];
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;

  inlineViewContainer2 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  superview2 = [inlineViewContainer2 superview];
  [superview2 safeAreaInsets];
  v109 = v99 + v108;
  v111 = v101 + v110;
  v113 = v103 - (v108 + v112);
  v115 = v105 - (v110 + v114);

  [(UIKeyboardCandidateController *)self candidateBarHeight];
  v117 = v115 - v116;
  v185.origin.x = v109;
  v185.origin.y = v111;
  v185.size.width = v113;
  v185.size.height = v117;
  if (CGRectGetHeight(v185) > 0.0)
  {
    v186.origin.x = v109;
    v186.origin.y = v111;
    v186.size.width = v113;
    v186.size.height = v117;
    if (!CGRectIsNull(v186))
    {
      v187.origin.x = v109;
      v187.origin.y = v111;
      v187.size.width = v113;
      v187.size.height = v117;
      if (!CGRectIsEmpty(v187))
      {
        v188.origin.x = v90;
        v188.origin.y = v92;
        v188.size.width = v94;
        v188.size.height = v181;
        MinY = CGRectGetMinY(v188);
        v189.origin.x = v109;
        v189.origin.y = v111;
        v189.size.width = v113;
        v189.size.height = v117;
        MaxY = CGRectGetMaxY(v189);
        v190.origin.x = v90;
        v190.origin.y = v92;
        v190.size.width = v94;
        v190.size.height = v181;
        v119 = MaxY - CGRectGetMaxY(v190);
        if (MinY >= v119)
        {
          v120 = MinY;
        }

        else
        {
          v120 = v119;
        }

        style44 = [extendedState style];
        [style44 rowHeight];
        v123 = v122;

        inlineConfiguration3 = [(UIKeyboardCandidateController *)self inlineConfiguration];
        [inlineConfiguration3 preferredInlineFloatingViewSize];
        v126 = v125;

        if (v123 < v126)
        {
          v123 = v126;
        }

        style45 = [extendedState style];
        [style45 rowHeight];
        if (v128 <= 0.0)
        {
          goto LABEL_22;
        }

        [extendedState additionalHeight];
        v130 = v123 + v129;

        if (v120 < v130)
        {
          style46 = [extendedState style];
          [style46 rowHeight];
          v133 = ((v120 - v123) / v132);

          v134 = 2;
          if (v133 > 2)
          {
            v134 = v133;
          }

          v135 = v134;
          style45 = [extendedState style];
          [style45 rowHeight];
          [extendedState setAdditionalHeight:v136 * v135];
LABEL_22:
        }
      }
    }
  }

  inlineConfiguration4 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  [inlineConfiguration4 preferredInlineFloatingViewSize];
  v139 = v138;
  v141 = v140;

  inlineViewContainer3 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [inlineViewContainer3 setPreferredSize:{v139, v182 * v141}];

  [extendedState additionalHeight];
  v144 = v143;
  inlineViewContainer4 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [inlineViewContainer4 setExtendedStateAdditionalHeight:v144];

  inlineConfiguration5 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  inlineFloatingViewAdjustMode = [inlineConfiguration5 inlineFloatingViewAdjustMode];
  inlineViewContainer5 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [inlineViewContainer5 setAdjustMode:inlineFloatingViewAdjustMode];

  inlineRectIsVertical = [(UIKeyboardCandidateController *)self inlineRectIsVertical];
  style47 = [initialState style];
  [style47 minimumCellPadding];
  v152 = v151;
  style48 = [initialState style];
  [style48 minimumCellPadding];
  v155 = v154;
  inlineViewContainer6 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  v157 = inlineViewContainer6;
  v158 = 0.0;
  if (inlineRectIsVertical)
  {
    v159 = v152;
  }

  else
  {
    v159 = 0.0;
  }

  if (inlineRectIsVertical)
  {
    v160 = 0.0;
  }

  else
  {
    v160 = v152;
  }

  if (inlineRectIsVertical)
  {
    v161 = v155;
  }

  else
  {
    v161 = 0.0;
  }

  if (inlineRectIsVertical)
  {
    v162 = 0.0;
  }

  else
  {
    v162 = v155;
  }

  [inlineViewContainer6 setCellPadding:{v159, v160, v161, v162}];

  [(UIKeyboardCandidateController *)self candidateBarHeight];
  v164 = v163;
  inlineViewContainer7 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [inlineViewContainer7 setExtraInsets:{0.0, 0.0, v164, 0.0}];

  inlineViewContainer8 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  if ([inlineViewContainer8 shouldExtendUpwards])
  {
    [extendedState additionalHeight];
    v158 = -v167;
  }

  [extendedState setYOffset:v158];

  inlineViewState = [(UIKeyboardCandidateController *)self inlineViewState];
  v169 = [inlineViewState isEqual:initialState];

  if ((v169 & 1) == 0)
  {
    inlineView2 = [(UIKeyboardCandidateController *)self inlineView];
    state = [inlineView2 state];
    inlineViewState2 = [(UIKeyboardCandidateController *)self inlineViewState];

    if (state == inlineViewState2)
    {
      [(UIKeyboardCandidateController *)self setInlineState:initialState extended:0 animated:0 options:0 force:1 completion:0];
    }

    [(UIKeyboardCandidateController *)self setInlineViewState:initialState];
  }

  extendedInlineViewState = [(UIKeyboardCandidateController *)self extendedInlineViewState];
  v174 = [extendedInlineViewState isEqual:extendedState];

  if ((v174 & 1) == 0)
  {
    inlineView3 = [(UIKeyboardCandidateController *)self inlineView];
    state2 = [inlineView3 state];
    extendedInlineViewState2 = [(UIKeyboardCandidateController *)self extendedInlineViewState];

    if (state2 == extendedInlineViewState2)
    {
      [(UIKeyboardCandidateController *)self setInlineState:extendedState extended:1 animated:0 options:0 force:1 completion:0];
    }

    [(UIKeyboardCandidateController *)self setExtendedInlineViewState:extendedState];
  }

  if (![(UIKeyboardCandidateController *)self inLineCandidateViewIsHosted])
  {
    inlineView4 = [(UIKeyboardCandidateController *)self inlineView];
    v179 = [UITraitCollection traitCollectionWithLayoutDirection:[(UIKeyboardCandidateController *)self layoutDirectionForCurrentInputMode]];
    [inlineView4 _setLocalOverrideTraitCollection:v179];
  }
}

- (void)updateStatesForKey
{
  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 1) == 0)
  {
    return;
  }

  v3 = [(UIKeyboardCandidateController *)self key];
  v4 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  [v4 setViewForTraitCollection:v3];

  keyConfiguration = [(UIKeyboardCandidateController *)self keyConfiguration];
  initialState = [keyConfiguration initialState];

  keyConfiguration2 = [(UIKeyboardCandidateController *)self keyConfiguration];
  extendedState = [keyConfiguration2 extendedState];

  keyConfiguration3 = [(UIKeyboardCandidateController *)self keyConfiguration];
  if ([(UIKeyboardCandidateController *)self shouldShowSortControlForConfiguration:keyConfiguration3])
  {
    sortControlPosition = [initialState sortControlPosition];
  }

  else
  {
    sortControlPosition = 0;
  }

  [initialState setSortControlPosition:sortControlPosition];

  if ([(UIKeyboardCandidateController *)self shouldShowDisambiguationCandidates])
  {
    disambiguationGridPosition = [initialState disambiguationGridPosition];
  }

  else
  {
    disambiguationGridPosition = 0;
  }

  [initialState setDisambiguationGridPosition:disambiguationGridPosition];
  keyConfiguration4 = [(UIKeyboardCandidateController *)self keyConfiguration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    primaryGridRowType = [initialState primaryGridRowType];
    v14 = [(UIKeyboardCandidateController *)self key];
    [v14 frame];
    Height = CGRectGetHeight(v93);
    v16 = ceil(Height * 0.25);
    if (primaryGridRowType == 1)
    {
      v17 = v16;
    }

    else
    {
      v17 = Height;
    }

    style = [initialState style];
    [style setRowHeight:v17];

    disambiguationStyle = [initialState disambiguationStyle];
    [disambiguationStyle setRowHeight:v17];
  }

  renderConfig = [(UIKeyboardCandidateController *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
  {
    v21 = +[UIKeyboardImpl isSplit];

    if (!v21)
    {
      goto LABEL_17;
    }

    v22 = +[UIColor clearColor];
    style2 = [initialState style];
    [style2 setBackgroundColor:v22];

    renderConfig = +[UIColor clearColor];
    style3 = [initialState style];
    [style3 setGridBackgroundColor:renderConfig];
  }

LABEL_17:
  keyConfiguration5 = [(UIKeyboardCandidateController *)self keyConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    renderConfig2 = [(UIKeyboardCandidateController *)self renderConfig];
    colorAdaptiveBackground = [renderConfig2 colorAdaptiveBackground];

    if (!colorAdaptiveBackground)
    {
      goto LABEL_33;
    }

    v28 = +[UIKeyboardImpl activeInstance];
    _layout = [v28 _layout];
    keyConfiguration5 = [_layout currentKeyplane];

    v30 = [keyConfiguration5 firstCachedKeyWithName:@"Candidate-Selection"];
    if (!v30)
    {
      goto LABEL_31;
    }

    style4 = [initialState style];
    [style4 setCellCornerRadius:8.0];

    renderConfig3 = [(UIKeyboardCandidateController *)self renderConfig];
    [renderConfig3 keycapOpacity];
    v34 = v33;
    style5 = [initialState style];
    [style5 setBackgroundOpacity:v34];

    style6 = [initialState style];
    [style6 setRowHeight:20.0];

    v37 = [UIColor colorWithWhite:1.0 alpha:0.2];
    style7 = [initialState style];
    [style7 setHighlightedBackgroundColor:v37];

    v39 = +[UIColor clearColor];
    style8 = [initialState style];
    [style8 setBackgroundColor:v39];

    lightKeyboard = [(UIKBRenderConfig *)self->_renderConfig lightKeyboard];
    v42 = UIKBColorCarLightDivider;
    if (!lightKeyboard)
    {
      v42 = UIKBColorCarDarkDivider;
    }

    v43 = [UIColor colorWithCGColor:UIKBGetNamedColor(*v42)];
    style9 = [initialState style];
    [style9 setLineColor:v43];

    v45 = +[UIKeyboardImpl activeInstance];
    _layout2 = [v45 _layout];

    v90 = _layout2;
    keyplaneFactory = [_layout2 keyplaneFactory];
    v47 = [keyplaneFactory traitsForKey:v30 onKeyplane:keyConfiguration5];
    symbolStyle = [v47 symbolStyle];

    fontName = [symbolStyle fontName];
    [symbolStyle fontWeight];
    v51 = v50;
    v52 = [fontName isEqualToString:@"UIKBRenderFactorySystemFontName"];
    if ([fontName isEqualToString:@"UIKBRenderFactorySystemCompactFontName"])
    {
      if (!v52)
      {
LABEL_28:
        [symbolStyle setFontSize:13.0];
        [symbolStyle fontSize];
        v57 = v56;
        [symbolStyle fontWeight];
        v55 = [off_1E70ECC18 systemFontOfSize:*off_1E70ECCE0 weight:v57 design:v58];
        goto LABEL_30;
      }
    }

    else
    {
      fontName2 = [symbolStyle fontName];
      v54 = [fontName2 isEqualToString:@".SFCompact-Bold"];

      if ((v52 & 1) == 0)
      {
        if (!v54)
        {
          v55 = [off_1E70ECC18 fontWithName:fontName size:13.0];
          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    v55 = [off_1E70ECC18 systemFontOfSize:13.0 weight:v51];
LABEL_30:
    v59 = v55;
    style10 = [initialState style];
    [style10 setCellTextAlignment:1];

    style11 = [initialState style];
    [style11 setCandidateFont:v59];

    textColor = [symbolStyle textColor];
    v63 = [UIColor colorWithCGColor:UIKBGetNamedColor(textColor)];
    style12 = [initialState style];
    [style12 setTextColor:v63];

    textColor2 = [symbolStyle textColor];
    v66 = [UIColor colorWithCGColor:UIKBGetNamedColor(textColor2)];
    style13 = [initialState style];
    [style13 setHighlightedTextColor:v66];

LABEL_31:
  }

LABEL_33:
  renderConfig4 = [(UIKeyboardCandidateController *)self renderConfig];
  if (![renderConfig4 colorAdaptiveBackground])
  {
LABEL_39:

    goto LABEL_40;
  }

  v69 = +[UIKeyboardImpl isSplit];

  if (v69)
  {
    if ([(UIKeyboardCandidateController *)self darkKeyboard])
    {
      [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha70")];
    }

    else
    {
      +[UIKeyboardPopoverContainer borderColor];
    }
    renderConfig4 = ;
    style14 = [initialState style];
    [style14 setLineColor:renderConfig4];

    goto LABEL_39;
  }

LABEL_40:
  [(UIKeyboardCandidateController *)self updateOpacitiesToState:initialState];
  keyState = [(UIKeyboardCandidateController *)self keyState];
  v72 = [keyState isEqual:initialState];

  if ((v72 & 1) == 0)
  {
    v73 = [(UIKeyboardCandidateController *)self key];
    state = [v73 state];
    keyState2 = [(UIKeyboardCandidateController *)self keyState];

    if (state == keyState2)
    {
      v76 = [(UIKeyboardCandidateController *)self key];
      [v76 setState:initialState animated:0 force:1 completion:0];
    }

    [(UIKeyboardCandidateController *)self setKeyState:initialState];
  }

  extendedKeyState = [(UIKeyboardCandidateController *)self extendedKeyState];
  v78 = [extendedKeyState isEqual:extendedState];

  if ((v78 & 1) == 0)
  {
    v79 = [(UIKeyboardCandidateController *)self key];
    state2 = [v79 state];
    extendedKeyState2 = [(UIKeyboardCandidateController *)self extendedKeyState];

    if (state2 == extendedKeyState2)
    {
      v82 = [(UIKeyboardCandidateController *)self key];
      [v82 setState:extendedState animated:0 force:1 completion:0];
    }

    [(UIKeyboardCandidateController *)self setExtendedKeyState:extendedState];
  }

  v83 = [(UIKeyboardCandidateController *)self key];
  state3 = [v83 state];

  if (!state3)
  {
    v85 = [(UIKeyboardCandidateController *)self key];
    keyState3 = [(UIKeyboardCandidateController *)self keyState];
    [v85 setState:keyState3 animated:0 force:1 completion:0];
  }

  v87 = [(UIKeyboardCandidateController *)self key];
  v88 = [UITraitCollection traitCollectionWithLayoutDirection:[(UIKeyboardCandidateController *)self layoutDirectionForCurrentInputMode]];
  [v87 _setLocalOverrideTraitCollection:v88];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UIKeyboardCandidateController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49EE18 != -1)
  {
    dispatch_once(&qword_1ED49EE18, block);
  }

  v2 = _MergedGlobals_1164;

  return v2;
}

void __47__UIKeyboardCandidateController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_1164;
  _MergedGlobals_1164 = v1;
}

- (UIKeyboardCandidateController)init
{
  v8.receiver = self;
  v8.super_class = UIKeyboardCandidateController;
  v2 = [(UIKeyboardCandidateController *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    activeViews = v2->_activeViews;
    v2->_activeViews = v3;

    v2->_adjustForLeftHandBias = 1;
    v2->_hideDisambiguationCandidates = 0;
    v5 = [[_UIAssertionController alloc] initWithAssertionSubject:v2];
    assertionController = v2->_assertionController;
    v2->_assertionController = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(TUICandidateView *)self->_bar removeFromSuperview];
  [(UIView *)self->_inlineViewContainer removeFromSuperview];
  v3.receiver = self;
  v3.super_class = UIKeyboardCandidateController;
  [(UIKeyboardCandidateController *)&v3 dealloc];
}

- (id)loadCandidateBar
{
  bar = self->_bar;
  if (!bar)
  {
    [(UIKeyboardCandidateController *)self loadDefaultStates];
    v4 = [objc_alloc(getTUICandidateViewClass()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v5 = self->_bar;
    self->_bar = v4;

    [(TUICandidateView *)self->_bar setState:self->_barState];
    [(TUICandidateView *)self->_bar setDelegate:self];
    bar = self->_bar;
  }

  return bar;
}

- (id)loadInlineCandidateView
{
  if (!self->_inlineView && !self->_hostedInlineViewContainer)
  {
    [(UIKeyboardCandidateController *)self loadDefaultStates];
    v3 = +[UIKeyboardImpl activeInstance];
    inputOverlayContainer = [v3 inputOverlayContainer];

    loadInProcessInlineCandidateView = [(UIKeyboardCandidateController *)self loadInProcessInlineCandidateView];
    [(UIView *)self->_inlineViewContainer setHidden:1];
    inlineViewContainer = self->_inlineViewContainer;
    if (!inlineViewContainer)
    {
      v7 = [UIKeyboardCandidateInlineFloatingView alloc];
      v8 = [(UIKeyboardCandidateInlineFloatingView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v9 = self->_inlineViewContainer;
      self->_inlineViewContainer = v8;

      [(UIView *)self->_inlineViewContainer setHidden:1];
      inlineViewContainer = self->_inlineViewContainer;
    }

    v10 = [UITraitCollection traitCollectionWithUserInterfaceLevel:1];
    [(UIView *)inlineViewContainer _setLocalOverrideTraitCollection:v10];

    [(UIView *)self->_inlineViewContainer addSubview:loadInProcessInlineCandidateView];
    if (inputOverlayContainer != self->_inlineViewContainer)
    {
      [(UIView *)inputOverlayContainer addSubview:?];
    }
  }

  v11 = self->_inlineViewContainer;

  return v11;
}

- (id)loadInProcessInlineCandidateView
{
  v3 = [objc_alloc(getTUICandidateViewClass()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  inlineView = self->_inlineView;
  self->_inlineView = v3;

  [(TUICandidateView *)self->_inlineView setState:self->_inlineViewState];
  [(TUICandidateView *)self->_inlineView setDelegate:self];
  v5 = self->_inlineView;

  return v5;
}

- (id)newCandidateKeyWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIKeyboardCandidateController *)self setKeyConfiguration:configuration];
  v9 = [objc_alloc(getTUICandidateViewClass()) initWithFrame:{x, y, width, height}];
  key = self->_key;
  self->_key = v9;
  v11 = v9;

  [(TUICandidateView *)self->_key setDelegate:self];
  v12 = self->_key;

  return v12;
}

- (void)setActiveCandidateViewType:(int64_t)type
{
  typeCopy = type;
  self->_activeCandidateViewType = type;
  [(NSMutableArray *)self->_activeViews removeAllObjects];
  if ((typeCopy & 1) != 0 && self->_key)
  {
    activeViews = self->_activeViews;
    v6 = [(UIKeyboardCandidateController *)self key];
    [(NSMutableArray *)activeViews addObject:v6];
  }

  if ((typeCopy & 2) != 0)
  {
    loadCandidateBar = [(UIKeyboardCandidateController *)self loadCandidateBar];
    v10 = self->_activeViews;
    _layout = [(UIKeyboardCandidateController *)self bar];
    [(NSMutableArray *)v10 addObject:_layout];
  }

  else
  {
    v7 = +[UIKeyboardImpl activeInstance];
    _layout = [v7 _layout];

    [_layout setHidden:0];
  }

  if ((typeCopy & 4) != 0)
  {
    loadInlineCandidateView = [(UIKeyboardCandidateController *)self loadInlineCandidateView];
    if (![(UIKeyboardCandidateController *)self inLineCandidateViewIsHosted])
    {
      v12 = self->_activeViews;
      inlineView = [(UIKeyboardCandidateController *)self inlineView];
      [(NSMutableArray *)v12 addObject:inlineView];
    }
  }
}

- (NSArray)activeCandidateViews
{
  v2 = [(NSMutableArray *)self->_activeViews copy];

  return v2;
}

- (int64_t)candidateViewTypeForView:(id)view
{
  viewCopy = view;
  if (self->_bar == viewCopy)
  {
    v5 = 2;
  }

  else if (self->_inlineView == viewCopy)
  {
    v5 = 4;
  }

  else
  {
    v5 = self->_key == viewCopy;
  }

  return v5;
}

- (id)firstNonEmptyActiveCandidateView
{
  v20 = *MEMORY[0x1E69E9840];
  activeViews = [(UIKeyboardCandidateController *)self activeViews];
  firstObject = [activeViews firstObject];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  activeViews2 = [(UIKeyboardCandidateController *)self activeViews];
  v6 = [activeViews2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(activeViews2);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        candidateResultSet = [v10 candidateResultSet];
        hasCandidates = [candidateResultSet hasCandidates];

        if (hasCandidates)
        {
          v13 = v10;

          firstObject = v13;
          goto LABEL_11;
        }
      }

      v7 = [activeViews2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return firstObject;
}

- (void)resetHostedInlineCandidateView
{
  if ([(UIKeyboardCandidateController *)self inLineCandidateViewIsHosted])
  {

    [(UIKeyboardCandidateController *)self removeInlineView];
  }
}

- (void)loadDefaultStates
{
  if (!self->_barState)
  {
    [(UIKeyboardCandidateController *)self updateConfigurations];
    barConfiguration = [(UIKeyboardCandidateController *)self barConfiguration];
    initialState = [barConfiguration initialState];
    barState = self->_barState;
    self->_barState = initialState;

    barConfiguration2 = [(UIKeyboardCandidateController *)self barConfiguration];
    extendedState = [barConfiguration2 extendedState];
    extendedBarState = self->_extendedBarState;
    self->_extendedBarState = extendedState;

    barConfiguration3 = [(UIKeyboardCandidateController *)self barConfiguration];
    extendedScrolledState = [barConfiguration3 extendedScrolledState];
    extendedScrolledBarState = self->_extendedScrolledBarState;
    self->_extendedScrolledBarState = extendedScrolledState;
  }
}

- (BOOL)shouldShowSortControlForConfiguration:(id)configuration
{
  if ([configuration shouldAlwaysShowSortControl])
  {
    return 1;
  }

  candidateResultSet = [(UIKeyboardCandidateController *)self candidateResultSet];
  sortMethods = [candidateResultSet sortMethods];
  v4 = [sortMethods count] > 1;

  return v4;
}

- (BOOL)shouldShowDisambiguationCandidates
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  currentLinguisticInputMode = [v3 currentLinguisticInputMode];
  identifier = [currentLinguisticInputMode identifier];
  stringValue = [&unk_1EFE30E50 stringValue];
  v7 = [@"Pinyin" stringByAppendingString:stringValue];
  if ([identifier rangeOfString:v7] == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = ![(UIKeyboardCandidateController *)self hideDisambiguationCandidates];
  }

  return v8;
}

- (void)setHideDisambiguationCandidates:(BOOL)candidates
{
  if (self->_hideDisambiguationCandidates != candidates)
  {
    self->_hideDisambiguationCandidates = candidates;
    [(UIKeyboardCandidateController *)self updateStates];
  }
}

- (void)setInlineState:(id)state extended:(BOOL)extended animated:(BOOL)animated options:(unint64_t)options force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  animatedCopy = animated;
  completionCopy = completion;
  stateCopy = state;
  inlineView = [(UIKeyboardCandidateController *)self inlineView];
  [inlineView setState:stateCopy animated:animatedCopy options:options force:forceCopy completion:completionCopy];
}

- (void)updateOpacitiesToState:(id)state
{
  v32 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  opacities = [(UIKeyboardCandidateController *)self opacities];

  if (opacities)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    opacities2 = [(UIKeyboardCandidateController *)self opacities];
    allKeys = [opacities2 allKeys];

    v8 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v8;
    v10 = *v28;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        opacities3 = [(UIKeyboardCandidateController *)self opacities];
        v14 = [opacities3 objectForKeyedSubscript:v12];

        integerValue = [v12 integerValue];
        if ((integerValue & 4) != 0)
        {
          [v14 doubleValue];
          v23 = v22;
          style = [stateCopy style];
          [style setForegroundOpacity:v23];

          [v14 doubleValue];
          v26 = v25;
          disambiguationStyle = [stateCopy disambiguationStyle];
          [disambiguationStyle setForegroundOpacity:v26];
        }

        else
        {
          if ((integerValue & 1) == 0)
          {
            goto LABEL_12;
          }

          [v14 doubleValue];
          v17 = v16;
          style2 = [stateCopy style];
          [style2 setBackgroundOpacity:v17];

          [v14 doubleValue];
          v20 = v19;
          disambiguationStyle = [stateCopy disambiguationStyle];
          [disambiguationStyle setBackgroundOpacity:v20];
        }

LABEL_12:
        ++v11;
      }

      while (v9 != v11);
      v9 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v9)
      {
LABEL_14:

        break;
      }
    }
  }
}

- (void)updateArrowButtonImageNameToState:(id)state
{
  stateCopy = state;
  v4 = +[UIKeyboardImpl activeInstance];
  if (([v4 _hasMarkedText] & 1) == 0)
  {
    _editMenuAssistant = [v4 _editMenuAssistant];
    if ([_editMenuAssistant _editMenuIsVisible])
    {
    }

    else
    {
      imageNameForTextEffectsButton = [MEMORY[0x1E69D95D8] imageNameForTextEffectsButton];

      if (imageNameForTextEffectsButton)
      {
        v7 = 1;
        goto LABEL_8;
      }
    }
  }

  imageNameForTextEffectsButton = 0;
  if (![(UIKeyboardCandidateController *)self isTextEffectsButtonPresented])
  {
    goto LABEL_10;
  }

  v7 = 0;
LABEL_8:
  [(UIKeyboardCandidateController *)self setIsTextEffectsButtonPresented:v7];
  style = [stateCopy style];
  arrowButtonImageName = [style arrowButtonImageName];

  if (imageNameForTextEffectsButton != arrowButtonImageName)
  {
    style2 = [stateCopy style];
    [style2 setArrowButtonImageName:imageNameForTextEffectsButton];
  }

LABEL_10:
}

- (double)rowHeightForBarForOrientation:(int64_t)orientation
{
  screenTraits = [(UIKeyboardCandidateController *)self screenTraits];
  screenTraits2 = [(UIKeyboardCandidateController *)self screenTraits];
  v6 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(screenTraits, [screenTraits2 idiom], 0);

  v7 = [(UIKeyboardCandidateController *)self bar];
  _inheritedRenderConfig = [v7 _inheritedRenderConfig];
  if ([_inheritedRenderConfig colorAdaptiveBackground])
  {
    activeCandidateViewType = self->_activeCandidateViewType;

    if ((activeCandidateViewType & 2) == 0)
    {
      if (v6 <= 0x1A && ((1 << v6) & 0x7000002) != 0)
      {
        return 55.0;
      }

      if (v6 == 23)
      {
        return 55.0;
      }

      return 44.0;
    }
  }

  else
  {
  }

  if (v6 - 23 < 4 || v6 == 1)
  {
    v11 = [(UIKeyboardCandidateController *)self bar];
    _rootInputWindowController = [v11 _rootInputWindowController];
    placement = [_rootInputWindowController placement];
    v14 = placement;
    if (placement)
    {
      placement2 = placement;
    }

    else
    {
      v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      containerRootController = [v16 containerRootController];
      placement2 = [containerRootController placement];
    }

    if ([placement2 isFloatingAssistantView])
    {
      v18 = [(UIKeyboardCandidateController *)self bar];
      _inheritedRenderConfig2 = [v18 _inheritedRenderConfig];
      if ([_inheritedRenderConfig2 colorAdaptiveBackground])
      {
        v10 = 38.0;
      }

      else
      {
        v10 = 42.0;
      }
    }

    else
    {
      screenTraits3 = [(UIKeyboardCandidateController *)self screenTraits];
      isFloating = [screenTraits3 isFloating];

      if (isFloating)
      {
        v10 = 44.5;
      }

      else
      {
        v10 = 55.0;
      }
    }
  }

  else
  {
    screenTraits4 = [(UIKeyboardCandidateController *)self screenTraits];
    v24 = [screenTraits4 orientation] - 3;

    if (v24 > 1)
    {
      v28 = 38.0;
      if (v6 == 22)
      {
        v28 = 45.0;
      }

      if (v6 == 21)
      {
        v27 = 44.0;
      }

      else
      {
        v27 = v28;
      }
    }

    else
    {
      v25 = [(UIKeyboardCandidateController *)self bar];
      _inheritedRenderConfig3 = [v25 _inheritedRenderConfig];
      if ([_inheritedRenderConfig3 colorAdaptiveBackground])
      {
        v27 = 44.0;
      }

      else
      {
        v27 = 32.0;
      }
    }

    barState = [(UIKeyboardCandidateController *)self barState];
    style = [barState style];
    candidateFont = [style candidateFont];
    [candidateFont lineHeight];
    v33 = v32;

    +[UIKeyboardCandidateViewConfiguration lineHeightMultiplierForCurrentLanguage];
    v35 = round(v33 * v34) + 1.0;
    if (v27 >= v35)
    {
      return v27;
    }

    else
    {
      return v35;
    }
  }

  return v10;
}

- (double)candidateBarWidth
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    goto LABEL_8;
  }

  screenTraits = [(UIKeyboardCandidateController *)self screenTraits];
  isKeyboardMinorEdgeWidth = [screenTraits isKeyboardMinorEdgeWidth];

  screenTraits2 = [(UIKeyboardCandidateController *)self screenTraits];
  [screenTraits2 keyboardWidth];
  v9 = v8;

  if (isKeyboardMinorEdgeWidth)
  {
    if (v9 < 1024.0)
    {
      screenTraits3 = [(UIKeyboardCandidateController *)self screenTraits];
      [screenTraits3 keyboardWidth];
      v12 = v11;

      if (v12 >= 768.0)
      {
        return 452.0;
      }

      goto LABEL_8;
    }

    return 656.0;
  }

  if (v9 < 1366.0)
  {
    screenTraits4 = [(UIKeyboardCandidateController *)self screenTraits];
    [screenTraits4 keyboardWidth];
    v16 = v15;

    if (v16 >= 1024.0)
    {
      return 656.0;
    }

LABEL_8:
    screenTraits5 = [(UIKeyboardCandidateController *)self screenTraits];
    [screenTraits5 keyboardWidth];
    v19 = v18;

    return v19;
  }

  return 846.0;
}

- (double)candidateBarHeight
{
  screenTraits = [(UIKeyboardCandidateController *)self screenTraits];
  -[UIKeyboardCandidateController candidateBarHeightForOrientation:](self, "candidateBarHeightForOrientation:", [screenTraits orientation]);
  v5 = v4;

  return v5;
}

- (double)candidateBarHeightForOrientation:(int64_t)orientation
{
  if ([(UIKeyboardCandidateController *)self shouldShowDisambiguationCandidates]&& ((orientation - 1) < 2 || +[UIKeyboardImpl isFloating]))
  {
    [(UIKeyboardCandidateController *)self rowHeightForBarForOrientation:orientation];
    v6 = v5;
    barState = [(UIKeyboardCandidateController *)self barState];
    disambiguationStyle = [barState disambiguationStyle];
    [disambiguationStyle rowHeight];
    v10 = v6 + v9;

    return v10;
  }

  else
  {

    [(UIKeyboardCandidateController *)self rowHeightForBarForOrientation:orientation];
  }

  return result;
}

- (UIEdgeInsets)candidateBarEdgeInsetsForOrientation:(int64_t)orientation
{
  v4 = [(UIKeyboardCandidateController *)self bar];
  _inheritedRenderConfig = [v4 _inheritedRenderConfig];
  if ([_inheritedRenderConfig colorAdaptiveBackground])
  {
    activeCandidateViewType = self->_activeCandidateViewType;

    if ((activeCandidateViewType & 2) == 0)
    {
      v7 = -10.0;
      v8 = 13.0;
      v9 = 0.0;
LABEL_14:
      v17 = 0.0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v10 = [(UIKeyboardCandidateController *)self bar];
  _inheritedRenderConfig2 = [v10 _inheritedRenderConfig];
  if ([_inheritedRenderConfig2 colorAdaptiveBackground])
  {
    screenTraits = [(UIKeyboardCandidateController *)self screenTraits];
    idiom = [screenTraits idiom];

    if (!idiom)
    {
      v7 = -10.0;
      v9 = 0.0;
      v8 = 0.0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  screenTraits2 = [(UIKeyboardCandidateController *)self screenTraits];
  if ([screenTraits2 idiom])
  {

LABEL_13:
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
    goto LABEL_14;
  }

  screenTraits3 = [(UIKeyboardCandidateController *)self screenTraits];
  v16 = [screenTraits3 orientation] - 3;

  if (v16 >= 2)
  {
    goto LABEL_13;
  }

  v7 = 0.0;
  v8 = 2.0;
  v9 = 6.0;
  v17 = 2.0;
LABEL_15:
  result.right = v17;
  result.bottom = v7;
  result.left = v8;
  result.top = v9;
  return result;
}

- (CGSize)maximumSizeForInlineView
{
  [(UIKeyboardCandidateViewConfiguration *)self->_inlineConfiguration preferredInlineFloatingViewSize];
  v4 = v3;
  [(UIKeyboardCandidateViewConfiguration *)self->_inlineConfiguration preferredInlineFloatingViewSize];
  v6 = v5;
  extendedState = [(UIKeyboardCandidateViewConfiguration *)self->_inlineConfiguration extendedState];
  style = [extendedState style];
  [style rowHeight];
  v10 = v9;
  extendedState2 = [(UIKeyboardCandidateViewConfiguration *)self->_inlineConfiguration extendedState];
  [extendedState2 additionalHeight];
  v13 = v10 + v12;

  if (v6 >= v13)
  {
    v14 = v6;
  }

  else
  {
    v14 = v13;
  }

  v15 = v4;
  result.height = v14;
  result.width = v15;
  return result;
}

- (BOOL)inlineViewIsExtended
{
  selfCopy = self;
  inlineView = [(UIKeyboardCandidateController *)self inlineView];
  state = [inlineView state];
  extendedInlineViewState = [(UIKeyboardCandidateController *)selfCopy extendedInlineViewState];
  LOBYTE(selfCopy) = state == extendedInlineViewState;

  return selfCopy;
}

- (BOOL)isKeyExtended
{
  selfCopy = self;
  v3 = [(UIKeyboardCandidateController *)self key];
  state = [v3 state];
  extendedKeyState = [(UIKeyboardCandidateController *)selfCopy extendedKeyState];
  LOBYTE(selfCopy) = state == extendedKeyState;

  return selfCopy;
}

- (void)syncIsExtended
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    remoteTextInputPartner = [v5 remoteTextInputPartner];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKeyboardCandidateController isExtended](self, "isExtended")}];
    [remoteTextInputPartner forwardKeyboardOperation:sel_setIsExtended_ object:v4];
  }
}

- (void)setupAnimatorWithCurve:(int64_t)curve
{
  animator = [(UIKeyboardCandidateController *)self animator];

  if (!animator)
  {
    v6 = [UIViewPropertyAnimator alloc];
    [objc_opt_class() candidateViewAnimationDuration];
    v7 = [(UIViewPropertyAnimator *)v6 initWithDuration:curve curve:&__block_literal_global_336 animations:?];
    [(UIKeyboardCandidateController *)self setAnimator:v7];

    objc_initWeak(&location, self);
    animator2 = [(UIKeyboardCandidateController *)self animator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__UIKeyboardCandidateController_setupAnimatorWithCurve___block_invoke_2;
    v9[3] = &unk_1E70F5DE0;
    objc_copyWeak(&v10, &location);
    [animator2 addCompletion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __56__UIKeyboardCandidateController_setupAnimatorWithCurve___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAnimator:0];
}

- (void)extendKeyboardBackdropHeight:(double)height
{
  v5 = [(UIKeyboardCandidateController *)self bar];
  state = [v5 state];
  barState = [(UIKeyboardCandidateController *)self barState];

  if (state != barState)
  {
    [(UIKeyboardCandidateController *)self additionalExtendedBarBackdropOffset];
    height = v8 + height;
  }

  v11 = [(UIKeyboardCandidateController *)self bar];
  _rootInputWindowController = [v11 _rootInputWindowController];
  [objc_opt_class() candidateViewAnimationDuration];
  [_rootInputWindowController extendKeyboardBackdropHeight:height withDuration:v10];
}

- (void)toggleBarExtended
{
  v16[1] = *MEMORY[0x1E69E9840];
  barConfiguration = [(UIKeyboardCandidateController *)self barConfiguration];
  shouldAnimateStateTransition = [barConfiguration shouldAnimateStateTransition];

  if (shouldAnimateStateTransition)
  {
    animator = [(UIKeyboardCandidateController *)self animator];

    if (animator)
    {
      animator2 = [(UIKeyboardCandidateController *)self animator];
      state = [animator2 state];

      if (state)
      {
        animator3 = [(UIKeyboardCandidateController *)self animator];
        [animator3 stopAnimation:0];

        animator4 = [(UIKeyboardCandidateController *)self animator];
        [animator4 finishAnimationAtPosition:0];
      }
    }

    [(UIKeyboardCandidateController *)self setupAnimatorWithCurve:0];
    animator5 = [(UIKeyboardCandidateController *)self animator];
    [(UIKeyboardCandidateController *)self toggleBarExtendedWithAnimator:animator5];

    animator6 = [(UIKeyboardCandidateController *)self animator];
    [animator6 startAnimation];
  }

  else
  {
    [(UIKeyboardCandidateController *)self toggleBarExtendedUnanimated];
  }

  v15 = @"isExtended";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKeyboardCandidateController barIsExtended](self, "barIsExtended")}];
  v16[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIKeyboardWillToggleCandidateBar" object:0 userInfo:v13];
}

- (void)toggleBarExtendedUnanimated
{
  v3 = [(UIKeyboardCandidateController *)self bar];
  state = [v3 state];

  v4 = [(UIKeyboardCandidateController *)self bar];
  state2 = [v4 state];
  barState = [(UIKeyboardCandidateController *)self barState];

  if (state2 == barState)
  {
    extendedBarState = [(UIKeyboardCandidateController *)self extendedBarState];
    v8 = +[UIKeyboardImpl keyboardWindow];
    v9 = [_UIEditMenuSceneComponent sceneComponentForView:v8];
    [v9 dismissCurrentMenu];

    v10 = [(UIKeyboardCandidateController *)self bar];
    [v10 resetSortControlIndex];

    if (!extendedBarState)
    {
      goto LABEL_11;
    }
  }

  else
  {
    extendedBarState = [(UIKeyboardCandidateController *)self barState];
    if (!extendedBarState)
    {
      goto LABEL_11;
    }
  }

  v11 = [(UIKeyboardCandidateController *)self bar];
  state3 = [v11 state];
  [state3 yOffset];

  v13 = [(UIKeyboardCandidateController *)self bar];
  [v13 setState:extendedBarState animated:0 animator:0 options:0 force:0 completion:0];

  [(UIKeyboardCandidateController *)self syncIsExtended];
  barConfiguration = [(UIKeyboardCandidateController *)self barConfiguration];
  LODWORD(state3) = [barConfiguration willCoverKeyboardLayout];

  if (state3)
  {
    extendedBarState2 = [(UIKeyboardCandidateController *)self extendedBarState];

    v16 = +[UIKeyboardImpl activeInstance];
    _layout = [v16 _layout];

    [_layout setHidden:extendedBarState == extendedBarState2];
    v18 = +[UIKeyboardImpl sharedInstance];
    LOBYTE(v16) = [v18 _isBackdropVisible];

    if ((v16 & 1) == 0)
    {
      v19 = 0.0;
      if (extendedBarState != extendedBarState2)
      {
        v19 = 1.0;
      }

      [_layout setAlpha:v19];
    }
  }

LABEL_11:
  v20 = +[UIKeyboardImpl activeInstance];
  [v20 updateKeyboardConfigurations];
}

- (void)toggleBarExtendedWithAnimator:(id)animator
{
  animatorCopy = animator;
  v5 = [(UIKeyboardCandidateController *)self bar];
  state = [v5 state];

  v7 = [(UIKeyboardCandidateController *)self bar];
  state2 = [v7 state];
  barState = [(UIKeyboardCandidateController *)self barState];

  if (state2 == barState)
  {
    extendedBarState = [(UIKeyboardCandidateController *)self extendedBarState];
    v14 = +[UIKeyboardImpl keyboardWindow];
    v15 = [_UIEditMenuSceneComponent sceneComponentForView:v14];
    [v15 dismissCurrentMenu];

    v16 = [(UIKeyboardCandidateController *)self bar];
    [v16 resetSortControlIndex];

    if (!extendedBarState)
    {
      goto LABEL_26;
    }

LABEL_7:
    v17 = [(UIKeyboardCandidateController *)self bar];
    state3 = [v17 state];
    [state3 yOffset];
    v20 = v19;

    v21 = [(UIKeyboardCandidateController *)self bar];
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_2;
    v92[3] = &unk_1E70F5AC0;
    v92[4] = self;
    [v21 setState:extendedBarState animated:1 animator:animatorCopy options:0 force:0 completion:v92];

    v22 = +[UIKeyboardImpl activeInstance];
    _layout = [v22 _layout];

    [_layout setHidden:0];
    barConfiguration = [(UIKeyboardCandidateController *)self barConfiguration];
    shouldResizeKeyboardBackdrop = [barConfiguration shouldResizeKeyboardBackdrop];

    if (shouldResizeKeyboardBackdrop)
    {
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_3;
      v91[3] = &unk_1E70F3590;
      v91[4] = self;
      v26 = v91;
    }

    else
    {
      v27 = [(UIKeyboardCandidateController *)self bar];
      state4 = [v27 state];
      [state4 yOffset];
      v30 = v29;

      if (v20 != v30)
      {
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_4;
        v90[3] = &unk_1E70F3590;
        v90[4] = self;
        [animatorCopy addAnimations:v90];
      }

      barConfiguration2 = [(UIKeyboardCandidateController *)self barConfiguration];
      willCoverKeyboardLayout = [barConfiguration2 willCoverKeyboardLayout];

      if (willCoverKeyboardLayout)
      {
        [extendedBarState additionalHeight];
        v68 = v33;
        v34 = [(UIKeyboardCandidateController *)self bar];
        [v34 frame];
        v36 = v35;
        extendedBarState2 = [(UIKeyboardCandidateController *)self extendedBarState];
        [extendedBarState2 additionalHeight];
        v39 = v38;

        v40 = [(UIKeyboardCandidateController *)self bar];
        [v40 bounds];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;

        v49 = [_UIKeyboardCandidateSlidingMaskView alloc];
        v50 = [(UIKeyboardCandidateController *)self bar];
        [v50 frame];
        v52 = v51;
        extendedBarState3 = [(UIKeyboardCandidateController *)self extendedBarState];
        [extendedBarState3 additionalHeight];
        v55 = [(_UIKeyboardCandidateSlidingMaskView *)v49 initWithFrame:v42 opaqueHeight:v44 fadeHeight:v46, v48, v52, v54];

        v56 = [(UIKeyboardCandidateController *)self bar];
        [v56 setMaskView:v55];

        v57 = v36 + v39 + v48;
        if (v68 <= 0.0)
        {
          v58 = 0.6;
        }

        else
        {
          v58 = 0.0;
        }

        if (v68 <= 0.0)
        {
          v59 = 0.0;
        }

        else
        {
          v59 = 1.0;
        }

        if (v68 <= 0.0)
        {
          v60 = v57;
        }

        else
        {
          v60 = v48;
        }

        [(UIView *)v55 setFrame:v42, v44, v46, v60];
        layer = [_layout layer];
        [layer setAllowsGroupOpacity:0];

        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_5;
        v79[3] = &unk_1E7101858;
        v62 = v55;
        v80 = v62;
        v89 = v68 > 0.0;
        v81 = v42;
        v82 = v44;
        v83 = v46;
        v84 = v57;
        v85 = v42;
        v86 = v44;
        v87 = v46;
        v88 = v48;
        [animatorCopy addAnimations:v79];
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_6;
        v75[3] = &unk_1E71049E0;
        v76 = v62;
        v63 = _layout;
        v77 = v63;
        v78 = v68 > 0.0;
        v64 = v62;
        [animatorCopy addCompletion:v75];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_7;
        v73[3] = &unk_1E71003B0;
        v73[4] = self;
        v74 = state;
        [animatorCopy addCompletion:v73];
        [v63 setAlpha:v59];
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_8;
        v70[3] = &unk_1E70F35E0;
        v71 = v63;
        v72 = v68 > 0.0;
        [animatorCopy addAnimations:v70 delayFactor:v58];

        goto LABEL_25;
      }

      renderConfig = [(UIKeyboardCandidateController *)self renderConfig];
      animatedBackground = [renderConfig animatedBackground];

      if (!animatedBackground)
      {
LABEL_25:
        v67 = +[UIKeyboardImpl activeInstance];
        [v67 updateKeyboardConfigurations];

        goto LABEL_26;
      }

      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_9;
      v69[3] = &unk_1E70F3590;
      v69[4] = self;
      v26 = v69;
    }

    [animatorCopy addAnimations:v26];
    goto LABEL_25;
  }

  v10 = [(UIKeyboardCandidateController *)self bar];
  state5 = [v10 state];
  extendedScrolledBarState = [(UIKeyboardCandidateController *)self extendedScrolledBarState];

  if (state5 == extendedScrolledBarState)
  {
    [animatorCopy addAnimations:&__block_literal_global_65_3];
  }

  extendedBarState = [(UIKeyboardCandidateController *)self barState];
  if (extendedBarState)
  {
    goto LABEL_7;
  }

LABEL_26:
}

void __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke()
{
  v1 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v0 = +[UIInputViewAnimationStyle animationStyleDefault];
  [v1 maximizeWithAnimationStyle:v0 force:1];
}

void __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 bar];
  v2 = [v3 state];
  [v2 yOffset];
  [v1 extendKeyboardBackdropHeight:?];
}

void __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_4(uint64_t a1)
{
  v8 = [*(a1 + 32) bar];
  v2 = [v8 _rootInputWindowController];
  v3 = [*(a1 + 32) bar];
  v4 = [v3 state];
  [v4 yOffset];
  v6 = v5;
  [objc_opt_class() candidateViewAnimationDuration];
  [v2 candidateBarWillChangeHeight:v6 withDuration:v7];
}

uint64_t __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_5(uint64_t a1)
{
  v1 = 72;
  if (*(a1 + 104))
  {
    v1 = 40;
  }

  v2 = 80;
  if (*(a1 + 104))
  {
    v2 = 48;
  }

  v3 = 88;
  if (*(a1 + 104))
  {
    v3 = 56;
  }

  v4 = 96;
  if (*(a1 + 104))
  {
    v4 = 64;
  }

  return [*(a1 + 32) setFrame:{*(a1 + v1), *(a1 + v2), *(a1 + v3), *(a1 + v4)}];
}

void __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeFromSuperview];
  v4 = [*(a1 + 40) layer];
  [v4 setAllowsGroupOpacity:1];

  if (!a2 && (*(a1 + 48) & 1) != 0)
  {
    v5 = *(a1 + 40);

    [v5 setHidden:1];
  }
}

void __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_7(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v4 = [*(a1 + 32) bar];
    [v4 setState:*(a1 + 40)];

    [*(a1 + 32) syncIsExtended];
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 updateKeyboardConfigurations];
  }
}

uint64_t __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_8(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

void __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 bar];
  v2 = [v3 state];
  [v2 yOffset];
  [v1 extendKeyboardBackdropHeight:?];
}

- (void)toggleInlineViewExtendedAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v6 = [(UIKeyboardCandidateController *)self inlineView:animated];
  state = [v6 state];
  inlineViewState = [(UIKeyboardCandidateController *)self inlineViewState];

  if (state == inlineViewState)
  {
    extendedInlineViewState = [(UIKeyboardCandidateController *)self extendedInlineViewState];
    inlineViewContainer = [(UIKeyboardCandidateController *)self inlineViewContainer];
    shouldExtendUpwards = [inlineViewContainer shouldExtendUpwards];
    v14 = 0.0;
    if (shouldExtendUpwards)
    {
      [extendedInlineViewState additionalHeight];
      v14 = -v15;
    }

    [extendedInlineViewState setYOffset:v14];
  }

  else
  {
    inlineView = [(UIKeyboardCandidateController *)self inlineView];
    state2 = [inlineView state];
    extendedInlineViewState2 = [(UIKeyboardCandidateController *)self extendedInlineViewState];

    if (state2 != extendedInlineViewState2)
    {
      return;
    }

    extendedInlineViewState = [(UIKeyboardCandidateController *)self inlineViewState];
  }

  if (extendedInlineViewState)
  {
    [(UIKeyboardCandidateController *)self setInlineState:extendedInlineViewState extended:state == inlineViewState animated:animatedCopy options:0 force:0 completion:0];
    v16 = +[UIKeyboardImpl activeInstance];
    inlineViewContainer2 = [(UIKeyboardCandidateController *)self inlineViewContainer];
    [extendedInlineViewState yOffset];
    [v16 updateDictationPopoverLocationForCandidateInlineView:inlineViewContainer2 yOffset:?];
  }
}

- (void)toggleKeyViewExtendedAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v6 = [(UIKeyboardCandidateController *)self key];
  state = [v6 state];
  keyState = [(UIKeyboardCandidateController *)self keyState];

  if (state == keyState)
  {
    extendedKeyState = [(UIKeyboardCandidateController *)self extendedKeyState];
  }

  else
  {
    v9 = [(UIKeyboardCandidateController *)self key];
    state2 = [v9 state];
    extendedKeyState2 = [(UIKeyboardCandidateController *)self extendedKeyState];

    if (state2 != extendedKeyState2)
    {
      goto LABEL_7;
    }

    extendedKeyState = [(UIKeyboardCandidateController *)self keyState];
  }

  v13 = extendedKeyState;
  if (extendedKeyState)
  {
    v14 = [(UIKeyboardCandidateController *)self key];
    [v14 setState:v13 animated:animatedCopy options:0 force:0 completion:completionCopy];
  }

LABEL_7:
}

- (void)collapse
{
  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 2) != 0 && [(UIKeyboardCandidateController *)self barIsExtended])
  {
    [(UIKeyboardCandidateController *)self toggleBarExtended];
    [UIKBAnalyticsDispatcher candidateViewExtended:@"Automatic" direction:@"Close"];
  }

  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) != 0 && [(UIKeyboardCandidateController *)self inlineViewIsExtended])
  {
    [(UIKeyboardCandidateController *)self toggleInlineViewExtendedAnimated:0 completion:0];
  }

  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 1) != 0 && [(UIKeyboardCandidateController *)self isKeyExtended])
  {

    [(UIKeyboardCandidateController *)self toggleKeyViewExtendedAnimated:0 completion:0];
  }
}

- (void)removeInlineView
{
  [(TUICandidateView *)self->_inlineView resetSortControlIndex];
  inlineViewContainer = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [inlineViewContainer setHidden:1];

  inlineViewState = [(UIKeyboardCandidateController *)self inlineViewState];
  inlineView = [(UIKeyboardCandidateController *)self inlineView];
  [inlineView setState:inlineViewState];

  inlineViewContainer2 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [inlineViewContainer2 setInlineText:0 inlineRect:1 maxX:*MEMORY[0x1E695F058] layout:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), 3.40282347e38}];

  v7 = +[UIKeyboardImpl activeInstance];
  inlineViewContainer3 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v7 updateDictationPopoverLocationForCandidateInlineView:inlineViewContainer3 yOffset:0.0];

  [(UIView *)self->_hostedInlineViewContainer removeFromSuperview];
  hostedInlineViewContainer = self->_hostedInlineViewContainer;
  self->_hostedInlineViewContainer = 0;

  hostingController = self->_hostingController;
  self->_hostingController = 0;
}

- (id)snapshot
{
  if (self->_bar)
  {
    v3 = [_UIKeyboardCandidateSnapshotView alloc];
    [(TUICandidateView *)self->_bar bounds];
    v4 = [(UIView *)v3 initWithFrame:?];
    [(UIView *)v4 setOpaque:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setupPanGestureRecognizerIfNeeded
{
  if ((-[UIKeyboardCandidateController activeCandidateViewType](self, "activeCandidateViewType") & 2) != 0 && (-[UIKeyboardCandidateController barConfiguration](self, "barConfiguration"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 allowsPullDownGesture], v3, v4))
  {
    panGestureRecognizer = [(UIKeyboardCandidateController *)self panGestureRecognizer];

    if (!panGestureRecognizer)
    {
      v6 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel_panGestureRecognizerAction_];
      [(UIKeyboardCandidateController *)self setPanGestureRecognizer:v6];

      panGestureRecognizer2 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
      [panGestureRecognizer2 setMaximumNumberOfTouches:1];

      panGestureRecognizer3 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
      [panGestureRecognizer3 setDelegate:self];

      panGestureRecognizer4 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
      [panGestureRecognizer4 _setHysteresis:20.0];
    }

    bar = self->_bar;
    panGestureRecognizer5 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
    [(TUICandidateView *)bar addGestureRecognizer:?];
  }

  else
  {
    panGestureRecognizer6 = [(UIKeyboardCandidateController *)self panGestureRecognizer];

    if (!panGestureRecognizer6)
    {
      return;
    }

    v12 = self->_bar;
    panGestureRecognizer5 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
    [(TUICandidateView *)v12 removeGestureRecognizer:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  panGestureRecognizer = [(UIKeyboardCandidateController *)self panGestureRecognizer];

  if (panGestureRecognizer != beginCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  if (![(TUICandidateView *)self->_bar showingArrowButton])
  {
    return 0;
  }

  v6 = [(UIKeyboardCandidateController *)self bar];
  state = [v6 state];
  v8 = [state arrowButtonDirection] != 2;

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if ([touchCopy phase] || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "_layout"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "currentKeyplane"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "visualStyling") & 0xFF0000, v9, v8, v7, v10 != 0x10000))
  {
    v21 = 1;
  }

  else
  {
    view = [recognizerCopy view];
    [view frame];
    if (v12 <= 0.0)
    {
      v21 = 1;
    }

    else
    {
      v13 = v12;
      [touchCopy locationInView:view];
      v15 = v14;
      Current = CFAbsoluteTimeGetCurrent();
      v17 = +[UIKeyboardImpl activeInstance];
      [v17 lastTouchDownTimestamp];
      v19 = v18;

      v20 = Current - v19;
      if (Current - v19 < 0.0)
      {
        v20 = 0.0;
      }

      v21 = v15 <= v13 * (exp(-(v20 * v20) - v20 * v20) * -0.25 + 0.95);
    }
  }

  return v21;
}

- (void)panGestureRecognizerAction:(id)action
{
  actionCopy = action;
  extendedBarState = [(UIKeyboardCandidateController *)self extendedBarState];
  [extendedBarState additionalHeight];
  v7 = v6;

  if (v7 == 0.0)
  {
    v8 = 50.0;
  }

  else
  {
    v8 = v7;
  }

  state = [actionCopy state];
  if ((state - 3) < 3)
  {
    [objc_opt_class() candidateViewAnimationDuration];
    v11 = v10;
    animator = [(UIKeyboardCandidateController *)self animator];
    [animator fractionComplete];
    v14 = v13;

    v15 = [(UIKeyboardCandidateController *)self bar];
    [actionCopy velocityInView:v15];
    v17 = v16 / v8;

    v18 = v14 + v11 * v17 * 0.5;
    animator2 = [(UIKeyboardCandidateController *)self animator];
    v20 = animator2;
    if (v18 < 0.5)
    {
      v17 = -v17;
    }

    [animator2 setReversed:v18 < 0.5];

    panGestureRecognizer = [[UISpringTimingParameters alloc] initWithDampingRatio:1.0 initialVelocity:v17, v17];
    v22 = v11;
    if (v17 > 0.0)
    {
      v22 = (1.0 - v14 + 1.0 - v14) / v17;
    }

    if (v11 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v11;
    }

    animator3 = [(UIKeyboardCandidateController *)self animator];
    [animator3 continueAnimationWithTimingParameters:panGestureRecognizer durationFactor:v23 / v11];

    v25 = +[UIKeyboardImpl activeInstance];
    [v25 candidateBarDidExtendWithGesture];

    goto LABEL_22;
  }

  if (state == 2)
  {
    panGestureRecognizer = [(UIKeyboardCandidateController *)self panGestureRecognizer];
    v34 = [(UIKeyboardCandidateController *)self bar];
    [(UISpringTimingParameters *)panGestureRecognizer translationInView:v34];
    v36 = v35 / v8;
    animator4 = [(UIKeyboardCandidateController *)self animator];
    [animator4 setFractionComplete:v36];

    goto LABEL_22;
  }

  if (state != 1)
  {
    goto LABEL_23;
  }

  panGestureRecognizer = [actionCopy view];
  if (panGestureRecognizer != self->_bar || [(UIKeyboardCandidateController *)self barIsExtended])
  {
LABEL_22:

    goto LABEL_23;
  }

  isTextEffectsButtonPresented = [(UIKeyboardCandidateController *)self isTextEffectsButtonPresented];

  if (!isTextEffectsButtonPresented)
  {
    objc_initWeak(&location, self);
    v27 = [(UIKeyboardCandidateController *)self bar];
    [v27 resetSortControlIndex];

    [(UIKeyboardCandidateController *)self setupAnimatorWithCurve:2];
    animator5 = [(UIKeyboardCandidateController *)self animator];
    state2 = [animator5 state];

    if (state2)
    {
      animator6 = [(UIKeyboardCandidateController *)self animator];
      [animator6 stopAnimation:0];

      animator7 = [(UIKeyboardCandidateController *)self animator];
      [animator7 finishAnimationAtPosition:0];
    }

    animator8 = [(UIKeyboardCandidateController *)self animator];
    [(UIKeyboardCandidateController *)self toggleBarExtendedWithAnimator:animator8];

    v33 = [(UIKeyboardCandidateController *)self bar];
    [v33 setUserInteractionEnabled:0];

    [UIKBAnalyticsDispatcher candidateViewExtended:@"Gesture" direction:@"Open"];
    objc_destroyWeak(&location);
  }

LABEL_23:
}

- (void)setCandidateResultSet:(id)set
{
  v22 = *MEMORY[0x1E69E9840];
  setCopy = set;
  if (self->_candidateResultSet != setCopy)
  {
    objc_storeStrong(&self->_candidateResultSet, set);
    [(UIKeyboardCandidateController *)self updateStates];
    [(UIKeyboardCandidateController *)self resetSortControlIndexAfterCandidatesChanged];
    activeCandidateViewType = self->_activeCandidateViewType;
    delegate = [(UIKeyboardCandidateController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(UIKeyboardCandidateController *)self delegate];
      activeCandidateViewType &= [delegate2 preferredCandidateViewTypeForCandidateResultSet:setCopy];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    activeViews = [(UIKeyboardCandidateController *)self activeViews];
    v11 = [activeViews countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(activeViews);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if (([(UIKeyboardCandidateController *)self candidateViewTypeForView:v15]& activeCandidateViewType) != 0)
          {
            v16 = setCopy;
          }

          else
          {
            v16 = 0;
          }

          [v15 setCandidateResultSet:v16];
        }

        v12 = [activeViews countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [(UIKeyboardCandidateController *)self setCurrentCandidate:0];
    [(UIKeyboardCandidateController *)self candidatesDidChange];
  }
}

- (void)setInlineText:(id)text
{
  v17 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (![(NSString *)self->_inlineText isEqualToString:textCopy])
  {
    v5 = [textCopy copy];
    inlineText = self->_inlineText;
    self->_inlineText = v5;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    activeViews = [(UIKeyboardCandidateController *)self activeViews];
    v8 = [activeViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(activeViews);
          }

          [*(*(&v12 + 1) + 8 * v11++) setInlineText:textCopy];
        }

        while (v9 != v11);
        v9 = [activeViews countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)resetSortControlIndexAfterCandidatesChanged
{
  [(TUICandidateView *)self->_key resetSortControlIndex];
  inlineView = self->_inlineView;

  [(TUICandidateView *)inlineView resetSortControlIndex];
}

+ (double)candidateViewAnimationDuration
{
  if (qword_1ED49EE20 != -1)
  {
    dispatch_once(&qword_1ED49EE20, &__block_literal_global_80_1);
  }

  return *&qword_1ED49EE28;
}

void __63__UIKeyboardCandidateController_candidateViewAnimationDuration__block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1ED49EE40;
  v7 = qword_1ED49EE40;
  if (!qword_1ED49EE40)
  {
    v1 = TextInputUILibrary_4();
    v5[3] = dlsym(v1, "TUICandidateViewAnimationDuration");
    qword_1ED49EE40 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    qword_1ED49EE28 = *v0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSTimeInterval getTUICandidateViewAnimationDuration(void)"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardCandidateController.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (int64_t)layoutDirectionForCurrentInputMode
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];

  normalizedIdentifier = [currentInputMode normalizedIdentifier];
  IsDefaultRightToLeft = UIKeyboardInputModeIsDefaultRightToLeft(normalizedIdentifier);

  return IsDefaultRightToLeft;
}

- (void)setCandidates:(id)candidates type:(int)type inlineText:(id)text inlineRect:(CGRect)rect maxX:(double)x layout:(BOOL)layout inlineCandidatesAreHosted:(BOOL)hosted
{
  layoutCopy = layout;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v35[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  candidatesCopy = candidates;
  [(UIKeyboardCandidateController *)self setInlineRect:x, y, width, height];
  [(UIKeyboardCandidateController *)self setCandidateResultSet:candidatesCopy];

  [(UIKeyboardCandidateController *)self setInlineText:textCopy];
  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) != 0)
  {
    candidateResultSet = [(TUICandidateView *)self->_inlineView candidateResultSet];
    hasCandidates = [candidateResultSet hasCandidates];
    v21 = hasCandidates ^ 1;

    if (hosted)
    {
      goto LABEL_7;
    }
  }

  else
  {
    hasCandidates = 0;
    v21 = 1;
    if (hosted)
    {
      goto LABEL_7;
    }
  }

  inlineViewContainer = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [inlineViewContainer setHidden:v21];

  if ((hasCandidates & 1) == 0)
  {
    [(UIKeyboardCandidateController *)self removeInlineView];
  }

LABEL_7:
  inlineViewContainer2 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  isHidden = [inlineViewContainer2 isHidden];

  if ((isHidden & 1) == 0)
  {
    inlineRectIsVertical = [(UIKeyboardCandidateController *)self inlineRectIsVertical];
    inlineViewContainer3 = [(UIKeyboardCandidateController *)self inlineViewContainer];
    [inlineViewContainer3 setInlineRectIsVertical:inlineRectIsVertical];
  }

  inlineViewContainer4 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [inlineViewContainer4 setInlineText:textCopy inlineRect:layoutCopy maxX:x layout:{y, width, height, x}];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v34 = @"isVisible";
  v30 = [MEMORY[0x1E696AD98] numberWithInt:hasCandidates];
  v35[0] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [defaultCenter postNotificationName:@"UIKeyboardInlineCandidateBarVisibilityChangedNotification" object:0 userInfo:v31];

  v32 = +[UIKeyboardImpl activeInstance];
  inlineViewContainer5 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v32 updateDictationPopoverLocationForCandidateInlineView:inlineViewContainer5 yOffset:0.0];
}

- (void)updateHostedInlineCandidatesWithInlineText:(id)text type:(int)type inlineRect:(CGRect)rect maxX:(double)x layout:(BOOL)layout
{
  [(UIKeyboardCandidateController *)self setCandidates:0 type:*&type inlineText:text inlineRect:layout maxX:1 layout:rect.origin.x inlineCandidatesAreHosted:rect.origin.y, rect.size.width, rect.size.height, x];
  isExpanded = [(UIKeyboardCandidateSceneHostingController *)self->_hostingController isExpanded];

  [(UIKeyboardCandidateController *)self clientExpandedStateChanged:isExpanded];
}

- (void)setScreenTraits:(id)traits
{
  traitsCopy = traits;
  if (self->_screenTraits != traitsCopy)
  {
    v6 = traitsCopy;
    objc_storeStrong(&self->_screenTraits, traits);
    [(UIKeyboardCandidateController *)self updateStates];
    traitsCopy = v6;
  }
}

- (BOOL)isExtendedList
{
  v3 = ([(UIKeyboardCandidateController *)self activeCandidateViewType]& 2) != 0 && [(UIKeyboardCandidateController *)self barIsExtended];
  activeCandidateViewType = [(UIKeyboardCandidateController *)self activeCandidateViewType];
  if ((activeCandidateViewType & 4) == 0 || v3)
  {
    return (activeCandidateViewType >> 2) & 1 | v3;
  }

  else
  {

    LOBYTE(v5) = [(UIKeyboardCandidateController *)self inlineViewIsExtended];
  }

  return v5;
}

- (void)setUIKeyboardCandidateListDelegate:(id)delegate
{
  [(UIKeyboardCandidateController *)self setCandidateListDelegate:?];
  if (!delegate)
  {
    [(UIKeyboardCandidateController *)self collapse];
    [(UIKeyboardCandidateController *)self setCandidateResultSet:0];

    [(UIKeyboardCandidateController *)self removeInlineView];
  }
}

- (void)showCandidateAtIndex:(unint64_t)index animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  animatedCopy = animated;
  firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
  }

  [firstNonEmptyActiveCandidateView setSelectedIndexPath:v8 animated:animatedCopy scrollPosition:position];
}

- (BOOL)showCandidate:(id)candidate animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  animatedCopy = animated;
  candidateCopy = candidate;
  firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  v10 = firstNonEmptyActiveCandidateView;
  if (candidateCopy)
  {
    v11 = [firstNonEmptyActiveCandidateView indexPathForCandidate:candidateCopy];
  }

  else
  {
    v11 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 setSelectedIndexPath:v11 animated:animatedCopy scrollPosition:position];
  }

  else
  {
    [v10 setSelectedIndexPath:v11];
  }

  return v11 != 0;
}

- (BOOL)hasCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  v4 = *&granularity;
  directionCopy = direction;
  firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  LOBYTE(v4) = [firstNonEmptyActiveCandidateView hasCandidateInForwardDirection:directionCopy granularity:v4];

  return v4;
}

- (void)showCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  v4 = *&granularity;
  directionCopy = direction;
  if (granularity == 1 && ([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) != 0)
  {
    inlineViewIsExtended = [(UIKeyboardCandidateController *)self inlineViewIsExtended];
    if (!directionCopy)
    {
      if (!inlineViewIsExtended)
      {
        goto LABEL_8;
      }

      LOBYTE(inlineViewIsExtended) = [(UIKeyboardCandidateController *)self hasCandidateInForwardDirection:0 granularity:1];
    }

    if (!inlineViewIsExtended)
    {
      [(UIKeyboardCandidateController *)self toggleInlineViewExtendedAnimated:1 completion:&__block_literal_global_85];
    }
  }

LABEL_8:
  firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  [firstNonEmptyActiveCandidateView showCandidateInForwardDirection:directionCopy granularity:v4];
}

- (void)acceptSelectedCandidate
{
  firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  selectedCandidate = [firstNonEmptyActiveCandidateView selectedCandidate];
  [(UIKeyboardCandidateController *)self setCurrentCandidate:selectedCandidate];

  candidateListDelegate = [(UIKeyboardCandidateController *)self candidateListDelegate];
  LOBYTE(selectedCandidate) = objc_opt_respondsToSelector();

  if (selectedCandidate)
  {
    candidateListDelegate2 = [(UIKeyboardCandidateController *)self candidateListDelegate];
    [candidateListDelegate2 candidateListAcceptCandidate:self];
  }
}

- (BOOL)handleNumberKey:(unint64_t)key
{
  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) == 0)
  {
    return 0;
  }

  inlineView = [(UIKeyboardCandidateController *)self inlineView];
  v7 = [inlineView handleNumberKey:key];

  return v7;
}

- (BOOL)handleTabKeyWithShift:(BOOL)shift
{
  shiftCopy = shift;
  firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  v5 = [firstNonEmptyActiveCandidateView hasCandidateInForwardDirection:!shiftCopy granularity:3];
  if (v5)
  {
    [firstNonEmptyActiveCandidateView showCandidateInForwardDirection:!shiftCopy granularity:3];
  }

  return v5;
}

- (TIKeyboardCandidate)currentCandidate
{
  currentCandidate = self->_currentCandidate;
  if (currentCandidate)
  {
    selectedCandidate = currentCandidate;
  }

  else
  {
    firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
    selectedCandidate = [firstNonEmptyActiveCandidateView selectedCandidate];
  }

  return selectedCandidate;
}

- (unint64_t)currentIndex
{
  firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  v4 = firstNonEmptyActiveCandidateView;
  if (firstNonEmptyActiveCandidateView)
  {
    selectedIndexPath = [firstNonEmptyActiveCandidateView selectedIndexPath];
    v6 = selectedIndexPath;
    if (selectedIndexPath)
    {
      if ([selectedIndexPath section])
      {
        candidateResultSet = [(UIKeyboardCandidateController *)self candidateResultSet];
        candidates = [candidateResultSet candidates];
        selectedCandidate = [v4 selectedCandidate];
        v10 = [candidates indexOfObject:selectedCandidate];
      }

      else
      {
        v10 = [v6 row];
      }
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (BOOL)hasCandidates
{
  candidateResultSet = [(UIKeyboardCandidateController *)self candidateResultSet];
  hasCandidates = [candidateResultSet hasCandidates];

  return hasCandidates;
}

- (id)keyboardBehaviors
{
  v2 = +[UIKeyboardImpl activeInstance];
  accessibilityUsesExtendedKeyboardPredictionsEnabled = [v2 accessibilityUsesExtendedKeyboardPredictionsEnabled];

  v4 = 0x1E69D95C8;
  if (!accessibilityUsesExtendedKeyboardPredictionsEnabled)
  {
    v4 = 0x1E69D95D0;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

- (id)statisticsIdentifier
{
  activeCandidateViewType = [(UIKeyboardCandidateController *)self activeCandidateViewType];
  screenTraits = [(UIKeyboardCandidateController *)self screenTraits];
  idiom = [screenTraits idiom];
  v6 = idiom;
  if ((activeCandidateViewType & 2) != 0)
  {
    if (idiom == 1 && +[UIKeyboardImpl isSplit])
    {
      v10 = +[UIKeyboardImpl activeInstance];
      centerFilled = [v10 centerFilled];

      if ((centerFilled & 1) == 0)
      {
        barIsExtended = [(UIKeyboardCandidateController *)self barIsExtended];
        v9 = MEMORY[0x1E69D9AC8];
        v13 = MEMORY[0x1E69D9AC0];
        goto LABEL_13;
      }
    }

    else
    {
    }

    barIsExtended = [(UIKeyboardCandidateController *)self barIsExtended];
    v9 = MEMORY[0x1E69D9A90];
    v13 = MEMORY[0x1E69D9A88];
LABEL_13:
    if (barIsExtended)
    {
      v9 = v13;
    }

    goto LABEL_15;
  }

  if (v6)
  {
    screenTraits2 = [(UIKeyboardCandidateController *)self screenTraits];
    idiom2 = [screenTraits2 idiom];

    if (idiom2 != 1)
    {
      goto LABEL_18;
    }

    if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) == 0)
    {
      if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 1) != 0)
      {
        v9 = MEMORY[0x1E69D9AD0];
LABEL_15:
        v14 = *v9;
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    barIsExtended = [(UIKeyboardCandidateController *)self inlineViewIsExtended];
    v9 = MEMORY[0x1E69D9AB8];
    v13 = MEMORY[0x1E69D9AB0];
    goto LABEL_13;
  }

  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) != 0)
  {
    barIsExtended = [(UIKeyboardCandidateController *)self inlineViewIsExtended];
    v9 = MEMORY[0x1E69D9AE0];
    v13 = MEMORY[0x1E69D9AD8];
    goto LABEL_13;
  }

  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 1) != 0)
  {
    v9 = MEMORY[0x1E69D9AE8];
    goto LABEL_15;
  }

LABEL_18:
  v14 = 0;
LABEL_19:

  return v14;
}

- (unint64_t)selectedSortIndex
{
  firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  selectedSortControlIndex = [firstNonEmptyActiveCandidateView selectedSortControlIndex];

  return selectedSortControlIndex;
}

- (void)candidatesDidChange
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIKeyboardCandidatesChanged" object:0];
}

- (void)revealHiddenCandidates
{
  firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  if (firstNonEmptyActiveCandidateView)
  {
    v10 = firstNonEmptyActiveCandidateView;
    candidateResultSet = [(UIKeyboardCandidateController *)self candidateResultSet];
    disambiguationCandidates = [candidateResultSet disambiguationCandidates];
    v6 = [disambiguationCandidates count];

    firstNonEmptyActiveCandidateView = v10;
    if (v6)
    {
      if (([v10 hasCandidateInForwardDirection:1 granularity:0 inGridType:1] & 1) == 0)
      {
        [v10 setDisambiguationSelectedIndexPath:0];
      }

      [v10 showCandidateInForwardDirection:1 granularity:0 inGridType:1];
      selectedDisambiguationCandidate = [v10 selectedDisambiguationCandidate];
      v8 = [selectedDisambiguationCandidate copy];

      if (objc_opt_respondsToSelector())
      {
        [v8 setGeneratedByChoosePinyin:1];
      }

      disambiguationSelectedIndexPath = [v10 disambiguationSelectedIndexPath];
      [(UIKeyboardCandidateController *)self candidateView:v10 didAcceptCandidate:v8 atIndexPath:disambiguationSelectedIndexPath inGridType:1 generateFeedback:0];

      firstNonEmptyActiveCandidateView = v10;
    }
  }
}

- (id)candidateAtIndex:(unint64_t)index
{
  candidateResultSet = [(UIKeyboardCandidateController *)self candidateResultSet];
  candidates = [candidateResultSet candidates];
  v7 = [candidates count];

  if (v7 <= index)
  {
    v10 = 0;
  }

  else
  {
    candidateResultSet2 = [(UIKeyboardCandidateController *)self candidateResultSet];
    candidates2 = [candidateResultSet2 candidates];
    v10 = [candidates2 objectAtIndex:index];
  }

  return v10;
}

- (int64_t)viewOffsetForCandidateAtIndex:(unint64_t)index
{
  v4 = [(UIKeyboardCandidateController *)self candidateAtIndex:index];
  if (v4)
  {
    firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
    v6 = [firstNonEmptyActiveCandidateView viewOffsetForCandidate:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (int64_t)rowForCandidateAtIndex:(unint64_t)index
{
  v4 = [(UIKeyboardCandidateController *)self candidateAtIndex:index];
  if (v4)
  {
    firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
    v6 = [firstNonEmptyActiveCandidateView rowForCandidate:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (id)secureCandidateRenderTraits
{
  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 2) != 0 || ![(UIKeyboardCandidateController *)self activeCandidateViewType])
  {
    barState = [(UIKeyboardCandidateController *)self barState];
    style = [barState style];

    if (!style)
    {
      barConfiguration = [(UIKeyboardCandidateController *)self barConfiguration];
      initialState = [barConfiguration initialState];
      style = [initialState style];
    }

    v10 = [(UIKeyboardCandidateController *)self bar];
    [v10 bounds];
    Width = v11;

    screenTraits = [(UIKeyboardCandidateController *)self screenTraits];
    -[UIKeyboardCandidateController rowHeightForBarForOrientation:](self, "rowHeightForBarForOrientation:", [screenTraits orientation]);
    Height = v14;

    barConfiguration2 = [(UIKeyboardCandidateController *)self barConfiguration];
    goto LABEL_9;
  }

  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 1) != 0)
  {
    state = [(TUICandidateView *)self->_key state];
    style = [state style];

    if (!style)
    {
      keyConfiguration = [(UIKeyboardCandidateController *)self keyConfiguration];
      initialState2 = [keyConfiguration initialState];
      style = [initialState2 style];
    }

    [(TUICandidateView *)self->_key bounds];
    Width = CGRectGetWidth(v49);
    [(TUICandidateView *)self->_key bounds];
    Height = CGRectGetWidth(v50);
    [style rowHeight];
    if (Height >= v44)
    {
      Height = v44;
    }

    keyConfiguration2 = [(UIKeyboardCandidateController *)self keyConfiguration];
    v5 = 0;
LABEL_10:
    maxNumberOfProactiveCandidates = [keyConfiguration2 maxNumberOfProactiveCandidates];

    if (Width != 0.0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) != 0)
  {
    inlineViewState = [(UIKeyboardCandidateController *)self inlineViewState];
    style = [inlineViewState style];

    if (!style)
    {
      inlineConfiguration = [(UIKeyboardCandidateController *)self inlineConfiguration];
      initialState3 = [inlineConfiguration initialState];
      style = [initialState3 style];
    }

    [(TUICandidateView *)self->_inlineView bounds];
    Width = CGRectGetWidth(v51);
    [(TUICandidateView *)self->_inlineView bounds];
    Height = CGRectGetHeight(v52);
    barConfiguration2 = [(UIKeyboardCandidateController *)self inlineConfiguration];
LABEL_9:
    keyConfiguration2 = barConfiguration2;
    v5 = 1;
    goto LABEL_10;
  }

  style = 0;
  maxNumberOfProactiveCandidates = 0;
  v5 = 1;
  Height = 0.0;
LABEL_11:
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  Width = v18;

LABEL_12:
  v19 = [off_1E70ECC18 systemFontOfSize:14.0];
  fontName = [v19 fontName];

  v21 = objc_alloc_init(MEMORY[0x1E69D9648]);
  v22 = objc_alloc(MEMORY[0x1E69D9650]);
  if ([(UIKeyboardCandidateController *)self darkKeyboard])
  {
    [MEMORY[0x1E69D9640] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69D9640] blackColor];
  }
  v23 = ;
  v24 = [v22 initWithFontName:fontName maxFontSize:v23 minFontSize:17.0 textColor:15.0];
  [v21 setHeaderTextTraits:v24];

  headerTextTraits = [v21 headerTextTraits];
  [v21 setInputTextTraits:headerTextTraits];

  if (v5)
  {
    [v21 setResultCountToSingleCellWidth:MEMORY[0x1E695E0F0]];
    if (Width <= 0.0)
    {
      +[UIKeyboardPredictionCellMetrics secureCandidateEstimatedMetricsDictionary];
    }

    else
    {
      [UIKeyboardPredictionCellMetrics secureCandidateEstimatedMetricsDictionaryForWidth:Width];
    }
    v34 = ;
    [v21 setCellWidthOptions:v34];

    cellWidthOptions = [v21 cellWidthOptions];
    v35 = [cellWidthOptions objectForKeyedSubscript:*MEMORY[0x1E69D98C0]];
    [v35 floatValue];
    [(UIKeyboardCandidateController *)self setSingleSlottedCellMargin:(Width - v36) * 0.5];
  }

  else
  {
    cellWidthOptions = [MEMORY[0x1E695DF70] array];
    maxNumberOfProactiveCells = [style maxNumberOfProactiveCells];
    v28 = 0;
    if (maxNumberOfProactiveCells <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = maxNumberOfProactiveCells;
    }

    v30 = v29 + 1;
    do
    {
      if (v28)
      {
        v31 = Width / v28;
        if (v28 == 1)
        {
          [style singleSlottedCellMargin];
          v31 = v31 - (v32 + v32);
        }
      }

      else
      {
        v31 = 0.0;
      }

      v33 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
      [cellWidthOptions addObject:v33];

      ++v28;
    }

    while (v30 != v28);
    [v21 setResultCountToSingleCellWidth:cellWidthOptions];
  }

  [v21 setSingleCellHeight:Height];
  [style extraCellPadding];
  [v21 setSingleCellVerticalPadding:v37 * 0.5];
  [v21 setMaxCellCount:maxNumberOfProactiveCandidates];
  mainScreen2 = [objc_opt_self() mainScreen];
  [mainScreen2 scale];
  [v21 setScreenScale:?];

  barConfiguration3 = [(UIKeyboardCandidateController *)self barConfiguration];
  [v21 setIsCandidateUI:{objc_msgSend(barConfiguration3, "shouldUsePredictionViewSecureRenderTraits") ^ 1}];

  return v21;
}

- (void)toggleCandidateView:(id)view animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  viewCopy = view;
  completionCopy = completion;
  v9 = [(UIKeyboardCandidateController *)self bar];

  if (v9 == viewCopy)
  {
    v12 = [(UIKeyboardCandidateController *)self bar];
    state = [v12 state];
    barState = [(UIKeyboardCandidateController *)self barState];
    v15 = UIKBAnalyticsCandidateUIDirectionOpen;
    if (state != barState)
    {
      v15 = UIKBAnalyticsCandidateUIDirectionClose;
    }

    [UIKBAnalyticsDispatcher candidateViewExtended:@"Button" direction:*v15];

    if ([(UIKeyboardCandidateController *)self isTextEffectsButtonPresented])
    {
      v16 = +[UIKeyboardImpl activeInstance];
      delegateAsResponder = [v16 delegateAsResponder];

      if (objc_opt_respondsToSelector())
      {
        [delegateAsResponder performSelector:sel__showTextFormattingAnimationOptions_ withObject:0];
      }
    }

    else
    {
      if (!-[UIKeyboardCandidateController reuseArrowButtonToExpandAssistantBarItems](self, "reuseArrowButtonToExpandAssistantBarItems") || (-[UIKeyboardCandidateController bar](self, "bar"), v18 = objc_claimAutoreleasedReturnValue(), [v18 state], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "arrowButtonDirection"), v19, v18, v20 != 2))
      {
        [(UIKeyboardCandidateController *)self toggleBarExtended];
        goto LABEL_16;
      }

      delegateAsResponder = [MEMORY[0x1E696AD88] defaultCenter];
      [delegateAsResponder postNotificationName:@"UIKeyboardShouldExpandAssistantBarItems" object:0 userInfo:0];
    }

    goto LABEL_16;
  }

  inlineView = [(UIKeyboardCandidateController *)self inlineView];

  if (inlineView == viewCopy)
  {
    [(UIKeyboardCandidateController *)self toggleInlineViewExtendedAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
    v11 = [(UIKeyboardCandidateController *)self key];

    if (v11 == viewCopy)
    {
      [(UIKeyboardCandidateController *)self toggleKeyViewExtendedAnimated:animatedCopy completion:completionCopy];
    }
  }

LABEL_16:
}

- (void)candidateViewDidTapInlineText:(id)text
{
  textCopy = text;
  v4 = [(UIKeyboardCandidateController *)self bar];
  if (v4 != textCopy)
  {
    goto LABEL_2;
  }

  state = [textCopy state];
  extendedScrolledBarState = [(UIKeyboardCandidateController *)self extendedScrolledBarState];

  if (state == extendedScrolledBarState)
  {
    extendedBarState = [(UIKeyboardCandidateController *)self extendedBarState];
    [textCopy setState:extendedBarState animated:1 options:0 force:0 completion:&__block_literal_global_100_0];

    v4 = +[UIInputViewAnimationStyle animationStyleDefault];
    [v4 setDontMerge:1];
    [v4 setExtraOptions:0];
    [objc_opt_class() candidateViewAnimationDuration];
    [v4 setDuration:?];
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v8 maximizeWithAnimationStyle:v4 force:1];

    state2 = [textCopy state];
    [state2 yOffset];
    [(UIKeyboardCandidateController *)self extendKeyboardBackdropHeight:?];

LABEL_2:
  }
}

- (void)candidateViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  v4 = [(UIKeyboardCandidateController *)self bar];
  if (v4 != draggingCopy)
  {
    goto LABEL_2;
  }

  state = [draggingCopy state];
  extendedBarState = [(UIKeyboardCandidateController *)self extendedBarState];

  if (state == extendedBarState)
  {
    extendedScrolledBarState = [(UIKeyboardCandidateController *)self extendedScrolledBarState];

    if (extendedScrolledBarState)
    {
      extendedScrolledBarState2 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];
      [draggingCopy setState:extendedScrolledBarState2 animated:1 options:0 force:0 completion:&__block_literal_global_102_1];

      v4 = +[UIInputViewAnimationStyle animationStyleDefault];
      [v4 setDontMerge:1];
      [v4 setExtraOptions:0];
      [objc_opt_class() candidateViewAnimationDuration];
      [v4 setDuration:?];
      v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      [v9 minimizeWithAnimationStyle:v4 force:1];

      state2 = [draggingCopy state];
      [state2 yOffset];
      [(UIKeyboardCandidateController *)self extendKeyboardBackdropHeight:?];

LABEL_2:
    }
  }
}

- (void)candidateViewSelectionDidChange:(id)change inGridType:(int64_t)type
{
  v5 = [(UIKeyboardCandidateController *)self candidateListDelegate:change];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    candidateListDelegate = [(UIKeyboardCandidateController *)self candidateListDelegate];
    [candidateListDelegate candidateListSelectionDidChange:self];
  }
}

- (void)candidateViewNeedsToExpand:(id)expand
{
  expandCopy = expand;
  inlineView = [(UIKeyboardCandidateController *)self inlineView];

  if (inlineView == expandCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__UIKeyboardCandidateController_candidateViewNeedsToExpand___block_invoke;
    v6[3] = &unk_1E70F5AC0;
    v7 = expandCopy;
    [(UIKeyboardCandidateController *)self toggleInlineViewExtendedAnimated:1 completion:v6];
  }
}

void __60__UIKeyboardCandidateController_candidateViewNeedsToExpand___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 selectedIndexPath];
  [v1 setSelectedIndexPath:v2 animated:0 scrollPosition:0];
}

- (void)candidateView:(id)view didAcceptCandidate:(id)candidate atIndexPath:(id)path inGridType:(int64_t)type
{
  pathCopy = path;
  candidateCopy = candidate;
  viewCopy = view;
  v12 = +[UIKeyboardImpl activeInstance];
  [v12 updateIdleDetection:0];

  [(UIKeyboardCandidateController *)self candidateView:viewCopy didAcceptCandidate:candidateCopy atIndexPath:pathCopy inGridType:type generateFeedback:1];
}

- (void)candidateView:(id)view didAcceptCandidate:(id)candidate atIndexPath:(id)path inGridType:(int64_t)type generateFeedback:(BOOL)feedback
{
  feedbackCopy = feedback;
  candidateCopy = candidate;
  [(UIKeyboardCandidateController *)self setCurrentCandidate:?];
  candidateListDelegate = [(UIKeyboardCandidateController *)self candidateListDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    candidateListDelegate2 = [(UIKeyboardCandidateController *)self candidateListDelegate];
    [candidateListDelegate2 candidateListAcceptCandidate:self];
  }

  if (feedbackCopy)
  {
    if ([(UIKBScreenTraits *)self->_screenTraits idiom]== 3)
    {
      feedbackGenerator = +[UIDevice currentDevice];
      [feedbackGenerator _playSystemSound:1123];
    }

    else
    {
      v13 = +[UIKeyboardImpl activeInstance];
      feedbackGenerator = [v13 feedbackGenerator];

      v14 = objc_opt_respondsToSelector();
      v15 = +[UIKeyboardImpl activeInstance];
      feedbackGenerator2 = [v15 feedbackGenerator];
      v17 = feedbackGenerator2;
      if (v14)
      {
        candidate = [candidateCopy candidate];
        v19 = [candidate length];
        [v17 actionOccurred:10 textLength:v19 atLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      }

      else
      {
        [feedbackGenerator2 actionOccurred:10];
      }
    }
  }
}

- (void)_setRenderConfig:(id)config
{
  configCopy = config;
  configCopy2 = config;
  objc_storeStrong(&self->_renderConfig, configCopy);
  LODWORD(configCopy) = self->_darkKeyboard;
  if (configCopy != ([configCopy2 lightKeyboard] ^ 1))
  {
    self->_darkKeyboard = [configCopy2 lightKeyboard] ^ 1;
    [(UIKeyboardCandidateController *)self updateStates];
  }
}

- (void)dimKeys:(id)keys
{
  keysCopy = keys;
  opacities = [(UIKeyboardCandidateController *)self opacities];
  v5 = [opacities isEqual:keysCopy];

  if ((v5 & 1) == 0)
  {
    [(UIKeyboardCandidateController *)self setOpacities:keysCopy];
    [(UIKeyboardCandidateController *)self updateStates];
  }
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (!type)
  {
    [(UIKeyboardCandidateController *)self setHideDisambiguationCandidates:state];
  }
}

- (BOOL)hostTextIsVertical
{
  inlineViewContainer = [(UIKeyboardCandidateController *)self inlineViewContainer];
  inlineRectIsVertical = [inlineViewContainer inlineRectIsVertical];

  return inlineRectIsVertical;
}

- (void)clientStateChangedWithIsExpanded:(BOOL)expanded isVisible:(BOOL)visible
{
  expandedCopy = expanded;
  [(UIKeyboardCandidateController *)self clientVisibilityChanged:visible];

  [(UIKeyboardCandidateController *)self clientExpandedStateChanged:expandedCopy];
}

- (void)clientExpandedStateChanged:(BOOL)changed
{
  changedCopy = changed;
  inlineViewState = [(UIKeyboardCandidateController *)self inlineViewState];
  inlineConfiguration = [(UIKeyboardCandidateController *)self inlineConfiguration];
  v7 = inlineConfiguration;
  if (changedCopy)
  {
    extendedState = [inlineConfiguration extendedState];

    if (inlineViewState != extendedState)
    {
      inlineConfiguration2 = [(UIKeyboardCandidateController *)self inlineConfiguration];
      extendedState2 = [inlineConfiguration2 extendedState];
      [(UIKeyboardCandidateController *)self setInlineViewState:extendedState2];

      inlineViewState2 = [(UIKeyboardCandidateController *)self inlineViewState];
      [inlineViewState2 yOffset];
      v13 = v12;

      inlineViewContainer = [(UIKeyboardCandidateController *)self inlineViewContainer];
      LODWORD(extendedState2) = [inlineViewContainer shouldExtendUpwards];

      if (extendedState2)
      {
        inlineViewState3 = [(UIKeyboardCandidateController *)self inlineViewState];
        [inlineViewState3 additionalHeight];
        v13 = v13 - v16;
      }

      [(UIView *)self->_inlineViewContainer frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23 + v13;
      inlineViewState4 = [(UIKeyboardCandidateController *)self inlineViewState];
      [inlineViewState4 additionalHeight];
      v27 = v22 + v26;

      inlineViewContainer = self->_inlineViewContainer;

      [(UIView *)inlineViewContainer setFrame:v18, v24, v20, v27];
    }

    return;
  }

  initialState = [inlineConfiguration initialState];

  if (inlineViewState == initialState)
  {
    return;
  }

  inlineViewState5 = [(UIKeyboardCandidateController *)self inlineViewState];
  [inlineViewState5 yOffset];
  v32 = v31;

  inlineViewContainer2 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  if (![inlineViewContainer2 shouldExtendUpwards])
  {
    goto LABEL_12;
  }

  inlineViewContainer3 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  position = [inlineViewContainer3 position];

  if (position == 1)
  {
    inlineViewContainer2 = [(UIKeyboardCandidateController *)self inlineViewState];
    [inlineViewContainer2 additionalHeight];
    v32 = v32 - v36;
LABEL_12:
  }

  [(UIView *)self->_inlineViewContainer frame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43 - v32;
  inlineViewState6 = [(UIKeyboardCandidateController *)self inlineViewState];
  [inlineViewState6 additionalHeight];
  v47 = v42 - v46;

  [(UIView *)self->_inlineViewContainer setFrame:v38, v44, v40, v47];
  inlineConfiguration3 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  initialState2 = [inlineConfiguration3 initialState];
  [(UIKeyboardCandidateController *)self setInlineViewState:initialState2];
}

- (void)hostedInlineFloatingViewFrameUpdated
{
  inlineView = [(UIKeyboardCandidateController *)self inlineView];
  inlineView2 = [(UIKeyboardCandidateController *)self inlineView];
  state = [inlineView2 state];
  [inlineView setState:state animated:0 options:0 force:1 completion:0];
}

- (void)hostedInlineFloatingViewIsTextVerticalUpdated:(BOOL)updated
{
  [(UIKeyboardCandidateController *)self updateStates];
  inlineView = [(UIKeyboardCandidateController *)self inlineView];
  inlineView2 = [(UIKeyboardCandidateController *)self inlineView];
  state = [inlineView2 state];
  [inlineView setState:state animated:0 options:0 force:1 completion:0];
}

- (CGRect)candidateViewFrame
{
  firstNonEmptyActiveCandidateView = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    firstNonEmptyActiveCandidateView2 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
    [firstNonEmptyActiveCandidateView2 candidateViewFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (UIKeyboardCandidateControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)inlineRect
{
  x = self->_inlineRect.origin.x;
  y = self->_inlineRect.origin.y;
  width = self->_inlineRect.size.width;
  height = self->_inlineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIKeyboardCandidateListDelegate)candidateListDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_candidateListDelegate);

  return WeakRetained;
}

@end