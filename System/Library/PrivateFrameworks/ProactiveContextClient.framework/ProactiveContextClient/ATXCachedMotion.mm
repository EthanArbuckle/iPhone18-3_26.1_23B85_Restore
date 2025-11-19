@interface ATXCachedMotion
- (ATXCachedMotion)initWithATXMotion:(id)a3;
- (BOOL)isExpired;
- (void)update:(id)a3;
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

- (ATXCachedMotion)initWithATXMotion:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ATXCachedMotion;
  v5 = [(ATXCachedMotion *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ATXCachedMotion *)v5 update:v4];
  }

  return v6;
}

- (void)update:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [[ATXMotion alloc] initFromCMMotionActivity:0];
  }

  currentMotion = self->_currentMotion;
  self->_currentMotion = v5;

  v7 = [MEMORY[0x277CBEAA8] date];
  lastUpdated = self->lastUpdated;
  self->lastUpdated = v7;
}

@end