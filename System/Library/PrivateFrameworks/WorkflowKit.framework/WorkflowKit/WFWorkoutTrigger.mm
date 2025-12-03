@interface WFWorkoutTrigger
+ (BOOL)isSupportedOnThisDevice;
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)offIcon;
+ (id)onIcon;
+ (id)workoutColors;
- (BOOL)hasValidConfiguration;
- (WFWorkoutTrigger)init;
- (WFWorkoutTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkoutTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B6E0 serializedParameterArray:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = WFWorkoutTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:zone];
  [v4 setSelection:{-[WFWorkoutTrigger selection](self, "selection")}];
  selectedWorkoutTypes = [(WFWorkoutTrigger *)self selectedWorkoutTypes];
  v6 = [selectedWorkoutTypes copy];
  [v4 setSelectedWorkoutTypes:v6];

  [v4 setOnStart:{-[WFWorkoutTrigger onStart](self, "onStart")}];
  [v4 setOnEnd:{-[WFWorkoutTrigger onEnd](self, "onEnd")}];
  return v4;
}

- (WFWorkoutTrigger)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = WFWorkoutTrigger;
  v5 = [(WFTrigger *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selection"];
    v7 = v6;
    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 1;
    }

    v5->_selection = unsignedIntegerValue;
    v9 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"selectedWorkouts"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_selectedWorkoutTypes, v14);

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onStart"];
    v5->_onStart = [v15 BOOLValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onEnd"];
    v5->_onEnd = [v16 BOOLValue];

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = WFWorkoutTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v9 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFWorkoutTrigger selection](self, "selection", v9.receiver, v9.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"selection"];

  selectedWorkoutTypes = [(WFWorkoutTrigger *)self selectedWorkoutTypes];
  [coderCopy encodeObject:selectedWorkoutTypes forKey:@"selectedWorkouts"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFWorkoutTrigger onStart](self, "onStart")}];
  [coderCopy encodeObject:v7 forKey:@"onStart"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFWorkoutTrigger onEnd](self, "onEnd")}];
  [coderCopy encodeObject:v8 forKey:@"onEnd"];
}

- (id)localizedPastTenseDescription
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(WFWorkoutTrigger *)self selection])
  {
    selectedWorkoutTypes = [(WFWorkoutTrigger *)self selectedWorkoutTypes];
    v4 = [selectedWorkoutTypes count];

    if (v4 == 1)
    {
      v5 = [WFWorkoutType alloc];
      selectedWorkoutTypes2 = [(WFWorkoutTrigger *)self selectedWorkoutTypes];
      firstObject = [selectedWorkoutTypes2 firstObject];
      v8 = -[WFWorkoutType initWithActivityType:](v5, "initWithActivityType:", [firstObject unsignedIntegerValue]);
      name = [(WFWorkoutType *)v8 name];

      if ([(WFWorkoutTrigger *)self onStart]&& [(WFWorkoutTrigger *)self onEnd])
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = @"%@ workout started or ended";
      }

      else if ([(WFWorkoutTrigger *)self onStart])
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = @"%@ workout started";
      }

      else
      {
        if (![(WFWorkoutTrigger *)self onEnd])
        {
          v20 = getWFTriggersLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315394;
            v24 = "[WFWorkoutTrigger localizedPastTenseDescription]";
            v25 = 2114;
            selfCopy2 = self;
            _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
          }

          v15 = &stru_1F4A1C408;
          goto LABEL_24;
        }

        v10 = MEMORY[0x1E696AEC0];
        v11 = @"%@ workout ended";
      }

      v16 = WFLocalizedString(v11);
      v15 = [v10 localizedStringWithFormat:v16, name];

LABEL_24:
      goto LABEL_36;
    }

    if ([(WFWorkoutTrigger *)self onStart]&& [(WFWorkoutTrigger *)self onEnd])
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = @"Any of %lu workouts started or ended";
LABEL_27:
      v17 = WFLocalizedPluralString(v14);
      selectedWorkoutTypes3 = [(WFWorkoutTrigger *)self selectedWorkoutTypes];
      v15 = [v13 localizedStringWithFormat:v17, objc_msgSend(selectedWorkoutTypes3, "count")];

      goto LABEL_36;
    }

    if ([(WFWorkoutTrigger *)self onStart])
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = @"Any of %lu workouts started";
      goto LABEL_27;
    }

    if ([(WFWorkoutTrigger *)self onEnd])
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = @"Any of %lu workouts ended";
      goto LABEL_27;
    }

    v19 = getWFTriggersLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if ([(WFWorkoutTrigger *)self onStart]&& [(WFWorkoutTrigger *)self onEnd])
  {
    v12 = @"Any workout started or ended";
LABEL_20:
    v15 = WFLocalizedString(v12);
    goto LABEL_36;
  }

  if ([(WFWorkoutTrigger *)self onStart])
  {
    v12 = @"Any workout started";
    goto LABEL_20;
  }

  if ([(WFWorkoutTrigger *)self onEnd])
  {
    v12 = @"Any workout ended";
    goto LABEL_20;
  }

  v19 = getWFTriggersLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
LABEL_34:
    *buf = 136315394;
    v24 = "[WFWorkoutTrigger localizedPastTenseDescription]";
    v25 = 2114;
    selfCopy2 = self;
    _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

LABEL_35:

  v15 = &stru_1F4A1C408;
LABEL_36:
  v21 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(WFWorkoutTrigger *)self selection])
  {
    selectedWorkoutTypes = [(WFWorkoutTrigger *)self selectedWorkoutTypes];
    v4 = [selectedWorkoutTypes count];

    if (v4 == 1)
    {
      v5 = [WFWorkoutType alloc];
      selectedWorkoutTypes2 = [(WFWorkoutTrigger *)self selectedWorkoutTypes];
      firstObject = [selectedWorkoutTypes2 firstObject];
      v8 = -[WFWorkoutType initWithActivityType:](v5, "initWithActivityType:", [firstObject unsignedIntegerValue]);
      name = [(WFWorkoutType *)v8 name];

      if ([(WFWorkoutTrigger *)self onStart]&& [(WFWorkoutTrigger *)self onEnd])
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = @"When I start or end a %@ workout";
      }

      else if ([(WFWorkoutTrigger *)self onStart])
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = @"When I start a %@ workout";
      }

      else
      {
        if (![(WFWorkoutTrigger *)self onEnd])
        {
          v20 = getWFTriggersLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315394;
            v24 = "[WFWorkoutTrigger localizedDescriptionWithConfigurationSummary]";
            v25 = 2114;
            selfCopy2 = self;
            _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
          }

          v15 = &stru_1F4A1C408;
          goto LABEL_24;
        }

        v10 = MEMORY[0x1E696AEC0];
        v11 = @"When I end a %@ workout";
      }

      v16 = WFLocalizedString(v11);
      v15 = [v10 localizedStringWithFormat:v16, name];

LABEL_24:
      goto LABEL_36;
    }

    if ([(WFWorkoutTrigger *)self onStart]&& [(WFWorkoutTrigger *)self onEnd])
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = @"When I start or end any of %lu workouts";
LABEL_27:
      v17 = WFLocalizedPluralString(v14);
      selectedWorkoutTypes3 = [(WFWorkoutTrigger *)self selectedWorkoutTypes];
      v15 = [v13 localizedStringWithFormat:v17, objc_msgSend(selectedWorkoutTypes3, "count")];

      goto LABEL_36;
    }

    if ([(WFWorkoutTrigger *)self onStart])
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = @"When I start any of %lu workouts";
      goto LABEL_27;
    }

    if ([(WFWorkoutTrigger *)self onEnd])
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = @"When I end any of %lu workouts";
      goto LABEL_27;
    }

    v19 = getWFTriggersLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if ([(WFWorkoutTrigger *)self onStart]&& [(WFWorkoutTrigger *)self onEnd])
  {
    v12 = @"When I start or end any workout";
LABEL_20:
    v15 = WFLocalizedString(v12);
    goto LABEL_36;
  }

  if ([(WFWorkoutTrigger *)self onStart])
  {
    v12 = @"When I start any workout";
    goto LABEL_20;
  }

  if ([(WFWorkoutTrigger *)self onEnd])
  {
    v12 = @"When I end any workout";
    goto LABEL_20;
  }

  v19 = getWFTriggersLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
LABEL_34:
    *buf = 136315394;
    v24 = "[WFWorkoutTrigger localizedDescriptionWithConfigurationSummary]";
    v25 = 2114;
    selfCopy2 = self;
    _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

LABEL_35:

  v15 = &stru_1F4A1C408;
LABEL_36:
  v21 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)hasValidConfiguration
{
  onEnd = [(WFWorkoutTrigger *)self onStart]|| [(WFWorkoutTrigger *)self onEnd];
  if ([(WFWorkoutTrigger *)self selection])
  {
    selectedWorkoutTypes = [(WFWorkoutTrigger *)self selectedWorkoutTypes];
    v5 = [selectedWorkoutTypes count] != 0;

    return v5 && onEnd;
  }

  return onEnd;
}

- (WFWorkoutTrigger)init
{
  v8.receiver = self;
  v8.super_class = WFWorkoutTrigger;
  v2 = [(WFTrigger *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_selection = 0;
    v4 = objc_opt_new();
    selectedWorkoutTypes = v3->_selectedWorkoutTypes;
    v3->_selectedWorkoutTypes = v4;

    v3->_onStart = 1;
    v6 = v3;
  }

  return v3;
}

+ (id)workoutColors
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69E09E0] colorWithWhite:0.0 alpha:1.0];
  v3 = [MEMORY[0x1E69E09E0] colorWithRed:0.725490212 green:0.992156863 blue:0.313725501 alpha:{1.0, v2}];
  v8[1] = v3;
  v4 = [MEMORY[0x1E69E09E0] colorWithRed:0.725490212 green:0.992156863 blue:0.313725501 alpha:1.0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)offIcon
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E0B58];
  stopColor = [self stopColor];
  v5 = [MEMORY[0x1E69E09E0] colorWithWhite:1.0 alpha:{1.0, stopColor}];
  v12[1] = v5;
  stopColor2 = [self stopColor];
  v7 = [stopColor2 colorWithAlphaComponent:0.140000001];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v9 = [v3 triggerConfigurationSymbolNamed:@"xmark.circle.fill" hierarchicalColors:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)onIcon
{
  v2 = MEMORY[0x1E69E0B58];
  workoutColors = [self workoutColors];
  v4 = [v2 triggerConfigurationSymbolNamed:@"figure.run.circle.fill" hierarchicalColors:workoutColors];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Apple Watch Workout", @"Apple Watch Workout");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (BOOL)isSupportedOnThisDevice
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sharedInstance = [(objc_class *)getNRPairedDeviceRegistryClass() sharedInstance];
  getPairedDevices = [sharedInstance getPairedDevices];

  v4 = [getPairedDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(getPairedDevices);
        }

        v7 = (softLinkNRWatchOSVersionForRemoteDevice)(*(*(&v10 + 1) + 8 * i));
        if ((softLinkNRVersionIsGreaterThanOrEqual)(v7, 393216))
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [getPairedDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

@end