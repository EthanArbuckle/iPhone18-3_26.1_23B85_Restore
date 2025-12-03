@interface SummaryModal
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation SummaryModal

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  SummaryModal.presentationControllerDidDismiss(_:)(selfCopy);
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  v9 = SummaryModal.adaptivePresentationStyle(for:traitCollection:)(selfCopy, collectionCopy);

  return v9;
}

@end