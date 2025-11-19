@interface TKVibrationRecorderProgressDotImageView
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation TKVibrationRecorderProgressDotImageView

- (BOOL)isAccessibilityElement
{
  v2 = [(TKVibrationRecorderProgressDotImageView *)self accessibilityValue];
  v3 = v2 != 0;

  return v3;
}

- (id)accessibilityValue
{
  v3 = TLLocalizedString();
  if ([@"VIBRATION_RECORDER_PROGRESS_DOT_VALUE_FORMAT" isEqualToString:v3])
  {
    v4 = 0;
  }

  else
  {
    [(TKVibrationRecorderProgressDotImageView *)self timeInterval];
    v5 = [TKVibrationInterfaceUtilities descriptionForDuration:?];
    [(TKVibrationRecorderProgressDotImageView *)self duration];
    v6 = [TKVibrationInterfaceUtilities descriptionForDuration:?];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:v3, v5, v6];
    [(TKVibrationRecorderProgressDotImageView *)self previousPauseTimeInterval];
    if (v7 > 0.0)
    {
      v8 = v7;
      v9 = TLLocalizedString();
      if (([@"VIBRATION_RECORDER_PROGRESS_DOT_PREVIOUS_PAUSE_FORMAT" isEqualToString:v9] & 1) == 0)
      {
        v10 = [TKVibrationInterfaceUtilities descriptionForDuration:v8];
        [(TKVibrationRecorderProgressDotImageView *)self previousPauseDuration];
        v11 = [TKVibrationInterfaceUtilities descriptionForDuration:?];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v10, v11];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v4, v12];

        v4 = v13;
      }
    }
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  [(TKVibrationRecorderProgressDotImageView *)self accessibilityFrameAdditionalHeight];
  v4 = v3;
  v5.receiver = self;
  v5.super_class = TKVibrationRecorderProgressDotImageView;
  [(TKVibrationRecorderProgressDotImageView *)&v5 accessibilityFrame];
  return CGRectInset(v6, 0.0, v4 * -0.5);
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TKVibrationRecorderProgressDotImageView;
  return [(TKVibrationRecorderProgressDotImageView *)&v3 accessibilityTraits]& ~*MEMORY[0x277D76560];
}

@end