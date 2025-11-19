@interface UsageTallySample
- (id)description;
@end

@implementation UsageTallySample

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = dateStringMillisecondsFromReferenceInterval(self->_startTimeIntervalSinceReferenceDate);
  v5 = [v3 stringWithFormat:@"usageTallySample from %@ interval %2.3f traffic %lld", v4, *&self->_elapsedTime, self->_byteCount];

  return v5;
}

@end