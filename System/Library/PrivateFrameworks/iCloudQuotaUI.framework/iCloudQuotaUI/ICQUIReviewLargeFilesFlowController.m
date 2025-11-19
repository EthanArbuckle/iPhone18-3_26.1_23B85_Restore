@interface ICQUIReviewLargeFilesFlowController
- (CGSize)preferredContentSize;
- (RecommendationFlowControllerDelegate)cloudRecommendationsDelegate;
- (void)presentationControllerDidDismiss:(id)a3;
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
  v2 = self;
  ICQUIReviewLargeFilesFlowController.viewDidLoad()();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo35ICQUIReviewLargeFilesFlowControllerC13iCloudQuotaUIE012presentationE10DidDismissyySo014UIPresentationE0CF_0();
}

@end