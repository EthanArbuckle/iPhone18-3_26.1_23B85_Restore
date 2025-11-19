@interface WLDRateLimiter
- (BOOL)_claimToken;
- (WLDRateLimiter)init;
- (WLDRateLimiter)initWithRate:(unint64_t)a3 burst:(unint64_t)a4;
- (unint64_t)burst;
- (unint64_t)rate;
- (void)_addToken;
- (void)setBurst:(unint64_t)a3;
- (void)setRate:(unint64_t)a3;
@end

@implementation WLDRateLimiter

- (WLDRateLimiter)init
{
  [NSException raise:@"WLDRateLimiter" format:@"-init not supported. Use -initWithRate:burst: instead"];

  return 0;
}

- (WLDRateLimiter)initWithRate:(unint64_t)a3 burst:(unint64_t)a4
{
  v17.receiver = self;
  v17.super_class = WLDRateLimiter;
  v6 = [(WLDRateLimiter *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_rate = a3;
    v6->_burst = a4;
    v6->_tokens = a4;
    v8 = dispatch_queue_create("WLDRateLimiterAccess", 0);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v8;

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
    timer = v7->_timer;
    v7->_timer = v10;

    dispatch_source_set_timer(v7->_timer, 0, 1000000000 * v7->_rate, 0);
    objc_initWeak(&location, v7);
    v12 = v7->_timer;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __37__WLDRateLimiter_initWithRate_burst___block_invoke;
    v14[3] = &unk_100044AE8;
    objc_copyWeak(&v15, &location);
    dispatch_source_set_event_handler(v12, v14);
    dispatch_resume(v7->_timer);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __37__WLDRateLimiter_initWithRate_burst___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _addToken];
    WeakRetained = v2;
  }
}

- (void)setRate:(unint64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __26__WLDRateLimiter_setRate___block_invoke;
  v4[3] = &unk_100045980;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(accessQueue, v4);
}

void __26__WLDRateLimiter_setRate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 != *(v2 + 8))
  {
    *(v2 + 8) = v1;
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    if (v4)
    {
      dispatch_source_set_timer(v4, 0, 1000000000 * *(v3 + 8), 0);
    }
  }
}

- (unint64_t)rate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __22__WLDRateLimiter_rate__block_invoke;
  v5[3] = &unk_1000459A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setBurst:(unint64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __27__WLDRateLimiter_setBurst___block_invoke;
  v4[3] = &unk_100045980;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(accessQueue, v4);
}

uint64_t __27__WLDRateLimiter_setBurst___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  if (v1 != *(v2 + 16))
  {
    *(v2 + 16) = v1;
  }

  return result;
}

- (unint64_t)burst
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __23__WLDRateLimiter_burst__block_invoke;
  v5[3] = &unk_1000459A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_addToken
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __27__WLDRateLimiter__addToken__block_invoke;
  block[3] = &unk_100044DB8;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

uint64_t __27__WLDRateLimiter__addToken__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 24);
  if (v2 < *(v1 + 16))
  {
    *(v1 + 24) = v2 + 1;
  }

  return result;
}

- (BOOL)_claimToken
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __29__WLDRateLimiter__claimToken__block_invoke;
  v5[3] = &unk_1000459D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__WLDRateLimiter__claimToken__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 24);
  if (v2)
  {
    *(v1 + 24) = v2 - 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

@end