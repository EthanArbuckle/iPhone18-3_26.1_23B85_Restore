@interface UIKitCardItem
- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3;
@end

@implementation UIKitCardItem

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D80727E4(v4);
}

- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D8072C50(v4);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D8072EDC();
}

@end