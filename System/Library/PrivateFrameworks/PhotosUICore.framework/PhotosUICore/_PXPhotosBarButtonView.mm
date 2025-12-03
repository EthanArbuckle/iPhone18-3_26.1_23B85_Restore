@interface _PXPhotosBarButtonView
- (SEL)action;
- (SEL)menuAction;
- (UIBarButtonItem)barButtonItem;
- (_PXPhotosBarButtonView)initWithTitle:(id)title orSystemItem:(int64_t)item orSystemIconName:(id)name target:(id)target action:(SEL)action menuAction:(SEL)menuAction specManager:(id)manager viewModel:(id)self0;
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
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAccessibilityIdentifier:(id)identifier;
- (void)setBarButtonItem:(id)item;
- (void)setExtendedHitTestInsetsEdges:(unint64_t)edges;
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

- (void)setExtendedHitTestInsetsEdges:(unint64_t)edges
{
  if (self->_extendedHitTestInsetsEdges != edges)
  {
    self->_extendedHitTestInsetsEdges = edges;
    [(_PXPhotosBarButtonView *)self setNeedsLayout];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (SpecManagerObservationContext_219411 == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    v11 = observableCopy;
    [(_PXPhotosBarButtonView *)self _invalidateButtons];
    goto LABEL_10;
  }

  if (ViewModelObservationContext_219412 == context)
  {
    if ((changeCopy & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (HeaderCustomizationModelObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarButtonItemsController.m" lineNumber:392 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 4) != 0)
  {
    v11 = observableCopy;
    [(_PXPhotosBarButtonView *)self _invalidateAlpha];
LABEL_10:
    observableCopy = v11;
  }

LABEL_11:
}

- (void)setAccessibilityIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = _PXPhotosBarButtonView;
  identifierCopy = identifier;
  [(_PXPhotosBarButtonView *)&v5 setAccessibilityIdentifier:identifierCopy];
  [(PXCuratedLibraryOverlayButton *)self->_button setAccessibilityIdentifier:identifierCopy, v5.receiver, v5.super_class];
}

- (void)_updateAlpha
{
  headerCustomizationModel = [(_PXPhotosBarButtonView *)self headerCustomizationModel];
  v5 = headerCustomizationModel;
  if (headerCustomizationModel)
  {
    [headerCustomizationModel alpha];
  }

  else
  {
    v4 = 1.0;
  }

  [(_PXPhotosBarButtonView *)self setAlpha:v4];
}

- (void)_invalidateAlpha
{
  updater = [(_PXPhotosBarButtonView *)self updater];
  [updater setNeedsUpdateOf:sel__updateAlpha];
}

- (void)_updateButtons
{
  _createButtonConfiguration = [(_PXPhotosBarButtonView *)self _createButtonConfiguration];
  button = self->_button;
  v8 = _createButtonConfiguration;
  if (!button)
  {
    v5 = objc_alloc_init(PXCuratedLibraryOverlayButton);
    v6 = self->_button;
    self->_button = v5;

    accessibilityIdentifier = [(_PXPhotosBarButtonView *)self accessibilityIdentifier];
    [(PXCuratedLibraryOverlayButton *)self->_button setAccessibilityIdentifier:accessibilityIdentifier];

    _createButtonConfiguration = v8;
    button = self->_button;
  }

  [(PXCuratedLibraryOverlayButton *)button setUserData:_createButtonConfiguration];
  [(_PXPhotosBarButtonView *)self addSubview:self->_button];
}

- (void)_invalidateButtons
{
  updater = [(_PXPhotosBarButtonView *)self updater];
  [updater setNeedsUpdateOf:sel__updateButtons];
}

- (void)_resumeChangeDeliveryIfPossible
{
  v11 = *MEMORY[0x1E69E9840];
  changeDeliveryHandle = [(_PXPhotosBarButtonView *)self changeDeliveryHandle];
  if (changeDeliveryHandle)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = changeDeliveryHandle;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Will resume change delivery with handle: %@", buf, 0xCu);
    }

    viewModel = [(_PXPhotosBarButtonView *)self viewModel];
    dataSourceManager = [viewModel dataSourceManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57___PXPhotosBarButtonView__resumeChangeDeliveryIfPossible__block_invoke;
    v7[3] = &unk_1E774A6B8;
    v8 = changeDeliveryHandle;
    [dataSourceManager performChanges:v7];

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
  viewModel = [(_PXPhotosBarButtonView *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46___PXPhotosBarButtonView__pauseChangeDelivery__block_invoke;
  v7[3] = &unk_1E774A5C8;
  v7[4] = &v8;
  [dataSourceManager performChanges:v7];

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
  viewModel = [(_PXPhotosBarButtonView *)self viewModel];
  [viewModel swift_actionMenuVisibilityChangedToVisible:0];
}

- (void)_handleWillDisplayMenu
{
  [(_PXPhotosBarButtonView *)self _pauseChangeDelivery];
  viewModel = [(_PXPhotosBarButtonView *)self viewModel];
  [viewModel swift_actionMenuVisibilityChangedToVisible:1];
}

- (void)_handleMenuAction
{
  barButtonItem = [(_PXPhotosBarButtonView *)self barButtonItem];
  if ([barButtonItem isEnabled] && -[_PXPhotosBarButtonView menuAction](self, "menuAction"))
  {
    target = [(_PXPhotosBarButtonView *)self target];
    menuAction = [(_PXPhotosBarButtonView *)self menuAction];
    button = [(_PXPhotosBarButtonView *)self button];
    [target performSelector:menuAction withObject:button];
  }
}

- (void)_handleAction
{
  barButtonItem = [(_PXPhotosBarButtonView *)self barButtonItem];
  if ([barButtonItem isEnabled] && -[_PXPhotosBarButtonView action](self, "action"))
  {
    target = [(_PXPhotosBarButtonView *)self target];
    [target performSelector:-[_PXPhotosBarButtonView action](self withObject:{"action"), barButtonItem}];
  }
}

- (id)_createButtonConfiguration
{
  viewModel = [(_PXPhotosBarButtonView *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  specManager = [(_PXPhotosBarButtonView *)self specManager];
  spec = [specManager spec];
  v29 = libraryFilterState;
  viewMode = [libraryFilterState viewMode];
  v8 = 1;
  if (viewMode == 1)
  {
    v8 = 2;
  }

  if (viewMode == 2)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  [spec setVariant:v9];
  [spec setEllipsisButtonSpecialTreatment:{objc_msgSend(viewModel, "allowsSwitchLibraryAction")}];
  title = [(_PXPhotosBarButtonView *)self title];
  systemIconImageName = [(_PXPhotosBarButtonView *)self systemIconImageName];
  tintColor = [(_PXPhotosBarButtonView *)self tintColor];
  if ([viewModel requiresLightTopBars])
  {
    v12 = 0;
  }

  else
  {
    v12 = 14;
  }

  tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  selectionSnapshot = [viewModel selectionSnapshot];
  [selectionSnapshot isAnyItemSelected];

  if (title)
  {
    v15 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithTitle:title spec:spec, systemIconImageName];
  }

  else if (systemIconImageName)
  {
    v15 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithSystemImageName:systemIconImageName spec:spec, systemIconImageName];
  }

  else
  {
    systemItem = [(_PXPhotosBarButtonView *)self systemItem];
    if (systemItem > 2)
    {
      v18 = 2;
      if (systemItem == 4)
      {
        v19 = 2;
      }

      else
      {
        v19 = v12;
      }

      if (systemItem != 4)
      {
        v18 = 0;
      }

      if (systemItem == 3)
      {
        v17 = 3;
      }

      else
      {
        v12 = v19;
        v17 = v18;
      }
    }

    else if (systemItem == 1)
    {
      if ([viewModel allowsSwitchLibraryAction] && objc_msgSend(v29, "isFiltering"))
      {

        tintColor = 0;
        v17 = 1;
        v12 = 13;
      }

      else
      {
        v17 = 1;
      }
    }

    else if (systemItem == 2)
    {
      v12 = 2;
      v17 = 2;
    }

    else
    {
      v17 = 0;
      if (!systemItem)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarButtonItemsController.m" lineNumber:228 description:@"Code which should be unreachable has been reached"];

        abort();
      }
    }

    v15 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithButtonType:v17 spec:spec];
  }

  v20 = v15;
  objc_initWeak(location, self);
  barButtonItem = [(_PXPhotosBarButtonView *)self barButtonItem];
  if ([barButtonItem isEnabled])
  {
    action = [(_PXPhotosBarButtonView *)self action];

    if (action)
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
  barButtonItem2 = [(_PXPhotosBarButtonView *)self barButtonItem];
  if ([barButtonItem2 isEnabled])
  {
    menuAction = [(_PXPhotosBarButtonView *)self menuAction];

    if (menuAction)
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
  [v20 setTintColor:tintColor];
  [v20 setStyle:v12];
  [v20 setBackgroundColor:tertiarySystemFillColor];
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

- (void)setBarButtonItem:(id)item
{
  obj = item;
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
  updater = [(_PXPhotosBarButtonView *)self updater];
  [updater updateIfNeeded];

  button = [(_PXPhotosBarButtonView *)self button];
  [(_PXPhotosBarButtonView *)self bounds];
  [button setFrame:?];
  [button setExtendedHitTestInsetsEdges:{-[_PXPhotosBarButtonView extendedHitTestInsetsEdges](self, "extendedHitTestInsetsEdges")}];
  [button updateHitTestInsets];
  [button hitTestInsets];
  [(_PXPhotosBarButtonView *)self setHitTestInsets:?];
  superview = [(_PXPhotosBarButtonView *)self superview];
  if (layoutSubviews_onceToken != -1)
  {
    dispatch_once(&layoutSubviews_onceToken, &__block_literal_global_219434);
  }

  if (layoutSubviews_adaptorClass)
  {
    if (superview)
    {
      [superview hitTestInsets];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [button hitTestInsets];
      if (v9 != v17 || v7 != v14 || v13 != v16 || v11 != v15) && (objc_opt_isKindOfClass())
      {
        [button hitTestInsets];
        [superview setHitTestInsets:?];
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

- (_PXPhotosBarButtonView)initWithTitle:(id)title orSystemItem:(int64_t)item orSystemIconName:(id)name target:(id)target action:(SEL)action menuAction:(SEL)menuAction specManager:(id)manager viewModel:(id)self0
{
  titleCopy = title;
  nameCopy = name;
  targetCopy = target;
  managerCopy = manager;
  modelCopy = model;
  v38.receiver = self;
  v38.super_class = _PXPhotosBarButtonView;
  v20 = [(_PXPhotosBarButtonView *)&v38 init];
  if (v20)
  {
    v21 = [titleCopy copy];
    title = v20->_title;
    v20->_title = v21;

    v20->_systemItem = item;
    v23 = [nameCopy copy];
    systemIconImageName = v20->_systemIconImageName;
    v20->_systemIconImageName = v23;

    objc_storeWeak(&v20->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v20->_action = actionCopy;
    if (menuAction)
    {
      menuActionCopy = menuAction;
    }

    else
    {
      menuActionCopy = 0;
    }

    v20->_menuAction = menuActionCopy;
    objc_storeStrong(&v20->_specManager, manager);
    [(_PXPhotosBarButtonSpecManager *)v20->_specManager registerChangeObserver:v20 context:SpecManagerObservationContext_219411];
    objc_storeStrong(&v20->_viewModel, model);
    [(PXPhotosViewModel *)v20->_viewModel registerChangeObserver:v20 context:ViewModelObservationContext_219412];
    headerCustomizationModel = [modelCopy headerCustomizationModel];
    headerCustomizationModel = v20->_headerCustomizationModel;
    v20->_headerCustomizationModel = headerCustomizationModel;

    [(PXPhotosHeaderCustomizationModel *)v20->_headerCustomizationModel registerChangeObserver:v20 context:HeaderCustomizationModelObservationContext];
    _createButtonConfiguration = [(_PXPhotosBarButtonView *)v20 _createButtonConfiguration];
    [PXCuratedLibraryOverlayButton sizeWithConfiguration:_createButtonConfiguration];
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