@interface TipPresentation
- (void)_observeScrollViewDidScroll:(id)scroll;
@end

@implementation TipPresentation

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  TipPresentation._observeScrollViewDidScroll(_:)(selfCopy);
}

@end