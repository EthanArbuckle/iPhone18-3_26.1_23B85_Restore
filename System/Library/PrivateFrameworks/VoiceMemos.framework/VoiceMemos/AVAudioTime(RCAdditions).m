@interface AVAudioTime(RCAdditions)
- (id)rc_adjustedBySamples:()RCAdditions;
- (id)rc_adjustedBySeconds:()RCAdditions;
- (id)rc_copyFromTimeStamp;
- (uint64_t)rc_hostTimeInSeconds;
@end

@implementation AVAudioTime(RCAdditions)

- (id)rc_copyFromTimeStamp
{
  [a1 audioTimeStamp];
  v2 = objc_alloc(MEMORY[0x277CB8428]);
  [a1 sampleRate];
  v3 = [v2 initWithAudioTimeStamp:&v5 sampleRate:?];

  return v3;
}

- (id)rc_adjustedBySamples:()RCAdditions
{
  v5 = MEMORY[0x277CB8428];
  v6 = [a1 sampleTime];
  [a1 sampleRate];
  v7 = [v5 timeWithSampleTime:v6 + a3 atRate:?];
  v8 = [v7 extrapolateTimeFromAnchor:a1];

  return v8;
}

- (id)rc_adjustedBySeconds:()RCAdditions
{
  [a1 sampleRate];
  v5 = [MEMORY[0x277CB8428] timeWithSampleTime:objc_msgSend(a1 atRate:{"sampleTime") + (v4 * a2), v4}];
  v6 = [v5 extrapolateTimeFromAnchor:a1];

  return v6;
}

- (uint64_t)rc_hostTimeInSeconds
{
  v1 = MEMORY[0x277CB8428];
  v2 = [a1 hostTime];

  return [v1 secondsForHostTime:v2];
}

@end