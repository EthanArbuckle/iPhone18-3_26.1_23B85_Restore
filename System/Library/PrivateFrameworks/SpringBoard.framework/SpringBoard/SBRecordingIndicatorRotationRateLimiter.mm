@interface SBRecordingIndicatorRotationRateLimiter
- (BOOL)shouldAllowRotationUnderRateLimits;
- (SBRecordingIndicatorRotationRateLimiter)init;
- (void)_addTimestampForTime:(double)a3;
- (void)_removeTimestampsEarlierThan:(double)a3;
@end

@implementation SBRecordingIndicatorRotationRateLimiter

- (SBRecordingIndicatorRotationRateLimiter)init
{
  v8.receiver = self;
  v8.super_class = SBRecordingIndicatorRotationRateLimiter;
  v2 = [(SBRecordingIndicatorRotationRateLimiter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAA50]);
    rotationTimestamps = v2->_rotationTimestamps;
    v2->_rotationTimestamps = v3;

    v5 = +[SBRecordingIndicatorDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v5;
  }

  return v2;
}

- (BOOL)shouldAllowRotationUnderRateLimits
{
  BSDispatchQueueAssertMain();
  v3 = [(SBRecordingIndicatorSettings *)self->_settings rateLimitNumber];
  [(SBRecordingIndicatorSettings *)self->_settings rateLimitPeriod];
  mach_continuous_time();
  BSMachTimeForTimeDifferenceFromMachTime();
  BSMonotonicReferencedTimeFromMachTime();
  v5 = v4;
  BSMonotonicReferencedTimeFromMachTime();
  v7 = v6;
  [(SBRecordingIndicatorRotationRateLimiter *)self _removeTimestampsEarlierThan:v5];
  v8 = [(NSHashTable *)self->_rotationTimestamps count];
  if (v8 < v3)
  {
    [(SBRecordingIndicatorRotationRateLimiter *)self _addTimestampForTime:v7];
  }

  return v8 < v3;
}

- (void)_removeTimestampsEarlierThan:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSHashTable *)self->_rotationTimestamps allObjects];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 doubleValue];
        if (v11 < a3)
        {
          [(NSHashTable *)self->_rotationTimestamps removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_addTimestampForTime:(double)a3
{
  rotationTimestamps = self->_rotationTimestamps;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSHashTable *)rotationTimestamps addObject:v4];
}

@end