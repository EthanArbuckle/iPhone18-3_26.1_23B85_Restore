@interface UIOPrototypeMenuBarViewController
@end

@implementation UIOPrototypeMenuBarViewController

void __49___UIOPrototypeMenuBarViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v11 sender];
    v5 = [v4 isSelected];
    v6 = [WeakRetained dismissTapGesture];
    [v6 setEnabled:v5 ^ 1u];

    v7 = [v4 isSelected];
    v8 = [WeakRetained view];
    v9 = [v8 window];
    v10 = [v9 layer];
    [v10 setHitTestsAsOpaque:v7 ^ 1u];
  }
}

void __49___UIOPrototypeMenuBarViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v2 = [v7 configuration];
  if ([v7 isSelected])
  {
    v3 = @"pin.fill";
  }

  else
  {
    v3 = @"pin";
  }

  v4 = [UIImage systemImageNamed:v3];
  [v2 setImage:v4];

  if ([v7 isSelected])
  {
    +[UIColor systemYellowColor];
  }

  else
  {
    +[UIColor systemGray3Color];
  }
  v5 = ;
  v6 = [v2 background];
  [v6 setBackgroundColor:v5];

  [v7 setConfiguration:v2];
}

void __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke(uint64_t a1, void *a2)
{
  v69[2] = *MEMORY[0x1E69E9840];
  v45 = a2;
  v46 = [v45 menu];
  v51 = [MEMORY[0x1E695DF70] array];
  v53 = [v46 children];
  if ([v53 count])
  {
    v2 = 0;
    v48 = *off_1E70EC918;
    v47 = *off_1E70EC920;
    do
    {
      v3 = [v53 objectAtIndexedSubscript:v2];
      v4 = [v3 identifier];
      v5 = [v4 isEquivalentToUIMenuIdentifier:@"com.apple.menu.application"];

      v6 = +[UIButtonConfiguration plainButtonConfiguration];
      v7 = +[UIColor whiteColor];
      [v6 setBaseForegroundColor:v7];

      v8 = off_1E70ECD20;
      if (v5)
      {
        v9 = [*(*(a1 + 32) + 1072) clientAppIcon];
        [v6 setImage:v9];

        [v6 setImagePadding:8.0];
        v8 = off_1E70ECD08;
      }

      v10 = *v8;
      v11 = objc_alloc(MEMORY[0x1E696AAB0]);
      v12 = [v3 uiMenu];
      v13 = [v12 title];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = &stru_1EFB14550;
      }

      v68[0] = v48;
      v16 = [off_1E70ECC18 systemFontOfSize:15.0 weight:v10];
      v68[1] = v47;
      v69[0] = v16;
      v17 = +[UIColor whiteColor];
      v69[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];
      v19 = [v11 initWithString:v15 attributes:v18];
      [v6 setAttributedTitle:v19];

      [v6 setCornerStyle:4];
      v20 = [(UIButton *)_UIOPrototypeMenuBarButton buttonWithConfiguration:v6 primaryAction:0];
      [v51 addObject:v20];
      v21 = [v3 identifier];
      [v20 setCategoryMenuIdentifier:v21];

      objc_initWeak(&location, *(a1 + 32));
      objc_initWeak(&from, v20);
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke_2;
      v60[3] = &unk_1E7105170;
      objc_copyWeak(&v62, &location);
      v22 = v3;
      v61 = v22;
      objc_copyWeak(&v63, &from);
      [v20 setElementLoader:v60];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke_4;
      v58[3] = &unk_1E7105198;
      objc_copyWeak(&v59, &location);
      [v20 setMenuPresentationHandler:v58];
      v23 = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
      [v20 setMenu:v23];

      [v20 setShowsMenuAsPrimaryAction:1];
      LODWORD(v24) = 1148846080;
      [v20 setContentCompressionResistancePriority:0 forAxis:v24];
      LODWORD(v25) = 1148846080;
      [v20 setContentHuggingPriority:0 forAxis:v25];
      [v20 setConfigurationUpdateHandler:&__block_literal_global_90];
      objc_destroyWeak(&v59);
      objc_destroyWeak(&v63);

      objc_destroyWeak(&v62);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

      ++v2;
    }

    while (v2 < [v53 count]);
  }

  v26 = [v51 copy];
  v27 = *(a1 + 32);
  v28 = *(v27 + 1032);
  *(v27 + 1032) = v26;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v29 = [*(a1 + 32) barBackgroundView];
  v30 = [v29 subviews];

  v31 = [v30 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v31)
  {
    v32 = *v55;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v55 != v32)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v54 + 1) + 8 * i) removeFromSuperview];
      }

      v31 = [v30 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v31);
  }

  v34 = [[UIStackView alloc] initWithArrangedSubviews:v51];
  [(UIStackView *)v34 setAxis:0];
  [(UIStackView *)v34 setSpacing:15.0];
  v35 = [*(a1 + 32) barBackgroundView];
  [v35 addSubview:v34];

  [(UIStackView *)v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = MEMORY[0x1E69977A0];
  v50 = [(UIView *)v34 centerXAnchor];
  v36 = [*(*(a1 + 32) + 1088) centerXAnchor];
  v37 = [v50 constraintEqualToAnchor:v36];
  v66[0] = v37;
  v38 = [(UIView *)v34 centerYAnchor];
  v39 = [*(*(a1 + 32) + 1088) centerYAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-2.0];
  v66[1] = v40;
  v41 = [(UIView *)v34 widthAnchor];
  v42 = [*(*(a1 + 32) + 1088) widthAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:-60.0];
  v66[2] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
  [v49 activateConstraints:v44];

  (*(*(a1 + 40) + 16))();
}

void __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v5 = a1[4];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke_3;
    v6[3] = &unk_1E7105148;
    objc_copyWeak(&v9, &location);
    objc_copyWeak(&v10, a1 + 6);
    v7 = a1[4];
    v8 = v3;
    [WeakRetained _getStateForMenu:v5 handler:v6];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = objc_loadWeakRetained((a1 + 56));
  if (v8 && WeakRetained && v4 && [WeakRetained[130] containsObject:v4])
  {
    v5 = [WeakRetained _uiMenuForMainMenu:*(a1 + 32) state:v8];
    v6 = *(a1 + 40);
    v7 = [v5 children];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke_4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 994) & 1) == 0)
  {
    v8 = WeakRetained[130];
    if (a3)
    {
      [v8 addObject:v5];
    }

    else
    {
      [v8 removeObject:v5];
    }

    v9 = [v7[130] count];
    v10 = v7[128];
    if (v9)
    {
      if (v10)
      {
        [v10 invalidate];
        v11 = v7[128];
        v7[128] = 0;
      }
    }

    else if (!v10)
    {
      objc_initWeak(&location, v7);
      v12 = MEMORY[0x1E695DFF0];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke_5;
      v15[3] = &unk_1E70F4130;
      objc_copyWeak(&v16, &location);
      v13 = [v12 scheduledTimerWithTimeInterval:0 repeats:v15 block:0.5];
      v14 = v7[128];
      v7[128] = v13;

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

void __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[125])
  {
    v7 = WeakRetained;
    v2 = objc_opt_new();
    [v2 setSessionToEnd:v7[125]];
    v3 = v7[125];
    v7[125] = 0;

    v4 = v7[126];
    v7[126] = 0;

    v5 = v7[127];
    v7[127] = 0;

    v6 = v7[128];
    v7[128] = 0;

    [v7 performSessionRequest:v2 handler:0];
    WeakRetained = v7;
  }
}

void __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke_6(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = [v9 configuration];
  v3 = [v9 traitCollection];
  v4 = objc_opt_self();
  v5 = [v3 traitCollectionByReplacingNSIntegerValue:2 forTrait:v4];

  if (([v9 isHeld] & 1) != 0 || (objc_msgSend(v9, "isSelected") & 1) != 0 || objc_msgSend(v9, "isHighlighted"))
  {
    v6 = +[UIColor systemFillColor];
    v7 = [v6 resolvedColorWithTraitCollection:v5];
    v8 = [v2 background];
    [v8 setBackgroundColor:v7];
  }

  else
  {
    v6 = +[UIColor clearColor];
    v7 = [v2 background];
    [v7 setBackgroundColor:v6];
  }

  [v9 setConfiguration:v2];
}

void __53___UIOPrototypeMenuBarViewController__presentMenuBar__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) barBackgroundView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v3;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v6];

  v4 = [*(a1 + 32) pinMenuBarButton];
  [v4 setUserInteractionEnabled:1];

  v5 = [*(a1 + 32) pinMenuBarButton];
  [v5 setAlpha:1.0];
}

uint64_t __78___UIOPrototypeMenuBarViewController__dismissDueToUserDismissal_informingApp___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeTranslation(&v5, 0.0, -40.0);
  v2 = *(*(a1 + 32) + 1088);
  v4 = v5;
  [v2 setTransform:&v4];
  [*(*(a1 + 32) + 1096) setUserInteractionEnabled:0];
  return [*(*(a1 + 32) + 1096) setAlpha:0.0];
}

void __78___UIOPrototypeMenuBarViewController__dismissDueToUserDismissal_informingApp___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dismissalHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) dismissalHandler];
    v3[2](v3, *(a1 + 40));
  }
}

uint64_t __77___UIOPrototypeMenuBarViewController_serviceConnectionDidInvalidateMainMenu___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1088) setUserInteractionEnabled:1];
  *(*(a1 + 32) + 994) = 0;
  return result;
}

void __63___UIOPrototypeMenuBarViewController__getStateForMenu_handler___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [v16 session];

    if (v4)
    {
      v5 = [v16 session];
      v6 = *(WeakRetained + 125);
      *(WeakRetained + 125) = v5;

      v7 = [*(WeakRetained + 125) hostSideInvokableKeyboardShortcutsWithPrimaryActionHandler:&__block_literal_global_97];
      v8 = *(WeakRetained + 127);
      *(WeakRetained + 127) = v7;
    }

    v9 = [v16 menuStateResponse];
    v10 = [v9 uncategorizedMenuState];

    if (v10)
    {
      v11 = [v9 uncategorizedMenuState];
      v12 = *(WeakRetained + 126);
      *(WeakRetained + 126) = v11;
    }

    v13 = [v9 menuState];

    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = [v9 menuState];
      (*(v14 + 16))(v14, v15);
    }
  }
}

void __63___UIOPrototypeMenuBarViewController__getStateForMenu_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 uncategorizedMenuState];

  if (v3)
  {
    v4 = [v9 uncategorizedMenuState];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1008);
    *(v5 + 1008) = v4;
  }

  v7 = *(a1 + 40);
  v8 = [v9 menuState];
  (*(v7 + 16))(v7, v8);
}

void __99___UIOPrototypeMenuBarViewController__uiDeferredMenuElementForMainMenuDeferredElement_parentState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) fulfilledDeferredElementStates];
    v6 = [*(a1 + 40) identifier];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = [v7 providedElements];
      v9 = [WeakRetained _uiMenuElementsForMainMenuElements:v8 parentState:v7];
      v3[2](v3, v9);
    }

    else
    {
      objc_initWeak(&location, WeakRetained);
      v10 = [_UIMainMenuDeferredElementRequest alloc];
      v11 = [*(a1 + 40) identifier];
      v12 = [(_UIMainMenuDeferredElementRequest *)v10 initWithDeferredElementIdentifier:v11 session:*(*(a1 + 48) + 1000)];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __99___UIOPrototypeMenuBarViewController__uiDeferredMenuElementForMainMenuDeferredElement_parentState___block_invoke_2;
      v13[3] = &unk_1E7105258;
      objc_copyWeak(&v15, &location);
      v14 = v3;
      [WeakRetained performMainMenuDeferredElementRequest:v12 responseHandler:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v3[2](v3, MEMORY[0x1E695E0F0]);
  }
}

void __99___UIOPrototypeMenuBarViewController__uiDeferredMenuElementForMainMenuDeferredElement_parentState___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v10 && WeakRetained && ([v10 deferredElementState], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = *(a1 + 32);
    v6 = [v10 deferredElementState];
    v7 = [v6 providedElements];
    v8 = [v10 deferredElementState];
    v9 = [WeakRetained _uiMenuElementsForMainMenuElements:v7 parentState:v8];
    (*(v5 + 16))(v5, v9);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __83___UIOPrototypeMenuBarViewController__uiMenuElementForMainMenuCommand_parentState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[125])
  {
    v6 = [_UIMainMenuCommandInvocationRequest alloc];
    v7 = [v3 command];
    v8 = [(_UIMainMenuCommandInvocationRequest *)v6 initWithCommand:v7 session:v5[125]];

    objc_initWeak(&location, v5);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83___UIOPrototypeMenuBarViewController__uiMenuElementForMainMenuCommand_parentState___block_invoke_2;
    aBlock[3] = &unk_1E71052A8;
    objc_copyWeak(&v17, &location);
    v9 = v8;
    v16 = v9;
    v10 = _Block_copy(aBlock);
    if ([v3 needsAuthenticationMessage])
    {
      v11 = +[UIPasteboard generalPasteboard];
      v12 = [*(*(a1 + 32) + 1080) pid];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __83___UIOPrototypeMenuBarViewController__uiMenuElementForMainMenuCommand_parentState___block_invoke_3;
      v13[3] = &unk_1E71052D0;
      v14 = v10;
      [v11 _requestSecurePasteAuthenticationMessageWithContext:0x5A4A97C3218CE65BLL forClientVersionedPID:v12 completionBlock:v13];
    }

    else
    {
      (*(v10 + 2))(v10, 0);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __83___UIOPrototypeMenuBarViewController__uiMenuElementForMainMenuCommand_parentState___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) setAuthenticationMessage:v8];
    v4 = objc_opt_new();
    [v4 setSessionToEnd:WeakRetained[125]];
    v5 = WeakRetained[125];
    WeakRetained[125] = 0;

    v6 = WeakRetained[126];
    WeakRetained[126] = 0;

    v7 = WeakRetained[127];
    WeakRetained[127] = 0;

    [*(a1 + 32) setSessionRequest:v4];
    [WeakRetained performMainMenuCommandInvocationRequest:*(a1 + 32) responseHandler:0];
  }
}

void __69___UIOPrototypeMenuBarViewController_performBaseMenuRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (*(a1 + 32))
  {
    if (WeakRetained)
    {
      v5 = [v10 sessionResponse];
      v6 = [v5 session];

      if (v6)
      {
        v7 = [v4 _currentHostKeyboardShortcuts];
        v8 = [v10 sessionResponse];
        v9 = [v8 session];
        [v9 set_hostKeyboardShortcuts:v7];
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __68___UIOPrototypeMenuBarViewController_performSessionRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (*(a1 + 32))
  {
    if (WeakRetained)
    {
      v5 = [v8 session];

      if (v5)
      {
        v6 = [v4 _currentHostKeyboardShortcuts];
        v7 = [v8 session];
        [v7 set_hostKeyboardShortcuts:v6];
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __94___UIOPrototypeMenuBarViewController_performMainMenuCommandInvocationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (*(a1 + 32))
  {
    if (WeakRetained)
    {
      v5 = [v10 sessionResponse];
      v6 = [v5 session];

      if (v6)
      {
        v7 = [v4 _currentHostKeyboardShortcuts];
        v8 = [v10 sessionResponse];
        v9 = [v8 session];
        [v9 set_hostKeyboardShortcuts:v7];
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

@end