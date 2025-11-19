@interface _UIFocusAnimationConfiguration
+ (_UIFocusAnimationConfiguration)configurationWithStyle:(int64_t)a3;
- (_UIFocusAnimationConfiguration)init;
- (double)_focusingVelocityBasedDurationScaleFactorForAnimationInContext:(id)a3;
- (double)_unfocusingRepositionVelocityBasedDurationScaleFactorForAnimationInContext:(id)a3;
- (double)_unfocusingVelocityBasedDurationScaleFactorForAnimationInContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UIFocusAnimationConfiguration

- (_UIFocusAnimationConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _UIFocusAnimationConfiguration;
  result = [(_UIFocusAnimationConfiguration *)&v3 init];
  if (result)
  {
    result->_focusingDurationScaleFactorUpperBound = 1.0;
    result->_unfocusingDurationScaleFactorUpperBound = 1.0;
    result->_unfocusingBackgroundFadeDurationPercentage = 1.0;
  }

  return result;
}

+ (_UIFocusAnimationConfiguration)configurationWithStyle:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setAnimationOptions:327686];
  v5 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AE00, @"FocusAnimationDefaultFocusingBaseDuration");
  v6 = *&qword_1ED48AE08;
  if (v5)
  {
    v6 = 0.0;
  }

  [v4 setFocusingBaseDuration:v6];
  v7 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AE10, @"FocusAnimationDefaultUnfocusingBaseDuration");
  v8 = *&qword_1ED48AE18;
  if (v7)
  {
    v8 = 0.0;
  }

  [v4 setUnfocusingBaseDuration:v8];
  v9 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AE30, @"FocusAnimationDefaultFocusingDurationScaleFactorLowerBound");
  v10 = *&qword_1ED48AE38;
  if (v9)
  {
    v10 = 0.0;
  }

  [v4 setFocusingDurationScaleFactorLowerBound:v10];
  v11 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AE40, @"FocusAnimationDefaultFocusingDurationScaleFactorUpperBound");
  v12 = *&qword_1ED48AE48;
  if (v11)
  {
    v12 = 1.0;
  }

  [v4 setFocusingDurationScaleFactorUpperBound:v12];
  v13 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AE50, @"FocusAnimationDefaultUnfocusingDurationScaleFactorLowerBound");
  v14 = *&qword_1ED48AE58;
  if (v13)
  {
    v14 = 0.3;
  }

  [v4 setUnfocusingDurationScaleFactorLowerBound:v14];
  v15 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AE60, @"FocusAnimationDefaultUnfocusingDurationScaleFactorUpperBound");
  v16 = *&qword_1ED48AE68;
  if (v15)
  {
    v16 = 1.0;
  }

  [v4 setUnfocusingDurationScaleFactorUpperBound:v16];
  v17 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AE70, @"FocusAnimationDefaultMinimumFocusDuration");
  v18 = *&qword_1ED48AE78;
  if (v17)
  {
    v18 = 0.035;
  }

  [v4 setMinimumFocusDuration:v18];
  v19 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AE80, @"FocusAnimationDefaultUnfocusingRepositionBaseDuration");
  v20 = *&qword_1ED48AE88;
  if (v19)
  {
    v20 = 0.9;
  }

  [v4 setUnfocusingRepositionBaseDuration:v20];
  v21 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AE90, @"FocusAnimationDefaultUnfocusingBackgroundFadeDurationPercentage");
  v22 = *&qword_1ED48AE98;
  if (v21)
  {
    v22 = 1.0;
  }

  [v4 setUnfocusingBackgroundFadeDurationPercentage:v22];
  if (a3 == 2)
  {
    v25 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AE20, @"FocusAnimationListUnfocusingBaseDuration");
    v26 = *&qword_1ED48AE28;
    if (v25)
    {
      v26 = 0.0;
    }

    [v4 setUnfocusingBaseDuration:v26];
    v27 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AEB0, @"FocusAnimationListUnfocusingBackgroundFadeDurationPercentage");
    v24 = *&qword_1ED48AEB8;
    if (v27)
    {
      v24 = 0.3;
    }
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_29;
    }

    v23 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AEA0, @"FocusAnimationButtonUnfocusingBackgroundFadeDurationPercentage");
    v24 = *&qword_1ED48AEA8;
    if (v23)
    {
      v24 = 0.15;
    }
  }

  [v4 setUnfocusingBackgroundFadeDurationPercentage:v24];
LABEL_29:

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_UIFocusAnimationConfiguration);
  [(_UIFocusAnimationConfiguration *)v4 setAnimationOptions:[(_UIFocusAnimationConfiguration *)self animationOptions]];
  [(_UIFocusAnimationConfiguration *)self focusingDelay];
  [(_UIFocusAnimationConfiguration *)v4 setFocusingDelay:?];
  [(_UIFocusAnimationConfiguration *)self focusingBaseDuration];
  [(_UIFocusAnimationConfiguration *)v4 setFocusingBaseDuration:?];
  [(_UIFocusAnimationConfiguration *)self unfocusingBaseDuration];
  [(_UIFocusAnimationConfiguration *)v4 setUnfocusingBaseDuration:?];
  [(_UIFocusAnimationConfiguration *)self focusingDurationScaleFactorLowerBound];
  [(_UIFocusAnimationConfiguration *)v4 setFocusingDurationScaleFactorLowerBound:?];
  [(_UIFocusAnimationConfiguration *)self focusingDurationScaleFactorUpperBound];
  [(_UIFocusAnimationConfiguration *)v4 setFocusingDurationScaleFactorUpperBound:?];
  [(_UIFocusAnimationConfiguration *)self unfocusingDurationScaleFactorLowerBound];
  [(_UIFocusAnimationConfiguration *)v4 setUnfocusingDurationScaleFactorLowerBound:?];
  [(_UIFocusAnimationConfiguration *)self unfocusingDurationScaleFactorUpperBound];
  [(_UIFocusAnimationConfiguration *)v4 setUnfocusingDurationScaleFactorUpperBound:?];
  [(_UIFocusAnimationConfiguration *)self minimumFocusDuration];
  [(_UIFocusAnimationConfiguration *)v4 setMinimumFocusDuration:?];
  [(_UIFocusAnimationConfiguration *)self unfocusingRepositionBaseDuration];
  [(_UIFocusAnimationConfiguration *)v4 setUnfocusingRepositionBaseDuration:?];
  [(_UIFocusAnimationConfiguration *)self unfocusingBackgroundFadeDurationPercentage];
  [(_UIFocusAnimationConfiguration *)v4 setUnfocusingBackgroundFadeDurationPercentage:?];
  return v4;
}

- (double)_focusingVelocityBasedDurationScaleFactorForAnimationInContext:(id)a3
{
  v4 = _UIFocusAnimationNormalizedDurationScaleFactorInContext(a3);
  [(_UIFocusAnimationConfiguration *)self focusingDurationScaleFactorLowerBound];
  v6 = v5;
  [(_UIFocusAnimationConfiguration *)self focusingDurationScaleFactorUpperBound];
  return v6 + v4 * (v7 - v6);
}

- (double)_unfocusingVelocityBasedDurationScaleFactorForAnimationInContext:(id)a3
{
  v4 = _UIFocusAnimationNormalizedDurationScaleFactorInContext(a3);
  [(_UIFocusAnimationConfiguration *)self unfocusingDurationScaleFactorLowerBound];
  v6 = v5;
  [(_UIFocusAnimationConfiguration *)self unfocusingDurationScaleFactorUpperBound];
  return v6 + v4 * (v7 - v6);
}

- (double)_unfocusingRepositionVelocityBasedDurationScaleFactorForAnimationInContext:(id)a3
{
  v4 = a3;
  [(_UIFocusAnimationConfiguration *)self unfocusingDurationScaleFactorLowerBound];
  v6 = v5;
  [(_UIFocusAnimationConfiguration *)self unfocusingBaseDuration];
  v8 = v7;
  [(_UIFocusAnimationConfiguration *)self unfocusingRepositionBaseDuration];
  v10 = v6 * (v8 / v9);
  v11 = _UIFocusAnimationNormalizedDurationScaleFactorInContext(v4);

  v12 = pow(v11, 1.5);
  [(_UIFocusAnimationConfiguration *)self unfocusingDurationScaleFactorUpperBound];
  return v10 + v12 * (v13 - v10);
}

@end