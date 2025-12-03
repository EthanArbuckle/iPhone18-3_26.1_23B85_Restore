@interface ReachabilityCallbacker
- (ReachabilityCallbacker)initWithListener:(function<void)( queue:;
- (id).cxx_construct;
- (void)_reachabilityChanged:(id)changed;
- (void)clearListener;
- (void)dealloc;
@end

@implementation ReachabilityCallbacker

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 6) = 850045863;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 13) = 0;
  return self;
}

- (void)_reachabilityChanged:(id)changed
{
  objc_initWeak(&location, self);
  v4 = *(self + 5);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__ReachabilityCallbacker__reachabilityChanged___block_invoke;
  v5[3] = &unk_1E7B364F8;
  objc_copyWeak(&v6, &location);
  dispatch_async(v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__ReachabilityCallbacker__reachabilityChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    std::mutex::lock((WeakRetained + 48));
    v2 = *(v3 + 4);
    if (v2)
    {
      (*(*v2 + 48))(v2);
    }

    std::mutex::unlock((v3 + 48));
    WeakRetained = v3;
  }
}

- (void)clearListener
{
  std::mutex::lock((self + 48));
  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](self + 8);

  std::mutex::unlock((self + 48));
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69A1938] object:0];

  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](self + 8);
  v4.receiver = self;
  v4.super_class = ReachabilityCallbacker;
  [(ReachabilityCallbacker *)&v4 dealloc];
}

- (ReachabilityCallbacker)initWithListener:(function<void)( queue:
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ReachabilityCallbacker;
  v8 = [(ReachabilityCallbacker *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, a4);
    std::function<void ()(void)>::operator=(v9 + 8, a3);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__reachabilityChanged_ name:*MEMORY[0x1E69A1938] object:0];
  }

  return v9;
}

@end