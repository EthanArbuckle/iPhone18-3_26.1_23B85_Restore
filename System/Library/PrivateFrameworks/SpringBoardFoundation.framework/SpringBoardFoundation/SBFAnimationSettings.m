@interface SBFAnimationSettings
+ (BOOL)ignoresKey:(id)a3;
+ (id)_moduleWithSectionTitle:(id)a3 delay:(BOOL)a4 frameRate:(BOOL)a5;
- (SBFAnimationSettings)initWithDefaultValues;
- (double)calculatedDuration;
- (id)BSAnimationSettings;
- (void)dealloc;
- (void)setDefaultValues;
- (void)setFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4;
- (void)setSpeed:(double)a3;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
@end

@implementation SBFAnimationSettings

- (id)BSAnimationSettings
{
  exportedSettings = self->_exportedSettings;
  if (exportedSettings)
  {
    goto LABEL_25;
  }

  v4 = [(SBFAnimationSettings *)self curve];
  if (v4 == 393216)
  {
    v5 = [(SBFAnimationSettings *)self controlPoint1Settings];
    [v5 pointValue];
    v7 = v6;
    v9 = v8;

    v10 = [(SBFAnimationSettings *)self controlPoint2Settings];
    [v10 pointValue];
    v12 = v11;
    v14 = v13;

    *&v15 = v7;
    *&v16 = v9;
    *&v17 = v12;
    *&v18 = v14;
    v19 = [MEMORY[0x1E69793D0] functionWithControlPoints:v15 :v16 :v17 :v18];
LABEL_14:
    v20 = v19;
    goto LABEL_15;
  }

  v20 = 0;
  v21 = __ROR8__(v4, 16);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = MEMORY[0x1E69793D0];
      v23 = MEMORY[0x1E6979ED0];
      goto LABEL_13;
    }

    if (v21 == 3)
    {
      v22 = MEMORY[0x1E69793D0];
      v23 = MEMORY[0x1E6979ED8];
      goto LABEL_13;
    }
  }

  else
  {
    if (!v21)
    {
      v22 = MEMORY[0x1E69793D0];
      v23 = MEMORY[0x1E6979EB8];
      goto LABEL_13;
    }

    if (v21 == 1)
    {
      v22 = MEMORY[0x1E69793D0];
      v23 = MEMORY[0x1E6979EB0];
LABEL_13:
      v19 = [v22 functionWithName:*v23];
      goto LABEL_14;
    }
  }

LABEL_15:
  if ([(SBFAnimationSettings *)self animationType]== 1)
  {
    v24 = MEMORY[0x1E698E708];
    [(SBFAnimationSettings *)self mass];
    v26 = v25;
    [(SBFAnimationSettings *)self stiffness];
    v28 = v27;
    [(SBFAnimationSettings *)self damping];
    v30 = v29;
    [(SBFAnimationSettings *)self epsilon];
    v32 = v31;
    [(SBFAnimationSettings *)self delay];
    v34 = [v24 settingsWithMass:v20 stiffness:v26 damping:v28 epsilon:v30 delay:v32 timingFunction:v33];
    [(SBFAnimationSettings *)self initialVelocity];
    [v34 setInitialVelocity:?];
  }

  else
  {
    v35 = MEMORY[0x1E698E6D8];
    [(SBFAnimationSettings *)self duration];
    v37 = v36;
    [(SBFAnimationSettings *)self delay];
    v34 = [v35 settingsWithDuration:v20 delay:v37 timingFunction:v38];
  }

  speed = self->_speed;
  *&speed = speed;
  [v34 setSpeed:speed];
  v40 = [(SBFAnimationSettings *)self preferredFrameRateRange];
  [v40 frameRateRange];
  IsEqualToRange = CAFrameRateRangeIsEqualToRange(v50, *MEMORY[0x1E69792B8]);

  if (IsEqualToRange)
  {
    frameRate = self->_frameRate;
    if (frameRate)
    {
      [v34 setFrameInterval:1.0 / frameRate];
    }
  }

  else
  {
    [(PTFrameRateRangeSettings *)self->_preferredFrameRateRange frameRateRange];
    [v34 setPreferredFrameRateRange:?];
  }

  v43 = [(SBFAnimationSettings *)self preferredFrameRateRange];
  v44 = [v43 highFrameRateReason];

  if (v44)
  {
    v45 = [(SBFAnimationSettings *)self preferredFrameRateRange];
    [v34 setHighFrameRateReason:{objc_msgSend(v45, "highFrameRateReason")}];
  }

  v46 = [v34 copy];
  v47 = self->_exportedSettings;
  self->_exportedSettings = v46;

  exportedSettings = self->_exportedSettings;
LABEL_25:

  return exportedSettings;
}

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = SBFAnimationSettings;
  [(PTSettings *)&v4 setDefaultValues];
  [(SBFAnimationSettings *)self setAnimationType:0];
  [(SBFAnimationSettings *)self setCurve:0];
  [(SBFAnimationSettings *)self setDuration:0.3];
  [(SBFAnimationSettings *)self setDelay:0.0];
  [(SBFAnimationSettings *)self setMass:1.0];
  [(SBFAnimationSettings *)self setStiffness:1000.0];
  [(SBFAnimationSettings *)self setDamping:500.0];
  [(SBFAnimationSettings *)self setInitialVelocity:0.0];
  [(SBFAnimationSettings *)self setSpeed:1.0];
  [(SBFAnimationSettings *)self setFrameRate:0];
  v3 = [(SBFAnimationSettings *)self preferredFrameRateRange];
  [v3 setDefaultValues];
}

- (SBFAnimationSettings)initWithDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBFAnimationSettings;
  v2 = [(PTSettings *)&v5 initWithDefaultValues];
  v3 = v2;
  if (v2)
  {
    [(PTSettings *)v2 addKeyPathObserver:v2];
  }

  return v3;
}

- (void)dealloc
{
  [(PTSettings *)self removeKeyPathObserver:self];
  v3.receiver = self;
  v3.super_class = SBFAnimationSettings;
  [(PTSettings *)&v3 dealloc];
}

+ (BOOL)ignoresKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"calculatedDuration"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"speed"];
  }

  return v4;
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isEqualToString:@"calculatedDuration"] & 1) == 0)
  {
    exportedSettings = self->_exportedSettings;
    self->_exportedSettings = 0;

    [(PTSettings *)self invalidateValueForKey:@"calculatedDuration"];
  }

  v9.receiver = self;
  v9.super_class = SBFAnimationSettings;
  [(PTSettings *)&v9 settings:v6 changedValueForKeyPath:v7];
}

- (void)setSpeed:(double)a3
{
  if (self->_speed != a3)
  {
    self->_speed = a3;
    self->_exportedSettings = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4
{
  v4 = *&a4;
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  v11 = [(SBFAnimationSettings *)self preferredFrameRateRange];
  *&v8 = minimum;
  *&v9 = maximum;
  *&v10 = preferred;
  [v11 setFrameRateRange:v4 highFrameRateReason:{v8, v9, v10}];
}

- (double)calculatedDuration
{
  v2 = [(SBFAnimationSettings *)self BSAnimationSettings];
  [v2 duration];
  v4 = v3;

  return v4;
}

+ (id)_moduleWithSectionTitle:(id)a3 delay:(BOOL)a4 frameRate:(BOOL)a5
{
  v55 = a5;
  v5 = a4;
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"animationType == %d", 1];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"animationType == %d", 0];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"curve == %d", 393216];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Animation" valueKeyPath:@"animationType"];
  v12 = [v11 possibleValues:&unk_1F3D3ED90 titles:&unk_1F3D3EDA8];
  [v10 addObject:v12];

  v13 = [MEMORY[0x1E69C6620] rowWithTitle:@"Duration" valueKeyPath:@"duration"];
  v14 = [v13 between:0.0 and:10.0];
  v15 = [v14 condition:v8];
  [v10 addObject:v15];

  if (v5)
  {
    v16 = [MEMORY[0x1E69C6620] rowWithTitle:@"Delay" valueKeyPath:@"delay"];
    v17 = [v16 between:-1.0 and:10.0];
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E69C6620] rowWithTitle:@"Mass" valueKeyPath:@"mass"];
  v19 = [v18 between:0.0 and:10000.0];
  v20 = [v19 condition:v7];
  [v10 addObject:v20];

  v21 = [MEMORY[0x1E69C6620] rowWithTitle:@"Stiffness" valueKeyPath:@"stiffness"];
  v22 = [v21 between:0.0 and:1000000.0];
  v23 = [v22 precision:2];
  v24 = [v23 condition:v7];
  [v10 addObject:v24];

  v25 = [MEMORY[0x1E69C6620] rowWithTitle:@"Damping" valueKeyPath:@"damping"];
  v26 = [v25 between:0.0 and:1000000.0];
  v27 = [v26 precision:2];
  v28 = [v27 condition:v7];
  [v10 addObject:v28];

  v29 = [MEMORY[0x1E69C6620] rowWithTitle:@"Epsilon" valueKeyPath:@"epsilon"];
  v30 = [v29 between:0.0 and:0.5];
  v31 = [v30 precision:4];
  v32 = [v31 condition:v7];
  [v10 addObject:v32];

  v33 = [MEMORY[0x1E69C6620] rowWithTitle:@"Initial Velocity" valueKeyPath:@"initialVelocity"];
  v34 = [v33 between:0.0 and:10000.0];
  v35 = [v34 precision:2];
  v36 = [v35 condition:v7];
  [v10 addObject:v36];

  v37 = [SBReadonlyRow rowWithTitle:@"Calculated Duration" valueKeyPath:@"calculatedDuration"];
  v38 = [v37 condition:v7];
  v39 = [v38 valueFormatter:&__block_literal_global_27];
  [v10 addObject:v39];

  v40 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Curve" valueKeyPath:@"curve"];
  v41 = [v40 possibleValues:&unk_1F3D3EDD8 titles:&unk_1F3D3EDC0];
  [v10 addObject:v41];

  v42 = [MEMORY[0x1E69C6608] rowWithTitle:@"Control Point 1" childSettingsKeyPath:@"controlPoint1Settings"];
  v43 = [v42 condition:v9];
  [v10 addObject:v43];

  v44 = [MEMORY[0x1E69C6608] rowWithTitle:@"Control Point 2" childSettingsKeyPath:@"controlPoint2Settings"];
  v45 = [v44 condition:v9];
  [v10 addObject:v45];

  if (v55)
  {
    v46 = [MEMORY[0x1E69C6608] rowWithTitle:@"Frame Rate Range" childSettingsKeyPath:@"preferredFrameRateRange"];
    [v10 addObject:v46];

    v47 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Frame Rate (Deprecated)" valueKeyPath:@"frameRate"];
    v48 = [v47 possibleValues:&unk_1F3D3EE20 titles:&unk_1F3D3EDF0];
    v49 = [v48 possibleShortTitles:&unk_1F3D3EE08];
    [v10 addObject:v49];
  }

  v50 = MEMORY[0x1E69C6630];
  v51 = [MEMORY[0x1E69C6630] sectionWithRows:v10 title:v6];
  v56[0] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
  v53 = [v50 moduleWithTitle:0 contents:v52];

  return v53;
}

uint64_t __64__SBFAnimationSettings__moduleWithSectionTitle_delay_frameRate___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  [a2 doubleValue];
  return [v2 stringWithFormat:@"%g", v3];
}

@end