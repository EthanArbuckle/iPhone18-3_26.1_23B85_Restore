@interface UIObservationTrackingFeedbackLoopThreshold
@end

@implementation UIObservationTrackingFeedbackLoopThreshold

void ___UIObservationTrackingFeedbackLoopThreshold_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  qword_1ED49F4F0 = [v0 integerForKey:@"UIObservationTrackingFeedbackLoopThreshold"];

  if (qword_1ED49F4F0)
  {
    if ((qword_1ED49F4F0 & 0x8000000000000000) == 0)
    {
      return;
    }

LABEL_7:
    qword_1ED49F4F0 = 0;
    return;
  }

  v1 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_ObservationTrackingFeedbackLoopThreshold, @"ObservationTrackingFeedbackLoopThreshold", _UIInternalPreferenceUpdateInteger);
  v2 = qword_1ED48B310;
  if (v1)
  {
    v2 = 40;
  }

  qword_1ED49F4F0 = v2;
  if (v2 < 0)
  {
    goto LABEL_7;
  }
}

@end