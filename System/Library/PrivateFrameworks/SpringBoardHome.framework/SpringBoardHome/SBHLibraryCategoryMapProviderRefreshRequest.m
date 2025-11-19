@interface SBHLibraryCategoryMapProviderRefreshRequest
- (BOOL)hasFailedSeveralTimes;
- (SBHLibraryCategoryMapProviderRefreshRequest)initWithOptions:(unint64_t)a3 reason:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)failureForSessionIdentifier:(int64_t)a3;
- (unint64_t)failureCount;
- (void)accumulateFailure:(id)a3 forSession:(unint64_t)a4;
@end

@implementation SBHLibraryCategoryMapProviderRefreshRequest

- (SBHLibraryCategoryMapProviderRefreshRequest)initWithOptions:(unint64_t)a3 reason:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SBHLibraryCategoryMapProviderRefreshRequest;
  v7 = [(SBHLibraryCategoryMapProviderRefreshRequest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = a3;
    v9 = [v6 copy];
    requestReason = v8->_requestReason;
    v8->_requestReason = v9;

    v8->_failureLock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SBHLibraryCategoryMapProviderRefreshRequest allocWithZone:?]reason:"initWithOptions:reason:", self->_options, self->_requestReason];
  os_unfair_lock_lock(&self->_failureLock);
  v5 = [(NSMutableDictionary *)self->_failures mutableCopy];
  failures = v4->_failures;
  v4->_failures = v5;

  os_unfair_lock_unlock(&self->_failureLock);
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_requestReason withName:@"requestReason"];
  v5 = NSDictionaryFromSBHLibraryCategoryMapRefreshOptions(self->_options);
  [v3 appendDictionarySection:v5 withName:@"options" skipIfEmpty:0];

  os_unfair_lock_lock(&self->_failureLock);
  [v3 appendDictionarySection:self->_failures withName:@"failures" skipIfEmpty:1];
  os_unfair_lock_unlock(&self->_failureLock);
  v6 = [v3 build];

  return v6;
}

- (void)accumulateFailure:(id)a3 forSession:(unint64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_failureLock);
  failures = self->_failures;
  if (!failures)
  {
    v8 = objc_opt_new();
    v9 = self->_failures;
    self->_failures = v8;

    failures = self->_failures;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)failures setObject:v6 forKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->_failureLock);
}

- (unint64_t)failureCount
{
  os_unfair_lock_lock(&self->_failureLock);
  v3 = [(NSMutableDictionary *)self->_failures count];
  os_unfair_lock_unlock(&self->_failureLock);
  return v3;
}

- (id)failureForSessionIdentifier:(int64_t)a3
{
  os_unfair_lock_lock(&self->_failureLock);
  failures = self->_failures;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)failures objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_failureLock);

  return v7;
}

- (BOOL)hasFailedSeveralTimes
{
  os_unfair_lock_lock(&self->_failureLock);
  v3 = [(NSMutableDictionary *)self->_failures count]> 2;
  os_unfair_lock_unlock(&self->_failureLock);
  return v3;
}

@end