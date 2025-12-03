@interface AVAudioTime(RCAdditions)
- (id)rc_adjustedBySamples:()RCAdditions;
- (id)rc_adjustedBySeconds:()RCAdditions;
- (id)rc_copyFromTimeStamp;
- (uint64_t)rc_hostTimeInSeconds;
@end

@implementation AVAudioTime(RCAdditions)

- (id)rc_copyFromTimeStamp
{
  [self audioTimeStamp];
  v2 = objc_alloc(MEMORY[0x277CB8428]);
  [self sampleRate];
  v3 = [v2 initWithAudioTimeStamp:&v5 sampleRate:?];

  return v3;
}

- (id)rc_adjustedBySamples:()RCAdditions
{
  v5 = MEMORY[0x277CB8428];
  sampleTime = [self sampleTime];
  [self sampleRate];
  v7 = [v5 timeWithSampleTime:sampleTime + a3 atRate:?];
  v8 = [v7 extrapolateTimeFromAnchor:self];

  return v8;
}

- (id)rc_adjustedBySeconds:()RCAdditions
{
  [self sampleRate];
  v5 = [MEMORY[0x277CB8428] timeWithSampleTime:objc_msgSend(self atRate:{"sampleTime") + (v4 * a2), v4}];
  v6 = [v5 extrapolateTimeFromAnchor:self];

  return v6;
}

- (uint64_t)rc_hostTimeInSeconds
{
  v1 = MEMORY[0x277CB8428];
  hostTime = [self hostTime];

  return [v1 secondsForHostTime:hostTime];
}

@end