@interface SFTokenBucket
- (BOOL)acquireToken;
- (SFTokenBucket)initWithBucketSize:(unint64_t)size tokenDurationSec:(double)sec;
- (SFTokenBucket)initWithBucketSize:(unint64_t)size tokenDurationTicks:(unint64_t)ticks;
- (void)acquireToken;
@end

@implementation SFTokenBucket

- (SFTokenBucket)initWithBucketSize:(unint64_t)size tokenDurationTicks:(unint64_t)ticks
{
  v9.receiver = self;
  v9.super_class = SFTokenBucket;
  v6 = [(SFTokenBucket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_bucketSize = size;
    v6->_tokensAvailable = size;
    v6->_tokenDurationTicks = ticks;
    v6->_lastRefreshTicks = mach_absolute_time();
  }

  return v7;
}

- (SFTokenBucket)initWithBucketSize:(unint64_t)size tokenDurationSec:(double)sec
{
  v6 = SecondsToUpTicksF();

  return [(SFTokenBucket *)self initWithBucketSize:size tokenDurationTicks:v6];
}

- (BOOL)acquireToken
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SFTokenBucket *)self acquireToken];
  }

  tokensAvailable = self->_tokensAvailable;
  if (tokensAvailable)
  {
    goto LABEL_10;
  }

  v5 = mach_absolute_time();
  v6 = self->_tokensAvailable;
  if ((v5 - self->_lastRefreshTicks) / self->_tokenDurationTicks >= self->_bucketSize - v6)
  {
    v7 = self->_bucketSize - v6;
  }

  else
  {
    v7 = (v5 - self->_lastRefreshTicks) / self->_tokenDurationTicks;
  }

  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(SFTokenBucket *)v7 acquireToken];
  }

  self->_tokensAvailable += v7;
  self->_lastRefreshTicks = mach_absolute_time();
  tokensAvailable = self->_tokensAvailable;
  if (tokensAvailable)
  {
LABEL_10:
    self->_tokensAvailable = tokensAvailable - 1;
    v9 = airdrop_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(SFTokenBucket *)v9 acquireToken];
    }

    v10 = 1;
  }

  else
  {
    v9 = airdrop_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "No tokens available.", v12, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)acquireToken
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  selfCopy = self;
  _os_log_debug_impl(&dword_1A9662000, a2, OS_LOG_TYPE_DEBUG, "Adding %llu new tokens.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end