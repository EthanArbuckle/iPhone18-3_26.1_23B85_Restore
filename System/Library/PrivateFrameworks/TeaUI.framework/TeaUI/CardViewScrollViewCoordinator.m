@interface CardViewScrollViewCoordinator
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
@end

@implementation CardViewScrollViewCoordinator

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  CardViewScrollViewCoordinator.scrollViewDidScroll(_:)(v4);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  CardViewScrollViewCoordinator.scrollViewWillBeginDragging(_:)(v5);
}

@end