@interface _PXPhotosBarButtonView
- (SEL)action;
- (SEL)menuAction;
- (UIBarButtonItem)barButtonItem;
- (_PXPhotosBarButtonView)initWithTitle:(id)a3 orSystemItem:(int64_t)a4 orSystemIconName:(id)a5 target:(id)a6 action:(SEL)a7 menuAction:(SEL)a8 specManager:(id)a9 viewModel:(id)a10;
- (id)_createButtonConfiguration;
- (id)target;
- (void)_handleAction;
- (void)_handleMenuAction;
- (void)_handleWillDismissMenu;
- (void)_handleWillDisplayMenu;
- (void)_invalidateAlpha;
- (void)_invalidateButtons;
- (void)_pauseChangeDelivery;
- (void)_resumeChangeDeliveryIfPossible;
- (void)_updateAlpha;
- (void)_updateButtons;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setAccessibilityIdentifier:(id)a3;
- (void)setBarButtonItem:(id)a3;
- (void)setExtendedHitTestInsetsEdges:(unint64_t)a3;
- (void)tintColorDidChange;
@end

@implementation _PXPhotosBarButtonView

- (SEL)menuAction
{
  if (self->_menuAction)
  {
    return self->_menuAction;
  }

  else
  {
    return 0;
  }
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (UIBarButtonItem)barButtonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_barButtonItem);

  return WeakRetained;
}

- (void)setExtendedHitTestInsetsEdges:(unint64_t)a3
{
  if (self->_extendedHitTestInsetsEdges != a3)
  {
    self->_extendedHitTestInsetsEdges = a3;
    [(_PXPhotosBarButtonView *)self setNeedsLayout];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (SpecManagerObservationContext_219411 == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    v11 = v9;
    [(_PXPhotosBarButtonView *)self _invalidateButtons];
    goto LABEL_10;
  }

  if (ViewModelObservationContext_219412 == a5)
  {
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (HeaderCustomizationModelObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosBarButtonItemsController.m" lineNumber:392 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 4) != 0)
  {
    v11 = v9;
    [(_PXPhotosBarButtonView *)self _invalidateAlpha];
LABEL_10:
    v9 = v11;
  }

LABEL_11:
}

- (void)setAccessibilityIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = _PXPhotosBarButtonView;
  v4 = a3;
  [(_PXPhotosBarButtonView *)&v5 setAccessibilityIdentifier:v4];
  [(PXCuratedLibraryOverlayButton *)self->_button setAccessibilityIdentifier:v4, v5.receiver, v5.super_class];
}

- (void)_updateAlpha
{
  v3 = [(_PXPhotosBarButtonView *)self headerCustomizationModel];
  v5 = v3;
  if (v3)
  {
    [v3 alpha];
  }

  else
  {
    v4 = 1.0;
  }

  [(_PXPhotosBarButtonView *)self setAlpha:v4];
}

- (void)_invalidateAlpha
{
  v2 = [(_PXPhotosBarButtonView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAlpha];
}

- (void)_updateButtons
{
  v3 = [(_PXPhotosBarButtonView *)self _createButtonConfiguration];
  button = self->_button;
  v8 = v3;
  if (!button)
  {
    v5 = objc_alloc_init(PXCuratedLibraryOverlayButton);
    v6 = self->_button;
    self->_button = v5;

    v7 = [(_PXPhotosBarButtonView *)self accessibilityIdentifier];
    [(PXCuratedLibraryOverlayButton *)self->_button setAccessibilityIdentifier:v7];

    v3 = v8;
    button = self->_button;
  }

  [(PXCuratedLibraryOverlayButton *)button setUserData:v3];
  [(_PXPhotosBarButtonView *)self addSubview:self->_button];
}

- (void)_invalidateButtons
{
  v2 = [(_PXPhotosBarButtonView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateButtons];
}

- (void)_resumeChangeDeliveryIfPossible
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(_PXPhotosBarButtonView *)self changeDeliveryHandle];
  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Will resume change delivery with handle: %@", buf, 0xCu);
    }

    v5 = [(_PXPhotosBarButtonView *)self viewModel];
    v6 = [v5 dataSourceManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57___PXPhotosBarButtonView__resumeChangeDeliveryIfPossible__block_invoke;
    v7[3] = &unk_1E774A6B8;
    v8 = v3;
    [v6 performChanges:v7];

    [(_PXPhotosBarButtonView *)self setChangeDeliveryHandle:0];
  }
}

- (void)_pauseChangeDelivery
{
  v16 = *MEMORY[0x1E69E9840];
  [(_PXPhotosBarButtonView *)self _resumeChangeDeliveryIfPossible];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__219425;
  v12 = __Block_byref_object_dispose__219426;
  v13 = 0;
  v3 = [(_PXPhotosBarButtonView *)self viewModel];
  v4 = [v3 dataSourceManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46___PXPhotosBarButtonView__pauseChangeDelivery__block_invoke;
  v7[3] = &unk_1E774A5C8;
  v7[4] = &v8;
  [v4 performChanges:v7];

  [(_PXPhotosBarButtonView *)self setChangeDeliveryHandle:v9[5]];
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v9[5];
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Paused change delivery with handle: %@", buf, 0xCu);
  }

  _Block_object_dispose(&v8, 8);
}

- (void)_handleWillDismissMenu
{
  [(_PXPhotosBarButtonView *)self _resumeChangeDeliveryIfPossible];
  v3 = [(_PXPhotosBarButtonView *)self viewModel];
  [v3 swift_actionMenuVisibilityChangedToVisible:0];
}

- (void)_handleWillDisplayMenu
{
  [(_PXPhotosBarButtonView *)self _pauseChangeDelivery];
  v3 = [(_PXPhotosBarButtonView *)self viewModel];
  [v3 swift_actionMenuVisibilityChangedToVisible:1];
}

- (void)_handleMenuAction
{
  v6 = [(_PXPhotosBarButtonView *)self barButtonItem];
  if ([v6 isEnabled] && -[_PXPhotosBarButtonView menuAction](self, "menuAction"))
  {
    v3 = [(_PXPhotosBarButtonView *)self target];
    v4 = [(_PXPhotosBarButtonView *)self menuAction];
    v5 = [(_PXPhotosBarButtonView *)self button];
    [v3 performSelector:v4 withObject:v5];
  }
}

- (void)_handleAction
{
  v4 = [(_PXPhotosBarButtonView *)self barButtonItem];
  if ([v4 isEnabled] && -[_PXPhotosBarButtonView action](self, "action"))
  {
    v3 = [(_PXPhotosBarButtonView *)self target];
    [v3 performSelector:-[_PXPhotosBarButtonView action](self withObject:{"action"), v4}];
  }
}

- (id)_createButtonConfiguration
{
  v4 = [(_PXPhotosBarButtonView *)self viewModel];
  v5 = [v4 libraryFilterState];
  v28 = [(_PXPhotosBarButtonView *)self specManager];
  v6 = [v28 spec];
  v29 = v5;
  v7 = [v5 viewMode];
  v8 = 1;
  if (v7 == 1)
  {
    v8 = 2;
  }

  if (v7 == 2)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  [v6 setVariant:v9];
  [v6 setEllipsisButtonSpecialTreatment:{objc_msgSend(v4, "allowsSwitchLibraryAction")}];
  v10 = [(_PXPhotosBarButtonView *)self title];
  v11 = [(_PXPhotosBarButtonView *)self systemIconImageName];
  v30 = [(_PXPhotosBarButtonView *)self tintColor];
  if ([v4 requiresLightTopBars])
  {
    v12 = 0;
  }

  else
  {
    v12 = 14;
  }

  v13 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v14 = [v4 selectionSnapshot];
  [v14 isAnyItemSelected];

  if (v10)
  {
    v15 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithTitle:v10 spec:v6, v11];
  }

  else if (v11)
  {
    v15 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithSystemImageName:v11 spec:v6, v11];
  }

  else
  {
    v16 = [(_PXPhotosBarButtonView *)self systemItem];
    if (v16 > 2)
    {
      v18 = 2;
      if (v16 == 4)
      {
        v19 = 2;
      }

      else
      {
        v19 = v12;
      }

      if (v16 != 4)
      {
        v18 = 0;
      }

      if (v16 == 3)
      {
        v17 = 3;
      }

      else
      {
        v12 = v19;
        v17 = v18;
      }
    }

    else if (v16 == 1)
    {
      if ([v4 allowsSwitchLibraryAction] && objc_msgSend(v29, "isFiltering"))
      {

        v30 = 0;
        v17 = 1;
        v12 = 13;
      }

      else
      {
        v17 = 1;
      }
    }

    else if (v16 == 2)
    {
      v12 = 2;
      v17 = 2;
    }

    else
    {
      v17 = 0;
      if (!v16)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:a2 object:self file:@"PXPhotosBarButtonItemsController.m" lineNumber:228 description:@"Code which should be unreachable has been reached"];

        abort();
      }
    }

    v15 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithButtonType:v17 spec:v6];
  }

  v20 = v15;
  objc_initWeak(location, self);
  v21 = [(_PXPhotosBarButtonView *)self barButtonItem];
  if ([v21 isEnabled])
  {
    v22 = [(_PXPhotosBarButtonView *)self action];

    if (v22)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __52___PXPhotosBarButtonView__createButtonConfiguration__block_invoke;
      v37[3] = &unk_1E774C318;
      objc_copyWeak(&v38, location);
      [v20 setActionHandler:v37];
      objc_destroyWeak(&v38);
      goto LABEL_36;
    }
  }

  else
  {
  }

  [v20 setActionHandler:0];
LABEL_36:
  v23 = [(_PXPhotosBarButtonView *)self barButtonItem];
  if ([v23 isEnabled])
  {
    v24 = [(_PXPhotosBarButtonView *)self menuAction];

    if (v24)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __52___PXPhotosBarButtonView__createButtonConfiguration__block_invoke_2;
      v35[3] = &unk_1E774C318;
      objc_copyWeak(&v36, location);
      [v20 setMenuActionHandler:v35];
      objc_destroyWeak(&v36);
      goto LABEL_41;
    }
  }

  else
  {
  }

  [v20 setMenuActionHandler:0];
LABEL_41:
  [v20 setTintColor:v30];
  [v20 setStyle:v12];
  [v20 setBackgroundColor:v13];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52___PXPhotosBarButtonView__createButtonConfiguration__block_invoke_3;
  v33[3] = &unk_1E774C318;
  objc_copyWeak(&v34, location);
  [v20 setWillDisplayMenuActionHandler:v33];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __52___PXPhotosBarButtonView__createButtonConfiguration__block_invoke_4;
  v31[3] = &unk_1E774C318;
  objc_copyWeak(&v32, location);
  [v20 setWillDismissMenuActionHandler:v31];
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(location);

  return v20;
}

- (void)setBarButtonItem:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_barButtonItem);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_barButtonItem, obj);
    [(_PXPhotosBarButtonView *)self _invalidateButtons];
    v5 = obj;
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _PXPhotosBarButtonView;
  [(_PXPhotosBarButtonView *)&v3 tintColorDidChange];
  [(_PXPhotosBarButtonView *)self _invalidateButtons];
}

- (void)layoutSubviews
{
  v3 = [(_PXPhotosBarButtonView *)self updater];
  [v3 updateIfNeeded];

  v4 = [(_PXPhotosBarButtonView *)self button];
  [(_PXPhotosBarButtonView *)self bounds];
  [v4 setFrame:?];
  [v4 setExtendedHitTestInsetsEdges:{-[_PXPhotosBarButtonView extendedHitTestInsetsEdges](self, "extendedHitTestInsetsEdges")}];
  [v4 updateHitTestInsets];
  [v4 hitTestInsets];
  [(_PXPhotosBarButtonView *)self setHitTestInsets:?];
  v5 = [(_PXPhotosBarButtonView *)self superview];
  if (layoutSubviews_onceToken != -1)
  {
    dispatch_once(&layoutSubviews_onceToken, &__block_literal_global_219434);
  }

  if (layoutSubviews_adaptorClass)
  {
    if (v5)
    {
      [v5 hitTestInsets];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [v4 hitTestInsets];
      if (v9 != v17 || v7 != v14 || v13 != v16 || v11 != v15) && (objc_opt_isKindOfClass())
      {
        [v4 hitTestInsets];
        [v5 setHitTestInsets:?];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = _PXPhotosBarButtonView;
  [(_PXPhotosBarButtonView *)&v18 layoutSubviews];
}

- (void)dealloc
{
  [(_PXPhotosBarButtonView *)self _resumeChangeDeliveryIfPossible];
  v3.receiver = self;
  v3.super_class = _PXPhotosBarButtonView;
  [(_PXPhotosBarButtonView *)&v3 dealloc];
}

- (_PXPhotosBarButtonView)initWithTitle:(id)a3 orSystemItem:(int64_t)a4 orSystemIconName:(id)a5 target:(id)a6 action:(SEL)a7 menuAction:(SEL)a8 specManager:(id)a9 viewModel:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v37 = a9;
  v19 = a10;
  v38.receiver = self;
  v38.super_class = _PXPhotosBarButtonView;
  v20 = [(_PXPhotosBarButtonView *)&v38 init];
  if (v20)
  {
    v21 = [v16 copy];
    title = v20->_title;
    v20->_title = v21;

    v20->_systemItem = a4;
    v23 = [v17 copy];
    systemIconImageName = v20->_systemIconImageName;
    v20->_systemIconImageName = v23;

    objc_storeWeak(&v20->_target, v18);
    if (a7)
    {
      v25 = a7;
    }

    else
    {
      v25 = 0;
    }

    v20->_action = v25;
    if (a8)
    {
      v26 = a8;
    }

    else
    {
      v26 = 0;
    }

    v20->_menuAction = v26;
    objc_storeStrong(&v20->_specManager, a9);
    [(_PXPhotosBarButtonSpecManager *)v20->_specManager registerChangeObserver:v20 context:SpecManagerObservationContext_219411];
    objc_storeStrong(&v20->_viewModel, a10);
    [(PXPhotosViewModel *)v20->_viewModel registerChangeObserver:v20 context:ViewModelObservationContext_219412];
    v27 = [v19 headerCustomizationModel];
    headerCustomizationModel = v20->_headerCustomizationModel;
    v20->_headerCustomizationModel = v27;

    [(PXPhotosHeaderCustomizationModel *)v20->_headerCustomizationModel registerChangeObserver:v20 context:HeaderCustomizationModelObservationContext];
    v29 = [(_PXPhotosBarButtonView *)v20 _createButtonConfiguration];
    [PXCuratedLibraryOverlayButton sizeWithConfiguration:v29];
    v31 = v30;
    v33 = v32;

    [(_PXPhotosBarButtonView *)v20 setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v31, v33];
    v34 = [[off_1E7721940 alloc] initWithTarget:v20 needsUpdateSelector:sel_setNeedsLayout];
    updater = v20->_updater;
    v20->_updater = v34;

    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateButtons needsUpdate:1];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateAlpha needsUpdate:1];
  }

  return v20;
}

@end