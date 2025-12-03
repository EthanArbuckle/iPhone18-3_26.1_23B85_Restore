@interface PXCuratedLibrarySecondaryToolbarController
- (BOOL)secondaryToolbarControllerToolbarRenderedExternally:(id)externally;
- (BOOL)secondaryToolbarControllerWantsPaddingAppliedToContainerAdditionalEdgeInsets:(id)insets;
- (BOOL)secondaryToolbarControllerWantsToolbarVisible:(id)visible;
- (CGSize)secondaryToolbarControllerToolbarSize:(id)size;
- (PXCuratedLibrarySecondaryToolbarController)initWithContainerView:(id)view legibilityContainerView:(id)containerView viewModel:(id)model;
- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)padding;
- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)insets;
- (UIEdgeInsets)secondaryToolbarControllerToolbarPadding:(id)padding;
- (double)secondaryToolbarControllerMaximumAccessoryViewPaddingToContentView:(id)view;
- (int64_t)secondaryToolbarControllerToolbarPlacement:(id)placement;
- (void)isShowingGradientDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXCuratedLibrarySecondaryToolbarController

- (BOOL)secondaryToolbarControllerWantsPaddingAppliedToContainerAdditionalEdgeInsets:(id)insets
{
  styleGuide = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  if ([styleGuide secondaryToolbarPlacement])
  {
    v5 = 1;
  }

  else
  {
    styleGuide2 = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
    extendedTraitCollection = [styleGuide2 extendedTraitCollection];
    v5 = [extendedTraitCollection userInterfaceIdiom] != 2;
  }

  return v5;
}

- (double)secondaryToolbarControllerMaximumAccessoryViewPaddingToContentView:(id)view
{
  styleGuide = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  [styleGuide maximumAccessoryViewPadding];
  v5 = v4;

  return v5;
}

- (BOOL)secondaryToolbarControllerWantsToolbarVisible:(id)visible
{
  viewModel = [(PXCuratedLibrarySecondaryToolbarController *)self viewModel];
  wantsSecondaryToolbarVisible = [viewModel wantsSecondaryToolbarVisible];

  return wantsSecondaryToolbarVisible;
}

- (CGSize)secondaryToolbarControllerToolbarSize:(id)size
{
  styleGuide = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  [styleGuide secondaryToolbarSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)secondaryToolbarControllerToolbarRenderedExternally:(id)externally
{
  styleGuide = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  secondaryToolbarRenderedExternally = [styleGuide secondaryToolbarRenderedExternally];

  return secondaryToolbarRenderedExternally;
}

- (int64_t)secondaryToolbarControllerToolbarPlacement:(id)placement
{
  styleGuide = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  secondaryToolbarPlacement = [styleGuide secondaryToolbarPlacement];

  if ((secondaryToolbarPlacement - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return secondaryToolbarPlacement;
  }
}

- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)padding
{
  v3 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v5 = *(off_1E7721FA8 + 2);
  v6 = *(off_1E7721FA8 + 3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerToolbarPadding:(id)padding
{
  styleGuide = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  [styleGuide secondaryToolbarPadding];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)insets
{
  styleGuide = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  [styleGuide secondaryToolbarContentInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)isShowingGradientDidChange
{
  v5.receiver = self;
  v5.super_class = PXCuratedLibrarySecondaryToolbarController;
  [(PXSecondaryToolbarController *)&v5 isShowingGradientDidChange];
  viewModel = [(PXCuratedLibrarySecondaryToolbarController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__PXCuratedLibrarySecondaryToolbarController_isShowingGradientDidChange__block_invoke;
  v4[3] = &unk_1E7748B68;
  v4[4] = self;
  [viewModel performChanges:v4];
}

void __72__PXCuratedLibrarySecondaryToolbarController_isShowingGradientDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSecondaryToolbarLegibilityGradientIsVisible:{objc_msgSend(v2, "isShowingGradient")}];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXStyleGuideObservationContext == context)
  {
    if ((changeCopy & 0x84) != 0)
    {
      [(PXSecondaryToolbarController *)self invalidatePositioning];
    }

    if ((changeCopy & 0x18) != 0)
    {
      [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
    }
  }

  else
  {
    if (PXViewModelObservationContext_230831 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySecondaryToolbarController.m" lineNumber:63 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 0x400000) != 0)
    {
      [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
    }

    if ((*&changeCopy & 0x400040) != 0)
    {
      [(PXSecondaryToolbarController *)self setNeedsUpdate];
    }
  }
}

- (PXCuratedLibrarySecondaryToolbarController)initWithContainerView:(id)view legibilityContainerView:(id)containerView viewModel:(id)model
{
  containerViewCopy = containerView;
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = PXCuratedLibrarySecondaryToolbarController;
  v10 = [(PXSecondaryToolbarController *)&v15 initWithContainerView:view styleGuideProvider:self];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_viewModel, model);
    [(PXCuratedLibraryViewModel *)v11->_viewModel registerChangeObserver:v11 context:PXViewModelObservationContext_230831];
    styleGuide = [modelCopy styleGuide];
    styleGuide = v11->_styleGuide;
    v11->_styleGuide = styleGuide;

    [(PXCuratedLibraryStyleGuide *)v11->_styleGuide registerChangeObserver:v11 context:PXStyleGuideObservationContext];
    [(PXSecondaryToolbarController *)v11 setLegibilityContainerView:containerViewCopy];
  }

  return v11;
}

@end