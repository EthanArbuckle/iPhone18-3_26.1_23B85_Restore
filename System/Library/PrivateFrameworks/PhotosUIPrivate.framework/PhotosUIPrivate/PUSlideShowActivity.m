@interface PUSlideShowActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
@end

@implementation PUSlideShowActivity

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = [(PXActivity *)self itemSourceController];
  if ([v4 isPreparingIndividualItems])
  {
    v5 = [(PXActivity *)self itemSourceController];
    v6 = [v5 itemSourcesSupportSlideshow];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end