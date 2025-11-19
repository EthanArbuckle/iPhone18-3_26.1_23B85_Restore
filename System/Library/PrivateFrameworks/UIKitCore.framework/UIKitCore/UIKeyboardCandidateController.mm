@interface UIKeyboardCandidateController
+ (double)candidateViewAnimationDuration;
+ (id)sharedInstance;
- (BOOL)barIsExtended;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handleNumberKey:(unint64_t)a3;
- (BOOL)handleTabKeyWithShift:(BOOL)a3;
- (BOOL)hasCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4;
- (BOOL)hasCandidates;
- (BOOL)hostTextIsVertical;
- (BOOL)inlineViewIsExtended;
- (BOOL)isExtended;
- (BOOL)isExtendedList;
- (BOOL)isKeyExtended;
- (BOOL)shouldShowDisambiguationCandidates;
- (BOOL)shouldShowSortControlForConfiguration:(id)a3;
- (BOOL)showCandidate:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (CGRect)candidateViewFrame;
- (CGRect)inlineRect;
- (CGSize)maximumSizeForInlineView;
- (NSArray)activeCandidateViews;
- (TIKeyboardCandidate)currentCandidate;
- (UIEdgeInsets)candidateBarEdgeInsetsForOrientation:(int64_t)a3;
- (UIKeyboardCandidateController)init;
- (UIKeyboardCandidateControllerDelegate)delegate;
- (UIKeyboardCandidateListDelegate)candidateListDelegate;
- (double)candidateBarHeight;
- (double)candidateBarHeightForOrientation:(int64_t)a3;
- (double)candidateBarWidth;
- (double)rowHeightForBarForOrientation:(int64_t)a3;
- (id)candidateAtIndex:(unint64_t)a3;
- (id)firstNonEmptyActiveCandidateView;
- (id)keyboardBehaviors;
- (id)loadCandidateBar;
- (id)loadInProcessInlineCandidateView;
- (id)loadInlineCandidateView;
- (id)newCandidateKeyWithFrame:(CGRect)a3 configuration:(id)a4;
- (id)secureCandidateRenderTraits;
- (id)snapshot;
- (id)statisticsIdentifier;
- (int64_t)candidateViewTypeForView:(id)a3;
- (int64_t)layoutDirectionForCurrentInputMode;
- (int64_t)rowForCandidateAtIndex:(unint64_t)a3;
- (int64_t)viewOffsetForCandidateAtIndex:(unint64_t)a3;
- (unint64_t)currentIndex;
- (unint64_t)selectedSortIndex;
- (void)_setRenderConfig:(id)a3;
- (void)acceptSelectedCandidate;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4;
- (void)candidateView:(id)a3 didAcceptCandidate:(id)a4 atIndexPath:(id)a5 inGridType:(int64_t)a6;
- (void)candidateView:(id)a3 didAcceptCandidate:(id)a4 atIndexPath:(id)a5 inGridType:(int64_t)a6 generateFeedback:(BOOL)a7;
- (void)candidateViewDidTapInlineText:(id)a3;
- (void)candidateViewNeedsToExpand:(id)a3;
- (void)candidateViewSelectionDidChange:(id)a3 inGridType:(int64_t)a4;
- (void)candidateViewWillBeginDragging:(id)a3;
- (void)candidatesDidChange;
- (void)clientExpandedStateChanged:(BOOL)a3;
- (void)clientStateChangedWithIsExpanded:(BOOL)a3 isVisible:(BOOL)a4;
- (void)collapse;
- (void)dealloc;
- (void)dimKeys:(id)a3;
- (void)extendKeyboardBackdropHeight:(double)a3;
- (void)hostedInlineFloatingViewFrameUpdated;
- (void)hostedInlineFloatingViewIsTextVerticalUpdated:(BOOL)a3;
- (void)loadDefaultStates;
- (void)panGestureRecognizerAction:(id)a3;
- (void)removeInlineView;
- (void)resetHostedInlineCandidateView;
- (void)resetSortControlIndexAfterCandidatesChanged;
- (void)revealHiddenCandidates;
- (void)setActiveCandidateViewType:(int64_t)a3;
- (void)setCandidateResultSet:(id)a3;
- (void)setCandidates:(id)a3 type:(int)a4 inlineText:(id)a5 inlineRect:(CGRect)a6 maxX:(double)a7 layout:(BOOL)a8 inlineCandidatesAreHosted:(BOOL)a9;
- (void)setHideDisambiguationCandidates:(BOOL)a3;
- (void)setInlineState:(id)a3 extended:(BOOL)a4 animated:(BOOL)a5 options:(unint64_t)a6 force:(BOOL)a7 completion:(id)a8;
- (void)setInlineText:(id)a3;
- (void)setScreenTraits:(id)a3;
- (void)setUIKeyboardCandidateListDelegate:(id)a3;
- (void)setupAnimatorWithCurve:(int64_t)a3;
- (void)setupPanGestureRecognizerIfNeeded;
- (void)showCandidateAtIndex:(unint64_t)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (void)showCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4;
- (void)syncIsExtended;
- (void)toggleBarExtended;
- (void)toggleBarExtendedUnanimated;
- (void)toggleBarExtendedWithAnimator:(id)a3;
- (void)toggleCandidateView:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)toggleInlineViewExtendedAnimated:(BOOL)a3 completion:(id)a4;
- (void)toggleKeyViewExtendedAnimated:(BOOL)a3 completion:(id)a4;
- (void)updateArrowButtonImageNameToState:(id)a3;
- (void)updateConfigurations;
- (void)updateHostedInlineCandidatesWithInlineText:(id)a3 type:(int)a4 inlineRect:(CGRect)a5 maxX:(double)a6 layout:(BOOL)a7;
- (void)updateOpacitiesToState:(id)a3;
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
  v59 = [v3 currentInputMode];

  v4 = [(UIKeyboardCandidateController *)self screenTraits];
  v5 = [v4 orientation] - 3;

  v6 = [(UIKeyboardCandidateController *)self screenTraits];
  v7 = [v6 idiom];

  if (v7 == 1)
  {
    v8 = [(UIKeyboardCandidateController *)self bar];
    v9 = [v8 _rootInputWindowController];
    v10 = [v9 placement];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v19 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v20 = [v19 containerRootController];
      v12 = [v20 placement];
    }

    if ([v12 isFloatingAssistantView])
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
        v27 = [v59 identifier];
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

    v30 = [(__objc2_class *)*v21 configuration];
    [(UIKeyboardCandidateController *)self setBarConfiguration:v30];

    v31 = [(UIKeyboardCandidateController *)self inlineRectIsVertical];
    v32 = off_1E70E9F78;
    if (!v31)
    {
      v32 = off_1E70E9F50;
    }

    v33 = [(__objc2_class *)*v32 configuration];
    [(UIKeyboardCandidateController *)self setInlineConfiguration:v33];
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v58 = TIGetCandidateViewExperimentsValue();
      v13 = [v58 integerValue];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(UIKeyboardCandidateController *)self screenTraits];
    +[UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:inputMode:](UIKeyboardImpl, "deviceSpecificPaddingForInterfaceOrientation:inputMode:", [v14 orientation], v59);
    v16 = v15;

    if (v16 <= 0.0)
    {
      if (v5 >= 2)
      {
        if (v13 >= 2)
        {
          v34 = [(UIKeyboardCandidateController *)self screenTraits];
          [v34 bounds];
          v36 = v35;

          v37 = [(UIKeyboardCandidateController *)self screenTraits];
          [v37 bounds];
          v39 = v38;

          if (v36 >= v39)
          {
            v40 = v36;
          }

          else
          {
            v40 = v39;
          }

          v41 = v13 != 2 && v40 <= 568.0;
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
      if (v13 < 2)
      {
        v18 = off_1E70E9F98;
      }

      if (v5 >= 2)
      {
        v17 = v18;
      }
    }

    v42 = [(__objc2_class *)*v17 configuration];
    [(UIKeyboardCandidateController *)self setBarConfiguration:v42];

    v43 = [(UIKeyboardCandidateController *)self inlineRectIsVertical];
    v44 = off_1E70E9FC8;
    if (!v43)
    {
      v44 = off_1E70E9FC0;
    }

    v45 = [(__objc2_class *)*v44 configuration];
    [(UIKeyboardCandidateController *)self setInlineConfiguration:v45];

    v12 = +[UIKeyboardImpl activeInstance];
    v33 = [v12 textInputTraits];
    v46 = [v33 keyboardType];
    if (v46 <= 0xB && ((1 << v46) & 0x930) != 0 || v46 == 127)
    {

      v12 = +[UIKeyboardCandidateViewConfigurationPhoneNumberPad configuration];
      [(UIKeyboardCandidateController *)self setBarConfiguration:v12];
      goto LABEL_47;
    }
  }

LABEL_47:
  v47 = [(UIKeyboardCandidateController *)self screenTraits];
  v48 = [v47 idiom];

  v49 = +[UIKeyboardImpl activeInstance];
  v50 = [v49 liveConversionEnabled];

  if (v50 && v48 == 1)
  {
    v51 = [(UIKeyboardCandidateController *)self inlineRectIsVertical];
    v52 = [v59 identifier];
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

    if (!v51)
    {
      v55 = v56;
    }

    v57 = [(__objc2_class *)*v55 configuration];
    [(UIKeyboardCandidateController *)self setInlineConfiguration:v57];
  }

  [(UIKeyboardCandidateController *)self updateStyles];
}

- (void)updateStyles
{
  v3 = [(UIKeyboardCandidateController *)self darkKeyboard];
  v4 = [(UIKeyboardCandidateController *)self barConfiguration];
  [v4 setDarkKeyboard:v3];

  v5 = [(UIKeyboardCandidateController *)self darkKeyboard];
  v6 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  [v6 setDarkKeyboard:v5];

  v7 = [(UIKeyboardCandidateController *)self darkKeyboard];
  v8 = [(UIKeyboardCandidateController *)self keyConfiguration];
  [v8 setDarkKeyboard:v7];
}

- (BOOL)barIsExtended
{
  v3 = [(UIKeyboardCandidateController *)self bar];
  v4 = [v3 state];
  if (v4)
  {
    v5 = [(UIKeyboardCandidateController *)self bar];
    v6 = [v5 state];
    v7 = [(UIKeyboardCandidateController *)self extendedBarState];
    if (v6 == v7)
    {
      v11 = 1;
    }

    else
    {
      v8 = [(UIKeyboardCandidateController *)self bar];
      v9 = [v8 state];
      v10 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];
      v11 = v9 == v10;
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

  v5 = [(UIKeyboardCandidateController *)self barConfiguration];
  v6 = [v5 initialState];

  v7 = [(UIKeyboardCandidateController *)self barConfiguration];
  v8 = [v7 extendedState];

  v9 = [(UIKeyboardCandidateController *)self barConfiguration];
  v10 = [v9 extendedScrolledState];

  v11 = [(UIKeyboardCandidateController *)self screenTraits];
  -[UIKeyboardCandidateController rowHeightForBarForOrientation:](self, "rowHeightForBarForOrientation:", [v11 orientation]);
  v13 = v12;

  v14 = [v6 style];
  [v14 setRowHeight:v13];

  v15 = [v8 style];
  [v15 setRowHeight:v13];

  v16 = [v10 style];
  [v16 setRowHeight:v13];

  v17 = [(UIKeyboardCandidateController *)self renderConfig];
  v18 = [v17 colorAdaptiveBackground];

  if (v18)
  {
    v19 = [v6 style];
    [v19 setArrowButtonHighlightBackgroundHidden:1];

    v20 = [v8 style];
    [v20 setArrowButtonHighlightBackgroundHidden:1];

    v21 = [v10 style];
    [v21 setArrowButtonHighlightBackgroundHidden:1];

    v22 = [(UIKeyboardCandidateController *)self barConfiguration];
    v23 = [v22 willCoverKeyboardLayout];

    if (v23)
    {
      [v6 setHasBackdrop:0];
      v24 = [v6 style];
      [v24 setDoNotClipToBounds:0];

      v25 = [v6 style];
      [v25 setMaskedCorners:3];

      v26 = [v6 style];
      [v26 setCornerRadius:27.0];

      v27 = [v6 style];
      [v27 setGridPadding:{0.0, 14.0, 0.0, 0.0}];

      [v8 setHasBackdrop:0];
      v28 = [v8 style];
      [v28 setDoNotClipToBounds:0];

      v29 = [v8 style];
      [v29 setCornerRadius:27.0];

      v30 = [v8 style];
      [v30 setGridPadding:{0.0, 14.0, 0.0, 0.0}];

      v31 = [v8 style];
      [v31 setSortControlPadding:{0.0, 14.0, 0.0, 0.0}];
    }
  }

  if (self->_activeCandidateViewType == 6)
  {
    [v6 setArrowButtonPosition:0];
    v32 = [v6 style];
    v33 = [v32 arrowButtonSeparatorImage];
    v34 = [v6 style];
    [v34 setRightEdgeSeparatorImage:v33];
  }

  [(UIKeyboardCandidateController *)self setAdditionalExtendedBarBackdropOffset:0.0];
  v35 = +[UIKeyboardImpl activeInstance];
  v36 = [v35 inputDelegateManager];
  v37 = [v36 forwardingInputDelegate];

  if ([(UIKeyboardCandidateController *)self barIsExtended])
  {
    v38 = [(UIKeyboardCandidateController *)self extendedBarState];
    [v38 yOffset];
    [v8 setYOffset:?];

    v39 = [(UIKeyboardCandidateController *)self extendedBarState];
    [v39 additionalHeight];
    [v8 setAdditionalHeight:?];

    v40 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];
    [v40 yOffset];
    [v10 setYOffset:?];

    v41 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];
    [v41 additionalHeight];
    [v10 setAdditionalHeight:?];

    goto LABEL_40;
  }

  v42 = +[UIKeyboardImpl activeInstance];
  [v42 frame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v287 = [v42 showsCandidateBar];
  v51 = +[UIKeyboardInputModeController sharedInputModeController];
  v52 = [v51 currentInputMode];

  v53 = [(UIKeyboardCandidateController *)self screenTraits];
  +[UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:inputMode:](UIKeyboardImpl, "deviceSpecificPaddingForInterfaceOrientation:inputMode:", [v53 orientation], v52);
  v55 = v54;

  v56 = [(UIKeyboardCandidateController *)self screenTraits];
  +[UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:inputMode:](UIKeyboardImpl, "deviceSpecificStaticHitBufferForInterfaceOrientation:inputMode:", [v56 orientation], v52);
  v58 = v57;

  v293.origin.x = v44;
  v293.origin.y = v46;
  v293.size.width = v48;
  v293.size.height = v50;
  v59 = v55 + CGRectGetHeight(v293) - v58;
  v60 = [(UIKeyboardCandidateController *)self screenTraits];
  -[UIKeyboardCandidateController candidateBarEdgeInsetsForOrientation:](self, "candidateBarEdgeInsetsForOrientation:", [v60 orientation]);
  v62 = v61;

  v63 = [(UIKeyboardCandidateController *)self screenTraits];
  -[UIKeyboardCandidateController candidateBarHeightForOrientation:](self, "candidateBarHeightForOrientation:", [v63 orientation]);
  v65 = v62 + v64;

  v66 = [v42 window];
  if (v66)
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
  v70 = [(UIKeyboardCandidateController *)self barConfiguration];
  v71 = [v70 rowsToExtend];

  if (v71)
  {
    v72 = [(UIKeyboardCandidateController *)self extendedBarState];
    v73 = [v72 style];
    [v73 rowHeight];
    v75 = v74;
    v76 = [(UIKeyboardCandidateController *)self barConfiguration];
    v77 = v75 * [v76 rowsToExtend];

    v78 = [(UIKeyboardCandidateController *)self barConfiguration];
    LODWORD(v72) = [(UIKeyboardCandidateController *)self shouldShowSortControlForConfiguration:v78];

    v79 = 0.0;
    if (v72)
    {
      v80 = [(UIKeyboardCandidateController *)self extendedBarState];
      v81 = [v80 style];
      [v81 rowHeight];
      v77 = v77 + v82;
    }
  }

  else
  {
    v83 = [v42 window];
    v84 = __UIStatusBarManagerForWindow(v83);
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

  if ([v6 arrowButtonDirection])
  {
    v87 = v69 - v55;
    v88 = 0.0;
    if (v287)
    {
      v88 = v65;
    }

    v89 = v87 - v88;
    [v8 setAdditionalHeight:v87 - v88];
    v90 = v10;
    v91 = v89;
  }

  else
  {
    if (v37)
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

    [v8 setYOffset:-v77];
    [v8 setAdditionalHeight:v77];
    [v10 setYOffset:-v77 - v69];
    v91 = Height - v65 - v79;
    v90 = v10;
  }

  [v90 setAdditionalHeight:v91];
  if ([v42 usesContinuousPath])
  {
    if (qword_1ED49EE38 != -1)
    {
      dispatch_once(&qword_1ED49EE38, &__block_literal_global_601);
    }

    v95 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v96 = [v95 valueForPreferenceKey:@"DisableCPCandidateBarScrolling"];

    LODWORD(v95) = [v96 BOOLValue];
    if (v95)
    {
      v97 = [v6 style];
      [v97 setScrollDisabled:1];
    }
  }

  if (-[UIKeyboardCandidateController reuseArrowButtonToExpandAssistantBarItems](self, "reuseArrowButtonToExpandAssistantBarItems") && [v6 arrowButtonPosition] == 7)
  {
    v98 = [(UIKeyboardCandidateController *)self candidateResultSet];
    if ([v98 hasCandidates])
    {
      v99 = [(UIKeyboardCandidateController *)self candidateResultSet];
      v100 = [v99 hasOnlyCompletionCandidates];

      if (!v100)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    [v6 setArrowButtonDirection:2];
  }

LABEL_39:

LABEL_40:
  if ([v6 arrowButtonPosition] == 2)
  {
    v101 = 0.0;
    if (+[UIKeyboardImpl isSplit])
    {
      v102 = +[UIKeyboardImpl activeInstance];
      v103 = [v102 centerFilled];

      if ((v103 & 1) == 0)
      {
        [(UIKeyboardCandidateController *)self splitGap];
        v101 = v104;
      }
    }

    [v6 setArrowButtonOffset:{v101, 0.0}];
    [v8 setArrowButtonOffset:{v101, 0.0}];
    [v10 setArrowButtonOffset:{v101, 0.0}];
    v105 = [v6 style];
    [v105 rowHeight];
    v107 = v106;
    v108 = [v8 style];
    [v108 setRowHeight:v107];

    v109 = [v6 style];
    [v109 rowHeight];
    v111 = v110;
    v112 = [v10 style];
    [v112 setRowHeight:v111];
  }

  if ([v6 arrowButtonPosition] == 7)
  {
    v113 = [(UIKeyboardCandidateController *)self screenTraits];
    if (([v113 orientation] - 1) > 1)
    {
      v116 = +[UIKeyboardImpl isFloating];

      if (!v116)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v114 = [(UIKeyboardCandidateController *)self screenTraits];
      if ([v114 idiom])
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

  [v6 setArrowButtonOffset:{0.0, v117}];
  [v8 setArrowButtonOffset:{0.0, v117}];
  [v10 setArrowButtonOffset:{0.0, v117}];
LABEL_59:
  v118 = [(UIKeyboardCandidateController *)self barConfiguration];
  v119 = [(UIKeyboardCandidateController *)self shouldShowSortControlForConfiguration:v118];

  if (!v119)
  {
    [v8 setSortControlPosition:0];
    [v10 setSortControlPosition:0];
  }

  if (![(UIKeyboardCandidateController *)self shouldShowDisambiguationCandidates])
  {
    [v6 setDisambiguationGridPosition:0];
  }

  if (![(UIKeyboardCandidateController *)self shouldShowDisambiguationCandidatesInExtendedView])
  {
    [v8 setDisambiguationGridPosition:0];
    [v10 setDisambiguationGridPosition:0];
  }

  v120 = [(UIKeyboardCandidateController *)self renderConfig];
  if (![v120 colorAdaptiveBackground])
  {
    goto LABEL_68;
  }

  v121 = +[UIKeyboardImpl isFloating];

  if (v121)
  {
    [v6 setHasBackdrop:0];
    v122 = [v6 style];
    [v122 setDoNotClipToBounds:0];

    [v6 setBorders:0];
    v123 = [v6 style];
    [v123 setCornerRadius:22.0];

    [v8 setHasBackdrop:0];
    v124 = [v8 style];
    [v124 setDoNotClipToBounds:0];

    [v8 setBorders:0];
    v120 = [v8 style];
    [v120 setCornerRadius:22.0];
LABEL_68:
  }

  v125 = +[UIKeyboardImpl activeInstance];
  v126 = [v125 currentHandBias];

  if (!v37 && (v126 == 1 || v126 == 2 && [(UIKeyboardCandidateController *)self adjustForLeftHandBias]))
  {
    v127 = +[UIKeyboardImpl activeInstance];
    [v127 frame];
    v129 = v128;
    v130 = +[UIKeyboardImpl activeInstance];
    v131 = [v130 _layout];
    [v131 biasedKeyboardWidthRatio];
    v133 = v129 * (1.0 - v132);

    if (v126 == 1)
    {
      v134 = 0.0;
    }

    else
    {
      v134 = v133;
    }

    if (v126 != 1)
    {
      v133 = 0.0;
    }

    v135 = [(UIKeyboardCandidateController *)self layoutDirectionForCurrentInputMode];
    if ((v126 != 2) == (v135 == 1))
    {
      v136 = [v6 style];
      [v136 setArrowButtonPadding:{0.0, v133, 0.0, v134}];

      v137 = [v8 style];
      [v137 setArrowButtonPadding:{0.0, v133, 0.0, v134}];

      v138 = [v10 style];
      [v138 setArrowButtonPadding:{0.0, v133, 0.0, v134}];
    }

    if (v135 == 1)
    {
      v139 = v133;
    }

    else
    {
      v139 = v134;
    }

    if (v135 == 1)
    {
      v140 = v134;
    }

    else
    {
      v140 = v133;
    }

    v141 = [v6 style];
    [v141 gridPadding];
    v143 = v142 + 0.0;
    v145 = v140 + v144;
    v147 = v146 + 0.0;
    v149 = v139 + v148;
    v150 = [v6 style];
    [v150 setGridPadding:{v143, v145, v147, v149}];

    v151 = [v8 style];
    [v151 gridPadding];
    v153 = v152 + 0.0;
    v155 = v140 + v154;
    v157 = v156 + 0.0;
    v159 = v139 + v158;
    v160 = [v8 style];
    [v160 setGridPadding:{v153, v155, v157, v159}];

    v161 = [v10 style];
    [v161 gridPadding];
    v163 = v162 + 0.0;
    v165 = v140 + v164;
    v167 = v166 + 0.0;
    v169 = v139 + v168;
    v170 = [v10 style];
    [v170 setGridPadding:{v163, v165, v167, v169}];

    v171 = [v6 style];
    [v171 gridPadding];
    v173 = v172;
    v175 = v174;
    v177 = v176;
    v179 = v178;
    v180 = [v6 style];
    [v180 setGridLinePadding:{v173, v175, v177, v179}];

    v181 = [v8 style];
    [v181 gridPadding];
    v183 = v182;
    v185 = v184;
    v187 = v186;
    v189 = v188;
    v190 = [v8 style];
    [v190 setGridLinePadding:{v183, v185, v187, v189}];

    v191 = [v10 style];
    [v191 gridPadding];
    v193 = v192;
    v195 = v194;
    v197 = v196;
    v199 = v198;
    v200 = [v10 style];
    [v200 setGridLinePadding:{v193, v195, v197, v199}];

    v201 = [v6 style];
    [v201 sortControlPadding];
    v203 = v202 + 0.0;
    v205 = v140 + v204;
    v207 = v206 + 0.0;
    v209 = v139 + v208;
    v210 = [v6 style];
    [v210 setSortControlPadding:{v203, v205, v207, v209}];

    v211 = [v8 style];
    [v211 sortControlPadding];
    v213 = v212 + 0.0;
    v215 = v140 + v214;
    v217 = v216 + 0.0;
    v219 = v139 + v218;
    v220 = [v8 style];
    [v220 setSortControlPadding:{v213, v215, v217, v219}];

    v221 = [v10 style];
    [v221 sortControlPadding];
    v223 = v222 + 0.0;
    v225 = v140 + v224;
    v227 = v226 + 0.0;
    v229 = v139 + v228;
    v230 = [v10 style];
    [v230 setSortControlPadding:{v223, v225, v227, v229}];

    v231 = [v6 disambiguationStyle];
    [v231 gridPadding];
    v233 = v232 + 0.0;
    v235 = v140 + v234;
    v237 = v236 + 0.0;
    v239 = v139 + v238;
    v240 = [v6 disambiguationStyle];
    [v240 setGridPadding:{v233, v235, v237, v239}];

    v241 = [v8 disambiguationStyle];
    [v241 gridPadding];
    v243 = v242 + 0.0;
    v245 = v140 + v244;
    v247 = v246 + 0.0;
    v249 = v139 + v248;
    v250 = [v8 disambiguationStyle];
    [v250 setGridPadding:{v243, v245, v247, v249}];

    v251 = [v10 disambiguationStyle];
    [v251 gridPadding];
    v253 = v252 + 0.0;
    v255 = v140 + v254;
    v257 = v256 + 0.0;
    v259 = v139 + v258;
    v260 = [v10 disambiguationStyle];
    [v260 setGridPadding:{v253, v255, v257, v259}];
  }

  v261 = [v6 style];
  [v261 singleSlottedCellMargin];
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
    v261 = [v6 style];
    [v261 setSingleSlottedCellMargin:v266];
LABEL_90:
  }

  [(UIKeyboardCandidateController *)self updateOpacitiesToState:v6];
  [(UIKeyboardCandidateController *)self updateArrowButtonImageNameToState:v6];
  v267 = [(UIKeyboardCandidateController *)self barState];
  v268 = [v267 isEqual:v6];

  if ((v268 & 1) == 0)
  {
    v269 = [(UIKeyboardCandidateController *)self bar];
    v270 = [v269 state];
    v271 = [(UIKeyboardCandidateController *)self barState];

    if (v270 == v271)
    {
      v272 = [(UIKeyboardCandidateController *)self bar];
      [v272 setState:v6 animated:0 force:1 completion:0];

      [(UIKeyboardCandidateController *)self syncIsExtended];
    }

    [(UIKeyboardCandidateController *)self setBarState:v6];
  }

  v273 = [(UIKeyboardCandidateController *)self extendedBarState];
  v274 = [v273 isEqual:v8];

  if ((v274 & 1) == 0)
  {
    v275 = [(UIKeyboardCandidateController *)self bar];
    v276 = [v275 state];
    v277 = [(UIKeyboardCandidateController *)self extendedBarState];

    if (v276 == v277)
    {
      v278 = [(UIKeyboardCandidateController *)self bar];
      [v278 setState:v8 animated:0 force:1 completion:0];

      [(UIKeyboardCandidateController *)self syncIsExtended];
    }

    [(UIKeyboardCandidateController *)self setExtendedBarState:v8];
  }

  v279 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];
  v280 = [v279 isEqual:v10];

  if ((v280 & 1) == 0)
  {
    v281 = [(UIKeyboardCandidateController *)self bar];
    v282 = [v281 state];
    v283 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];

    if (v282 == v283)
    {
      v284 = [(UIKeyboardCandidateController *)self bar];
      [v284 setState:v10 animated:0 force:1 completion:0];

      [(UIKeyboardCandidateController *)self syncIsExtended];
    }

    [(UIKeyboardCandidateController *)self setExtendedScrolledBarState:v10];
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

  v3 = [(UIKeyboardCandidateController *)self inlineView];
  v4 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  [v4 setViewForTraitCollection:v3];

  v5 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  v183 = [v5 initialState];

  v6 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  v7 = [v6 extendedState];

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 inputDelegate];

  if (objc_opt_respondsToSelector())
  {
    v10 = v9;
    v11 = [UITextInputTraits traitEnvironmentFromTraits:v10];
    v12 = [v11 traitCollection];
    v13 = [v10 insertionPointColor];
    v14 = [v13 resolvedColorWithTraitCollection:v12];

    v15 = [v183 style];
    [v15 setHighlightedBackgroundColor:v14];

    v16 = [v7 style];
    [v16 setHighlightedBackgroundColor:v14];

    v17 = v14;
    v18 = [v183 style];
    v19 = [v18 highlightedTextColor];

    [v17 _distanceFrom:v19];
    if (v20 != 1.79769313e308 && v20 <= 0.1)
    {
      v21 = [v17 _inverseColor];
      v22 = [v183 style];
      [v22 setHighlightedTextColor:v21];

      v23 = [v17 _inverseColor];
      v24 = [v183 style];
      [v24 setHighlightedCandidateNumberColor:v23];

      v25 = [v17 _inverseColor];
      v26 = [v7 style];
      [v26 setHighlightedTextColor:v25];

      v27 = [v17 _inverseColor];
      v28 = [v7 style];
      [v28 setHighlightedCandidateNumberColor:v27];
    }
  }

  +[UIKeyboardCandidateViewConfiguration lineHeightMultiplierForCurrentLanguage];
  v30 = v29;
  v31 = [v183 style];
  [v31 rowHeight];
  v33 = v30 * v32;
  v34 = [v183 style];
  [v34 setRowHeight:v33];

  v35 = [v7 style];
  [v35 rowHeight];
  v182 = v30;
  v37 = v30 * v36;
  v38 = [v7 style];
  [v38 setRowHeight:v37];

  v39 = [(UIKeyboardCandidateController *)self renderConfig];
  LODWORD(v38) = [v39 colorAdaptiveBackground];

  if (v38)
  {
    v40 = [[_UIViewGlass alloc] initWithVariant:0];
    v41 = [v183 style];
    [v41 setBackgroundMaterial:v40];

    v42 = +[UIColor clearColor];
    v43 = [v183 style];
    [v43 setBackgroundColor:v42];

    v44 = +[UIColor clearColor];
    v45 = [v183 style];
    [v45 setGridBackgroundColor:v44];

    v46 = +[UIColor clearColor];
    v47 = [v183 style];
    [v47 setBorderColor:v46];

    v48 = [v183 style];
    [v48 setBorderWidth:0.0];

    v49 = [v183 style];
    [v49 setArrowButtonBackgroundHidden:0];

    v50 = [v183 style];
    [v50 setArrowButtonHighlightBackgroundHidden:1];

    [v183 setHasBackdrop:0];
    v51 = [v183 style];
    [v51 rowHeight];
    v53 = v52 * 0.5;
    v54 = [v183 style];
    [v54 setCellCornerRadius:v53];

    v55 = [v183 style];
    [v55 rowHeight];
    v57 = v56 * 0.5;
    v58 = [v183 style];
    [v58 setCornerRadius:v57];

    v59 = [v183 style];
    [v59 setOuterGridPadding:{2.0, 2.0, 2.0, 2.0}];

    v60 = [v183 style];
    [v60 setGridLinePadding:{0.0, 0.0, 2.0, 0.0}];

    v61 = [v183 style];
    [v61 setCellTopOffset:2.0];

    v62 = [v183 style];
    [v62 rowHeight];
    v64 = v63 + 4.0;
    v65 = [v183 style];
    [v65 setArrowButtonHeight:v64];

    v66 = [v183 style];
    [v66 setShowExtraLineBeforeFirstRow:0];

    [v183 setAdditionalHeight:4.0];
    v67 = [[_UIViewGlass alloc] initWithVariant:0];
    v68 = [v7 style];
    [v68 setBackgroundMaterial:v67];

    v69 = +[UIColor clearColor];
    v70 = [v7 style];
    [v70 setBackgroundColor:v69];

    v71 = +[UIColor clearColor];
    v72 = [v7 style];
    [v72 setGridBackgroundColor:v71];

    v73 = +[UIColor clearColor];
    v74 = [v7 style];
    [v74 setBorderColor:v73];

    v75 = [v7 style];
    [v75 setBorderWidth:0.0];

    v76 = [v7 style];
    [v76 setArrowButtonBackgroundHidden:0];

    v77 = [v7 style];
    [v77 setArrowButtonHighlightBackgroundHidden:1];

    [v7 setHasBackdrop:0];
    v78 = [v7 style];
    [v78 rowHeight];
    v80 = v79 * 0.5;
    v81 = [v7 style];
    [v81 setCellCornerRadius:v80];

    v82 = [v7 style];
    [v82 setGridLinePadding:{0.0, 0.0, 2.0, 0.0}];

    v83 = [v7 style];
    [v83 setOuterGridPadding:{2.0, 2.0, 2.0, 2.0}];

    v84 = [v7 style];
    [v84 setCellTopOffset:2.0];

    v85 = [v7 style];
    [v85 setInterRowSpacing:2.0];

    v86 = [v7 style];
    [v86 setLineTopOffset:-2.0];

    v87 = [v7 style];
    [v87 setShowExtraLineBeforeFirstRow:0];

    [v7 additionalHeight];
    [v7 setAdditionalHeight:v88 + 4.0];
  }

  [(UIKeyboardCandidateController *)self inlineRect];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v181 = v95;
  v96 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  v97 = [v96 superview];
  [v97 bounds];
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;

  v106 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  v107 = [v106 superview];
  [v107 safeAreaInsets];
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

        v121 = [v7 style];
        [v121 rowHeight];
        v123 = v122;

        v124 = [(UIKeyboardCandidateController *)self inlineConfiguration];
        [v124 preferredInlineFloatingViewSize];
        v126 = v125;

        if (v123 < v126)
        {
          v123 = v126;
        }

        v127 = [v7 style];
        [v127 rowHeight];
        if (v128 <= 0.0)
        {
          goto LABEL_22;
        }

        [v7 additionalHeight];
        v130 = v123 + v129;

        if (v120 < v130)
        {
          v131 = [v7 style];
          [v131 rowHeight];
          v133 = ((v120 - v123) / v132);

          v134 = 2;
          if (v133 > 2)
          {
            v134 = v133;
          }

          v135 = v134;
          v127 = [v7 style];
          [v127 rowHeight];
          [v7 setAdditionalHeight:v136 * v135];
LABEL_22:
        }
      }
    }
  }

  v137 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  [v137 preferredInlineFloatingViewSize];
  v139 = v138;
  v141 = v140;

  v142 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v142 setPreferredSize:{v139, v182 * v141}];

  [v7 additionalHeight];
  v144 = v143;
  v145 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v145 setExtendedStateAdditionalHeight:v144];

  v146 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  v147 = [v146 inlineFloatingViewAdjustMode];
  v148 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v148 setAdjustMode:v147];

  v149 = [(UIKeyboardCandidateController *)self inlineRectIsVertical];
  v150 = [v183 style];
  [v150 minimumCellPadding];
  v152 = v151;
  v153 = [v183 style];
  [v153 minimumCellPadding];
  v155 = v154;
  v156 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  v157 = v156;
  v158 = 0.0;
  if (v149)
  {
    v159 = v152;
  }

  else
  {
    v159 = 0.0;
  }

  if (v149)
  {
    v160 = 0.0;
  }

  else
  {
    v160 = v152;
  }

  if (v149)
  {
    v161 = v155;
  }

  else
  {
    v161 = 0.0;
  }

  if (v149)
  {
    v162 = 0.0;
  }

  else
  {
    v162 = v155;
  }

  [v156 setCellPadding:{v159, v160, v161, v162}];

  [(UIKeyboardCandidateController *)self candidateBarHeight];
  v164 = v163;
  v165 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v165 setExtraInsets:{0.0, 0.0, v164, 0.0}];

  v166 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  if ([v166 shouldExtendUpwards])
  {
    [v7 additionalHeight];
    v158 = -v167;
  }

  [v7 setYOffset:v158];

  v168 = [(UIKeyboardCandidateController *)self inlineViewState];
  v169 = [v168 isEqual:v183];

  if ((v169 & 1) == 0)
  {
    v170 = [(UIKeyboardCandidateController *)self inlineView];
    v171 = [v170 state];
    v172 = [(UIKeyboardCandidateController *)self inlineViewState];

    if (v171 == v172)
    {
      [(UIKeyboardCandidateController *)self setInlineState:v183 extended:0 animated:0 options:0 force:1 completion:0];
    }

    [(UIKeyboardCandidateController *)self setInlineViewState:v183];
  }

  v173 = [(UIKeyboardCandidateController *)self extendedInlineViewState];
  v174 = [v173 isEqual:v7];

  if ((v174 & 1) == 0)
  {
    v175 = [(UIKeyboardCandidateController *)self inlineView];
    v176 = [v175 state];
    v177 = [(UIKeyboardCandidateController *)self extendedInlineViewState];

    if (v176 == v177)
    {
      [(UIKeyboardCandidateController *)self setInlineState:v7 extended:1 animated:0 options:0 force:1 completion:0];
    }

    [(UIKeyboardCandidateController *)self setExtendedInlineViewState:v7];
  }

  if (![(UIKeyboardCandidateController *)self inLineCandidateViewIsHosted])
  {
    v178 = [(UIKeyboardCandidateController *)self inlineView];
    v179 = [UITraitCollection traitCollectionWithLayoutDirection:[(UIKeyboardCandidateController *)self layoutDirectionForCurrentInputMode]];
    [v178 _setLocalOverrideTraitCollection:v179];
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

  v5 = [(UIKeyboardCandidateController *)self keyConfiguration];
  v91 = [v5 initialState];

  v6 = [(UIKeyboardCandidateController *)self keyConfiguration];
  v7 = [v6 extendedState];

  v8 = [(UIKeyboardCandidateController *)self keyConfiguration];
  if ([(UIKeyboardCandidateController *)self shouldShowSortControlForConfiguration:v8])
  {
    v9 = [v91 sortControlPosition];
  }

  else
  {
    v9 = 0;
  }

  [v91 setSortControlPosition:v9];

  if ([(UIKeyboardCandidateController *)self shouldShowDisambiguationCandidates])
  {
    v10 = [v91 disambiguationGridPosition];
  }

  else
  {
    v10 = 0;
  }

  [v91 setDisambiguationGridPosition:v10];
  v11 = [(UIKeyboardCandidateController *)self keyConfiguration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = [v91 primaryGridRowType];
    v14 = [(UIKeyboardCandidateController *)self key];
    [v14 frame];
    Height = CGRectGetHeight(v93);
    v16 = ceil(Height * 0.25);
    if (v13 == 1)
    {
      v17 = v16;
    }

    else
    {
      v17 = Height;
    }

    v18 = [v91 style];
    [v18 setRowHeight:v17];

    v19 = [v91 disambiguationStyle];
    [v19 setRowHeight:v17];
  }

  v20 = [(UIKeyboardCandidateController *)self renderConfig];
  if ([v20 colorAdaptiveBackground])
  {
    v21 = +[UIKeyboardImpl isSplit];

    if (!v21)
    {
      goto LABEL_17;
    }

    v22 = +[UIColor clearColor];
    v23 = [v91 style];
    [v23 setBackgroundColor:v22];

    v20 = +[UIColor clearColor];
    v24 = [v91 style];
    [v24 setGridBackgroundColor:v20];
  }

LABEL_17:
  v25 = [(UIKeyboardCandidateController *)self keyConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [(UIKeyboardCandidateController *)self renderConfig];
    v27 = [v26 colorAdaptiveBackground];

    if (!v27)
    {
      goto LABEL_33;
    }

    v28 = +[UIKeyboardImpl activeInstance];
    v29 = [v28 _layout];
    v25 = [v29 currentKeyplane];

    v30 = [v25 firstCachedKeyWithName:@"Candidate-Selection"];
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = [v91 style];
    [v31 setCellCornerRadius:8.0];

    v32 = [(UIKeyboardCandidateController *)self renderConfig];
    [v32 keycapOpacity];
    v34 = v33;
    v35 = [v91 style];
    [v35 setBackgroundOpacity:v34];

    v36 = [v91 style];
    [v36 setRowHeight:20.0];

    v37 = [UIColor colorWithWhite:1.0 alpha:0.2];
    v38 = [v91 style];
    [v38 setHighlightedBackgroundColor:v37];

    v39 = +[UIColor clearColor];
    v40 = [v91 style];
    [v40 setBackgroundColor:v39];

    v41 = [(UIKBRenderConfig *)self->_renderConfig lightKeyboard];
    v42 = UIKBColorCarLightDivider;
    if (!v41)
    {
      v42 = UIKBColorCarDarkDivider;
    }

    v43 = [UIColor colorWithCGColor:UIKBGetNamedColor(*v42)];
    v44 = [v91 style];
    [v44 setLineColor:v43];

    v45 = +[UIKeyboardImpl activeInstance];
    v46 = [v45 _layout];

    v90 = v46;
    v89 = [v46 keyplaneFactory];
    v47 = [v89 traitsForKey:v30 onKeyplane:v25];
    v48 = [v47 symbolStyle];

    v49 = [v48 fontName];
    [v48 fontWeight];
    v51 = v50;
    v52 = [v49 isEqualToString:@"UIKBRenderFactorySystemFontName"];
    if ([v49 isEqualToString:@"UIKBRenderFactorySystemCompactFontName"])
    {
      if (!v52)
      {
LABEL_28:
        [v48 setFontSize:13.0];
        [v48 fontSize];
        v57 = v56;
        [v48 fontWeight];
        v55 = [off_1E70ECC18 systemFontOfSize:*off_1E70ECCE0 weight:v57 design:v58];
        goto LABEL_30;
      }
    }

    else
    {
      v53 = [v48 fontName];
      v54 = [v53 isEqualToString:@".SFCompact-Bold"];

      if ((v52 & 1) == 0)
      {
        if (!v54)
        {
          v55 = [off_1E70ECC18 fontWithName:v49 size:13.0];
          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    v55 = [off_1E70ECC18 systemFontOfSize:13.0 weight:v51];
LABEL_30:
    v59 = v55;
    v60 = [v91 style];
    [v60 setCellTextAlignment:1];

    v61 = [v91 style];
    [v61 setCandidateFont:v59];

    v62 = [v48 textColor];
    v63 = [UIColor colorWithCGColor:UIKBGetNamedColor(v62)];
    v64 = [v91 style];
    [v64 setTextColor:v63];

    v65 = [v48 textColor];
    v66 = [UIColor colorWithCGColor:UIKBGetNamedColor(v65)];
    v67 = [v91 style];
    [v67 setHighlightedTextColor:v66];

LABEL_31:
  }

LABEL_33:
  v68 = [(UIKeyboardCandidateController *)self renderConfig];
  if (![v68 colorAdaptiveBackground])
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
    v68 = ;
    v70 = [v91 style];
    [v70 setLineColor:v68];

    goto LABEL_39;
  }

LABEL_40:
  [(UIKeyboardCandidateController *)self updateOpacitiesToState:v91];
  v71 = [(UIKeyboardCandidateController *)self keyState];
  v72 = [v71 isEqual:v91];

  if ((v72 & 1) == 0)
  {
    v73 = [(UIKeyboardCandidateController *)self key];
    v74 = [v73 state];
    v75 = [(UIKeyboardCandidateController *)self keyState];

    if (v74 == v75)
    {
      v76 = [(UIKeyboardCandidateController *)self key];
      [v76 setState:v91 animated:0 force:1 completion:0];
    }

    [(UIKeyboardCandidateController *)self setKeyState:v91];
  }

  v77 = [(UIKeyboardCandidateController *)self extendedKeyState];
  v78 = [v77 isEqual:v7];

  if ((v78 & 1) == 0)
  {
    v79 = [(UIKeyboardCandidateController *)self key];
    v80 = [v79 state];
    v81 = [(UIKeyboardCandidateController *)self extendedKeyState];

    if (v80 == v81)
    {
      v82 = [(UIKeyboardCandidateController *)self key];
      [v82 setState:v7 animated:0 force:1 completion:0];
    }

    [(UIKeyboardCandidateController *)self setExtendedKeyState:v7];
  }

  v83 = [(UIKeyboardCandidateController *)self key];
  v84 = [v83 state];

  if (!v84)
  {
    v85 = [(UIKeyboardCandidateController *)self key];
    v86 = [(UIKeyboardCandidateController *)self keyState];
    [v85 setState:v86 animated:0 force:1 completion:0];
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
  block[4] = a1;
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
    v4 = [v3 inputOverlayContainer];

    v5 = [(UIKeyboardCandidateController *)self loadInProcessInlineCandidateView];
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

    [(UIView *)self->_inlineViewContainer addSubview:v5];
    if (v4 != self->_inlineViewContainer)
    {
      [(UIView *)v4 addSubview:?];
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

- (id)newCandidateKeyWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIKeyboardCandidateController *)self setKeyConfiguration:a4];
  v9 = [objc_alloc(getTUICandidateViewClass()) initWithFrame:{x, y, width, height}];
  key = self->_key;
  self->_key = v9;
  v11 = v9;

  [(TUICandidateView *)self->_key setDelegate:self];
  v12 = self->_key;

  return v12;
}

- (void)setActiveCandidateViewType:(int64_t)a3
{
  v3 = a3;
  self->_activeCandidateViewType = a3;
  [(NSMutableArray *)self->_activeViews removeAllObjects];
  if ((v3 & 1) != 0 && self->_key)
  {
    activeViews = self->_activeViews;
    v6 = [(UIKeyboardCandidateController *)self key];
    [(NSMutableArray *)activeViews addObject:v6];
  }

  if ((v3 & 2) != 0)
  {
    v9 = [(UIKeyboardCandidateController *)self loadCandidateBar];
    v10 = self->_activeViews;
    v8 = [(UIKeyboardCandidateController *)self bar];
    [(NSMutableArray *)v10 addObject:v8];
  }

  else
  {
    v7 = +[UIKeyboardImpl activeInstance];
    v8 = [v7 _layout];

    [v8 setHidden:0];
  }

  if ((v3 & 4) != 0)
  {
    v11 = [(UIKeyboardCandidateController *)self loadInlineCandidateView];
    if (![(UIKeyboardCandidateController *)self inLineCandidateViewIsHosted])
    {
      v12 = self->_activeViews;
      v13 = [(UIKeyboardCandidateController *)self inlineView];
      [(NSMutableArray *)v12 addObject:v13];
    }
  }
}

- (NSArray)activeCandidateViews
{
  v2 = [(NSMutableArray *)self->_activeViews copy];

  return v2;
}

- (int64_t)candidateViewTypeForView:(id)a3
{
  v4 = a3;
  if (self->_bar == v4)
  {
    v5 = 2;
  }

  else if (self->_inlineView == v4)
  {
    v5 = 4;
  }

  else
  {
    v5 = self->_key == v4;
  }

  return v5;
}

- (id)firstNonEmptyActiveCandidateView
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardCandidateController *)self activeViews];
  v4 = [v3 firstObject];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UIKeyboardCandidateController *)self activeViews];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 candidateResultSet];
        v12 = [v11 hasCandidates];

        if (v12)
        {
          v13 = v10;

          v4 = v13;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
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
    v4 = [(UIKeyboardCandidateController *)self barConfiguration];
    v5 = [v4 initialState];
    barState = self->_barState;
    self->_barState = v5;

    v7 = [(UIKeyboardCandidateController *)self barConfiguration];
    v8 = [v7 extendedState];
    extendedBarState = self->_extendedBarState;
    self->_extendedBarState = v8;

    v12 = [(UIKeyboardCandidateController *)self barConfiguration];
    v10 = [v12 extendedScrolledState];
    extendedScrolledBarState = self->_extendedScrolledBarState;
    self->_extendedScrolledBarState = v10;
  }
}

- (BOOL)shouldShowSortControlForConfiguration:(id)a3
{
  if ([a3 shouldAlwaysShowSortControl])
  {
    return 1;
  }

  v5 = [(UIKeyboardCandidateController *)self candidateResultSet];
  v6 = [v5 sortMethods];
  v4 = [v6 count] > 1;

  return v4;
}

- (BOOL)shouldShowDisambiguationCandidates
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentLinguisticInputMode];
  v5 = [v4 identifier];
  v6 = [&unk_1EFE30E50 stringValue];
  v7 = [@"Pinyin" stringByAppendingString:v6];
  if ([v5 rangeOfString:v7] == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = ![(UIKeyboardCandidateController *)self hideDisambiguationCandidates];
  }

  return v8;
}

- (void)setHideDisambiguationCandidates:(BOOL)a3
{
  if (self->_hideDisambiguationCandidates != a3)
  {
    self->_hideDisambiguationCandidates = a3;
    [(UIKeyboardCandidateController *)self updateStates];
  }
}

- (void)setInlineState:(id)a3 extended:(BOOL)a4 animated:(BOOL)a5 options:(unint64_t)a6 force:(BOOL)a7 completion:(id)a8
{
  v8 = a7;
  v10 = a5;
  v13 = a8;
  v14 = a3;
  v15 = [(UIKeyboardCandidateController *)self inlineView];
  [v15 setState:v14 animated:v10 options:a6 force:v8 completion:v13];
}

- (void)updateOpacitiesToState:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIKeyboardCandidateController *)self opacities];

  if (v5)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [(UIKeyboardCandidateController *)self opacities];
    v7 = [v6 allKeys];

    v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = [(UIKeyboardCandidateController *)self opacities];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = [v12 integerValue];
        if ((v15 & 4) != 0)
        {
          [v14 doubleValue];
          v23 = v22;
          v24 = [v4 style];
          [v24 setForegroundOpacity:v23];

          [v14 doubleValue];
          v26 = v25;
          v21 = [v4 disambiguationStyle];
          [v21 setForegroundOpacity:v26];
        }

        else
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_12;
          }

          [v14 doubleValue];
          v17 = v16;
          v18 = [v4 style];
          [v18 setBackgroundOpacity:v17];

          [v14 doubleValue];
          v20 = v19;
          v21 = [v4 disambiguationStyle];
          [v21 setBackgroundOpacity:v20];
        }

LABEL_12:
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v9)
      {
LABEL_14:

        break;
      }
    }
  }
}

- (void)updateArrowButtonImageNameToState:(id)a3
{
  v11 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  if (([v4 _hasMarkedText] & 1) == 0)
  {
    v5 = [v4 _editMenuAssistant];
    if ([v5 _editMenuIsVisible])
    {
    }

    else
    {
      v6 = [MEMORY[0x1E69D95D8] imageNameForTextEffectsButton];

      if (v6)
      {
        v7 = 1;
        goto LABEL_8;
      }
    }
  }

  v6 = 0;
  if (![(UIKeyboardCandidateController *)self isTextEffectsButtonPresented])
  {
    goto LABEL_10;
  }

  v7 = 0;
LABEL_8:
  [(UIKeyboardCandidateController *)self setIsTextEffectsButtonPresented:v7];
  v8 = [v11 style];
  v9 = [v8 arrowButtonImageName];

  if (v6 != v9)
  {
    v10 = [v11 style];
    [v10 setArrowButtonImageName:v6];
  }

LABEL_10:
}

- (double)rowHeightForBarForOrientation:(int64_t)a3
{
  v4 = [(UIKeyboardCandidateController *)self screenTraits];
  v5 = [(UIKeyboardCandidateController *)self screenTraits];
  v6 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(v4, [v5 idiom], 0);

  v7 = [(UIKeyboardCandidateController *)self bar];
  v8 = [v7 _inheritedRenderConfig];
  if ([v8 colorAdaptiveBackground])
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
    v12 = [v11 _rootInputWindowController];
    v13 = [v12 placement];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v17 = [v16 containerRootController];
      v15 = [v17 placement];
    }

    if ([v15 isFloatingAssistantView])
    {
      v18 = [(UIKeyboardCandidateController *)self bar];
      v19 = [v18 _inheritedRenderConfig];
      if ([v19 colorAdaptiveBackground])
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
      v20 = [(UIKeyboardCandidateController *)self screenTraits];
      v21 = [v20 isFloating];

      if (v21)
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
    v23 = [(UIKeyboardCandidateController *)self screenTraits];
    v24 = [v23 orientation] - 3;

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
      v26 = [v25 _inheritedRenderConfig];
      if ([v26 colorAdaptiveBackground])
      {
        v27 = 44.0;
      }

      else
      {
        v27 = 32.0;
      }
    }

    v29 = [(UIKeyboardCandidateController *)self barState];
    v30 = [v29 style];
    v31 = [v30 candidateFont];
    [v31 lineHeight];
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
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    goto LABEL_8;
  }

  v5 = [(UIKeyboardCandidateController *)self screenTraits];
  v6 = [v5 isKeyboardMinorEdgeWidth];

  v7 = [(UIKeyboardCandidateController *)self screenTraits];
  [v7 keyboardWidth];
  v9 = v8;

  if (v6)
  {
    if (v9 < 1024.0)
    {
      v10 = [(UIKeyboardCandidateController *)self screenTraits];
      [v10 keyboardWidth];
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
    v14 = [(UIKeyboardCandidateController *)self screenTraits];
    [v14 keyboardWidth];
    v16 = v15;

    if (v16 >= 1024.0)
    {
      return 656.0;
    }

LABEL_8:
    v17 = [(UIKeyboardCandidateController *)self screenTraits];
    [v17 keyboardWidth];
    v19 = v18;

    return v19;
  }

  return 846.0;
}

- (double)candidateBarHeight
{
  v3 = [(UIKeyboardCandidateController *)self screenTraits];
  -[UIKeyboardCandidateController candidateBarHeightForOrientation:](self, "candidateBarHeightForOrientation:", [v3 orientation]);
  v5 = v4;

  return v5;
}

- (double)candidateBarHeightForOrientation:(int64_t)a3
{
  if ([(UIKeyboardCandidateController *)self shouldShowDisambiguationCandidates]&& ((a3 - 1) < 2 || +[UIKeyboardImpl isFloating]))
  {
    [(UIKeyboardCandidateController *)self rowHeightForBarForOrientation:a3];
    v6 = v5;
    v7 = [(UIKeyboardCandidateController *)self barState];
    v8 = [v7 disambiguationStyle];
    [v8 rowHeight];
    v10 = v6 + v9;

    return v10;
  }

  else
  {

    [(UIKeyboardCandidateController *)self rowHeightForBarForOrientation:a3];
  }

  return result;
}

- (UIEdgeInsets)candidateBarEdgeInsetsForOrientation:(int64_t)a3
{
  v4 = [(UIKeyboardCandidateController *)self bar];
  v5 = [v4 _inheritedRenderConfig];
  if ([v5 colorAdaptiveBackground])
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
  v11 = [v10 _inheritedRenderConfig];
  if ([v11 colorAdaptiveBackground])
  {
    v12 = [(UIKeyboardCandidateController *)self screenTraits];
    v13 = [v12 idiom];

    if (!v13)
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

  v14 = [(UIKeyboardCandidateController *)self screenTraits];
  if ([v14 idiom])
  {

LABEL_13:
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
    goto LABEL_14;
  }

  v15 = [(UIKeyboardCandidateController *)self screenTraits];
  v16 = [v15 orientation] - 3;

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
  v7 = [(UIKeyboardCandidateViewConfiguration *)self->_inlineConfiguration extendedState];
  v8 = [v7 style];
  [v8 rowHeight];
  v10 = v9;
  v11 = [(UIKeyboardCandidateViewConfiguration *)self->_inlineConfiguration extendedState];
  [v11 additionalHeight];
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
  v2 = self;
  v3 = [(UIKeyboardCandidateController *)self inlineView];
  v4 = [v3 state];
  v5 = [(UIKeyboardCandidateController *)v2 extendedInlineViewState];
  LOBYTE(v2) = v4 == v5;

  return v2;
}

- (BOOL)isKeyExtended
{
  v2 = self;
  v3 = [(UIKeyboardCandidateController *)self key];
  v4 = [v3 state];
  v5 = [(UIKeyboardCandidateController *)v2 extendedKeyState];
  LOBYTE(v2) = v4 == v5;

  return v2;
}

- (void)syncIsExtended
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v3 = [v5 remoteTextInputPartner];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKeyboardCandidateController isExtended](self, "isExtended")}];
    [v3 forwardKeyboardOperation:sel_setIsExtended_ object:v4];
  }
}

- (void)setupAnimatorWithCurve:(int64_t)a3
{
  v5 = [(UIKeyboardCandidateController *)self animator];

  if (!v5)
  {
    v6 = [UIViewPropertyAnimator alloc];
    [objc_opt_class() candidateViewAnimationDuration];
    v7 = [(UIViewPropertyAnimator *)v6 initWithDuration:a3 curve:&__block_literal_global_336 animations:?];
    [(UIKeyboardCandidateController *)self setAnimator:v7];

    objc_initWeak(&location, self);
    v8 = [(UIKeyboardCandidateController *)self animator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__UIKeyboardCandidateController_setupAnimatorWithCurve___block_invoke_2;
    v9[3] = &unk_1E70F5DE0;
    objc_copyWeak(&v10, &location);
    [v8 addCompletion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __56__UIKeyboardCandidateController_setupAnimatorWithCurve___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAnimator:0];
}

- (void)extendKeyboardBackdropHeight:(double)a3
{
  v5 = [(UIKeyboardCandidateController *)self bar];
  v6 = [v5 state];
  v7 = [(UIKeyboardCandidateController *)self barState];

  if (v6 != v7)
  {
    [(UIKeyboardCandidateController *)self additionalExtendedBarBackdropOffset];
    a3 = v8 + a3;
  }

  v11 = [(UIKeyboardCandidateController *)self bar];
  v9 = [v11 _rootInputWindowController];
  [objc_opt_class() candidateViewAnimationDuration];
  [v9 extendKeyboardBackdropHeight:a3 withDuration:v10];
}

- (void)toggleBarExtended
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardCandidateController *)self barConfiguration];
  v4 = [v3 shouldAnimateStateTransition];

  if (v4)
  {
    v5 = [(UIKeyboardCandidateController *)self animator];

    if (v5)
    {
      v6 = [(UIKeyboardCandidateController *)self animator];
      v7 = [v6 state];

      if (v7)
      {
        v8 = [(UIKeyboardCandidateController *)self animator];
        [v8 stopAnimation:0];

        v9 = [(UIKeyboardCandidateController *)self animator];
        [v9 finishAnimationAtPosition:0];
      }
    }

    [(UIKeyboardCandidateController *)self setupAnimatorWithCurve:0];
    v10 = [(UIKeyboardCandidateController *)self animator];
    [(UIKeyboardCandidateController *)self toggleBarExtendedWithAnimator:v10];

    v11 = [(UIKeyboardCandidateController *)self animator];
    [v11 startAnimation];
  }

  else
  {
    [(UIKeyboardCandidateController *)self toggleBarExtendedUnanimated];
  }

  v15 = @"isExtended";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKeyboardCandidateController barIsExtended](self, "barIsExtended")}];
  v16[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 postNotificationName:@"UIKeyboardWillToggleCandidateBar" object:0 userInfo:v13];
}

- (void)toggleBarExtendedUnanimated
{
  v3 = [(UIKeyboardCandidateController *)self bar];
  v21 = [v3 state];

  v4 = [(UIKeyboardCandidateController *)self bar];
  v5 = [v4 state];
  v6 = [(UIKeyboardCandidateController *)self barState];

  if (v5 == v6)
  {
    v7 = [(UIKeyboardCandidateController *)self extendedBarState];
    v8 = +[UIKeyboardImpl keyboardWindow];
    v9 = [_UIEditMenuSceneComponent sceneComponentForView:v8];
    [v9 dismissCurrentMenu];

    v10 = [(UIKeyboardCandidateController *)self bar];
    [v10 resetSortControlIndex];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = [(UIKeyboardCandidateController *)self barState];
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v11 = [(UIKeyboardCandidateController *)self bar];
  v12 = [v11 state];
  [v12 yOffset];

  v13 = [(UIKeyboardCandidateController *)self bar];
  [v13 setState:v7 animated:0 animator:0 options:0 force:0 completion:0];

  [(UIKeyboardCandidateController *)self syncIsExtended];
  v14 = [(UIKeyboardCandidateController *)self barConfiguration];
  LODWORD(v12) = [v14 willCoverKeyboardLayout];

  if (v12)
  {
    v15 = [(UIKeyboardCandidateController *)self extendedBarState];

    v16 = +[UIKeyboardImpl activeInstance];
    v17 = [v16 _layout];

    [v17 setHidden:v7 == v15];
    v18 = +[UIKeyboardImpl sharedInstance];
    LOBYTE(v16) = [v18 _isBackdropVisible];

    if ((v16 & 1) == 0)
    {
      v19 = 0.0;
      if (v7 != v15)
      {
        v19 = 1.0;
      }

      [v17 setAlpha:v19];
    }
  }

LABEL_11:
  v20 = +[UIKeyboardImpl activeInstance];
  [v20 updateKeyboardConfigurations];
}

- (void)toggleBarExtendedWithAnimator:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardCandidateController *)self bar];
  v6 = [v5 state];

  v7 = [(UIKeyboardCandidateController *)self bar];
  v8 = [v7 state];
  v9 = [(UIKeyboardCandidateController *)self barState];

  if (v8 == v9)
  {
    v13 = [(UIKeyboardCandidateController *)self extendedBarState];
    v14 = +[UIKeyboardImpl keyboardWindow];
    v15 = [_UIEditMenuSceneComponent sceneComponentForView:v14];
    [v15 dismissCurrentMenu];

    v16 = [(UIKeyboardCandidateController *)self bar];
    [v16 resetSortControlIndex];

    if (!v13)
    {
      goto LABEL_26;
    }

LABEL_7:
    v17 = [(UIKeyboardCandidateController *)self bar];
    v18 = [v17 state];
    [v18 yOffset];
    v20 = v19;

    v21 = [(UIKeyboardCandidateController *)self bar];
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_2;
    v92[3] = &unk_1E70F5AC0;
    v92[4] = self;
    [v21 setState:v13 animated:1 animator:v4 options:0 force:0 completion:v92];

    v22 = +[UIKeyboardImpl activeInstance];
    v23 = [v22 _layout];

    [v23 setHidden:0];
    v24 = [(UIKeyboardCandidateController *)self barConfiguration];
    v25 = [v24 shouldResizeKeyboardBackdrop];

    if (v25)
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
      v28 = [v27 state];
      [v28 yOffset];
      v30 = v29;

      if (v20 != v30)
      {
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_4;
        v90[3] = &unk_1E70F3590;
        v90[4] = self;
        [v4 addAnimations:v90];
      }

      v31 = [(UIKeyboardCandidateController *)self barConfiguration];
      v32 = [v31 willCoverKeyboardLayout];

      if (v32)
      {
        [v13 additionalHeight];
        v68 = v33;
        v34 = [(UIKeyboardCandidateController *)self bar];
        [v34 frame];
        v36 = v35;
        v37 = [(UIKeyboardCandidateController *)self extendedBarState];
        [v37 additionalHeight];
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
        v53 = [(UIKeyboardCandidateController *)self extendedBarState];
        [v53 additionalHeight];
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
        v61 = [v23 layer];
        [v61 setAllowsGroupOpacity:0];

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
        [v4 addAnimations:v79];
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_6;
        v75[3] = &unk_1E71049E0;
        v76 = v62;
        v63 = v23;
        v77 = v63;
        v78 = v68 > 0.0;
        v64 = v62;
        [v4 addCompletion:v75];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_7;
        v73[3] = &unk_1E71003B0;
        v73[4] = self;
        v74 = v6;
        [v4 addCompletion:v73];
        [v63 setAlpha:v59];
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __63__UIKeyboardCandidateController_toggleBarExtendedWithAnimator___block_invoke_8;
        v70[3] = &unk_1E70F35E0;
        v71 = v63;
        v72 = v68 > 0.0;
        [v4 addAnimations:v70 delayFactor:v58];

        goto LABEL_25;
      }

      v65 = [(UIKeyboardCandidateController *)self renderConfig];
      v66 = [v65 animatedBackground];

      if (!v66)
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

    [v4 addAnimations:v26];
    goto LABEL_25;
  }

  v10 = [(UIKeyboardCandidateController *)self bar];
  v11 = [v10 state];
  v12 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];

  if (v11 == v12)
  {
    [v4 addAnimations:&__block_literal_global_65_3];
  }

  v13 = [(UIKeyboardCandidateController *)self barState];
  if (v13)
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

- (void)toggleInlineViewExtendedAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = [(UIKeyboardCandidateController *)self inlineView:a3];
  v7 = [v6 state];
  v8 = [(UIKeyboardCandidateController *)self inlineViewState];

  if (v7 == v8)
  {
    v18 = [(UIKeyboardCandidateController *)self extendedInlineViewState];
    v12 = [(UIKeyboardCandidateController *)self inlineViewContainer];
    v13 = [v12 shouldExtendUpwards];
    v14 = 0.0;
    if (v13)
    {
      [v18 additionalHeight];
      v14 = -v15;
    }

    [v18 setYOffset:v14];
  }

  else
  {
    v9 = [(UIKeyboardCandidateController *)self inlineView];
    v10 = [v9 state];
    v11 = [(UIKeyboardCandidateController *)self extendedInlineViewState];

    if (v10 != v11)
    {
      return;
    }

    v18 = [(UIKeyboardCandidateController *)self inlineViewState];
  }

  if (v18)
  {
    [(UIKeyboardCandidateController *)self setInlineState:v18 extended:v7 == v8 animated:v4 options:0 force:0 completion:0];
    v16 = +[UIKeyboardImpl activeInstance];
    v17 = [(UIKeyboardCandidateController *)self inlineViewContainer];
    [v18 yOffset];
    [v16 updateDictationPopoverLocationForCandidateInlineView:v17 yOffset:?];
  }
}

- (void)toggleKeyViewExtendedAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v15 = a4;
  v6 = [(UIKeyboardCandidateController *)self key];
  v7 = [v6 state];
  v8 = [(UIKeyboardCandidateController *)self keyState];

  if (v7 == v8)
  {
    v12 = [(UIKeyboardCandidateController *)self extendedKeyState];
  }

  else
  {
    v9 = [(UIKeyboardCandidateController *)self key];
    v10 = [v9 state];
    v11 = [(UIKeyboardCandidateController *)self extendedKeyState];

    if (v10 != v11)
    {
      goto LABEL_7;
    }

    v12 = [(UIKeyboardCandidateController *)self keyState];
  }

  v13 = v12;
  if (v12)
  {
    v14 = [(UIKeyboardCandidateController *)self key];
    [v14 setState:v13 animated:v4 options:0 force:0 completion:v15];
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
  v3 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v3 setHidden:1];

  v4 = [(UIKeyboardCandidateController *)self inlineViewState];
  v5 = [(UIKeyboardCandidateController *)self inlineView];
  [v5 setState:v4];

  v6 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v6 setInlineText:0 inlineRect:1 maxX:*MEMORY[0x1E695F058] layout:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), 3.40282347e38}];

  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v7 updateDictationPopoverLocationForCandidateInlineView:v8 yOffset:0.0];

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
    v5 = [(UIKeyboardCandidateController *)self panGestureRecognizer];

    if (!v5)
    {
      v6 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel_panGestureRecognizerAction_];
      [(UIKeyboardCandidateController *)self setPanGestureRecognizer:v6];

      v7 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
      [v7 setMaximumNumberOfTouches:1];

      v8 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
      [v8 setDelegate:self];

      v9 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
      [v9 _setHysteresis:20.0];
    }

    bar = self->_bar;
    v13 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
    [(TUICandidateView *)bar addGestureRecognizer:?];
  }

  else
  {
    v11 = [(UIKeyboardCandidateController *)self panGestureRecognizer];

    if (!v11)
    {
      return;
    }

    v12 = self->_bar;
    v13 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
    [(TUICandidateView *)v12 removeGestureRecognizer:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardCandidateController *)self panGestureRecognizer];

  if (v5 != v4 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  if (![(TUICandidateView *)self->_bar showingArrowButton])
  {
    return 0;
  }

  v6 = [(UIKeyboardCandidateController *)self bar];
  v7 = [v6 state];
  v8 = [v7 arrowButtonDirection] != 2;

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 phase] || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "_layout"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "currentKeyplane"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "visualStyling") & 0xFF0000, v9, v8, v7, v10 != 0x10000))
  {
    v21 = 1;
  }

  else
  {
    v11 = [v5 view];
    [v11 frame];
    if (v12 <= 0.0)
    {
      v21 = 1;
    }

    else
    {
      v13 = v12;
      [v6 locationInView:v11];
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

- (void)panGestureRecognizerAction:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardCandidateController *)self extendedBarState];
  [v5 additionalHeight];
  v7 = v6;

  if (v7 == 0.0)
  {
    v8 = 50.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v4 state];
  if ((v9 - 3) < 3)
  {
    [objc_opt_class() candidateViewAnimationDuration];
    v11 = v10;
    v12 = [(UIKeyboardCandidateController *)self animator];
    [v12 fractionComplete];
    v14 = v13;

    v15 = [(UIKeyboardCandidateController *)self bar];
    [v4 velocityInView:v15];
    v17 = v16 / v8;

    v18 = v14 + v11 * v17 * 0.5;
    v19 = [(UIKeyboardCandidateController *)self animator];
    v20 = v19;
    if (v18 < 0.5)
    {
      v17 = -v17;
    }

    [v19 setReversed:v18 < 0.5];

    v21 = [[UISpringTimingParameters alloc] initWithDampingRatio:1.0 initialVelocity:v17, v17];
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

    v24 = [(UIKeyboardCandidateController *)self animator];
    [v24 continueAnimationWithTimingParameters:v21 durationFactor:v23 / v11];

    v25 = +[UIKeyboardImpl activeInstance];
    [v25 candidateBarDidExtendWithGesture];

    goto LABEL_22;
  }

  if (v9 == 2)
  {
    v21 = [(UIKeyboardCandidateController *)self panGestureRecognizer];
    v34 = [(UIKeyboardCandidateController *)self bar];
    [(UISpringTimingParameters *)v21 translationInView:v34];
    v36 = v35 / v8;
    v37 = [(UIKeyboardCandidateController *)self animator];
    [v37 setFractionComplete:v36];

    goto LABEL_22;
  }

  if (v9 != 1)
  {
    goto LABEL_23;
  }

  v21 = [v4 view];
  if (v21 != self->_bar || [(UIKeyboardCandidateController *)self barIsExtended])
  {
LABEL_22:

    goto LABEL_23;
  }

  v26 = [(UIKeyboardCandidateController *)self isTextEffectsButtonPresented];

  if (!v26)
  {
    objc_initWeak(&location, self);
    v27 = [(UIKeyboardCandidateController *)self bar];
    [v27 resetSortControlIndex];

    [(UIKeyboardCandidateController *)self setupAnimatorWithCurve:2];
    v28 = [(UIKeyboardCandidateController *)self animator];
    v29 = [v28 state];

    if (v29)
    {
      v30 = [(UIKeyboardCandidateController *)self animator];
      [v30 stopAnimation:0];

      v31 = [(UIKeyboardCandidateController *)self animator];
      [v31 finishAnimationAtPosition:0];
    }

    v32 = [(UIKeyboardCandidateController *)self animator];
    [(UIKeyboardCandidateController *)self toggleBarExtendedWithAnimator:v32];

    v33 = [(UIKeyboardCandidateController *)self bar];
    [v33 setUserInteractionEnabled:0];

    [UIKBAnalyticsDispatcher candidateViewExtended:@"Gesture" direction:@"Open"];
    objc_destroyWeak(&location);
  }

LABEL_23:
}

- (void)setCandidateResultSet:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_candidateResultSet != v5)
  {
    objc_storeStrong(&self->_candidateResultSet, a3);
    [(UIKeyboardCandidateController *)self updateStates];
    [(UIKeyboardCandidateController *)self resetSortControlIndexAfterCandidatesChanged];
    activeCandidateViewType = self->_activeCandidateViewType;
    v7 = [(UIKeyboardCandidateController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(UIKeyboardCandidateController *)self delegate];
      activeCandidateViewType &= [v9 preferredCandidateViewTypeForCandidateResultSet:v5];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [(UIKeyboardCandidateController *)self activeViews];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if (([(UIKeyboardCandidateController *)self candidateViewTypeForView:v15]& activeCandidateViewType) != 0)
          {
            v16 = v5;
          }

          else
          {
            v16 = 0;
          }

          [v15 setCandidateResultSet:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [(UIKeyboardCandidateController *)self setCurrentCandidate:0];
    [(UIKeyboardCandidateController *)self candidatesDidChange];
  }
}

- (void)setInlineText:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSString *)self->_inlineText isEqualToString:v4])
  {
    v5 = [v4 copy];
    inlineText = self->_inlineText;
    self->_inlineText = v5;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(UIKeyboardCandidateController *)self activeViews];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setInlineText:v4];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [v2 currentInputMode];

  v4 = [v3 normalizedIdentifier];
  IsDefaultRightToLeft = UIKeyboardInputModeIsDefaultRightToLeft(v4);

  return IsDefaultRightToLeft;
}

- (void)setCandidates:(id)a3 type:(int)a4 inlineText:(id)a5 inlineRect:(CGRect)a6 maxX:(double)a7 layout:(BOOL)a8 inlineCandidatesAreHosted:(BOOL)a9
{
  v10 = a8;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v35[1] = *MEMORY[0x1E69E9840];
  v18 = a5;
  v19 = a3;
  [(UIKeyboardCandidateController *)self setInlineRect:x, y, width, height];
  [(UIKeyboardCandidateController *)self setCandidateResultSet:v19];

  [(UIKeyboardCandidateController *)self setInlineText:v18];
  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) != 0)
  {
    v22 = [(TUICandidateView *)self->_inlineView candidateResultSet];
    v20 = [v22 hasCandidates];
    v21 = v20 ^ 1;

    if (a9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = 0;
    v21 = 1;
    if (a9)
    {
      goto LABEL_7;
    }
  }

  v23 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v23 setHidden:v21];

  if ((v20 & 1) == 0)
  {
    [(UIKeyboardCandidateController *)self removeInlineView];
  }

LABEL_7:
  v24 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  v25 = [v24 isHidden];

  if ((v25 & 1) == 0)
  {
    v26 = [(UIKeyboardCandidateController *)self inlineRectIsVertical];
    v27 = [(UIKeyboardCandidateController *)self inlineViewContainer];
    [v27 setInlineRectIsVertical:v26];
  }

  v28 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v28 setInlineText:v18 inlineRect:v10 maxX:x layout:{y, width, height, a7}];

  v29 = [MEMORY[0x1E696AD88] defaultCenter];
  v34 = @"isVisible";
  v30 = [MEMORY[0x1E696AD98] numberWithInt:v20];
  v35[0] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [v29 postNotificationName:@"UIKeyboardInlineCandidateBarVisibilityChangedNotification" object:0 userInfo:v31];

  v32 = +[UIKeyboardImpl activeInstance];
  v33 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  [v32 updateDictationPopoverLocationForCandidateInlineView:v33 yOffset:0.0];
}

- (void)updateHostedInlineCandidatesWithInlineText:(id)a3 type:(int)a4 inlineRect:(CGRect)a5 maxX:(double)a6 layout:(BOOL)a7
{
  [(UIKeyboardCandidateController *)self setCandidates:0 type:*&a4 inlineText:a3 inlineRect:a7 maxX:1 layout:a5.origin.x inlineCandidatesAreHosted:a5.origin.y, a5.size.width, a5.size.height, a6];
  v8 = [(UIKeyboardCandidateSceneHostingController *)self->_hostingController isExpanded];

  [(UIKeyboardCandidateController *)self clientExpandedStateChanged:v8];
}

- (void)setScreenTraits:(id)a3
{
  v5 = a3;
  if (self->_screenTraits != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_screenTraits, a3);
    [(UIKeyboardCandidateController *)self updateStates];
    v5 = v6;
  }
}

- (BOOL)isExtendedList
{
  v3 = ([(UIKeyboardCandidateController *)self activeCandidateViewType]& 2) != 0 && [(UIKeyboardCandidateController *)self barIsExtended];
  v4 = [(UIKeyboardCandidateController *)self activeCandidateViewType];
  if ((v4 & 4) == 0 || v3)
  {
    return (v4 >> 2) & 1 | v3;
  }

  else
  {

    LOBYTE(v5) = [(UIKeyboardCandidateController *)self inlineViewIsExtended];
  }

  return v5;
}

- (void)setUIKeyboardCandidateListDelegate:(id)a3
{
  [(UIKeyboardCandidateController *)self setCandidateListDelegate:?];
  if (!a3)
  {
    [(UIKeyboardCandidateController *)self collapse];
    [(UIKeyboardCandidateController *)self setCandidateResultSet:0];

    [(UIKeyboardCandidateController *)self removeInlineView];
  }
}

- (void)showCandidateAtIndex:(unint64_t)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v6 = a4;
  v9 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  }

  [v9 setSelectedIndexPath:v8 animated:v6 scrollPosition:a5];
}

- (BOOL)showCandidate:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 indexPathForCandidate:v8];
  }

  else
  {
    v11 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 setSelectedIndexPath:v11 animated:v6 scrollPosition:a5];
  }

  else
  {
    [v10 setSelectedIndexPath:v11];
  }

  return v11 != 0;
}

- (BOOL)hasCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  LOBYTE(v4) = [v6 hasCandidateInForwardDirection:v5 granularity:v4];

  return v4;
}

- (void)showCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  if (a4 == 1 && ([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) != 0)
  {
    v7 = [(UIKeyboardCandidateController *)self inlineViewIsExtended];
    if (!v5)
    {
      if (!v7)
      {
        goto LABEL_8;
      }

      LOBYTE(v7) = [(UIKeyboardCandidateController *)self hasCandidateInForwardDirection:0 granularity:1];
    }

    if (!v7)
    {
      [(UIKeyboardCandidateController *)self toggleInlineViewExtendedAnimated:1 completion:&__block_literal_global_85];
    }
  }

LABEL_8:
  v8 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  [v8 showCandidateInForwardDirection:v5 granularity:v4];
}

- (void)acceptSelectedCandidate
{
  v3 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  v4 = [v3 selectedCandidate];
  [(UIKeyboardCandidateController *)self setCurrentCandidate:v4];

  v5 = [(UIKeyboardCandidateController *)self candidateListDelegate];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(UIKeyboardCandidateController *)self candidateListDelegate];
    [v6 candidateListAcceptCandidate:self];
  }
}

- (BOOL)handleNumberKey:(unint64_t)a3
{
  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) == 0)
  {
    return 0;
  }

  v6 = [(UIKeyboardCandidateController *)self inlineView];
  v7 = [v6 handleNumberKey:a3];

  return v7;
}

- (BOOL)handleTabKeyWithShift:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  v5 = [v4 hasCandidateInForwardDirection:!v3 granularity:3];
  if (v5)
  {
    [v4 showCandidateInForwardDirection:!v3 granularity:3];
  }

  return v5;
}

- (TIKeyboardCandidate)currentCandidate
{
  currentCandidate = self->_currentCandidate;
  if (currentCandidate)
  {
    v3 = currentCandidate;
  }

  else
  {
    v4 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
    v3 = [v4 selectedCandidate];
  }

  return v3;
}

- (unint64_t)currentIndex
{
  v3 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 selectedIndexPath];
    v6 = v5;
    if (v5)
    {
      if ([v5 section])
      {
        v7 = [(UIKeyboardCandidateController *)self candidateResultSet];
        v8 = [v7 candidates];
        v9 = [v4 selectedCandidate];
        v10 = [v8 indexOfObject:v9];
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
  v2 = [(UIKeyboardCandidateController *)self candidateResultSet];
  v3 = [v2 hasCandidates];

  return v3;
}

- (id)keyboardBehaviors
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 accessibilityUsesExtendedKeyboardPredictionsEnabled];

  v4 = 0x1E69D95C8;
  if (!v3)
  {
    v4 = 0x1E69D95D0;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

- (id)statisticsIdentifier
{
  v3 = [(UIKeyboardCandidateController *)self activeCandidateViewType];
  v4 = [(UIKeyboardCandidateController *)self screenTraits];
  v5 = [v4 idiom];
  v6 = v5;
  if ((v3 & 2) != 0)
  {
    if (v5 == 1 && +[UIKeyboardImpl isSplit])
    {
      v10 = +[UIKeyboardImpl activeInstance];
      v11 = [v10 centerFilled];

      if ((v11 & 1) == 0)
      {
        v12 = [(UIKeyboardCandidateController *)self barIsExtended];
        v9 = MEMORY[0x1E69D9AC8];
        v13 = MEMORY[0x1E69D9AC0];
        goto LABEL_13;
      }
    }

    else
    {
    }

    v12 = [(UIKeyboardCandidateController *)self barIsExtended];
    v9 = MEMORY[0x1E69D9A90];
    v13 = MEMORY[0x1E69D9A88];
LABEL_13:
    if (v12)
    {
      v9 = v13;
    }

    goto LABEL_15;
  }

  if (v6)
  {
    v7 = [(UIKeyboardCandidateController *)self screenTraits];
    v8 = [v7 idiom];

    if (v8 != 1)
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

    v12 = [(UIKeyboardCandidateController *)self inlineViewIsExtended];
    v9 = MEMORY[0x1E69D9AB8];
    v13 = MEMORY[0x1E69D9AB0];
    goto LABEL_13;
  }

  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) != 0)
  {
    v12 = [(UIKeyboardCandidateController *)self inlineViewIsExtended];
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
  v2 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  v3 = [v2 selectedSortControlIndex];

  return v3;
}

- (void)candidatesDidChange
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIKeyboardCandidatesChanged" object:0];
}

- (void)revealHiddenCandidates
{
  v3 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  if (v3)
  {
    v10 = v3;
    v4 = [(UIKeyboardCandidateController *)self candidateResultSet];
    v5 = [v4 disambiguationCandidates];
    v6 = [v5 count];

    v3 = v10;
    if (v6)
    {
      if (([v10 hasCandidateInForwardDirection:1 granularity:0 inGridType:1] & 1) == 0)
      {
        [v10 setDisambiguationSelectedIndexPath:0];
      }

      [v10 showCandidateInForwardDirection:1 granularity:0 inGridType:1];
      v7 = [v10 selectedDisambiguationCandidate];
      v8 = [v7 copy];

      if (objc_opt_respondsToSelector())
      {
        [v8 setGeneratedByChoosePinyin:1];
      }

      v9 = [v10 disambiguationSelectedIndexPath];
      [(UIKeyboardCandidateController *)self candidateView:v10 didAcceptCandidate:v8 atIndexPath:v9 inGridType:1 generateFeedback:0];

      v3 = v10;
    }
  }
}

- (id)candidateAtIndex:(unint64_t)a3
{
  v5 = [(UIKeyboardCandidateController *)self candidateResultSet];
  v6 = [v5 candidates];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(UIKeyboardCandidateController *)self candidateResultSet];
    v9 = [v8 candidates];
    v10 = [v9 objectAtIndex:a3];
  }

  return v10;
}

- (int64_t)viewOffsetForCandidateAtIndex:(unint64_t)a3
{
  v4 = [(UIKeyboardCandidateController *)self candidateAtIndex:a3];
  if (v4)
  {
    v5 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
    v6 = [v5 viewOffsetForCandidate:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (int64_t)rowForCandidateAtIndex:(unint64_t)a3
{
  v4 = [(UIKeyboardCandidateController *)self candidateAtIndex:a3];
  if (v4)
  {
    v5 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
    v6 = [v5 rowForCandidate:v4];
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
    v7 = [(UIKeyboardCandidateController *)self barState];
    v3 = [v7 style];

    if (!v3)
    {
      v8 = [(UIKeyboardCandidateController *)self barConfiguration];
      v9 = [v8 initialState];
      v3 = [v9 style];
    }

    v10 = [(UIKeyboardCandidateController *)self bar];
    [v10 bounds];
    Width = v11;

    v13 = [(UIKeyboardCandidateController *)self screenTraits];
    -[UIKeyboardCandidateController rowHeightForBarForOrientation:](self, "rowHeightForBarForOrientation:", [v13 orientation]);
    Height = v14;

    v15 = [(UIKeyboardCandidateController *)self barConfiguration];
    goto LABEL_9;
  }

  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 1) != 0)
  {
    v41 = [(TUICandidateView *)self->_key state];
    v3 = [v41 style];

    if (!v3)
    {
      v42 = [(UIKeyboardCandidateController *)self keyConfiguration];
      v43 = [v42 initialState];
      v3 = [v43 style];
    }

    [(TUICandidateView *)self->_key bounds];
    Width = CGRectGetWidth(v49);
    [(TUICandidateView *)self->_key bounds];
    Height = CGRectGetWidth(v50);
    [v3 rowHeight];
    if (Height >= v44)
    {
      Height = v44;
    }

    v16 = [(UIKeyboardCandidateController *)self keyConfiguration];
    v5 = 0;
LABEL_10:
    v4 = [v16 maxNumberOfProactiveCandidates];

    if (Width != 0.0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (([(UIKeyboardCandidateController *)self activeCandidateViewType]& 4) != 0)
  {
    v45 = [(UIKeyboardCandidateController *)self inlineViewState];
    v3 = [v45 style];

    if (!v3)
    {
      v46 = [(UIKeyboardCandidateController *)self inlineConfiguration];
      v47 = [v46 initialState];
      v3 = [v47 style];
    }

    [(TUICandidateView *)self->_inlineView bounds];
    Width = CGRectGetWidth(v51);
    [(TUICandidateView *)self->_inlineView bounds];
    Height = CGRectGetHeight(v52);
    v15 = [(UIKeyboardCandidateController *)self inlineConfiguration];
LABEL_9:
    v16 = v15;
    v5 = 1;
    goto LABEL_10;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  Height = 0.0;
LABEL_11:
  v17 = [objc_opt_self() mainScreen];
  [v17 bounds];
  Width = v18;

LABEL_12:
  v19 = [off_1E70ECC18 systemFontOfSize:14.0];
  v20 = [v19 fontName];

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
  v24 = [v22 initWithFontName:v20 maxFontSize:v23 minFontSize:17.0 textColor:15.0];
  [v21 setHeaderTextTraits:v24];

  v25 = [v21 headerTextTraits];
  [v21 setInputTextTraits:v25];

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

    v26 = [v21 cellWidthOptions];
    v35 = [v26 objectForKeyedSubscript:*MEMORY[0x1E69D98C0]];
    [v35 floatValue];
    [(UIKeyboardCandidateController *)self setSingleSlottedCellMargin:(Width - v36) * 0.5];
  }

  else
  {
    v26 = [MEMORY[0x1E695DF70] array];
    v27 = [v3 maxNumberOfProactiveCells];
    v28 = 0;
    if (v27 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v27;
    }

    v30 = v29 + 1;
    do
    {
      if (v28)
      {
        v31 = Width / v28;
        if (v28 == 1)
        {
          [v3 singleSlottedCellMargin];
          v31 = v31 - (v32 + v32);
        }
      }

      else
      {
        v31 = 0.0;
      }

      v33 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
      [v26 addObject:v33];

      ++v28;
    }

    while (v30 != v28);
    [v21 setResultCountToSingleCellWidth:v26];
  }

  [v21 setSingleCellHeight:Height];
  [v3 extraCellPadding];
  [v21 setSingleCellVerticalPadding:v37 * 0.5];
  [v21 setMaxCellCount:v4];
  v38 = [objc_opt_self() mainScreen];
  [v38 scale];
  [v21 setScreenScale:?];

  v39 = [(UIKeyboardCandidateController *)self barConfiguration];
  [v21 setIsCandidateUI:{objc_msgSend(v39, "shouldUsePredictionViewSecureRenderTraits") ^ 1}];

  return v21;
}

- (void)toggleCandidateView:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v21 = a3;
  v8 = a5;
  v9 = [(UIKeyboardCandidateController *)self bar];

  if (v9 == v21)
  {
    v12 = [(UIKeyboardCandidateController *)self bar];
    v13 = [v12 state];
    v14 = [(UIKeyboardCandidateController *)self barState];
    v15 = UIKBAnalyticsCandidateUIDirectionOpen;
    if (v13 != v14)
    {
      v15 = UIKBAnalyticsCandidateUIDirectionClose;
    }

    [UIKBAnalyticsDispatcher candidateViewExtended:@"Button" direction:*v15];

    if ([(UIKeyboardCandidateController *)self isTextEffectsButtonPresented])
    {
      v16 = +[UIKeyboardImpl activeInstance];
      v17 = [v16 delegateAsResponder];

      if (objc_opt_respondsToSelector())
      {
        [v17 performSelector:sel__showTextFormattingAnimationOptions_ withObject:0];
      }
    }

    else
    {
      if (!-[UIKeyboardCandidateController reuseArrowButtonToExpandAssistantBarItems](self, "reuseArrowButtonToExpandAssistantBarItems") || (-[UIKeyboardCandidateController bar](self, "bar"), v18 = objc_claimAutoreleasedReturnValue(), [v18 state], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "arrowButtonDirection"), v19, v18, v20 != 2))
      {
        [(UIKeyboardCandidateController *)self toggleBarExtended];
        goto LABEL_16;
      }

      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      [v17 postNotificationName:@"UIKeyboardShouldExpandAssistantBarItems" object:0 userInfo:0];
    }

    goto LABEL_16;
  }

  v10 = [(UIKeyboardCandidateController *)self inlineView];

  if (v10 == v21)
  {
    [(UIKeyboardCandidateController *)self toggleInlineViewExtendedAnimated:v6 completion:v8];
  }

  else
  {
    v11 = [(UIKeyboardCandidateController *)self key];

    if (v11 == v21)
    {
      [(UIKeyboardCandidateController *)self toggleKeyViewExtendedAnimated:v6 completion:v8];
    }
  }

LABEL_16:
}

- (void)candidateViewDidTapInlineText:(id)a3
{
  v10 = a3;
  v4 = [(UIKeyboardCandidateController *)self bar];
  if (v4 != v10)
  {
    goto LABEL_2;
  }

  v5 = [v10 state];
  v6 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];

  if (v5 == v6)
  {
    v7 = [(UIKeyboardCandidateController *)self extendedBarState];
    [v10 setState:v7 animated:1 options:0 force:0 completion:&__block_literal_global_100_0];

    v4 = +[UIInputViewAnimationStyle animationStyleDefault];
    [v4 setDontMerge:1];
    [v4 setExtraOptions:0];
    [objc_opt_class() candidateViewAnimationDuration];
    [v4 setDuration:?];
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v8 maximizeWithAnimationStyle:v4 force:1];

    v9 = [v10 state];
    [v9 yOffset];
    [(UIKeyboardCandidateController *)self extendKeyboardBackdropHeight:?];

LABEL_2:
  }
}

- (void)candidateViewWillBeginDragging:(id)a3
{
  v11 = a3;
  v4 = [(UIKeyboardCandidateController *)self bar];
  if (v4 != v11)
  {
    goto LABEL_2;
  }

  v5 = [v11 state];
  v6 = [(UIKeyboardCandidateController *)self extendedBarState];

  if (v5 == v6)
  {
    v7 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];

    if (v7)
    {
      v8 = [(UIKeyboardCandidateController *)self extendedScrolledBarState];
      [v11 setState:v8 animated:1 options:0 force:0 completion:&__block_literal_global_102_1];

      v4 = +[UIInputViewAnimationStyle animationStyleDefault];
      [v4 setDontMerge:1];
      [v4 setExtraOptions:0];
      [objc_opt_class() candidateViewAnimationDuration];
      [v4 setDuration:?];
      v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      [v9 minimizeWithAnimationStyle:v4 force:1];

      v10 = [v11 state];
      [v10 yOffset];
      [(UIKeyboardCandidateController *)self extendKeyboardBackdropHeight:?];

LABEL_2:
    }
  }
}

- (void)candidateViewSelectionDidChange:(id)a3 inGridType:(int64_t)a4
{
  v5 = [(UIKeyboardCandidateController *)self candidateListDelegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UIKeyboardCandidateController *)self candidateListDelegate];
    [v7 candidateListSelectionDidChange:self];
  }
}

- (void)candidateViewNeedsToExpand:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardCandidateController *)self inlineView];

  if (v5 == v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__UIKeyboardCandidateController_candidateViewNeedsToExpand___block_invoke;
    v6[3] = &unk_1E70F5AC0;
    v7 = v4;
    [(UIKeyboardCandidateController *)self toggleInlineViewExtendedAnimated:1 completion:v6];
  }
}

void __60__UIKeyboardCandidateController_candidateViewNeedsToExpand___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 selectedIndexPath];
  [v1 setSelectedIndexPath:v2 animated:0 scrollPosition:0];
}

- (void)candidateView:(id)a3 didAcceptCandidate:(id)a4 atIndexPath:(id)a5 inGridType:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v13 = a3;
  v12 = +[UIKeyboardImpl activeInstance];
  [v12 updateIdleDetection:0];

  [(UIKeyboardCandidateController *)self candidateView:v13 didAcceptCandidate:v11 atIndexPath:v10 inGridType:a6 generateFeedback:1];
}

- (void)candidateView:(id)a3 didAcceptCandidate:(id)a4 atIndexPath:(id)a5 inGridType:(int64_t)a6 generateFeedback:(BOOL)a7
{
  v7 = a7;
  v20 = a4;
  [(UIKeyboardCandidateController *)self setCurrentCandidate:?];
  v9 = [(UIKeyboardCandidateController *)self candidateListDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(UIKeyboardCandidateController *)self candidateListDelegate];
    [v11 candidateListAcceptCandidate:self];
  }

  if (v7)
  {
    if ([(UIKBScreenTraits *)self->_screenTraits idiom]== 3)
    {
      v12 = +[UIDevice currentDevice];
      [v12 _playSystemSound:1123];
    }

    else
    {
      v13 = +[UIKeyboardImpl activeInstance];
      v12 = [v13 feedbackGenerator];

      v14 = objc_opt_respondsToSelector();
      v15 = +[UIKeyboardImpl activeInstance];
      v16 = [v15 feedbackGenerator];
      v17 = v16;
      if (v14)
      {
        v18 = [v20 candidate];
        v19 = [v18 length];
        [v17 actionOccurred:10 textLength:v19 atLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      }

      else
      {
        [v16 actionOccurred:10];
      }
    }
  }
}

- (void)_setRenderConfig:(id)a3
{
  v3 = a3;
  v5 = a3;
  objc_storeStrong(&self->_renderConfig, v3);
  LODWORD(v3) = self->_darkKeyboard;
  if (v3 != ([v5 lightKeyboard] ^ 1))
  {
    self->_darkKeyboard = [v5 lightKeyboard] ^ 1;
    [(UIKeyboardCandidateController *)self updateStates];
  }
}

- (void)dimKeys:(id)a3
{
  v6 = a3;
  v4 = [(UIKeyboardCandidateController *)self opacities];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(UIKeyboardCandidateController *)self setOpacities:v6];
    [(UIKeyboardCandidateController *)self updateStates];
  }
}

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4
{
  if (!a4)
  {
    [(UIKeyboardCandidateController *)self setHideDisambiguationCandidates:a3];
  }
}

- (BOOL)hostTextIsVertical
{
  v2 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  v3 = [v2 inlineRectIsVertical];

  return v3;
}

- (void)clientStateChangedWithIsExpanded:(BOOL)a3 isVisible:(BOOL)a4
{
  v4 = a3;
  [(UIKeyboardCandidateController *)self clientVisibilityChanged:a4];

  [(UIKeyboardCandidateController *)self clientExpandedStateChanged:v4];
}

- (void)clientExpandedStateChanged:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardCandidateController *)self inlineViewState];
  v6 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  v7 = v6;
  if (v3)
  {
    v8 = [v6 extendedState];

    if (v5 != v8)
    {
      v9 = [(UIKeyboardCandidateController *)self inlineConfiguration];
      v10 = [v9 extendedState];
      [(UIKeyboardCandidateController *)self setInlineViewState:v10];

      v11 = [(UIKeyboardCandidateController *)self inlineViewState];
      [v11 yOffset];
      v13 = v12;

      v14 = [(UIKeyboardCandidateController *)self inlineViewContainer];
      LODWORD(v10) = [v14 shouldExtendUpwards];

      if (v10)
      {
        v15 = [(UIKeyboardCandidateController *)self inlineViewState];
        [v15 additionalHeight];
        v13 = v13 - v16;
      }

      [(UIView *)self->_inlineViewContainer frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23 + v13;
      v25 = [(UIKeyboardCandidateController *)self inlineViewState];
      [v25 additionalHeight];
      v27 = v22 + v26;

      inlineViewContainer = self->_inlineViewContainer;

      [(UIView *)inlineViewContainer setFrame:v18, v24, v20, v27];
    }

    return;
  }

  v29 = [v6 initialState];

  if (v5 == v29)
  {
    return;
  }

  v30 = [(UIKeyboardCandidateController *)self inlineViewState];
  [v30 yOffset];
  v32 = v31;

  v33 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  if (![v33 shouldExtendUpwards])
  {
    goto LABEL_12;
  }

  v34 = [(UIKeyboardCandidateController *)self inlineViewContainer];
  v35 = [v34 position];

  if (v35 == 1)
  {
    v33 = [(UIKeyboardCandidateController *)self inlineViewState];
    [v33 additionalHeight];
    v32 = v32 - v36;
LABEL_12:
  }

  [(UIView *)self->_inlineViewContainer frame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43 - v32;
  v45 = [(UIKeyboardCandidateController *)self inlineViewState];
  [v45 additionalHeight];
  v47 = v42 - v46;

  [(UIView *)self->_inlineViewContainer setFrame:v38, v44, v40, v47];
  v49 = [(UIKeyboardCandidateController *)self inlineConfiguration];
  v48 = [v49 initialState];
  [(UIKeyboardCandidateController *)self setInlineViewState:v48];
}

- (void)hostedInlineFloatingViewFrameUpdated
{
  v5 = [(UIKeyboardCandidateController *)self inlineView];
  v3 = [(UIKeyboardCandidateController *)self inlineView];
  v4 = [v3 state];
  [v5 setState:v4 animated:0 options:0 force:1 completion:0];
}

- (void)hostedInlineFloatingViewIsTextVerticalUpdated:(BOOL)a3
{
  [(UIKeyboardCandidateController *)self updateStates];
  v6 = [(UIKeyboardCandidateController *)self inlineView];
  v4 = [(UIKeyboardCandidateController *)self inlineView];
  v5 = [v4 state];
  [v6 setState:v5 animated:0 options:0 force:1 completion:0];
}

- (CGRect)candidateViewFrame
{
  v3 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIKeyboardCandidateController *)self firstNonEmptyActiveCandidateView];
    [v5 candidateViewFrame];
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