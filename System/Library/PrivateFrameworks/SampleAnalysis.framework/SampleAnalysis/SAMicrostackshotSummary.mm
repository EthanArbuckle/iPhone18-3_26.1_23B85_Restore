@interface SAMicrostackshotSummary
- (SAMicrostackshotSummary)init;
@end

@implementation SAMicrostackshotSummary

- (SAMicrostackshotSummary)init
{
  v8.receiver = self;
  v8.super_class = SAMicrostackshotSummary;
  v2 = [(SAMicrostackshotSummary *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:16];
    microstackshotStateCounts = v2->_microstackshotStateCounts;
    v2->_microstackshotStateCounts = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:16];
    stateCounts = v2->_stateCounts;
    v2->_stateCounts = v5;
  }

  return v2;
}

@end