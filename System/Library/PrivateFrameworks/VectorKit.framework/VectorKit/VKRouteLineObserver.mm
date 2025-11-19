@interface VKRouteLineObserver
- (VKRouteLineObserver)initWithTransitSupport:(void *)a3 andRouteLine:(id)a4;
- (void)dealloc;
- (void)routeLineDidUpdateSections:(id)a3;
@end

@implementation VKRouteLineObserver

- (void)routeLineDidUpdateSections:(id)a3
{
  v5[4] = *MEMORY[0x1E69E9840];
  transitSupport = self->_transitSupport;
  v4 = *(transitSupport + 2);
  v5[0] = &unk_1F2A1BDD8;
  v5[1] = transitSupport;
  v5[3] = v5;
  md::LabelManager::queueCommand(v4, 42, 1, v5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_routeLine);
  [WeakRetained setObserver:0];

  v4.receiver = self;
  v4.super_class = VKRouteLineObserver;
  [(VKRouteLineObserver *)&v4 dealloc];
}

- (VKRouteLineObserver)initWithTransitSupport:(void *)a3 andRouteLine:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = VKRouteLineObserver;
  v7 = [(VKRouteLineObserver *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_transitSupport = a3;
    v9 = objc_storeWeak(&v7->_routeLine, v6);
    [v6 setObserver:v8];

    v10 = v8;
  }

  return v8;
}

@end