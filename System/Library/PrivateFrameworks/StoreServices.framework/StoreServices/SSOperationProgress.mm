@interface SSOperationProgress
- (BOOL)canPause;
- (NSString)description;
- (SSOperationProgress)init;
- (SSOperationProgress)initWithXPCEncoding:(id)encoding;
- (double)changeRate;
- (double)estimatedTimeRemaining;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (int64_t)currentValue;
- (int64_t)maxValue;
- (int64_t)normalizedCurrentValue;
- (int64_t)normalizedMaxValue;
- (int64_t)operationType;
- (int64_t)units;
- (void)_updateStatisticsFromSnapshots;
- (void)dealloc;
- (void)resetSnapshots;
- (void)setCanPause:(BOOL)pause;
- (void)setChangeRate:(double)rate;
- (void)setCurrentValue:(int64_t)value;
- (void)setEstimatedTimeRemaining:(double)remaining;
- (void)setMaxValue:(int64_t)value;
- (void)setNormalizedCurrentValue:(int64_t)value;
- (void)setNormalizedMaxValue:(int64_t)value;
- (void)setOperationType:(int64_t)type;
- (void)setUnits:(int64_t)units;
- (void)snapshot;
@end

@implementation SSOperationProgress

- (SSOperationProgress)init
{
  v4.receiver = self;
  v4.super_class = SSOperationProgress;
  v2 = [(SSOperationProgress *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.StoreServices.SSOperationProgress", 0);
    v2->_estimatedTimeRemaining = -1.0;
    v2->_changeRate = -1.0;
    v2->_normalizedCurrentValue = -1;
    v2->_normalizedMaxValue = -1;
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);

  v3.receiver = self;
  v3.super_class = SSOperationProgress;
  [(SSOperationProgress *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SSOperationProgress_copyWithZone___block_invoke;
  v7[3] = &unk_1E84AC458;
  v7[4] = v4;
  v7[5] = self;
  dispatch_sync(dispatchQueue, v7);
  return v4;
}

double __36__SSOperationProgress_copyWithZone___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(*(a1 + 40) + 8);
  *(*(a1 + 32) + 16) = *(*(a1 + 40) + 16);
  *(*(a1 + 32) + 24) = *(*(a1 + 40) + 24);
  result = *(*(a1 + 40) + 40);
  *(*(a1 + 32) + 40) = result;
  *(*(a1 + 32) + 48) = *(*(a1 + 40) + 48);
  *(*(a1 + 32) + 56) = *(*(a1 + 40) + 56);
  *(*(a1 + 32) + 64) = *(*(a1 + 40) + 64);
  *(*(a1 + 32) + 72) = *(*(a1 + 40) + 72);
  *(*(a1 + 32) + 96) = *(*(a1 + 40) + 96);
  return result;
}

- (BOOL)canPause
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SSOperationProgress_canPause__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)changeRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__SSOperationProgress_changeRate__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __33__SSOperationProgress_changeRate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)currentValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SSOperationProgress_currentValue__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)estimatedTimeRemaining
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0xBFF0000000000000;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__SSOperationProgress_estimatedTimeRemaining__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __45__SSOperationProgress_estimatedTimeRemaining__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)maxValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SSOperationProgress_maxValue__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)normalizedCurrentValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__SSOperationProgress_normalizedCurrentValue__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__SSOperationProgress_normalizedCurrentValue__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 56);
  if (v2 < 0)
  {
    v2 = *(v1 + 24);
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (int64_t)normalizedMaxValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SSOperationProgress_normalizedMaxValue__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __41__SSOperationProgress_normalizedMaxValue__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 64);
  if (v2 < 0)
  {
    v2 = *(v1 + 48);
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (int64_t)operationType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SSOperationProgress_operationType__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)resetSnapshots
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSOperationProgress_resetSnapshots__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

uint64_t __37__SSOperationProgress_resetSnapshots__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) removeAllObjects];
  v2 = *(*(a1 + 32) + 88);

  return [v2 removeAllObjects];
}

- (void)setCanPause:(BOOL)pause
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__SSOperationProgress_setCanPause___block_invoke;
  v4[3] = &unk_1E84AD498;
  v4[4] = self;
  pauseCopy = pause;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setChangeRate:(double)rate
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__SSOperationProgress_setChangeRate___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  *&v4[5] = rate;
  dispatch_sync(dispatchQueue, v4);
}

double __37__SSOperationProgress_setChangeRate___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 16) = result;
  return result;
}

- (void)setCurrentValue:(int64_t)value
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSOperationProgress_setCurrentValue___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  v4[5] = value;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setEstimatedTimeRemaining:(double)remaining
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SSOperationProgress_setEstimatedTimeRemaining___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  *&v4[5] = remaining;
  dispatch_sync(dispatchQueue, v4);
}

double __49__SSOperationProgress_setEstimatedTimeRemaining___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 40) = result;
  return result;
}

- (void)setMaxValue:(int64_t)value
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__SSOperationProgress_setMaxValue___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  v4[5] = value;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setNormalizedCurrentValue:(int64_t)value
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SSOperationProgress_setNormalizedCurrentValue___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  v4[5] = value;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setNormalizedMaxValue:(int64_t)value
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__SSOperationProgress_setNormalizedMaxValue___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  v4[5] = value;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setOperationType:(int64_t)type
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SSOperationProgress_setOperationType___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  v4[5] = type;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setUnits:(int64_t)units
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__SSOperationProgress_setUnits___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  v4[5] = units;
  dispatch_sync(dispatchQueue, v4);
}

- (void)snapshot
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SSOperationProgress_snapshot__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

uint64_t __31__SSOperationProgress_snapshot__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (!v2)
  {
    *(*(a1 + 32) + 80) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(*(a1 + 32) + 88) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2 = *(*(a1 + 32) + 80);
  }

  if ([v2 count] >= 0x78)
  {
    [*(*(a1 + 32) + 80) removeObjectAtIndex:0];
    [*(*(a1 + 32) + 88) removeObjectAtIndex:0];
  }

  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:CFAbsoluteTimeGetCurrent()];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:*(*(a1 + 32) + 24)];
  [*(*(a1 + 32) + 80) addObject:v3];
  [*(*(a1 + 32) + 88) addObject:v4];

  v5 = *(a1 + 32);

  return [v5 _updateStatisticsFromSnapshots];
}

- (int64_t)units
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__SSOperationProgress_units__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSOperationProgress_description__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__SSOperationProgress_description__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4.receiver = *(a1 + 32);
  v4.super_class = SSOperationProgress;
  result = [v2 initWithFormat:@"%@: %lld / %lld @ %.3f (%.2f seconds)", objc_msgSendSuper2(&v4, sel_description), *(*(a1 + 32) + 24), *(*(a1 + 32) + 48), *(*(a1 + 32) + 16), *(*(a1 + 32) + 40)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, "0", self->_canPause);
  xpc_dictionary_set_double(v3, "1", self->_changeRate);
  xpc_dictionary_set_int64(v3, "2", self->_currentValue);
  xpc_dictionary_set_double(v3, "3", self->_estimatedTimeRemaining);
  xpc_dictionary_set_int64(v3, "4", self->_maxValue);
  xpc_dictionary_set_int64(v3, "5", self->_normalizedCurrentValue);
  xpc_dictionary_set_int64(v3, "6", self->_normalizedMaxValue);
  xpc_dictionary_set_int64(v3, "7", self->_operationType);
  xpc_dictionary_set_int64(v3, "8", self->_units);
  return v3;
}

- (SSOperationProgress)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSOperationProgress;
    v5 = [(SSOperationProgress *)&v7 init];
    if (v5)
    {
      v5->_canPause = xpc_dictionary_get_BOOL(encoding, "0");
      v5->_changeRate = xpc_dictionary_get_double(encoding, "1");
      v5->_currentValue = xpc_dictionary_get_int64(encoding, "2");
      v5->_estimatedTimeRemaining = xpc_dictionary_get_double(encoding, "3");
      v5->_maxValue = xpc_dictionary_get_int64(encoding, "4");
      v5->_normalizedCurrentValue = xpc_dictionary_get_int64(encoding, "5");
      v5->_normalizedMaxValue = xpc_dictionary_get_int64(encoding, "6");
      v5->_operationType = xpc_dictionary_get_int64(encoding, "7");
      v5->_units = xpc_dictionary_get_int64(encoding, "8");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (void)_updateStatisticsFromSnapshots
{
  v3 = [(NSMutableArray *)self->_snapshotTimes count];
  v4 = -1.0;
  if (v3 < 6)
  {
    v13 = -1.0;
  }

  else
  {
    v5 = v3;
    v6 = 0.0;
    for (i = 1; i != v5; ++i)
    {
      [-[NSMutableArray objectAtIndex:](self->_snapshotTimes objectAtIndex:{i), "doubleValue"}];
      v9 = v8;
      [-[NSMutableArray objectAtIndex:](self->_snapshotTimes objectAtIndex:{i - 1), "doubleValue"}];
      v11 = v9 - v10;
      v12 = [-[NSMutableArray objectAtIndex:](self->_snapshotValues objectAtIndex:{i), "longLongValue"}];
      v6 = v6 + (v12 - [-[NSMutableArray objectAtIndex:](self->_snapshotValues objectAtIndex:{i - 1), "longLongValue"}]) / v11;
    }

    v13 = v6 / v5;
    if (v13 > 0.00000011920929)
    {
      v14 = self->_maxValue - self->_currentValue;
      if ((v14 & 0x8000000000000000) == 0)
      {
        v4 = v14 / v13;
      }
    }
  }

  self->_changeRate = v13;
  self->_estimatedTimeRemaining = v4;
}

@end