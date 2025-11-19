@interface PUViewControllerSpecChange
- (BOOL)changed;
@end

@implementation PUViewControllerSpecChange

- (BOOL)changed
{
  if ([(PUViewControllerSpecChange *)self traitCollectionChanged]|| [(PUViewControllerSpecChange *)self layoutReferenceSizeChanged]|| [(PUViewControllerSpecChange *)self layoutStyleChanged]|| [(PUViewControllerSpecChange *)self presentedForSecondScreenChanged]|| [(PUViewControllerSpecChange *)self secondScreenSizeChanged])
  {
    return 1;
  }

  return [(PUViewControllerSpecChange *)self prefersCompactLayoutForSplitScreenChanged];
}

@end