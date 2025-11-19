@interface SBCornerFingerPanGestureSettings
+ (id)settingsControllerModule;
- (double)angleDegreesAscendingLUT:(BOOL)a3;
- (double)distanceMillimetersValues:(BOOL)a3;
- (double)maximumActiveDistance:(BOOL)a3;
- (unint64_t)vectorCount:(BOOL)a3;
- (void)setDefaultValues;
@end

@implementation SBCornerFingerPanGestureSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBCornerFingerPanGestureSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBCornerFingerPanGestureSettings *)self setTuning:1];
}

+ (id)settingsControllerModule
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431B8] rowWithTitle:@"Tuning Profile" valueKeyPath:@"tuning"];
  [v2 setPossibleTitles:&unk_28336E610];
  [v2 setPossibleShortTitles:&unk_28336E628];
  [v2 setPossibleValues:&unk_28336E640];
  v3 = MEMORY[0x277D43210];
  v11[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [v3 sectionWithRows:v4 title:@"Tuning Configuration"];

  v6 = MEMORY[0x277D43210];
  v10 = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v8 = [v6 moduleWithTitle:@"Corner Finger Gesture" contents:v7];

  return v8;
}

- (double)angleDegreesAscendingLUT:(BOOL)a3
{
  tuning = self->_tuning;
  if (tuning > 1)
  {
    if (tuning == 2)
    {
      return &LUT_2;
    }

    if (tuning == 3)
    {
      return &LUT_3;
    }

    return 0;
  }

  if (tuning)
  {
    if (tuning == 1)
    {
      v4 = &LUT_LANDSCAPE_1;
      v5 = &LUT_PORTRAIT_1;
      goto LABEL_10;
    }

    return 0;
  }

  v4 = &LUT_LANDSCAPE_0;
  v5 = &LUT_PORTRAIT_0;
LABEL_10:
  if (a3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (double)distanceMillimetersValues:(BOOL)a3
{
  tuning = self->_tuning;
  if (tuning > 1)
  {
    if (tuning == 2)
    {
      return &DIST_2;
    }

    if (tuning == 3)
    {
      return &DIST_3;
    }

    return 0;
  }

  if (tuning)
  {
    if (tuning == 1)
    {
      v4 = &DIST_LANDSCAPE_1;
      v5 = &DIST_PORTRAIT_1;
      goto LABEL_10;
    }

    return 0;
  }

  v4 = &DIST_LANDSCAPE_0;
  v5 = &DIST_PORTRAIT_0;
LABEL_10:
  if (a3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)vectorCount:(BOOL)a3
{
  tuning = self->_tuning;
  if (tuning - 2 < 2)
  {
    return 17;
  }

  if (tuning == 1)
  {
    v4 = !a3;
    v5 = 15;
  }

  else
  {
    if (tuning)
    {
      return 0;
    }

    v4 = !a3;
    v5 = 14;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 18;
  }
}

- (double)maximumActiveDistance:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBCornerFingerPanGestureSettings *)self distanceMillimetersValues:?];
  if (![(SBCornerFingerPanGestureSettings *)self vectorCount:v3])
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v7 = fmax(v7, v5[v6++]);
  }

  while (v6 < [(SBCornerFingerPanGestureSettings *)self vectorCount:v3]);
  return v7;
}

@end