@interface WFTimeTriggerLogic
+ (id)adjustedTime:(id)time byOffset:(unint64_t)offset;
+ (id)nextFireDateForTrigger:(id)trigger currentDate:(id)date currentSunriseTime:(id)time currentSunsetTime:(id)sunsetTime;
+ (id)nextFireDateFromNowWithTrigger:(id)trigger currentSunriseTime:(id)time currentSunsetTime:(id)sunsetTime;
+ (int64_t)nextWeekdayFromDaysOfWeek:(id)week timeComponents:(id)components currentDate:(id)date calendar:(id)calendar;
@end

@implementation WFTimeTriggerLogic

+ (id)adjustedTime:(id)time byOffset:(unint64_t)offset
{
  timeCopy = time;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = currentCalendar;
  switch(offset)
  {
    case 0uLL:
      v8 = 32;
      v9 = -4;
      goto LABEL_18;
    case 1uLL:
      v8 = 32;
      v9 = -3;
      goto LABEL_18;
    case 2uLL:
      v8 = 32;
      v9 = -2;
      goto LABEL_18;
    case 3uLL:
      v8 = 32;
      v9 = -1;
      goto LABEL_18;
    case 4uLL:
      v8 = 64;
      v9 = -45;
      goto LABEL_18;
    case 5uLL:
      v8 = 64;
      v9 = -30;
      goto LABEL_18;
    case 6uLL:
      v8 = 64;
      v9 = -15;
      goto LABEL_18;
    case 7uLL:
      v11 = timeCopy;
      goto LABEL_19;
    case 8uLL:
      v8 = 64;
      v9 = 15;
      goto LABEL_18;
    case 9uLL:
      v8 = 64;
      v9 = 30;
      goto LABEL_18;
    case 0xAuLL:
      v8 = 64;
      v9 = 45;
      goto LABEL_18;
    case 0xBuLL:
      v8 = 32;
      v9 = 1;
      goto LABEL_18;
    case 0xCuLL:
      v8 = 32;
      v9 = 2;
      goto LABEL_18;
    case 0xDuLL:
      v8 = 32;
      v9 = 3;
      goto LABEL_18;
    case 0xEuLL:
      v8 = 32;
      v9 = 4;
LABEL_18:
      v11 = [currentCalendar dateByAddingUnit:v8 value:v9 toDate:timeCopy options:0];
LABEL_19:
      v10 = v11;
      break;
    default:
      v10 = 0;
      break;
  }

  v12 = [v7 components:96 fromDate:v10];

  return v12;
}

+ (int64_t)nextWeekdayFromDaysOfWeek:(id)week timeComponents:(id)components currentDate:(id)date calendar:(id)calendar
{
  componentsCopy = components;
  dateCopy = date;
  calendarCopy = calendar;
  weekCopy = week;
  v13 = [calendarCopy component:512 fromDate:dateCopy];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __84__WFTimeTriggerLogic_nextWeekdayFromDaysOfWeek_timeComponents_currentDate_calendar___block_invoke;
  v26 = &unk_1E8374218;
  v27 = calendarCopy;
  v28 = dateCopy;
  v29 = componentsCopy;
  v30 = v13;
  v14 = componentsCopy;
  v15 = dateCopy;
  v16 = calendarCopy;
  v17 = [weekCopy if_flatMap:&v23];

  v18 = [v17 sortedArrayUsingSelector:{sel_compare_, v23, v24, v25, v26}];
  firstObject = [v18 firstObject];
  integerValue = [firstObject integerValue];

  if (integerValue % 7)
  {
    v21 = integerValue % 7;
  }

  else
  {
    v21 = 7;
  }

  return v21;
}

id __84__WFTimeTriggerLogic_nextWeekdayFromDaysOfWeek_timeComponents_currentDate_calendar___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 integerValue];
  v4 = v3;
  v5 = *(a1 + 56);
  if (v3 >= v5)
  {
    if (v3 == v5)
    {
      v6 = [*(a1 + 32) nextDateAfterDate:*(a1 + 40) matchingComponents:*(a1 + 48) options:5120];
      if ([*(a1 + 32) isDate:v6 inSameDayAsDate:*(a1 + 40)])
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
        v15 = v9;
        v10 = &v15;
      }

      else
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInteger:v4 + 7];
        v16 = v9;
        v10 = &v16;
      }

      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

      goto LABEL_10;
    }

    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    v14 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v14;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v3 + 7];
    v17[0] = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = v17;
  }

  v11 = [v7 arrayWithObjects:v8 count:1];
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)nextFireDateForTrigger:(id)trigger currentDate:(id)date currentSunriseTime:(id)time currentSunsetTime:(id)sunsetTime
{
  v42 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  dateCopy = date;
  timeCopy = time;
  sunsetTimeCopy = sunsetTime;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  if ([triggerCopy event] == 2)
  {
    time = [triggerCopy time];

    if (time)
    {
      time2 = [triggerCopy time];
      v17 = [time2 copy];

      goto LABEL_13;
    }

    v17 = getWFTriggersLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v36 = 136315394;
      v37 = "+[WFTimeTriggerLogic nextFireDateForTrigger:currentDate:currentSunriseTime:currentSunsetTime:]";
      v38 = 2112;
      event = triggerCopy;
      v21 = "%s Can't calculate nextFireDate; No time set for %@";
LABEL_23:
      v29 = v17;
      v30 = OS_LOG_TYPE_FAULT;
      v31 = 22;
LABEL_35:
      _os_log_impl(&dword_1CA256000, v29, v30, v21, &v36, v31);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  if (![triggerCopy event])
  {
    if (timeCopy)
    {
      timeOffset = [triggerCopy timeOffset];
      selfCopy2 = self;
      v20 = timeCopy;
      goto LABEL_12;
    }

    v17 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    v36 = 136315138;
    v37 = "+[WFTimeTriggerLogic nextFireDateForTrigger:currentDate:currentSunriseTime:currentSunsetTime:]";
    v21 = "%s Can't calculate nextFireDate without sunrise time";
LABEL_34:
    v29 = v17;
    v30 = OS_LOG_TYPE_ERROR;
    v31 = 12;
    goto LABEL_35;
  }

  if ([triggerCopy event] != 1)
  {
    v17 = getWFTriggersLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v36 = 136315394;
      v37 = "+[WFTimeTriggerLogic nextFireDateForTrigger:currentDate:currentSunriseTime:currentSunsetTime:]";
      v38 = 2048;
      event = [triggerCopy event];
      v21 = "%s Unhandled time trigger event: %ld; can't calculate nextFireDate";
      goto LABEL_23;
    }

LABEL_36:
    v27 = 0;
    goto LABEL_37;
  }

  if (!sunsetTimeCopy)
  {
    v17 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    v36 = 136315138;
    v37 = "+[WFTimeTriggerLogic nextFireDateForTrigger:currentDate:currentSunriseTime:currentSunsetTime:]";
    v21 = "%s Can't calculate nextFireDate without sunset time";
    goto LABEL_34;
  }

  timeOffset = [triggerCopy timeOffset];
  selfCopy2 = self;
  v20 = sunsetTimeCopy;
LABEL_12:
  v17 = [selfCopy2 adjustedTime:v20 byOffset:timeOffset];
LABEL_13:
  if ([triggerCopy mode] != 1)
  {
    daysOfWeek = [triggerCopy daysOfWeek];
    v25 = [daysOfWeek count];

    if (v25)
    {
      daysOfWeek2 = [triggerCopy daysOfWeek];
      v26 = [v17 copy];
      -[NSObject setWeekday:](v17, "setWeekday:", [self nextWeekdayFromDaysOfWeek:daysOfWeek2 timeComponents:v26 currentDate:dateCopy calendar:currentCalendar]);

      goto LABEL_18;
    }

    v32 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    v36 = 136315394;
    v37 = "+[WFTimeTriggerLogic nextFireDateForTrigger:currentDate:currentSunriseTime:currentSunsetTime:]";
    v38 = 2112;
    event = triggerCopy;
    v33 = "%s Can't calculate nextFireDate; No days of week set for %@";
    goto LABEL_28;
  }

  dayOfMonth = [triggerCopy dayOfMonth];

  if (!dayOfMonth)
  {
    v32 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
LABEL_29:

      goto LABEL_36;
    }

    v36 = 136315394;
    v37 = "+[WFTimeTriggerLogic nextFireDateForTrigger:currentDate:currentSunriseTime:currentSunsetTime:]";
    v38 = 2112;
    event = triggerCopy;
    v33 = "%s Can't calculate nextFireDate; No days of month set for %@";
LABEL_28:
    _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_FAULT, v33, &v36, 0x16u);
    goto LABEL_29;
  }

  daysOfWeek2 = [triggerCopy dayOfMonth];
  -[NSObject setDay:](v17, "setDay:", [daysOfWeek2 integerValue]);
LABEL_18:

  v27 = [currentCalendar nextDateAfterDate:dateCopy matchingComponents:v17 options:4098];
  v28 = getWFTriggersLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v36 = 136315650;
    v37 = "+[WFTimeTriggerLogic nextFireDateForTrigger:currentDate:currentSunriseTime:currentSunsetTime:]";
    v38 = 2112;
    event = triggerCopy;
    v40 = 2112;
    v41 = v27;
    _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_INFO, "%s nextFireDate for trigger (%@): %@", &v36, 0x20u);
  }

LABEL_37:
  v34 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)nextFireDateFromNowWithTrigger:(id)trigger currentSunriseTime:(id)time currentSunsetTime:(id)sunsetTime
{
  sunsetTimeCopy = sunsetTime;
  timeCopy = time;
  triggerCopy = trigger;
  v11 = objc_opt_new();
  v12 = [self nextFireDateForTrigger:triggerCopy currentDate:v11 currentSunriseTime:timeCopy currentSunsetTime:sunsetTimeCopy];

  return v12;
}

@end