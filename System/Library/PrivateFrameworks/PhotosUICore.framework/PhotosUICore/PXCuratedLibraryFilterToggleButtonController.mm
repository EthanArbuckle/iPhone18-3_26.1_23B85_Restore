@interface PXCuratedLibraryFilterToggleButtonController
+ (id)foregroundColorOverLegibilityGradient:(BOOL)a3;
- (BOOL)isUsingCustomSortOrder;
- (BOOL)shouldHideButton;
- (PXCuratedLibraryFilterToggleButtonController)initWithButtonConfiguration:(id)a3 roundedButton:(BOOL)a4;
- (PXCuratedLibraryFilterToggleButtonController)initWithViewModel:(id)a3 buttonConfiguration:(id)a4;
- (id)allMenuItems;
- (id)filterInlineMenuItems;
- (id)filterMenuItems;
- (id)filterMenuSubtitle;
- (id)viewOptionsMenuItems;
- (id)viewOptionsMenuSubtitle;
- (void)_updateContentFilterState;
- (void)_updateLibraryState;
- (void)_updateStyling;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXCuratedLibraryFilterToggleButtonController

- (BOOL)isUsingCustomSortOrder
{
  v2 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  v3 = [v2 viewOptionsModel];
  v4 = [v3 sortOrderState];
  v5 = [v4 sortOrder] != 1;

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
    v4 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
    if ([v4 zoomLevel] == 4)
    {
      v5 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
      if ([v5 shouldShowEmptyPlaceholder])
      {
        v6 = [(PXContentFilterToggleButtonController *)self libraryFilterState];
        v3 = [v6 isFiltering] ^ 1;
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
  v5 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  v3 = [v5 libraryFilterState];
  v4 = [v3 copy];
  [(PXContentFilterToggleButtonController *)self setLibraryFilterState:v4];
}

- (void)_updateContentFilterState
{
  v3 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  v7 = [v3 currentContentFilterState];

  v4 = [(PXContentFilterToggleButtonController *)self contentFilterState];
  if ([v4 showOnlyScreenshots] && (objc_msgSend(v7, "showOnlyScreenshots") & 1) == 0)
  {
    v5 = [v7 shouldExcludeScreenshots];

    [(PXContentFilterToggleButtonController *)self setContentFilterState:v7];
    if (v5)
    {
      v6 = +[PXGridTipsHelper filterScreenshotsHiddenTipID];
      [PXGridTipsHelper setTip:v6 isPresentable:1];
    }
  }

  else
  {

    [(PXContentFilterToggleButtonController *)self setContentFilterState:v7];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v10 = a3;
  if (PXCuratedLibraryViewModelObserverContext_152064 == a5)
  {
    if ((a4 & 0x10) != 0)
    {
      [(PXCuratedLibraryFilterToggleButtonController *)self _updateLibraryState];
      [(PXContentFilterToggleButtonController *)self invalidateButton];
      if ((a4 & 0x2000000) == 0)
      {
LABEL_9:
        if ((a4 & 0x400000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((a4 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    [(PXCuratedLibraryFilterToggleButtonController *)self _updateContentFilterState];
    if ((a4 & 0x400000000) == 0)
    {
LABEL_11:
      if ((a4 & 0x10004) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_10:
    [(PXCuratedLibraryFilterToggleButtonController *)self _updateStyling];
    goto LABEL_11;
  }

  if (PXCuratedLibraryZoomablePhotosViewModelObserverContext == a5)
  {
    goto LABEL_5;
  }

  if (PXSharedLibraryStatusProviderObservationContext_152065 != a5)
  {
    if (PXLibraryFilterStateObservationContext_152066 != a5)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterToggleButtonController.m" lineNumber:184 description:@"Code which should be unreachable has been reached"];

      abort();
    }

LABEL_5:
    if ((a4 & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    [(PXContentFilterToggleButtonController *)self invalidateButtonMenu];
    goto LABEL_13;
  }

  if ((a4 & 3) != 0)
  {
    [(PXCuratedLibraryFilterToggleButtonController *)self _updateLibraryState];
  }

LABEL_13:
}

- (id)allMenuItems
{
  v4 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];

  if (!v4)
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_9;
  }

  v5 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  v6 = [v5 actionManager];
  v7 = [v6 actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  if (!v7)
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  v8 = [(PXContentFilterToggleButtonController *)self button];
  [v7 setSender:v8];

  v9 = [v7 menuElement];
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterToggleButtonController.m" lineNumber:130 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"filterMenuElement", v15}];
LABEL_14:

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v17 = [v9 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterToggleButtonController.m" lineNumber:130 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"filterMenuElement", v15, v17}];

    goto LABEL_14;
  }

LABEL_5:
  v10 = [v9 children];
  v11 = [v10 copy];

LABEL_8:
LABEL_9:

  return v11;
}

- (id)viewOptionsMenuSubtitle
{
  v2 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  v3 = [v2 actionManager];
  v4 = [v3 actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  v5 = [v4 viewOptionsMenuSubtitle];

  return v5;
}

- (id)viewOptionsMenuItems
{
  v2 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  v3 = [v2 actionManager];
  v4 = [v3 actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  v5 = [v4 viewOptionsMenuItems];

  return v5;
}

- (id)filterMenuSubtitle
{
  v2 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  v3 = [v2 actionManager];
  v4 = [v3 actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  v5 = [v4 filterMenuSubtitle];

  return v5;
}

- (id)filterMenuItems
{
  v2 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  v3 = [v2 actionManager];
  v4 = [v3 actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  v5 = [v4 filterMenuItems];

  return v5;
}

- (id)filterInlineMenuItems
{
  v2 = [(PXCuratedLibraryFilterToggleButtonController *)self viewModel];
  v3 = [v2 actionManager];
  v4 = [v3 actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];

  v5 = [v4 filterInlineMenuItems];

  return v5;
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

- (PXCuratedLibraryFilterToggleButtonController)initWithButtonConfiguration:(id)a3 roundedButton:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterToggleButtonController.m" lineNumber:66 description:{@"%s is not available as initializer", "-[PXCuratedLibraryFilterToggleButtonController initWithButtonConfiguration:roundedButton:]"}];

  abort();
}

- (PXCuratedLibraryFilterToggleButtonController)initWithViewModel:(id)a3 buttonConfiguration:(id)a4
{
  v7 = a3;
  v18.receiver = self;
  v18.super_class = PXCuratedLibraryFilterToggleButtonController;
  v8 = [(PXContentFilterToggleButtonController *)&v18 initWithButtonConfiguration:a4 roundedButton:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, a3);
    [(PXCuratedLibraryViewModel *)v9->_viewModel registerChangeObserver:v9 context:PXCuratedLibraryViewModelObserverContext_152064];
    v10 = [(PXCuratedLibraryViewModel *)v9->_viewModel zoomablePhotosViewModel];
    [v10 registerChangeObserver:v9 context:PXCuratedLibraryZoomablePhotosViewModelObserverContext];

    v11 = [(PXCuratedLibraryViewModel *)v9->_viewModel photoLibrary];
    v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v11];
    sharedLibraryStatusProvider = v9->_sharedLibraryStatusProvider;
    v9->_sharedLibraryStatusProvider = v12;

    [(PXSharedLibraryStatusProvider *)v9->_sharedLibraryStatusProvider registerChangeObserver:v9 context:PXSharedLibraryStatusProviderObservationContext_152065];
    v14 = [(PXCuratedLibraryViewModel *)v9->_viewModel libraryFilterState];
    [v14 registerChangeObserver:v9 context:PXLibraryFilterStateObservationContext_152066];

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

+ (id)foregroundColorOverLegibilityGradient:(BOOL)a3
{
  if (a3)
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