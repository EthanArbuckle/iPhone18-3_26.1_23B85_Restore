@interface PUSlideShowActivity
- (BOOL)canPerformWithActivityItems:(id)items;
@end

@implementation PUSlideShowActivity

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  if ([itemSourceController isPreparingIndividualItems])
  {
    itemSourceController2 = [(PXActivity *)self itemSourceController];
    itemSourcesSupportSlideshow = [itemSourceController2 itemSourcesSupportSlideshow];
  }

  else
  {
    itemSourcesSupportSlideshow = 0;
  }

  return itemSourcesSupportSlideshow;
}

@end