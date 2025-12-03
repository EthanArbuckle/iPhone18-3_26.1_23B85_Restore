@interface ATXCachedMotion
- (ATXCachedMotion)initWithATXMotion:(id)motion;
- (BOOL)isExpired;
- (void)update:(id)update;
@end

@implementation ATXCachedMotion

- (BOOL)isExpired
{
  lastUpdated = self->lastUpdated;
  if (!lastUpdated)
  {
    return 1;
  }

  [(NSDate *)lastUpdated timeIntervalSinceNow];
  return v3 < -5.0;
}

- (ATXCachedMotion)initWithATXMotion:(id)motion
{
  motionCopy = motion;
  v8.receiver = self;
  v8.super_class = ATXCachedMotion;
  v5 = [(ATXCachedMotion *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ATXCachedMotion *)v5 update:motionCopy];
  }

  return v6;
}

- (void)update:(id)update
{
  updateCopy = update;
  v9 = updateCopy;
  if (updateCopy)
  {
    v5 = updateCopy;
  }

  else
  {
    v5 = [[ATXMotion alloc] initFromCMMotionActivity:0];
  }

  currentMotion = self->_currentMotion;
  self->_currentMotion = v5;

  date = [MEMORY[0x277CBEAA8] date];
  lastUpdated = self->lastUpdated;
  self->lastUpdated = date;
}

@end