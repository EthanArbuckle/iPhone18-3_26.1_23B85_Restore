@interface UIKitCardItem
- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)frame;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier;
@end

@implementation UIKitCardItem

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_1D80727E4(identifierCopy);
}

- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)frame
{
  frameCopy = frame;
  selfCopy = self;
  sub_1D8072C50(frameCopy);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1D8072EDC();
}

@end