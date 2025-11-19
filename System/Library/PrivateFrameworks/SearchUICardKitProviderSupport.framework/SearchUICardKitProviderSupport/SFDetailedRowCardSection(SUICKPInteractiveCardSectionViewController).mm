@interface SFDetailedRowCardSection(SUICKPInteractiveCardSectionViewController)
- (BOOL)_SUICKPInteractiveCardSectionViewController_shouldHandlePunchout;
- (BOOL)_SUICKPInteractiveCardSectionViewController_shouldRenderButtonOverlay;
@end

@implementation SFDetailedRowCardSection(SUICKPInteractiveCardSectionViewController)

- (BOOL)_SUICKPInteractiveCardSectionViewController_shouldHandlePunchout
{
  v1 = [a1 userReportRequest];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)_SUICKPInteractiveCardSectionViewController_shouldRenderButtonOverlay
{
  v1 = [a1 userReportRequest];
  v2 = v1 == 0;

  return v2;
}

@end