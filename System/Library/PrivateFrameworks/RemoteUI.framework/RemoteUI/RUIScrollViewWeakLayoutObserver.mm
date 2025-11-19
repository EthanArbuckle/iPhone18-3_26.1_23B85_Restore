@interface RUIScrollViewWeakLayoutObserver
- (RUIScrollViewWeakLayoutObserver)initWithLayoutObserver:(id)a3;
- (void)_scrollViewDidLayoutSubviews:(id)a3;
@end

@implementation RUIScrollViewWeakLayoutObserver

- (RUIScrollViewWeakLayoutObserver)initWithLayoutObserver:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RUIScrollViewWeakLayoutObserver;
  v5 = [(RUIScrollViewWeakLayoutObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakLayoutObserver, v4);
  }

  return v6;
}

- (void)_scrollViewDidLayoutSubviews:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakLayoutObserver);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _scrollViewDidLayoutSubviews:v6];
  }
}

@end