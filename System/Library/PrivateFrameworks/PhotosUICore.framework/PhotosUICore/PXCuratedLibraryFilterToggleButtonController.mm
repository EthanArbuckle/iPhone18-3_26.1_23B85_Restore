@interface PXCuratedLibraryFilterToggleButtonController
+ (id)foregroundColorOverLegibilityGradient:(BOOL)gradient;
- (BOOL)isUsingCustomSortOrder;
- (BOOL)shouldHideButton;
- (PXCuratedLibraryFilterToggleButtonController)initWithButtonConfiguration:(id)configuration roundedButton:(BOOL)button;
- (PXCuratedLibraryFilterToggleButtonController)initWithViewModel:(id)model buttonConfiguration:(id)configuration;
- (id)allMenuItems;
- (id)filterInlineMenuItems;
- (id)filterMenuItems;
- (id)filterMenuSubtitle;
- (id)viewOptionsMenuItems;
- (id)viewOptionsMenuSubtitle;
- (void)_updateContentFilterState;
- (void)_updateLibraryState;
- (void)_updateStyling;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXCuratedLibraryFilterToggleButtonController

- (BOOL)isUsingCustomSortOrder
{
  viewModel = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  viewOptionsModel = [viewModel viewOptionsModel];
  sortOrderState = [viewOptionsModel sortOrderState];
  v5 = [sortOrderState sortOrder] != 1;

  return v5;
}

- (BOOL)shouldHideButton
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryFilterToggleButtonController;
  if ([(PXContentFilterToggleButtonController *)&v8 shouldHideButton])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    viewModel = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
    if ([viewModel zoomLevel] == 4)
    {
      viewModel2 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
      if ([viewModel2 shouldShowEmptyPlaceholder])
      {
        libraryFilterState = [(PXContentFilterToggleButtonController *)self libraryFilterState];
        v3 = [libraryFilterState isFiltering] ^ 1;
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)_updateLibraryState
{
  viewModel = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  v4 = [libraryFilterState copy];
  [(PXContentFilterToggleButtonController *)self setLibraryFilterState:v4];
}

- (void)_updateContentFilterState
{
  viewModel = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  currentContentFilterState = [viewModel currentContentFilterState];

  contentFilterState = [(PXContentFilterToggleButtonController *)self contentFilterState];
  if ([contentFilterState showOnlyScreenshots] && (objc_msgSend(currentContentFilterState, "showOnlyScreenshots") & 1) == 0)
  {
    shouldExcludeScreenshots = [currentContentFilterState shouldExcludeScreenshots];

    [(PXContentFilterToggleButtonController *)self setContentFilterState:currentContentFilterState];
    if (shouldExcludeScreenshots)
    {
      v6 = +[PXGridTipsHelper filterScreenshotsHiddenTipID];
      [PXGridTipsHelper setTip:v6 isPresentable:1];
    }
  }

  else
  {

    [(PXContentFilterToggleButtonController *)self setContentFilterState:currentContentFilterState];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXCuratedLibraryViewModelObserverContext_152064 == context)
  {
    if ((change & 0x10) != 0)
    {
      [(PXCuratedLibraryFilterToggleButtonController *)self _updateLibraryState];
      [(PXContentFilterToggleButtonController *)self invalidateButton];
      if ((change & 0x2000000) == 0)
      {
LABEL_9:
        if ((change & 0x400000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((change & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    [(PXCuratedLibraryFilterToggleButtonController *)self _updateContentFilterState];
    if ((change & 0x400000000) == 0)
    {
LABEL_11:
      if ((change & 0x10004) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_10:
    [(PXCuratedLibraryFilterToggleButtonController *)self _updateStyling];
    goto LABEL_11;
  }

  if (PXCuratedLibraryZoomablePhotosViewModelObserverContext == context)
  {
    goto LABEL_5;
  }

  if (PXSharedLibraryStatusProviderObservationContext_152065 != context)
  {
    if (PXLibraryFilterStateObservationContext_152066 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterToggleButtonController.m" lineNumber:184 description:@"Code which should be unreachable has been reached"];

      abort();
    }

LABEL_5:
    if ((change & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    [(PXContentFilterToggleButtonController *)self invalidateButtonMenu];
    goto LABEL_13;
  }

  if ((change & 3) != 0)
  {
    [(PXCuratedLibraryFilterToggleButtonController *)self _updateLibraryState];
  }

LABEL_13:
}

- (id)allMenuItems
{
  viewModel = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];

  if (!viewModel)
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_9;
  }

  viewModel2 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  actionManager = [viewModel2 actionManager];
  v7 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  if (!v7)
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  button = [(PXContentFilterToggleButtonController *)self button];
  [v7 setSender:button];

  menuElement = [v7 menuElement];
  if (!menuElement)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterToggleButtonController.m" lineNumber:130 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"filterMenuElement", v15}];
LABEL_14:

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [menuElement px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterToggleButtonController.m" lineNumber:130 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"filterMenuElement", v15, px_descriptionForAssertionMessage}];

    goto LABEL_14;
  }

LABEL_5:
  children = [menuElement children];
  v11 = [children copy];

LABEL_8:
LABEL_9:

  return v11;
}

- (id)viewOptionsMenuSubtitle
{
  viewModel = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  actionManager = [viewModel actionManager];
  v4 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  viewOptionsMenuSubtitle = [v4 viewOptionsMenuSubtitle];

  return viewOptionsMenuSubtitle;
}

- (id)viewOptionsMenuItems
{
  viewModel = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  actionManager = [viewModel actionManager];
  v4 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  viewOptionsMenuItems = [v4 viewOptionsMenuItems];

  return viewOptionsMenuItems;
}

- (id)filterMenuSubtitle
{
  viewModel = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  actionManager = [viewModel actionManager];
  v4 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  filterMenuSubtitle = [v4 filterMenuSubtitle];

  return filterMenuSubtitle;
}

- (id)filterMenuItems
{
  viewModel = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  actionManager = [viewModel actionManager];
  v4 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  filterMenuItems = [v4 filterMenuItems];

  return filterMenuItems;
}

- (id)filterInlineMenuItems
{
  viewModel = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  actionManager = [viewModel actionManager];
  v4 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  filterInlineMenuItems = [v4 filterInlineMenuItems];

  return filterInlineMenuItems;
}

- (void)_updateStyling
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__PXCuratedLibraryFilterToggleButtonController__updateStyling__block_invoke;
  v2[3] = &unk_1E774C648;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v2 options:0 animations:0.3 completion:0.0];
}

uint64_t __62__PXCuratedLibraryFilterToggleButtonController__updateStyling__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__PXCuratedLibraryFilterToggleButtonController__updateStyling__block_invoke_2;
  v3[3] = &unk_1E773DE58;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

void __62__PXCuratedLibraryFilterToggleButtonController__updateStyling__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 viewModel];
  v4 = +[PXCuratedLibraryFilterToggleButtonController foregroundColorOverLegibilityGradient:](PXCuratedLibraryFilterToggleButtonController, "foregroundColorOverLegibilityGradient:", [v5 secondaryToolbarLegibilityGradientIsVisible]);
  [v3 setSecondaryTintColor:v4];
}

- (PXCuratedLibraryFilterToggleButtonController)initWithButtonConfiguration:(id)configuration roundedButton:(BOOL)button
{
  configurationCopy = configuration;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterToggleButtonController.m" lineNumber:66 description:{@"%s is not available as initializer", "-[PXCuratedLibraryFilterToggleButtonController initWithButtonConfiguration:roundedButton:]"}];

  abort();
}

- (PXCuratedLibraryFilterToggleButtonController)initWithViewModel:(id)model buttonConfiguration:(id)configuration
{
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = PXCuratedLibraryFilterToggleButtonController;
  v8 = [(PXContentFilterToggleButtonController *)&v18 initWithButtonConfiguration:configuration roundedButton:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, model);
    [(PXCuratedLibraryViewModel *)v9->_viewModel registerChangeObserver:v9 context:PXCuratedLibraryViewModelObserverContext_152064];
    zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)v9->_viewModel zoomablePhotosViewModel];
    [zoomablePhotosViewModel registerChangeObserver:v9 context:PXCuratedLibraryZoomablePhotosViewModelObserverContext];

    photoLibrary = [(PXCuratedLibraryViewModel *)v9->_viewModel photoLibrary];
    v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];
    sharedLibraryStatusProvider = v9->_sharedLibraryStatusProvider;
    v9->_sharedLibraryStatusProvider = v12;

    [(PXSharedLibraryStatusProvider *)v9->_sharedLibraryStatusProvider registerChangeObserver:v9 context:PXSharedLibraryStatusProviderObservationContext_152065];
    libraryFilterState = [(PXCuratedLibraryViewModel *)v9->_viewModel libraryFilterState];
    [libraryFilterState registerChangeObserver:v9 context:PXLibraryFilterStateObservationContext_152066];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__PXCuratedLibraryFilterToggleButtonController_initWithViewModel_buttonConfiguration___block_invoke;
    v16[3] = &unk_1E773DE58;
    v17 = v9;
    [(PXContentFilterToggleButtonController *)v17 performChanges:v16];
  }

  return v9;
}

uint64_t __86__PXCuratedLibraryFilterToggleButtonController_initWithViewModel_buttonConfiguration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLibraryState];
  v2 = *(a1 + 32);

  return [v2 _updateContentFilterState];
}

+ (id)foregroundColorOverLegibilityGradient:(BOOL)gradient
{
  if (gradient)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v3 = ;

  return v3;
}

@end