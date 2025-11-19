@interface PSLivenessNotificationPolicyMissedExecutionCountCrossedThresholds
- (id)initPolicyToNotifyWhenMissedExecutionCountOverExpectedDurationForFrameCount:(unint64_t)a3 crossesThresholds:(id)a4;
@end

@implementation PSLivenessNotificationPolicyMissedExecutionCountCrossedThresholds

- (id)initPolicyToNotifyWhenMissedExecutionCountOverExpectedDurationForFrameCount:(unint64_t)a3 crossesThresholds:(id)a4
{
  v6 = MEMORY[0x277CCAC98];
  v7 = a4;
  v8 = [v6 sortDescriptorWithKey:@"self" ascending:0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
  v10 = [v7 sortedArrayUsingDescriptors:v9];

  v11 = [v10 valueForKeyPath:@"@max.intValue"];
  v12 = [v10 valueForKeyPath:@"@min.intValue"];
  if ([v12 unsignedIntValue] && objc_msgSend(v11, "unsignedIntValue") <= 0x32 && (v16.receiver = self, v16.super_class = PSLivenessNotificationPolicyMissedExecutionCountCrossedThresholds, v13 = -[PSLivenessNotificationPolicyMissedExecutionCountCrossedThresholds init](&v16, sel_init), (self = v13) != 0))
  {
    v13->_frameCount = a3;
    objc_storeStrong(&v13->_thresholds, v10);
    self = self;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end