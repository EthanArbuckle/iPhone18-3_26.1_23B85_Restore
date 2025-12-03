@interface SFDetailedRowCardSection(SUICKPInteractiveCardSectionViewController)
- (BOOL)_SUICKPInteractiveCardSectionViewController_shouldHandlePunchout;
- (BOOL)_SUICKPInteractiveCardSectionViewController_shouldRenderButtonOverlay;
@end

@implementation SFDetailedRowCardSection(SUICKPInteractiveCardSectionViewController)

- (BOOL)_SUICKPInteractiveCardSectionViewController_shouldHandlePunchout
{
  userReportRequest = [self userReportRequest];
  v2 = userReportRequest != 0;

  return v2;
}

- (BOOL)_SUICKPInteractiveCardSectionViewController_shouldRenderButtonOverlay
{
  userReportRequest = [self userReportRequest];
  v2 = userReportRequest == 0;

  return v2;
}

@end