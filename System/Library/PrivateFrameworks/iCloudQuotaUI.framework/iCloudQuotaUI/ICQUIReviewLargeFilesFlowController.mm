@interface ICQUIReviewLargeFilesFlowController
- (CGSize)preferredContentSize;
- (RecommendationFlowControllerDelegate)cloudRecommendationsDelegate;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation ICQUIReviewLargeFilesFlowController

- (CGSize)preferredContentSize
{
  [MEMORY[0x277D75D28] ICQUIUpsellPrefferredPresentationSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (RecommendationFlowControllerDelegate)cloudRecommendationsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudRecommendationsDelegate);

  return WeakRetained;
}

- (void)viewDidLoad
{
  selfCopy = self;
  ICQUIReviewLargeFilesFlowController.viewDidLoad()();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  _sSo35ICQUIReviewLargeFilesFlowControllerC13iCloudQuotaUIE012presentationE10DidDismissyySo014UIPresentationE0CF_0();
}

@end