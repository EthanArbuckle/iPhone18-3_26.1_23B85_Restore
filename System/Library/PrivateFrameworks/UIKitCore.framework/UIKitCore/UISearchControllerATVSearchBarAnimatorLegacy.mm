@interface UISearchControllerATVSearchBarAnimatorLegacy
@end

@implementation UISearchControllerATVSearchBarAnimatorLegacy

void __67___UISearchControllerATVSearchBarAnimatorLegacy_animateTransition___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _resultsControllerViewContainer];
  [v1 setAlpha:1.0];
}

void __67___UISearchControllerATVSearchBarAnimatorLegacy_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsFocusUpdate];
  [*(a1 + 40) completeTransition:{objc_msgSend(*(a1 + 40), "transitionWasCancelled") ^ 1}];
  v2 = [*(a1 + 32) presentationController];
  [v2 _disableMenuPressForBackGesture];
}

void __67___UISearchControllerATVSearchBarAnimatorLegacy_animateTransition___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) searchBar];
  [v3 _setDisableFocus:0];

  v4 = [*(a1 + 32) searchBar];
  v5 = [v4 isFirstResponder];

  if (v5)
  {
    v6 = [*(a1 + 32) searchBar];
    [v6 resignFirstResponder];
  }

  v8 = [*(a1 + 32) presentingViewController];
  if ([v8 definesPresentationContext])
  {
    v7 = [v8 presentingViewController];

    if (v7)
    {
      [v8 dismissViewControllerAnimated:objc_msgSend(*(a1 + 40) completion:{"isAnimated"), 0}];
    }
  }
}

uint64_t __67___UISearchControllerATVSearchBarAnimatorLegacy_animateTransition___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

uint64_t __80___UISearchControllerATVSearchBarAnimatorLegacy_didFocusSearchBarForController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v3;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v10];

  [*(a1 + 40) setFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  [*(a1 + 48) setFrame:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
  [*(a1 + 56) setFrame:{*(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168)}];
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  v6 = *(a1 + 192);
  v7 = *(a1 + 200);
  v8 = [*(a1 + 64) _resultsControllerViewContainer];
  [v8 setFrame:{v4, v5, v6, v7}];

  return [*(a1 + 72) setAlpha:1.0];
}

void __80___UISearchControllerATVSearchBarAnimatorLegacy_didFocusSearchBarForController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setConstant:*(a1 + 88)];
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = [*(a1 + 40) superview];
  [v6 setFrame:{v2, v3, v4, v5}];

  [*(a1 + 48) setFrame:{*(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152)}];
  [*(a1 + 56) setFrame:{*(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184)}];
  [*(a1 + 64) setFrame:{*(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 216)}];
  v7 = *(a1 + 224);
  v8 = *(a1 + 232);
  v9 = *(a1 + 240);
  v10 = *(a1 + 248);
  v11 = [*(a1 + 72) _resultsControllerViewContainer];
  [v11 setFrame:{v7, v8, v9, v10}];

  v13 = [*(a1 + 80) view];
  v12 = [v13 superview];
  [v12 layoutIfNeeded];
}

uint64_t __82___UISearchControllerATVSearchBarAnimatorLegacy_didUnfocusSearchBarForController___block_invoke(uint64_t a1)
{
  memset(&v13, 0, sizeof(v13));
  v2 = *(a1 + 104);
  CGAffineTransformMakeTranslation(&v13, 0.0, v2 * -0.5 + -1.0);
  v11 = v13;
  CGAffineTransformScale(&v12, &v11, 1.0, 1.0 / v2);
  v13 = v12;
  v10 = v12;
  v3 = [*(a1 + 32) view];
  v12 = v10;
  [v3 setTransform:&v12];

  [*(a1 + 40) setFrame:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
  [*(a1 + 48) setFrame:{*(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168)}];
  [*(a1 + 56) setFrame:{*(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200)}];
  v4 = *(a1 + 208);
  v5 = *(a1 + 216);
  v6 = *(a1 + 224);
  v7 = *(a1 + 232);
  v8 = [*(a1 + 64) _resultsControllerViewContainer];
  [v8 setFrame:{v4, v5, v6, v7}];

  return [*(a1 + 72) setAlpha:0.0];
}

void __82___UISearchControllerATVSearchBarAnimatorLegacy_didUnfocusSearchBarForController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setConstant:*(a1 + 88)];
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = [*(a1 + 40) superview];
  [v6 setFrame:{v2, v3, v4, v5}];

  [*(a1 + 48) setFrame:{*(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152)}];
  [*(a1 + 56) setFrame:{*(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184)}];
  [*(a1 + 64) setFrame:{*(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 216)}];
  v7 = *(a1 + 224);
  v8 = *(a1 + 232);
  v9 = *(a1 + 240);
  v10 = *(a1 + 248);
  v11 = [*(a1 + 72) _resultsControllerViewContainer];
  [v11 setFrame:{v7, v8, v9, v10}];

  v13 = [*(a1 + 80) view];
  v12 = [v13 superview];
  [v12 layoutIfNeeded];
}

void __97___UISearchControllerATVSearchBarAnimatorLegacy_willFocusOffscreenViewForController_withHeading___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  [*(a1 + 40) setFrame:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
  [*(a1 + 48) setFrame:{*(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192)}];
  [*(a1 + 56) setFrame:{*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224)}];
  [*(a1 + 64) setFrame:{*(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256)}];
  [*(a1 + 72) setFrame:{*(a1 + 264), *(a1 + 272), *(a1 + 280), *(a1 + 288)}];
  [*(a1 + 80) setFrame:{*(a1 + 296), *(a1 + 304), *(a1 + 312), *(a1 + 320)}];
  [*(a1 + 88) setConstant:*(a1 + 328)];
  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  v4 = *(a1 + 352);
  v5 = *(a1 + 360);
  v6 = [*(a1 + 96) view];
  [v6 setFrame:{v2, v3, v4, v5}];

  v8 = [*(a1 + 96) view];
  v7 = [v8 superview];
  [v7 layoutIfNeeded];
}

@end