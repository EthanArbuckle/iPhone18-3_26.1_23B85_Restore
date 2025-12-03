@interface RUIScrollViewWeakLayoutObserver
- (RUIScrollViewWeakLayoutObserver)initWithLayoutObserver:(id)observer;
- (void)_scrollViewDidLayoutSubviews:(id)subviews;
@end

@implementation RUIScrollViewWeakLayoutObserver

- (RUIScrollViewWeakLayoutObserver)initWithLayoutObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = RUIScrollViewWeakLayoutObserver;
  v5 = [(RUIScrollViewWeakLayoutObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakLayoutObserver, observerCopy);
  }

  return v6;
}

- (void)_scrollViewDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  WeakRetained = objc_loadWeakRetained(&self->_weakLayoutObserver);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _scrollViewDidLayoutSubviews:subviewsCopy];
  }
}

@end