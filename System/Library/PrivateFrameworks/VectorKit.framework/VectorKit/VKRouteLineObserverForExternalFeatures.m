@interface VKRouteLineObserverForExternalFeatures
- (VKRouteLineObserverForExternalFeatures)initWithRouteLineSupport:(void *)a3 andRouteLine:(id)a4;
- (void)dealloc;
@end

@implementation VKRouteLineObserverForExternalFeatures

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_routeLine);
  [WeakRetained setObserver:0];

  v4.receiver = self;
  v4.super_class = VKRouteLineObserverForExternalFeatures;
  [(VKRouteLineObserverForExternalFeatures *)&v4 dealloc];
}

- (VKRouteLineObserverForExternalFeatures)initWithRouteLineSupport:(void *)a3 andRouteLine:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = VKRouteLineObserverForExternalFeatures;
  v7 = [(VKRouteLineObserverForExternalFeatures *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_routeLineSupport = a3;
    v9 = objc_storeWeak(&v7->_routeLine, v6);
    [v6 setObserver:v8];

    v10 = v8;
  }

  return v8;
}

@end