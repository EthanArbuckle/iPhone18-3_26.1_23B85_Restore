@interface GutterViewScrollViewObserver
- (void)_observeScrollViewDidScroll:(id)scroll;
@end

@implementation GutterViewScrollViewObserver

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1D808E910(scroll);
}

@end