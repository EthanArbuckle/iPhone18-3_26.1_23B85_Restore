@interface PFTokenBucket
- (BOOL)removeToken;
- (PFTokenBucket)initWithName:(id)a3 capacity:(int64_t)a4 decimalRefillRatePerMsec:(id)a5 timeService:(id)a6;
- (PFTokenBucket)initWithName:(id)a3 capacity:(int64_t)a4 refillPeriod:(int64_t)a5;
- (PFTokenBucket)initWithName:(id)a3 capacity:(int64_t)a4 refillPeriod:(int64_t)a5 timeService:(id)a6;
- (PFTokenBucket)initWithName:(id)a3 capacity:(int64_t)a4 refillRate:(int64_t)a5;
- (PFTokenBucket)initWithName:(id)a3 capacity:(int64_t)a4 refillRate:(int64_t)a5 timeService:(id)a6;
- (id)stateCaptureDictionary;
@end

@implementation PFTokenBucket

- (id)stateCaptureDictionary
{
  os_unfair_lock_lock(&self->_lock);
  lock_lastRefillMsecs = self->_lock_lastRefillMsecs;
  v4 = self->_lock_availableTokens;
  os_unfair_lock_unlock(&self->_lock);
  v5 = [(PFTimeService *)self->_timeService clock_gettime_nsec_np:4]/ 0xF4240 - lock_lastRefillMsecs;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:self->_name forKeyedSubscript:@"name"];
  [v6 setObject:self->_capacity forKeyedSubscript:@"capacity"];
  [v6 setObject:self->_refillRatePerMsec forKeyedSubscript:@"refillRatePerMsec"];
  [v6 setObject:v4 forKeyedSubscript:@"available tokens"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
  [v6 setObject:v7 forKeyedSubscript:@"last refill (ms ago)"];

  return v6;
}

- (BOOL)removeToken
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AB90] one];
  if (self)
  {
    os_unfair_lock_lock(&self->_lock);
    v4 = objc_autoreleasePoolPush();
    os_unfair_lock_assert_owner(&self->_lock);
    v5 = [(PFTimeService *)self->_timeService clock_gettime_nsec_np:4]/ 0xF4240;
    lock_lastRefillMsecs = self->_lock_lastRefillMsecs;
    if (v5 > lock_lastRefillMsecs)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AB90]) initWithMantissa:v5 - lock_lastRefillMsecs exponent:0 isNegative:0];
      v8 = [v7 decimalNumberByMultiplyingBy:self->_refillRatePerMsec];
      v9 = [(NSDecimalNumber *)self->_lock_availableTokens decimalNumberByAdding:v8];
      if ([(NSDecimalNumber *)v9 compare:self->_capacity]== NSOrderedDescending)
      {
        v10 = self->_capacity;

        v9 = v10;
      }

      lock_availableTokens = self->_lock_availableTokens;
      self->_lock_availableTokens = v9;
      v12 = v9;

      self->_lock_lastRefillMsecs = v5;
    }

    v13 = [(NSDecimalNumber *)self->_lock_availableTokens compare:v3];
    v14 = v13 != NSOrderedAscending;
    if (v13 != NSOrderedAscending)
    {
      v15 = os_signpost_id_generate(self->_log);
      v16 = self->_log;
      v17 = v16;
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        name = self->_name;
        v19 = self->_lock_availableTokens;
        v24 = 138412546;
        v25 = name;
        v26 = 2112;
        v27 = v19;
        _os_signpost_emit_with_name_impl(&dword_1D8B9C000, v17, OS_SIGNPOST_EVENT, v15, "PFTokenBucket consume", "name: %@, availableTokens: %@", &v24, 0x16u);
      }

      v20 = [(NSDecimalNumber *)self->_lock_availableTokens decimalNumberBySubtracting:v3];
      v21 = self->_lock_availableTokens;
      self->_lock_availableTokens = v20;
    }

    objc_autoreleasePoolPop(v4);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v14 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

- (PFTokenBucket)initWithName:(id)a3 capacity:(int64_t)a4 decimalRefillRatePerMsec:(id)a5 timeService:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = PFTokenBucket;
  v13 = [(PFTokenBucket *)&v26 init];
  if (v13)
  {
    v14 = [v10 copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [objc_alloc(MEMORY[0x1E696AB90]) initWithMantissa:a4 exponent:0 isNegative:0];
    capacity = v13->_capacity;
    v13->_capacity = v16;

    objc_storeStrong(&v13->_refillRatePerMsec, a5);
    objc_storeStrong(&v13->_timeService, a6);
    v18 = PFBackendGetLog();
    log = v13->_log;
    v13->_log = v18;

    v13->_lock._os_unfair_lock_opaque = 0;
    v20 = [objc_alloc(MEMORY[0x1E696AB90]) initWithMantissa:a4 exponent:0 isNegative:0];
    lock_availableTokens = v13->_lock_availableTokens;
    v13->_lock_availableTokens = v20;

    v13->_lock_lastRefillMsecs = [(PFTimeService *)v13->_timeService clock_gettime_nsec_np:4]/ 0xF4240;
    v22 = [[PFStateCaptureHandler alloc] initWithProvider:v13];
    stateHandler = v13->_stateHandler;
    v13->_stateHandler = v22;

    v24 = v13;
  }

  return v13;
}

- (PFTokenBucket)initWithName:(id)a3 capacity:(int64_t)a4 refillPeriod:(int64_t)a5 timeService:(id)a6
{
  v10 = MEMORY[0x1E696AB90];
  v11 = a6;
  v12 = a3;
  v13 = [[v10 alloc] initWithMantissa:a5 exponent:3 isNegative:0];
  v14 = [MEMORY[0x1E696AB90] one];
  v15 = [v14 decimalNumberByDividingBy:v13];
  v16 = [(PFTokenBucket *)self initWithName:v12 capacity:a4 decimalRefillRatePerMsec:v15 timeService:v11];

  return v16;
}

- (PFTokenBucket)initWithName:(id)a3 capacity:(int64_t)a4 refillRate:(int64_t)a5 timeService:(id)a6
{
  v10 = MEMORY[0x1E696AB90];
  v11 = a6;
  v12 = a3;
  v13 = [[v10 alloc] initWithMantissa:a5 exponent:4294967293 isNegative:0];
  v14 = [(PFTokenBucket *)self initWithName:v12 capacity:a4 decimalRefillRatePerMsec:v13 timeService:v11];

  return v14;
}

- (PFTokenBucket)initWithName:(id)a3 capacity:(int64_t)a4 refillPeriod:(int64_t)a5
{
  v8 = a3;
  v9 = +[PFTimeService defaultTimeService];
  v10 = [(PFTokenBucket *)self initWithName:v8 capacity:a4 refillPeriod:a5 timeService:v9];

  return v10;
}

- (PFTokenBucket)initWithName:(id)a3 capacity:(int64_t)a4 refillRate:(int64_t)a5
{
  v8 = a3;
  v9 = +[PFTimeService defaultTimeService];
  v10 = [(PFTokenBucket *)self initWithName:v8 capacity:a4 refillRate:a5 timeService:v9];

  return v10;
}

@end