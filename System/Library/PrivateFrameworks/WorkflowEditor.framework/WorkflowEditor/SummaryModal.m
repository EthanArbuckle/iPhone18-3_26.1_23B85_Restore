@interface SummaryModal
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation SummaryModal

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  SummaryModal.presentationControllerDidDismiss(_:)(v5);
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = SummaryModal.adaptivePresentationStyle(for:traitCollection:)(v8, v7);

  return v9;
}

@end