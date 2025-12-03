@interface SBHLibraryCategoryMapProviderRefreshRequest
- (BOOL)hasFailedSeveralTimes;
- (SBHLibraryCategoryMapProviderRefreshRequest)initWithOptions:(unint64_t)options reason:(id)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)failureForSessionIdentifier:(int64_t)identifier;
- (unint64_t)failureCount;
- (void)accumulateFailure:(id)failure forSession:(unint64_t)session;
@end

@implementation SBHLibraryCategoryMapProviderRefreshRequest

- (SBHLibraryCategoryMapProviderRefreshRequest)initWithOptions:(unint64_t)options reason:(id)reason
{
  reasonCopy = reason;
  v12.receiver = self;
  v12.super_class = SBHLibraryCategoryMapProviderRefreshRequest;
  v7 = [(SBHLibraryCategoryMapProviderRefreshRequest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = options;
    v9 = [reasonCopy copy];
    requestReason = v8->_requestReason;
    v8->_requestReason = v9;

    v8->_failureLock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
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
  build = [v3 build];

  return build;
}

- (void)accumulateFailure:(id)failure forSession:(unint64_t)session
{
  failureCopy = failure;
  os_unfair_lock_lock(&self->_failureLock);
  failures = self->_failures;
  if (!failures)
  {
    v8 = objc_opt_new();
    v9 = self->_failures;
    self->_failures = v8;

    failures = self->_failures;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:session];
  [(NSMutableDictionary *)failures setObject:failureCopy forKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->_failureLock);
}

- (unint64_t)failureCount
{
  os_unfair_lock_lock(&self->_failureLock);
  v3 = [(NSMutableDictionary *)self->_failures count];
  os_unfair_lock_unlock(&self->_failureLock);
  return v3;
}

- (id)failureForSessionIdentifier:(int64_t)identifier
{
  os_unfair_lock_lock(&self->_failureLock);
  failures = self->_failures;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
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