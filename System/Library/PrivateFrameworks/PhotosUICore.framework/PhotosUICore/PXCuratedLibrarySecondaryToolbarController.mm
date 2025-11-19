@interface PXCuratedLibrarySecondaryToolbarController
- (BOOL)secondaryToolbarControllerToolbarRenderedExternally:(id)a3;
- (BOOL)secondaryToolbarControllerWantsPaddingAppliedToContainerAdditionalEdgeInsets:(id)a3;
- (BOOL)secondaryToolbarControllerWantsToolbarVisible:(id)a3;
- (CGSize)secondaryToolbarControllerToolbarSize:(id)a3;
- (PXCuratedLibrarySecondaryToolbarController)initWithContainerView:(id)a3 legibilityContainerView:(id)a4 viewModel:(id)a5;
- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)a3;
- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)a3;
- (UIEdgeInsets)secondaryToolbarControllerToolbarPadding:(id)a3;
- (double)secondaryToolbarControllerMaximumAccessoryViewPaddingToContentView:(id)a3;
- (int64_t)secondaryToolbarControllerToolbarPlacement:(id)a3;
- (void)isShowingGradientDidChange;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXCuratedLibrarySecondaryToolbarController

- (BOOL)secondaryToolbarControllerWantsPaddingAppliedToContainerAdditionalEdgeInsets:(id)a3
{
  v4 = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  if ([v4 secondaryToolbarPlacement])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
    v7 = [v6 extendedTraitCollection];
    v5 = [v7 userInterfaceIdiom] != 2;
  }

  return v5;
}

- (double)secondaryToolbarControllerMaximumAccessoryViewPaddingToContentView:(id)a3
{
  v3 = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  [v3 maximumAccessoryViewPadding];
  v5 = v4;

  return v5;
}

- (BOOL)secondaryToolbarControllerWantsToolbarVisible:(id)a3
{
  v3 = [(PXCuratedLibrarySecondaryToolbarController *)self viewModel];
  v4 = [v3 wantsSecondaryToolbarVisible];

  return v4;
}

- (CGSize)secondaryToolbarControllerToolbarSize:(id)a3
{
  v3 = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  [v3 secondaryToolbarSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)secondaryToolbarControllerToolbarRenderedExternally:(id)a3
{
  v3 = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  v4 = [v3 secondaryToolbarRenderedExternally];

  return v4;
}

- (int64_t)secondaryToolbarControllerToolbarPlacement:(id)a3
{
  v3 = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  v4 = [v3 secondaryToolbarPlacement];

  if ((v4 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)a3
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

- (UIEdgeInsets)secondaryToolbarControllerToolbarPadding:(id)a3
{
  v3 = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  [v3 secondaryToolbarPadding];
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

- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)a3
{
  v3 = [(PXCuratedLibrarySecondaryToolbarController *)self styleGuide];
  [v3 secondaryToolbarContentInsets];
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
  v3 = [(PXCuratedLibrarySecondaryToolbarController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__PXCuratedLibrarySecondaryToolbarController_isShowingGradientDidChange__block_invoke;
  v4[3] = &unk_1E7748B68;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __72__PXCuratedLibrarySecondaryToolbarController_isShowingGradientDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSecondaryToolbarLegibilityGradientIsVisible:{objc_msgSend(v2, "isShowingGradient")}];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v10 = a3;
  if (PXStyleGuideObservationContext == a5)
  {
    if ((v6 & 0x84) != 0)
    {
      [(PXSecondaryToolbarController *)self invalidatePositioning];
    }

    if ((v6 & 0x18) != 0)
    {
      [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
    }
  }

  else
  {
    if (PXViewModelObservationContext_230831 != a5)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySecondaryToolbarController.m" lineNumber:63 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((v6 & 0x400000) != 0)
    {
      [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
    }

    if ((*&v6 & 0x400040) != 0)
    {
      [(PXSecondaryToolbarController *)self setNeedsUpdate];
    }
  }
}

- (PXCuratedLibrarySecondaryToolbarController)initWithContainerView:(id)a3 legibilityContainerView:(id)a4 viewModel:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = PXCuratedLibrarySecondaryToolbarController;
  v10 = [(PXSecondaryToolbarController *)&v15 initWithContainerView:a3 styleGuideProvider:self];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_viewModel, a5);
    [(PXCuratedLibraryViewModel *)v11->_viewModel registerChangeObserver:v11 context:PXViewModelObservationContext_230831];
    v12 = [v9 styleGuide];
    styleGuide = v11->_styleGuide;
    v11->_styleGuide = v12;

    [(PXCuratedLibraryStyleGuide *)v11->_styleGuide registerChangeObserver:v11 context:PXStyleGuideObservationContext];
    [(PXSecondaryToolbarController *)v11 setLegibilityContainerView:v8];
  }

  return v11;
}

@end