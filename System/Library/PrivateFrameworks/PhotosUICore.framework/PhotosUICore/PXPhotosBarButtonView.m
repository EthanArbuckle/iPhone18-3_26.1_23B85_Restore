@interface PXPhotosBarButtonView
@end

@implementation PXPhotosBarButtonView

void __46___PXPhotosBarButtonView__pauseChangeDelivery__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pauseChangeDeliveryWithTimeout:@"PauseChangeDeliveryForContextMenu" identifier:10.0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __52___PXPhotosBarButtonView__createButtonConfiguration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAction];
}

void __52___PXPhotosBarButtonView__createButtonConfiguration__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMenuAction];
}

void __52___PXPhotosBarButtonView__createButtonConfiguration__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWillDisplayMenu];
}

void __52___PXPhotosBarButtonView__createButtonConfiguration__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWillDismissMenu];
}

Class __40___PXPhotosBarButtonView_layoutSubviews__block_invoke()
{
  result = NSClassFromString(&cfstr_Uitamicadaptor.isa);
  layoutSubviews_adaptorClass = result;
  if (!result)
  {
    PXAssertGetLog();
  }

  return result;
}

@end