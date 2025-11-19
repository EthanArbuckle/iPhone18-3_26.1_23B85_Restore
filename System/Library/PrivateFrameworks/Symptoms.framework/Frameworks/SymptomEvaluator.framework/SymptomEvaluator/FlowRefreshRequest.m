@interface FlowRefreshRequest
- (id)description;
@end

@implementation FlowRefreshRequest

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  reference = self->_reference;
  logAs = self->_logAs;
  preferredExpiry = self->_preferredExpiry;
  if (preferredExpiry <= 0.0)
  {
    v7 = @"0";
  }

  else
  {
    v7 = dateStringMillisecondsFromReferenceInterval(self->_preferredExpiry);
  }

  scheduledExpiry = self->_scheduledExpiry;
  if (scheduledExpiry <= 0.0)
  {
    v9 = @"0";
  }

  else
  {
    v9 = dateStringMillisecondsFromReferenceInterval(self->_scheduledExpiry);
  }

  v10 = [v3 initWithFormat:@"FlowRefreshRequest %lld %@ pref %@ sched %@ interval %.3f maxStale %.3f maxLate %.3f pref %d", reference, logAs, v7, v9, *&self->_interval, *&self->_maxStale, *&self->_maxLate, self->_preference];
  if (scheduledExpiry > 0.0)
  {
  }

  if (preferredExpiry > 0.0)
  {
  }

  return v10;
}

@end