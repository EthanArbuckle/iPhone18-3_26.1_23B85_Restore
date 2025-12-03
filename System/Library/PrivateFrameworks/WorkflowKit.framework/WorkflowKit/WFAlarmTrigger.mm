@interface WFAlarmTrigger
+ (id)displayGlyph;
+ (id)localizedDisplayNameWithContext:(id)context;
- (WFAlarmTrigger)init;
- (WFAlarmTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAlarmTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B6C8 serializedParameterArray:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = WFAlarmTrigger;
  v4 = [(WFTrigger *)&v10 copyWithZone:zone];
  [v4 setAlarmType:{-[WFAlarmTrigger alarmType](self, "alarmType")}];
  alarmIDs = [(WFAlarmTrigger *)self alarmIDs];
  v6 = [alarmIDs copy];
  [v4 setAlarmIDs:v6];

  cachedAlarmDescriptions = [(WFAlarmTrigger *)self cachedAlarmDescriptions];
  v8 = [cachedAlarmDescriptions copy];
  [v4 setCachedAlarmDescriptions:v8];

  [v4 setAlarmState:{-[WFAlarmTrigger alarmState](self, "alarmState")}];
  return v4;
}

- (WFAlarmTrigger)initWithCoder:(id)coder
{
  v36[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = WFAlarmTrigger;
  v5 = [(WFTrigger *)&v32 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alarmType"];
    v7 = v6;
    if (v6)
    {
      -[WFAlarmTrigger setAlarmType:](v5, "setAlarmType:", [v6 integerValue]);
      v8 = MEMORY[0x1E695DFD8];
      v36[0] = objc_opt_class();
      v36[1] = objc_opt_class();
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
      v10 = [v8 setWithArray:v9];
      v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"alarmIDs"];
      v12 = v11;
      v13 = MEMORY[0x1E695E0F0];
      if (v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = MEMORY[0x1E695E0F0];
      }

      [(WFAlarmTrigger *)v5 setAlarmIDs:v14];

      v15 = MEMORY[0x1E695DFD8];
      v35[0] = objc_opt_class();
      v35[1] = objc_opt_class();
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      v17 = [v15 setWithArray:v16];
      v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"cachedAlarmDescriptions"];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v13;
      }

      [(WFAlarmTrigger *)v5 setCachedAlarmDescriptions:v20];

      if ([(WFAlarmTrigger *)v5 alarmType]== 1)
      {
        alarmIDs = [(WFAlarmTrigger *)v5 alarmIDs];
        v22 = [alarmIDs count];

        if (!v22)
        {
          v23 = getWFTriggersLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v34 = "[WFAlarmTrigger initWithCoder:]";
            _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s alarm type existing, but no alarmIDs", buf, 0xCu);
          }

          [(WFAlarmTrigger *)v5 setAlarmType:0];
        }
      }
    }

    else
    {
      [(WFAlarmTrigger *)v5 setAlarmType:0];
      [(WFAlarmTrigger *)v5 setAlarmIDs:MEMORY[0x1E695E0F0]];
    }

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alarmState"];
    v25 = v24;
    if (v24)
    {
      integerValue = [v24 integerValue];
    }

    else
    {
      integerValue = 2;
    }

    [(WFAlarmTrigger *)v5 setAlarmState:integerValue];
    currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
    if ([currentDevice idiom] == 1)
    {
      alarmType = [(WFAlarmTrigger *)v5 alarmType];

      if (alarmType == 2)
      {
        [(WFAlarmTrigger *)v5 setAlarmType:1];
      }
    }

    else
    {
    }

    v29 = v5;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = WFAlarmTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v9 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFAlarmTrigger alarmType](self, "alarmType", v9.receiver, v9.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"alarmType"];

  alarmIDs = [(WFAlarmTrigger *)self alarmIDs];
  [coderCopy encodeObject:alarmIDs forKey:@"alarmIDs"];

  cachedAlarmDescriptions = [(WFAlarmTrigger *)self cachedAlarmDescriptions];
  [coderCopy encodeObject:cachedAlarmDescriptions forKey:@"cachedAlarmDescriptions"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFAlarmTrigger alarmState](self, "alarmState")}];
  [coderCopy encodeObject:v8 forKey:@"alarmState"];
}

- (id)localizedPastTenseDescription
{
  alarmType = [(WFAlarmTrigger *)self alarmType];
  if (alarmType == 2)
  {
    alarmState = [(WFAlarmTrigger *)self alarmState];
    if (alarmState == 2)
    {
      v6 = @"My wake-up alarm stopped";
    }

    else if (alarmState == 1)
    {
      v6 = @"My wake-up alarm snoozed";
    }

    else
    {
      if (alarmState)
      {
        goto LABEL_25;
      }

      v6 = @"My wake-up alarm went off";
    }

    goto LABEL_24;
  }

  if (alarmType != 1)
  {
    if (alarmType)
    {
      goto LABEL_25;
    }

    alarmState2 = [(WFAlarmTrigger *)self alarmState];
    if (alarmState2 == 2)
    {
      v6 = @"Any alarm stopped";
    }

    else if (alarmState2 == 1)
    {
      v6 = @"Any alarm snoozed";
    }

    else
    {
      if (alarmState2)
      {
        goto LABEL_25;
      }

      v6 = @"Any alarm went off";
    }

LABEL_24:
    alarmIDs = WFLocalizedString(v6);
    goto LABEL_25;
  }

  alarmIDs = [(WFAlarmTrigger *)self alarmIDs];
  v7 = [alarmIDs count];

  if (v7 == 1)
  {
    alarmIDs = [(WFAlarmTrigger *)self cachedAlarmDescriptions];
    firstObject = [alarmIDs firstObject];

    alarmState3 = [(WFAlarmTrigger *)self alarmState];
    if (alarmState3 <= 2)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = WFLocalizedString(off_1E837B698[alarmState3]);
      alarmIDs = [v10 localizedStringWithFormat:v11, firstObject];
    }
  }

  else
  {
    alarmState4 = [(WFAlarmTrigger *)self alarmState];
    if (alarmState4 == 2)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = @"Any of %lu alarms stopped";
    }

    else if (alarmState4 == 1)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = @"Any of %lu alarms snoozed";
    }

    else
    {
      if (alarmState4)
      {
        goto LABEL_25;
      }

      v14 = MEMORY[0x1E696AEC0];
      v15 = @"Any of %lu alarms went off";
    }

    v17 = WFLocalizedPluralString(v15);
    alarmIDs = [v14 localizedStringWithFormat:v17, v7];
  }

LABEL_25:

  return alarmIDs;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  alarmType = [(WFAlarmTrigger *)self alarmType];
  if (alarmType == 2)
  {
    alarmState = [(WFAlarmTrigger *)self alarmState];
    if (alarmState == 2)
    {
      v6 = @"When my wake-up alarm is stopped";
    }

    else if (alarmState == 1)
    {
      v6 = @"When my wake-up alarm is snoozed";
    }

    else
    {
      if (alarmState)
      {
        goto LABEL_25;
      }

      v6 = @"When my wake-up alarm goes off";
    }

    goto LABEL_24;
  }

  if (alarmType != 1)
  {
    if (alarmType)
    {
      goto LABEL_25;
    }

    alarmState2 = [(WFAlarmTrigger *)self alarmState];
    if (alarmState2 == 2)
    {
      v6 = @"When any alarm is stopped";
    }

    else if (alarmState2 == 1)
    {
      v6 = @"When any alarm is snoozed";
    }

    else
    {
      if (alarmState2)
      {
        goto LABEL_25;
      }

      v6 = @"When any alarm goes off";
    }

LABEL_24:
    alarmIDs = WFLocalizedString(v6);
    goto LABEL_25;
  }

  alarmIDs = [(WFAlarmTrigger *)self alarmIDs];
  v7 = [alarmIDs count];

  if (v7 == 1)
  {
    alarmIDs = [(WFAlarmTrigger *)self cachedAlarmDescriptions];
    firstObject = [alarmIDs firstObject];

    alarmState3 = [(WFAlarmTrigger *)self alarmState];
    if (alarmState3 <= 2)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = WFLocalizedString(off_1E837B680[alarmState3]);
      alarmIDs = [v10 localizedStringWithFormat:v11, firstObject];
    }
  }

  else
  {
    alarmState4 = [(WFAlarmTrigger *)self alarmState];
    if (alarmState4 == 2)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = @"When any of %lu alarms is stopped";
    }

    else if (alarmState4 == 1)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = @"When any of %lu alarms is snoozed";
    }

    else
    {
      if (alarmState4)
      {
        goto LABEL_25;
      }

      v14 = MEMORY[0x1E696AEC0];
      v15 = @"When any of %lu alarms go off";
    }

    v17 = WFLocalizedPluralString(v15);
    alarmIDs = [v14 localizedStringWithFormat:v17, v7];
  }

LABEL_25:

  return alarmIDs;
}

- (WFAlarmTrigger)init
{
  v9.receiver = self;
  v9.super_class = WFAlarmTrigger;
  v2 = [(WFTrigger *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_alarmType = 0;
    alarmIDs = v2->_alarmIDs;
    v5 = MEMORY[0x1E695E0F0];
    v2->_alarmIDs = MEMORY[0x1E695E0F0];

    cachedAlarmDescriptions = v3->_cachedAlarmDescriptions;
    v3->_cachedAlarmDescriptions = v5;

    v3->_alarmState = 2;
    v7 = v3;
  }

  return v3;
}

+ (id)displayGlyph
{
  v2 = MEMORY[0x1E69E0B58];
  displayGlyphName = [self displayGlyphName];
  v4 = [v2 triggerDisplaySymbolNamed:displayGlyphName renderingMode:2];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Alarm", @"Alarm");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end