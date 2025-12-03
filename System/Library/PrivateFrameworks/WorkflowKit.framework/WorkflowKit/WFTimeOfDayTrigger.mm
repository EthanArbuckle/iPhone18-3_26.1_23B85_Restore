@interface WFTimeOfDayTrigger
+ (id)dateFormatter;
+ (id)displayGlyph;
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)localizedRecurrenceDescriptionForDaysOfWeek:(id)week dayOfMonth:(id)month mode:(unint64_t)mode;
+ (id)localizedSunriseSunsetDescriptionForTriggerEvent:(unint64_t)event timeOffset:(unint64_t)offset;
- (BOOL)hasValidConfiguration;
- (BOOL)isEqual:(id)equal;
- (WFTimeOfDayTrigger)init;
- (WFTimeOfDayTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayGlyph;
- (id)displayGlyphName;
- (id)displayGlyphTintColor;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFTimeOfDayTrigger

- (id)suggestedActions
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = +[WFActionRegistry sharedRegistry];
  v12 = @"ShowWhenRun";
  v13[0] = MEMORY[0x1E695E110];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v4 = [v2 createActionWithIdentifier:@"is.workflow.actions.sendmessage" serializedParameters:v3];

  v5 = +[WFActionRegistry sharedRegistry];
  v6 = [v5 createActionsWithIdentifiers:&unk_1F4A9B8A8 serializedParameterArray:0];

  if (v4)
  {
    v11 = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    v8 = [v7 arrayByAddingObjectsFromArray:v6];

    v6 = v8;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (equalCopy == self)
      {
        LOBYTE(v13) = 1;
      }

      else
      {
        event = [(WFTimeOfDayTrigger *)self event];
        if (event == [(WFTimeOfDayTrigger *)equalCopy event])
        {
          mode = [(WFTimeOfDayTrigger *)self mode];
          if (mode == [(WFTimeOfDayTrigger *)equalCopy mode])
          {
            timeOffset = [(WFTimeOfDayTrigger *)self timeOffset];
            if (timeOffset == [(WFTimeOfDayTrigger *)equalCopy timeOffset])
            {
              time = [(WFTimeOfDayTrigger *)self time];
              time2 = [(WFTimeOfDayTrigger *)equalCopy time];
              v10 = time;
              v11 = time2;
              v12 = v11;
              if (v10 == v11)
              {
              }

              else
              {
                LOBYTE(v13) = 0;
                v14 = v11;
                v15 = v10;
                if (!v10 || !v11)
                {
                  goto LABEL_33;
                }

                v16 = [(WFTimeOfDayTrigger *)v10 isEqual:v11];

                if (!v16)
                {
                  LOBYTE(v13) = 0;
LABEL_34:

                  v17 = equalCopy;
                  goto LABEL_14;
                }
              }

              daysOfWeek = [(WFTimeOfDayTrigger *)self daysOfWeek];
              daysOfWeek2 = [(WFTimeOfDayTrigger *)equalCopy daysOfWeek];
              v15 = daysOfWeek;
              v21 = daysOfWeek2;
              v14 = v21;
              if (v15 == v21)
              {
              }

              else
              {
                LOBYTE(v13) = 0;
                v22 = v21;
                v23 = v15;
                if (!v15 || !v21)
                {
LABEL_32:

LABEL_33:
                  goto LABEL_34;
                }

                v13 = [(WFTimeOfDayTrigger *)v15 isEqualToArray:v21];

                if (!v13)
                {
                  goto LABEL_33;
                }
              }

              dayOfMonth = [(WFTimeOfDayTrigger *)self dayOfMonth];
              dayOfMonth2 = [(WFTimeOfDayTrigger *)equalCopy dayOfMonth];
              v23 = dayOfMonth;
              v26 = dayOfMonth2;
              v22 = v26;
              if (v23 == v26)
              {
                LOBYTE(v13) = 1;
              }

              else
              {
                LOBYTE(v13) = 0;
                if (v23 && v26)
                {
                  LOBYTE(v13) = [(WFTimeOfDayTrigger *)v23 isEqual:v26];
                }
              }

              goto LABEL_32;
            }
          }
        }

        LOBYTE(v13) = 0;
      }

      v17 = equalCopy;
      goto LABEL_18;
    }

    v17 = 0;
    LOBYTE(v13) = 0;
    v10 = equalCopy;
  }

  else
  {
    v10 = 0;
    v17 = 0;
    LOBYTE(v13) = 0;
  }

LABEL_14:

LABEL_18:
  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = WFTimeOfDayTrigger;
  v4 = [(WFTrigger *)&v10 copyWithZone:zone];
  [v4 setEvent:{-[WFTimeOfDayTrigger event](self, "event")}];
  [v4 setTimeOffset:{-[WFTimeOfDayTrigger timeOffset](self, "timeOffset")}];
  time = [(WFTimeOfDayTrigger *)self time];
  v6 = [time copy];
  [v4 setTime:v6];

  daysOfWeek = [(WFTimeOfDayTrigger *)self daysOfWeek];
  v8 = [daysOfWeek copy];
  [v4 setDaysOfWeek:v8];

  return v4;
}

- (WFTimeOfDayTrigger)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = WFTimeOfDayTrigger;
  v5 = [(WFTrigger *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeOfDay"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeOfDayTimeConfiguration"];
    integerValue = [v6 integerValue];
    v9 = 2;
    if (integerValue < 2)
    {
      v9 = integerValue;
    }

    v5->_event = v9;
    v5->_timeOffset = [v7 integerValue];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v10;

    v12 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"daysOfWeek"];
    daysOfWeek = v5->_daysOfWeek;
    v5->_daysOfWeek = v15;

    if ([coderCopy containsValueForKey:@"mode"])
    {
      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
      v5->_mode = [v17 integerValue];
    }

    else
    {
      v5->_mode = 0;
    }

    if ([coderCopy containsValueForKey:@"dayOfMonth"])
    {
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dayOfMonth"];
      dayOfMonth = v5->_dayOfMonth;
      v5->_dayOfMonth = v18;
    }

    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = WFTimeOfDayTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v11 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFTimeOfDayTrigger event](self, "event", v11.receiver, v11.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"timeOfDay"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFTimeOfDayTrigger timeOffset](self, "timeOffset")}];
  [coderCopy encodeObject:v6 forKey:@"timeOfDayTimeConfiguration"];

  time = [(WFTimeOfDayTrigger *)self time];
  [coderCopy encodeObject:time forKey:@"time"];

  daysOfWeek = [(WFTimeOfDayTrigger *)self daysOfWeek];
  [coderCopy encodeObject:daysOfWeek forKey:@"daysOfWeek"];

  dayOfMonth = [(WFTimeOfDayTrigger *)self dayOfMonth];
  [coderCopy encodeObject:dayOfMonth forKey:@"dayOfMonth"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFTimeOfDayTrigger mode](self, "mode")}];
  [coderCopy encodeObject:v10 forKey:@"mode"];
}

- (id)localizedDescriptionWithConfigurationSummary
{
  if ([(WFTimeOfDayTrigger *)self event]== 2)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    time = [(WFTimeOfDayTrigger *)self time];
    v5 = [currentCalendar dateFromComponents:time];

    dateFormatter = [objc_opt_class() dateFormatter];
    v7 = [dateFormatter stringFromDate:v5];

    v8 = MEMORY[0x1E696AEC0];
    v9 = WFLocalizedString(@"At %@");
    v10 = [v8 localizedStringWithFormat:v9, v7];
  }

  else
  {
    v10 = [WFTimeOfDayTrigger localizedSunriseSunsetDescriptionForTriggerEvent:[(WFTimeOfDayTrigger *)self event] timeOffset:[(WFTimeOfDayTrigger *)self timeOffset]];
  }

  daysOfWeek = [(WFTimeOfDayTrigger *)self daysOfWeek];
  dayOfMonth = [(WFTimeOfDayTrigger *)self dayOfMonth];
  v13 = [WFTimeOfDayTrigger localizedRecurrenceDescriptionForDaysOfWeek:daysOfWeek dayOfMonth:dayOfMonth mode:[(WFTimeOfDayTrigger *)self mode]];

  v14 = MEMORY[0x1E696AEC0];
  v15 = WFLocalizedString(@"%1$@, %2$@");
  v16 = [v14 localizedStringWithFormat:v15, v10, v13];

  return v16;
}

- (BOOL)hasValidConfiguration
{
  time = [(WFTimeOfDayTrigger *)self time];
  if (time)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(WFTimeOfDayTrigger *)self event]!= 2;
  }

  if ([(WFTimeOfDayTrigger *)self mode]== 1)
  {
    dayOfMonth = [(WFTimeOfDayTrigger *)self dayOfMonth];
    if (dayOfMonth != 0 && v4)
    {
      dayOfMonth2 = [(WFTimeOfDayTrigger *)self dayOfMonth];
      v7 = [dayOfMonth2 integerValue] > 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    dayOfMonth = [(WFTimeOfDayTrigger *)self daysOfWeek];
    v7 = [dayOfMonth count] != 0 && v4;
  }

  return v7;
}

- (WFTimeOfDayTrigger)init
{
  v11.receiver = self;
  v11.super_class = WFTimeOfDayTrigger;
  v2 = [(WFTrigger *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_event = 2;
    v2->_timeOffset = 7;
    v2->_mode = 0;
    daysOfWeek = v2->_daysOfWeek;
    v2->_daysOfWeek = &unk_1F4A9B890;

    v5 = objc_opt_new();
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v7 = [currentCalendar components:96 fromDate:v5];
    time = v3->_time;
    v3->_time = v7;

    v9 = v3;
  }

  return v3;
}

- (id)displayGlyphTintColor
{
  event = [(WFTimeOfDayTrigger *)self event];
  if (event <= 2)
  {
    event = [MEMORY[0x1E69E09E0] colorWithSystemColor:5];
  }

  return event;
}

- (id)displayGlyph
{
  v2 = MEMORY[0x1E69E0B58];
  displayGlyphName = [(WFTimeOfDayTrigger *)self displayGlyphName];
  v4 = [v2 triggerDisplaySymbolNamed:displayGlyphName renderingMode:2];

  return v4;
}

- (id)displayGlyphName
{
  event = [(WFTimeOfDayTrigger *)self event];
  if (event == 2)
  {
    displayGlyphName = [objc_opt_class() displayGlyphName];
  }

  else if (event == 1)
  {
    displayGlyphName = @"sunset.fill";
  }

  else
  {
    displayGlyphName = @"sunrise.fill";
  }

  return displayGlyphName;
}

+ (id)localizedRecurrenceDescriptionForDaysOfWeek:(id)week dayOfMonth:(id)month mode:(unint64_t)mode
{
  v43 = *MEMORY[0x1E69E9840];
  weekCopy = week;
  monthCopy = month;
  v9 = monthCopy;
  if (mode == 1)
  {
    if (monthCopy)
    {
      currentCalendar = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [currentCalendar setNumberStyle:WFLocalizedNumberFormatStyle()];
      v11 = [currentCalendar stringFromNumber:v9];
      v15 = MEMORY[0x1E696AEC0];
      v16 = WFLocalizedString(@"monthly on the %@");
      v17 = [v15 stringWithFormat:v16, v11];
      goto LABEL_7;
    }

    v22 = getWFTriggersLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "+[WFTimeOfDayTrigger localizedRecurrenceDescriptionForDaysOfWeek:dayOfMonth:mode:]";
      v37 = 2112;
      modeCopy = 0;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_ERROR, "%s Invalid day of month: %@", buf, 0x16u);
    }

LABEL_17:
    v18 = &stru_1F4A1C408;
    goto LABEL_22;
  }

  if (mode)
  {
    v19 = getWFTriggersLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v36 = "+[WFTimeOfDayTrigger localizedRecurrenceDescriptionForDaysOfWeek:dayOfMonth:mode:]";
      v37 = 2048;
      modeCopy = mode;
      v39 = 2112;
      v40 = weekCopy;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Invalid mode %lu with days of week %@ day of month %@", buf, 0x2Au);
    }

    goto LABEL_17;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:weekCopy];
  wf_weekdays = [currentCalendar wf_weekdays];
  v13 = [v11 isEqualToSet:wf_weekdays];

  if (v13)
  {
    v14 = @"daily";
LABEL_20:
    v18 = WFLocalizedString(v14);
    goto LABEL_21;
  }

  wf_weekendDays = [currentCalendar wf_weekendDays];
  v21 = [v11 isEqualToSet:wf_weekendDays];

  if (v21)
  {
    v14 = @"weekends";
    goto LABEL_20;
  }

  wf_workweekDays = [currentCalendar wf_workweekDays];
  v24 = [v11 isEqualToSet:wf_workweekDays];

  if (v24)
  {
    v14 = @"weekdays";
    goto LABEL_20;
  }

  if ([weekCopy count] != 1)
  {
    v16 = [weekCopy sortedArrayUsingSelector:sel_compare_];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __82__WFTimeOfDayTrigger_localizedRecurrenceDescriptionForDaysOfWeek_dayOfMonth_mode___block_invoke;
    v33[3] = &unk_1E837FCF8;
    v34 = currentCalendar;
    v30 = [v16 if_compactMap:v33];
    v18 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v30];

    goto LABEL_8;
  }

  firstObject = [weekCopy firstObject];
  integerValue = [firstObject integerValue];

  standaloneWeekdaySymbols = [currentCalendar standaloneWeekdaySymbols];
  v16 = standaloneWeekdaySymbols;
  if (integerValue < 1 || integerValue - 1 >= [standaloneWeekdaySymbols count])
  {
    v31 = getWFTriggersLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      firstObject2 = [weekCopy firstObject];
      *buf = 136315394;
      v36 = "+[WFTimeOfDayTrigger localizedRecurrenceDescriptionForDaysOfWeek:dayOfMonth:mode:]";
      v37 = 2112;
      modeCopy = firstObject2;
      _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_ERROR, "%s Invalid day index: %@", buf, 0x16u);
    }

    v18 = &stru_1F4A1C408;
    goto LABEL_8;
  }

  v17 = [v16 objectAtIndexedSubscript:integerValue - 1];
LABEL_7:
  v18 = v17;
LABEL_8:

LABEL_21:
LABEL_22:

  v25 = *MEMORY[0x1E69E9840];

  return v18;
}

id __82__WFTimeOfDayTrigger_localizedRecurrenceDescriptionForDaysOfWeek_dayOfMonth_mode___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 integerValue];
  v5 = [*(a1 + 32) shortStandaloneWeekdaySymbols];
  v6 = v5;
  v7 = v4 < 1;
  v8 = v4 - 1;
  if (v7 || v8 >= [v5 count])
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "+[WFTimeOfDayTrigger localizedRecurrenceDescriptionForDaysOfWeek:dayOfMonth:mode:]_block_invoke";
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Invalid day index: %@", &v13, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v9 = [v6 objectAtIndexedSubscript:v8];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)localizedSunriseSunsetDescriptionForTriggerEvent:(unint64_t)event timeOffset:(unint64_t)offset
{
  if (event == 1)
  {
    if (offset <= 0xE)
    {
      v5 = off_1E837FD98;
      goto LABEL_7;
    }
  }

  else if (!event)
  {
    if (offset >= 0xF)
    {
      goto LABEL_8;
    }

    v5 = off_1E837FD20;
LABEL_7:
    self = WFLocalizedString(v5[offset]);
LABEL_8:

    return self;
  }

  self = &stru_1F4A1C408;

  return self;
}

+ (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    dispatch_once(&dateFormatter_onceToken, &__block_literal_global_75692);
  }

  v3 = dateFormatter_dateFormatter;

  return v3;
}

uint64_t __35__WFTimeOfDayTrigger_dateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = dateFormatter_dateFormatter;
  dateFormatter_dateFormatter = v0;

  [dateFormatter_dateFormatter setTimeStyle:1];
  v2 = dateFormatter_dateFormatter;

  return [v2 setDateStyle:0];
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
  v4 = WFLocalizedStringResourceWithKey(@"Time of Day", @"Time of Day");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end