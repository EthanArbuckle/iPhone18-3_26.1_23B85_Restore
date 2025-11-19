@interface TVAppDocumentController
@end

@implementation TVAppDocumentController

void __54___TVAppDocumentController__alertControllerWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained navigationController];
    v3 = [v2 popViewControllerAnimated:1];

    WeakRetained = v4;
  }
}

uint64_t __74___TVAppDocumentController__updateModalPresentationStateWithTemplateView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [*(a1 + 32) tv_dispatchEvent:@"select" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:WeakRetained completionBlock:0];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

void __57___TVAppDocumentController__updateTemplateViewController__block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained parentViewController];
    if (!v10)
    {
      v4 = [v9 presentingViewController];
      if (!v4)
      {
        goto LABEL_15;
      }
    }

    v11 = [v9 templateViewController];
    if (v11 == v7)
    {

      if (v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = v4;
      }
    }

    else
    {
      v12 = *(a1 + 72);

      if (v10)
      {

        if ((v12 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {

        if ((v12 & 1) == 0)
        {
LABEL_15:
          [v9 setTransitioning:0];
          goto LABEL_50;
        }
      }
    }

    v113[0] = 1;
    [v9 _willHostTemplateViewController:v7 usesTransitions:v113];
    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSinceDate:*(a1 + 32)];
    v16 = v15;

    if (v16 >= 0.25)
    {
      v77 = 0;
    }

    else
    {
      v17 = [v9 navigationController];
      v18 = [v17 viewControllers];
      v77 = [v18 count] > 1;
    }

    v19 = +[_TVAppLoadingView loadingScreen];
    v76 = [v19 isVisible];

    v20 = [v9 templateViewController];
    v21 = [v20 conformsToProtocol:&unk_287EAD9A0];

    if (v21)
    {
      v22 = [v9 mediaQueryEvaluator];
      v23 = [v9 templateViewController];
      [v22 setDelegate:v23];
    }

    [*(a1 + 40) willMoveToParentViewController:0];
    if (v7)
    {
      [v9 addChildViewController:v7];
    }

    v24 = [v9 view];
    v25 = [*(a1 + 40) view];
    v26 = [v7 view];
    v112 = 0.0;
    v27 = [v26 backgroundColor];
    [v27 getRed:0 green:0 blue:0 alpha:&v112];

    v111 = (v112 != 1.0) & ~a4;
    if (*(a1 + 73) == 1)
    {
      [v7 overrideVisualEffectDisablementNeeded:{&v111, v112}];
    }

    v28 = [v9 tabBarController];
    if (v28)
    {
      v29 = v28;
      v30 = [v9 _isFlowcaseStack];

      if (v30)
      {
        [v26 setClipsToBounds:0];
        v31 = [v26 subviews];
        v32 = [v31 firstObject];
        [v32 setClipsToBounds:0];
      }
    }

    [v7 preferredContentSize];
    v34 = *MEMORY[0x277CBF3A8];
    if (*MEMORY[0x277CBF3A8] == v35)
    {
      v36 = *(MEMORY[0x277CBF3A8] + 8);
      if (v36 == v33)
      {
        [*(a1 + 40) preferredContentSize];
        if (v34 == v38 && v36 == v37)
        {
          v39 = [*(a1 + 48) mediaQueryEvaluator];
          v40 = [v39 windowSizeAdaptor];
          [v40 adjustedWindowSize];
          v42 = v41;
          v44 = v43;
        }

        else
        {
          [*(a1 + 40) preferredContentSize];
          v42 = v45;
          v44 = v46;
        }

        [v26 setFrame:{0.0, 0.0, v42, v44}];
      }
    }

    [*(*(*(a1 + 56) + 8) + 40) markTemplateDidRender];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __57___TVAppDocumentController__updateTemplateViewController__block_invoke_2;
    v101[3] = &unk_279D6EF00;
    v109 = *(a1 + 56);
    v47 = v24;
    v102 = v47;
    v103 = *(a1 + 40);
    v104 = v9;
    v48 = v25;
    v105 = v48;
    v49 = v7;
    v106 = v49;
    v50 = v26;
    v51 = *(a1 + 48);
    v107 = v50;
    v108 = v51;
    v110 = v111;
    v78 = MEMORY[0x26D6AFBB0](v101);
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __57___TVAppDocumentController__updateTemplateViewController__block_invoke_3;
    v92[3] = &unk_279D6EF28;
    v92[4] = v9;
    v52 = v48;
    v93 = v52;
    v94 = *(a1 + 40);
    v99 = v111;
    v53 = v50;
    v95 = v53;
    v54 = v49;
    v96 = v54;
    v55 = v47;
    v97 = v55;
    v100 = v113[0];
    v98 = *(a1 + 48);
    v56 = MEMORY[0x26D6AFBB0](v92);
    v57 = [v55 window];
    v58 = v113[0];

    if (v57 && (v58 & 1) != 0)
    {
      if (*(a1 + 74) == 1)
      {
        v59 = v52;
        [v59 setShouldShowSpinner:0];
        v60 = v78;
        (*(v78 + 16))(v78, 1);
        [v53 setAlpha:0.0];
        v61 = MEMORY[0x277D75D18];
        if (*(a1 + 72))
        {
          v62 = 2.0;
        }

        else
        {
          v62 = 0.5;
        }

        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __57___TVAppDocumentController__updateTemplateViewController__block_invoke_145;
        v88[3] = &unk_279D6E2F8;
        v89 = v53;
        v63 = v59;
        v90 = v63;
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __57___TVAppDocumentController__updateTemplateViewController__block_invoke_2_146;
        v86[3] = &unk_279D6EF50;
        v87 = v56;
        [v61 animateWithDuration:6 delay:v88 options:v86 animations:v62 completion:0.0];
        v64 = MEMORY[0x277D75D18];
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __57___TVAppDocumentController__updateTemplateViewController__block_invoke_3_147;
        v84[3] = &unk_279D6E7F8;
        v85 = v63;
        v65 = v63;
        [v64 animateWithDuration:v84 animations:0.5];
      }

      else
      {
        v60 = v78;
        v69 = *(v78 + 16);
        if (v77 & (v76 ^ 1) & 1 | ((*(a1 + 75) & 1) == 0))
        {
          v69(v78, 0);
          v56[2](v56);
        }

        else
        {
          v69(v78, 1);
          v70 = 0.0;
          [v53 setAlpha:0.0];
          v71 = +[_TVAppLoadingView loadingScreen];
          if ([v71 isVisible])
          {
            v72 = +[_TVAppLoadingView loadingScreen];
            [v72 hideAnimationDuration];
            v70 = v73 + 0.2;
          }

          v74 = MEMORY[0x277D75D18];
          if (*(a1 + 72))
          {
            v75 = 0.8;
          }

          else
          {
            v75 = 0.5;
          }

          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __57___TVAppDocumentController__updateTemplateViewController__block_invoke_4;
          v81[3] = &unk_279D6E2F8;
          v82 = v53;
          v83 = v52;
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __57___TVAppDocumentController__updateTemplateViewController__block_invoke_5;
          v79[3] = &unk_279D6EF50;
          v80 = v56;
          [v74 animateWithDuration:6 delay:v81 options:v79 animations:v75 completion:v70];
        }
      }
    }

    else
    {
      [*(*(*(a1 + 56) + 8) + 40) markTemplateWillTransition];
      [v9 setTransitioning:0];
      if ([v9 isVisualEffectDisablementNeeded])
      {
        [_TVVisualEffectView removeHostView:v52];
      }

      [v52 removeFromSuperview];
      if (v53)
      {
        [v55 addSubview:v53];
        if (v111 == 1)
        {
          [_TVVisualEffectView addHostView:v53];
        }
      }

      [*(a1 + 40) removeFromParentViewController];
      [v54 didMoveToParentViewController:*(a1 + 48)];
      [v9 setVisualEffectDisablementNeeded:v111];
      [v9 _didHostTemplateViewController:v54 usedTransitions:v113[0]];
      [*(*(*(a1 + 56) + 8) + 40) markTemplateDidTransition];
      v66 = TVMLKitSignpostLogObject;
      v67 = os_signpost_id_make_with_pointer(TVMLKitSignpostLogObject, *(a1 + 48));
      if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v68 = v67;
        if (os_signpost_enabled(v66))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_26CD9A000, v66, OS_SIGNPOST_INTERVAL_END, v68, "TVAppDocumentControllerUpdateOffscreen-Loading", &unk_26CE8F202, buf, 2u);
        }
      }

      v60 = v78;
    }
  }

LABEL_50:
}

uint64_t __57___TVAppDocumentController__updateTemplateViewController__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 88) + 8) + 40) markTemplateWillTransition];
  [*(a1 + 32) setUserInteractionEnabled:0];
  [*(a1 + 40) beginAppearanceTransition:0 animated:a2];
  if ([*(a1 + 48) isVisualEffectDisablementNeeded])
  {
    [_TVVisualEffectView disableForHostView:*(a1 + 56)];
  }

  [*(a1 + 64) beginAppearanceTransition:1 animated:a2];
  if (*(a1 + 72))
  {
    [*(a1 + 80) _updateModalPresentationStateWithTemplateView:?];
    [*(a1 + 32) insertSubview:*(a1 + 72) atIndex:0];
    if (*(a1 + 96) == 1)
    {
      [_TVVisualEffectView addHostView:*(a1 + 72)];
      [_TVVisualEffectView disableForHostView:*(a1 + 72)];
    }
  }

  v4 = *(a1 + 64);

  return [v4 endAppearanceTransition];
}

void __57___TVAppDocumentController__updateTemplateViewController__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setNeedsFocusUpdate];
  if ([*(a1 + 32) isVisualEffectDisablementNeeded])
  {
    [_TVVisualEffectView enableForHostView:*(a1 + 40)];
    [_TVVisualEffectView removeHostView:*(a1 + 40)];
  }

  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) endAppearanceTransition];
  [*(a1 + 48) removeFromParentViewController];
  if (*(a1 + 96) == 1)
  {
    [_TVVisualEffectView enableForHostView:*(a1 + 56)];
  }

  [*(a1 + 64) didMoveToParentViewController:*(a1 + 32)];
  [*(a1 + 32) setTransitioning:0];
  [*(a1 + 72) setUserInteractionEnabled:1];
  [*(a1 + 32) setVisualEffectDisablementNeeded:*(a1 + 96)];
  [*(a1 + 32) _didHostTemplateViewController:*(a1 + 64) usedTransitions:*(a1 + 97)];
  [*(*(*(a1 + 88) + 8) + 40) markTemplateDidTransition];
  v2 = TVMLKitSignpostLogObject;
  v3 = os_signpost_id_make_with_pointer(TVMLKitSignpostLogObject, *(a1 + 80));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26CD9A000, v2, OS_SIGNPOST_INTERVAL_END, v4, "TVAppDocumentControllerReplace", &unk_26CE8F202, buf, 2u);
    }
  }

  v5 = TVMLKitSignpostLogObject;
  v6 = os_signpost_id_make_with_pointer(TVMLKitSignpostLogObject, *(a1 + 80));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_26CD9A000, v5, OS_SIGNPOST_INTERVAL_END, v7, "TVAppDocumentControllerUpdate", &unk_26CE8F202, v15, 2u);
    }
  }

  v8 = TVMLKitSignpostLogObject;
  if (os_signpost_enabled(TVMLKitSignpostLogObject))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_26CD9A000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PerceivedLaunch", &unk_26CE8F202, v14, 2u);
  }

  v9 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] shouldRecordExtendedLaunchTime])
  {
    v10 = *v9;
    v11 = [*v9 _launchTestName];
    LODWORD(v10) = [v10 isRunningTest:v11];

    if (v10)
    {
      v12 = *v9;
      v13 = [*v9 _launchTestName];
      [v12 finishedTest:v13 extraResults:0];
    }
  }
}

uint64_t __57___TVAppDocumentController__updateTemplateViewController__block_invoke_145(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void __57___TVAppDocumentController__updateTemplateViewController__block_invoke_3_147(uint64_t a1)
{
  v2 = [*(a1 + 32) spinnerView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) loadingTitleLabel];
  [v3 setAlpha:0.0];
}

uint64_t __57___TVAppDocumentController__updateTemplateViewController__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __57___TVAppDocumentController__updateTemplateViewController__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

void __68___TVAppDocumentController_updatePreferredFocusedViewStateForFocus___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutBelowIfNeeded];
}

@end