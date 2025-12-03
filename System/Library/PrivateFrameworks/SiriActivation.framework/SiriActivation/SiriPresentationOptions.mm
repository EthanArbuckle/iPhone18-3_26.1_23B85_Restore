@interface SiriPresentationOptions
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SiriPresentationOptions)initWithBuilder:(id)builder;
- (SiriPresentationOptions)initWithCoder:(id)coder;
- (SiriPresentationOptions)initWithWakeScreen:(BOOL)screen hideOtherWindowsDuringAppearance:(BOOL)appearance shouldAllowBiometricAutoUnlock:(BOOL)unlock shouldDeactivateScenesBelow:(BOOL)below rotationStyle:(int64_t)style requestSource:(int64_t)source inputType:(int64_t)type launchActions:(id)self0;
- (id)description;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriPresentationOptions

- (id)description
{
  v36[8] = *MEMORY[0x1E69E9840];
  v33 = objc_alloc(MEMORY[0x1E696AEC0]);
  v35.receiver = self;
  v35.super_class = SiriPresentationOptions;
  v3 = [(SiriPresentationOptions *)&v35 description];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_wakeScreen)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v34 = [v4 initWithFormat:@"wakeScreen = %@", v5];
  v36[0] = v34;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_hideOtherWindowsDuringAppearance)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v32 = [v6 initWithFormat:@"hideOtherWindowsDuringAppearance = %@", v7];
  v36[1] = v32;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_shouldAllowBiometricAutoUnlock)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v31 = [v8 initWithFormat:@"shouldAllowBiometricAutoUnlock = %@", v9];
  v36[2] = v31;
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_shouldDeactivateScenesBelow)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v30 = [v10 initWithFormat:@"shouldDeactivateScenesBelow = %@", v11];
  v36[3] = v30;
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  rotationStyle = self->_rotationStyle;
  v29 = SiriPresentationRotationStyleGetName(rotationStyle);
  v28 = [v12 initWithFormat:@"rotationStyle = %ld (%@)", rotationStyle, v29];
  v36[4] = v28;
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestSource];
  v16 = [v14 initWithFormat:@"requestSource = %@", v15];
  v36[5] = v16;
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:self->_inputType];
  v19 = [v17 initWithFormat:@"inputType = %@", v18];
  v36[6] = v19;
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = [(NSSet *)self->_launchActions description];
  v22 = [v20 initWithFormat:@"launchActions = %@", v21];
  v36[7] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:8];
  v24 = [v23 componentsJoinedByString:{@", "}];
  v25 = [v33 initWithFormat:@"%@ {%@}", v3, v24];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (SiriPresentationOptions)initWithBuilder:(id)builder
{
  v4 = [SiriPresentationOptions newWithBuilder:builder];

  return v4;
}

- (SiriPresentationOptions)initWithWakeScreen:(BOOL)screen hideOtherWindowsDuringAppearance:(BOOL)appearance shouldAllowBiometricAutoUnlock:(BOOL)unlock shouldDeactivateScenesBelow:(BOOL)below rotationStyle:(int64_t)style requestSource:(int64_t)source inputType:(int64_t)type launchActions:(id)self0
{
  actionsCopy = actions;
  v23.receiver = self;
  v23.super_class = SiriPresentationOptions;
  v18 = [(SiriPresentationOptions *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_wakeScreen = screen;
    v18->_hideOtherWindowsDuringAppearance = appearance;
    v18->_shouldAllowBiometricAutoUnlock = unlock;
    v18->_shouldDeactivateScenesBelow = below;
    v18->_rotationStyle = style;
    v18->_requestSource = source;
    v18->_inputType = type;
    v20 = [actionsCopy copy];
    launchActions = v19->_launchActions;
    v19->_launchActions = v20;
  }

  return v19;
}

- (unint64_t)hash
{
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_wakeScreen];
  v3 = [v18 hash];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_hideOtherWindowsDuringAppearance];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldAllowBiometricAutoUnlock];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldDeactivateScenesBelow];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rotationStyle];
  v11 = [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestSource];
  v13 = v11 ^ [v12 hash];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_inputType];
  v15 = v9 ^ v13 ^ [v14 hash];
  v16 = [(NSSet *)self->_launchActions hash];

  return v15 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      wakeScreen = self->_wakeScreen;
      if (wakeScreen == [(SiriPresentationOptions *)v5 wakeScreen]&& (hideOtherWindowsDuringAppearance = self->_hideOtherWindowsDuringAppearance, hideOtherWindowsDuringAppearance == [(SiriPresentationOptions *)v5 hideOtherWindowsDuringAppearance]) && (shouldAllowBiometricAutoUnlock = self->_shouldAllowBiometricAutoUnlock, shouldAllowBiometricAutoUnlock == [(SiriPresentationOptions *)v5 shouldAllowBiometricAutoUnlock]) && (shouldDeactivateScenesBelow = self->_shouldDeactivateScenesBelow, shouldDeactivateScenesBelow == [(SiriPresentationOptions *)v5 shouldDeactivateScenesBelow]) && (rotationStyle = self->_rotationStyle, rotationStyle == [(SiriPresentationOptions *)v5 rotationStyle]) && (requestSource = self->_requestSource, requestSource == [(SiriPresentationOptions *)v5 requestSource]) && (inputType = self->_inputType, inputType == [(SiriPresentationOptions *)v5 inputType]))
      {
        launchActions = [(SiriPresentationOptions *)v5 launchActions];
        launchActions = self->_launchActions;
        v15 = launchActions == launchActions || [(NSSet *)launchActions isEqual:launchActions];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (SiriPresentationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SiriPresentationOptions::wakeScreen"];
  bOOLValue = [v4 BOOLValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SiriPresentationOptions::hideOtherWindowsDuringAppearance"];
  bOOLValue2 = [v6 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SiriPresentationOptions::shouldAllowBiometricAutoUnlock"];
  bOOLValue3 = [v8 BOOLValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SiriPresentationOptions::shouldDeactivateScenesBelow"];
  bOOLValue4 = [v10 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SiriPresentationOptions::rotationStyle"];
  integerValue = [v12 integerValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SiriPresentationOptions::requestSource"];
  integerValue2 = [v14 integerValue];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SiriPresentationOptions::inputType"];
  integerValue3 = [v16 integerValue];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"SiriPresentationOptions::launchActions"];

  v22 = [(SiriPresentationOptions *)self initWithWakeScreen:bOOLValue hideOtherWindowsDuringAppearance:bOOLValue2 shouldAllowBiometricAutoUnlock:bOOLValue3 shouldDeactivateScenesBelow:bOOLValue4 rotationStyle:integerValue requestSource:integerValue2 inputType:integerValue3 launchActions:v21];
  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  wakeScreen = self->_wakeScreen;
  coderCopy = coder;
  v6 = [v4 numberWithBool:wakeScreen];
  [coderCopy encodeObject:v6 forKey:@"SiriPresentationOptions::wakeScreen"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_hideOtherWindowsDuringAppearance];
  [coderCopy encodeObject:v7 forKey:@"SiriPresentationOptions::hideOtherWindowsDuringAppearance"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldAllowBiometricAutoUnlock];
  [coderCopy encodeObject:v8 forKey:@"SiriPresentationOptions::shouldAllowBiometricAutoUnlock"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldDeactivateScenesBelow];
  [coderCopy encodeObject:v9 forKey:@"SiriPresentationOptions::shouldDeactivateScenesBelow"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rotationStyle];
  [coderCopy encodeObject:v10 forKey:@"SiriPresentationOptions::rotationStyle"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestSource];
  [coderCopy encodeObject:v11 forKey:@"SiriPresentationOptions::requestSource"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_inputType];
  [coderCopy encodeObject:v12 forKey:@"SiriPresentationOptions::inputType"];

  [coderCopy encodeObject:self->_launchActions forKey:@"SiriPresentationOptions::launchActions"];
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SiriPresentationOptionsMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SiriPresentationOptionsMutation *)v4 generate];

  return generate;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SiriPresentationOptionsMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SiriPresentationOptionsMutation *)v5 generate];
  }

  else
  {
    generate = [(SiriPresentationOptions *)self copy];
  }

  return generate;
}

@end