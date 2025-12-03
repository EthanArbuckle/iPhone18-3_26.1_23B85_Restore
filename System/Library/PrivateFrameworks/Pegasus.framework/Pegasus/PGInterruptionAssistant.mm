@interface PGInterruptionAssistant
- (BOOL)_lock_calculateIsInterrupted;
- (BOOL)allowsResumingAfterInterruptionEnds;
- (BOOL)hasInterruptionReason:(int64_t)reason;
- (BOOL)isExemptFromUILockInterruptionsWhenActive;
- (BOOL)isInterrupted;
- (BOOL)isProxyActive;
- (BOOL)shouldNotifyProxyOfInterruptionBegan;
- (BOOL)shouldNotifyProxyOfInterruptionEnded;
- (PGInterruptionAssistant)init;
- (id)_interruptionsDescription;
- (id)cameraInterruptionAttributions;
- (id)copyWithExemptAttribution:(id)attribution;
- (id)description;
- (id)exemptAttribution;
- (void)addReason:(int64_t)reason attribution:(id)attribution;
- (void)dealloc;
- (void)noteDidNotifyProxyOfInterruptionBegan;
- (void)noteDidNotifyProxyOfInterruptionEnded;
- (void)removeReason:(int64_t)reason attribution:(id)attribution;
- (void)setExemptAttribution:(id)attribution;
- (void)setExemptFromUILockInterruptionsWhenActive:(BOOL)active;
- (void)setProxyActive:(BOOL)active;
@end

@implementation PGInterruptionAssistant

- (BOOL)_lock_calculateIsInterrupted
{
  selfCopy = self;
  allKeys = [(NSMutableDictionary *)self->_lock_interruptions allKeys];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PGInterruptionAssistant__lock_calculateIsInterrupted__block_invoke;
  v5[3] = &unk_1E7F32640;
  v5[4] = selfCopy;
  LOBYTE(selfCopy) = [allKeys bs_containsObjectPassingTest:v5];

  return selfCopy;
}

uint64_t __55__PGInterruptionAssistant__lock_calculateIsInterrupted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 reason];
  if (v4 == 2)
  {
    v7 = [v3 attribution];
    v6 = [v7 isEqualToString:*(*(a1 + 32) + 16)] ^ 1;
  }

  else if (v4 == 1 && (v5 = *(a1 + 32), *(v5 + 27) == 1))
  {
    v6 = *(v5 + 28) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (PGInterruptionAssistant)init
{
  v11.receiver = self;
  v11.super_class = PGInterruptionAssistant;
  v2 = [(PGInterruptionAssistant *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    v4 = MEMORY[0x1E69E96A0];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PictureInPicture - PGInterruptionAssistant - %p", v3];
    objc_copyWeak(&v9, &location);
    v6 = BSLogAddStateCaptureBlockWithTitle();
    stateDumpInvalidatable = v3->_stateDumpInvalidatable;
    v3->_stateDumpInvalidatable = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v3;
}

__CFString *__31__PGInterruptionAssistant_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = &stru_1F394B800;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_lock_isInterrupted)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  _interruptionsDescription = [(PGInterruptionAssistant *)self _interruptionsDescription];
  v6 = [v3 stringWithFormat:@"isInterrupted:%@ interruptions: %@; exempt attribution:%@;", v4, _interruptionsDescription, self->_lock_exemptAttribution];;

  return v6;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateDumpInvalidatable invalidate];
  v3.receiver = self;
  v3.super_class = PGInterruptionAssistant;
  [(PGInterruptionAssistant *)&v3 dealloc];
}

- (id)copyWithExemptAttribution:(id)attribution
{
  attributionCopy = attribution;
  v5 = objc_alloc_init(objc_opt_class());
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_lock_interruptions mutableCopy];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [attributionCopy copy];
  v9 = v5[2];
  v5[2] = v8;

  *(v5 + 24) = self->_lock_allowsResumingAfterInterruptionEnds;
  *(v5 + 25) = [v5 _lock_calculateIsInterrupted];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)exemptAttribution
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_exemptAttribution;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setExemptAttribution:(id)attribution
{
  attributionCopy = attribution;
  os_unfair_lock_lock(&self->_lock);
  v5 = [attributionCopy copy];

  lock_exemptAttribution = self->_lock_exemptAttribution;
  self->_lock_exemptAttribution = v5;

  LOBYTE(attributionCopy) = self->_lock_isInterrupted;
  _lock_calculateIsInterrupted = [(PGInterruptionAssistant *)self _lock_calculateIsInterrupted];
  self->_lock_isInterrupted = _lock_calculateIsInterrupted;
  if ((attributionCopy & 1) == 0 && _lock_calculateIsInterrupted)
  {
    self->_lock_allowsResumingAfterInterruptionEnds = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isProxyActive
{
  os_unfair_lock_lock(&self->_lock);
  lock_isProxyActive = self->_lock_isProxyActive;
  os_unfair_lock_unlock(&self->_lock);
  return lock_isProxyActive;
}

- (void)setProxyActive:(BOOL)active
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_isProxyActive = active;
  self->_lock_isInterrupted = [(PGInterruptionAssistant *)self _lock_calculateIsInterrupted];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isExemptFromUILockInterruptionsWhenActive
{
  os_unfair_lock_lock(&self->_lock);
  lock_exemptFromUILockInterruptionsWhenActive = self->_lock_exemptFromUILockInterruptionsWhenActive;
  os_unfair_lock_unlock(&self->_lock);
  return lock_exemptFromUILockInterruptionsWhenActive;
}

- (void)setExemptFromUILockInterruptionsWhenActive:(BOOL)active
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_exemptFromUILockInterruptionsWhenActive = active;
  self->_lock_isInterrupted = [(PGInterruptionAssistant *)self _lock_calculateIsInterrupted];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isInterrupted
{
  os_unfair_lock_lock(&self->_lock);
  lock_isInterrupted = self->_lock_isInterrupted;
  os_unfair_lock_unlock(&self->_lock);
  return lock_isInterrupted;
}

- (id)_interruptionsDescription
{
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_lock_interruptions allKeys];
  v4 = [allKeys bs_map:&__block_literal_global_2];

  os_unfair_lock_unlock(&self->_lock);
  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

- (BOOL)shouldNotifyProxyOfInterruptionBegan
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_isInterrupted && self->_lock_isProxyActive && !self->_lock_isInterruptedAccordingToProxy;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)noteDidNotifyProxyOfInterruptionBegan
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_isInterruptedAccordingToProxy = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldNotifyProxyOfInterruptionEnded
{
  os_unfair_lock_lock(&self->_lock);
  v3 = (!self->_lock_isInterrupted || !self->_lock_isProxyActive) && self->_lock_isInterruptedAccordingToProxy;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)noteDidNotifyProxyOfInterruptionEnded
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_isInterruptedAccordingToProxy = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)allowsResumingAfterInterruptionEnds
{
  os_unfair_lock_lock(&self->_lock);
  lock_allowsResumingAfterInterruptionEnds = self->_lock_allowsResumingAfterInterruptionEnds;
  os_unfair_lock_unlock(&self->_lock);
  return lock_allowsResumingAfterInterruptionEnds;
}

- (void)addReason:(int64_t)reason attribution:(id)attribution
{
  attributionCopy = attribution;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_isInterrupted)
  {
    if (reason == 1)
    {
      self->_lock_allowsResumingAfterInterruptionEnds = 0;
    }
  }

  else
  {
    self->_lock_allowsResumingAfterInterruptionEnds = reason != 1;
  }

  v13 = [[_PGInterruption alloc] initWithReason:reason attribution:attributionCopy];

  lock_interruptions = self->_lock_interruptions;
  if (!lock_interruptions)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_lock_interruptions;
    self->_lock_interruptions = dictionary;

    lock_interruptions = self->_lock_interruptions;
  }

  v10 = [(NSMutableDictionary *)lock_interruptions objectForKeyedSubscript:v13];
  integerValue = [v10 integerValue];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
  [(NSMutableDictionary *)self->_lock_interruptions setObject:v12 forKeyedSubscript:v13];

  self->_lock_isInterrupted = [(PGInterruptionAssistant *)self _lock_calculateIsInterrupted];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeReason:(int64_t)reason attribution:(id)attribution
{
  attributionCopy = attribution;
  os_unfair_lock_lock(&self->_lock);
  v11 = [[_PGInterruption alloc] initWithReason:reason attribution:attributionCopy];

  v7 = [(NSMutableDictionary *)self->_lock_interruptions objectForKeyedSubscript:v11];
  integerValue = [v7 integerValue];

  if (integerValue <= 1)
  {
    [(NSMutableDictionary *)self->_lock_interruptions setObject:0 forKeyedSubscript:v11];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue - 1];
    [(NSMutableDictionary *)self->_lock_interruptions setObject:v9 forKeyedSubscript:v11];
  }

  if (![(NSMutableDictionary *)self->_lock_interruptions count])
  {
    lock_interruptions = self->_lock_interruptions;
    self->_lock_interruptions = 0;
  }

  self->_lock_isInterrupted = [(PGInterruptionAssistant *)self _lock_calculateIsInterrupted];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasInterruptionReason:(int64_t)reason
{
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_lock_interruptions allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PGInterruptionAssistant_hasInterruptionReason___block_invoke;
  v7[3] = &unk_1E7F32618;
  v7[4] = self;
  v7[5] = reason;
  LOBYTE(reason) = [allKeys bs_containsObjectPassingTest:v7];

  os_unfair_lock_unlock(&self->_lock);
  return reason;
}

uint64_t __49__PGInterruptionAssistant_hasInterruptionReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 reason] == *(a1 + 40))
  {
    v4 = [v3 attribution];
    v5 = [v4 isEqualToString:*(*(a1 + 32) + 16)] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cameraInterruptionAttributions
{
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_lock_interruptions allKeys];
  v4 = [allKeys bs_map:&__block_literal_global_59];

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];

  return v6;
}

id __57__PGInterruptionAssistant_cameraInterruptionAttributions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 reason] == 2)
  {
    v3 = [v2 attribution];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end