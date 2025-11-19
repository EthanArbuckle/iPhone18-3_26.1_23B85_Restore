@interface VCSAlarm
+ (id)_componentsWithISO8601DurationString:(id)a3;
- (VCSAlarm)initWithLine:(id)a3 parseState:(id)a4 property:(id *)a5;
- (id)dictify;
- (void)ensureRelativeAlarmWithStartDate:(id)a3;
@end

@implementation VCSAlarm

- (VCSAlarm)initWithLine:(id)a3 parseState:(id)a4 property:(id *)a5
{
  v6 = a3;
  v39.receiver = self;
  v39.super_class = VCSAlarm;
  v7 = [(VCSEntity *)&v39 init];
  if (!v7)
  {
LABEL_33:
    v33 = v7;
    goto LABEL_34;
  }

  v8 = [v6 content];
  v9 = strdup([v8 bytes]);

  v10 = strchr(v9, 59);
  v11 = v10;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_9;
  }

  *v10 = 0;
  v11 = v10 + 1;
  v12 = strchr(v10 + 1, 59);
  v13 = v12;
  if (!v12)
  {
LABEL_9:
    v15 = 0;
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  *v12 = 0;
  v13 = v12 + 1;
  v14 = strchr(v12 + 1, 59);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  *v14 = 0;
  v15 = v14 + 1;
  if ([v6 tokenID] != 27)
  {
    goto LABEL_10;
  }

  v16 = strchr(v15, 59);
  v17 = v16;
  if (v16)
  {
    *v16 = 0;
    v17 = v16 + 1;
  }

LABEL_11:
  v18 = [[VCSDate alloc] initWithDateString:v9];
  if (v18)
  {
    v7->_triggerType = 0;
    triggerDate = v7->_triggerDate;
    v7->_triggerDate = v18;

    if (v11)
    {
      __endptr = 0;
      v20 = objc_opt_class();
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
      v22 = [v20 _componentsWithISO8601DurationString:v21];

      v23 = strtol(v13, &__endptr, 10);
      if (v22)
      {
        v24 = v23;
        v25 = [[VCSProperty alloc] initWithName:@"DURATION" rawValue:v22 type:5];
        [(VCSEntity *)v7 setProperty:v25];

        v26 = [VCSProperty alloc];
        v27 = [MEMORY[0x277CCABB0] numberWithInt:v24];
        v28 = [(VCSProperty *)v26 initWithName:@"REPEAT" rawValue:v27 type:4];
        [(VCSEntity *)v7 setProperty:v28];
      }
    }

    v29 = [v6 tokenID];
    if (v29 > 26)
    {
      if (v29 == 27)
      {
        v7->_alarmType = 2;
        if (v17)
        {
          v34 = v17;
        }

        else
        {
          v34 = "";
        }

        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:v34];
        summary = v7->_summary;
        v7->_summary = v35;

        objc_storeStrong(&v7->_body, v7->_summary);
      }

      else if (v29 == 30)
      {
        v7->_alarmType = 3;
      }
    }

    else if (v29 == 14)
    {
      v7->_alarmType = 0;
    }

    else if (v29 == 20)
    {
      v7->_alarmType = 1;
      if (v15)
      {
        v30 = v15;
      }

      else
      {
        v30 = "";
      }

      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:v30];
      v32 = v7->_summary;
      v7->_summary = v31;
    }

    free(v9);
    goto LABEL_33;
  }

  free(v9);
  v33 = 0;
LABEL_34:

  return v33;
}

- (void)ensureRelativeAlarmWithStartDate:(id)a3
{
  if (self->_triggerType != 1)
  {
    triggerDate = self->_triggerDate;
    v5 = a3;
    v6 = [(VCSDate *)triggerDate components];
    v7 = [v6 date];
    v8 = [v5 components];

    v9 = [v8 date];
    [v7 timeIntervalSinceDate:v9];
    self->_triggerDuration = v10;

    self->_triggerType = 1;
  }
}

- (id)dictify
{
  v14.receiver = self;
  v14.super_class = VCSAlarm;
  v3 = [(VCSEntity *)&v14 dictify];
  v4 = [v3 mutableCopy];

  alarmType = self->_alarmType;
  if (alarmType >= 4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid(%lu)", self->_alarmType];
  }

  else
  {
    v6 = off_27A64B880[alarmType];
  }

  [v4 setObject:v6 forKeyedSubscript:@"alarmType"];

  summary = self->_summary;
  if (summary)
  {
    [v4 setObject:summary forKeyedSubscript:@"alarmSummary"];
  }

  body = self->_body;
  if (body)
  {
    [v4 setObject:body forKeyedSubscript:@"alarmBody"];
  }

  triggerType = self->_triggerType;
  if (triggerType)
  {
    if (triggerType == 1)
    {
      v10 = @"Relative";
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid(%lu)", self->_triggerType];
    }
  }

  else
  {
    v10 = @"Absolute";
  }

  [v4 setObject:v10 forKeyedSubscript:@"alarmTriggerType"];

  if (self->_triggerType)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_triggerDuration];
    v12 = @"alarmTriggerDuration";
  }

  else
  {
    v11 = [(VCSDate *)self->_triggerDate description];
    v12 = @"alarmTriggerDate";
  }

  [v4 setObject:v11 forKeyedSubscript:v12];

  return v4;
}

+ (id)_componentsWithISO8601DurationString:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_43;
  }

  v4 = objc_opt_new();
  v5 = [v3 UTF8String];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_42;
  }

  if (*v5 != 80)
  {
    v16 = VCSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(VCSAlarm *)v3 _componentsWithISO8601DurationString:v16, v17, v18, v19, v20, v21, v22];
    }

    v6 = 0;
    goto LABEL_42;
  }

  v7 = (v5 + 1);
  v8 = v5[1];
  v9 = v4;
  if (!v5[1])
  {
    goto LABEL_41;
  }

  v10 = 0;
  while (1)
  {
    __endptr = 0;
    v11 = v8 == 84;
    if (v8 == 84)
    {
      v12 = (v6 + 2);
    }

    else
    {
      v12 = v7;
    }

    v13 = strtol(v12, &__endptr, 10);
    v6 = __endptr;
    if (v12 == __endptr || v13 < 0)
    {
      v23 = VCSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(VCSAlarm *)v3 _componentsWithISO8601DurationString:v23, v25, v26, v27, v28, v29, v30];
      }

      goto LABEL_40;
    }

    v10 |= v11;
    v15 = *__endptr;
    if (v10)
    {
      switch(v15)
      {
        case 'S':
          [v4 setSecond:v13 & 0x7FFFFFFF];
          break;
        case 'M':
          [v4 setMinute:v13 & 0x7FFFFFFF];
          break;
        case 'H':
          [v4 setHour:v13 & 0x7FFFFFFF];
          break;
        default:
          goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*__endptr > 0x56u)
    {
      break;
    }

    if (v15 == 68)
    {
      [v4 setDay:v13 & 0x7FFFFFFF];
    }

    else
    {
      if (v15 != 77)
      {
        goto LABEL_38;
      }

      [v4 setMonth:v13 & 0x7FFFFFFF];
    }

LABEL_30:
    v7 = (v6 + 1);
    v8 = v6[1];
    if (!v6[1])
    {
      v9 = v4;
      goto LABEL_41;
    }
  }

  if (v15 == 87)
  {
    [v4 setWeekOfYear:v13 & 0x7FFFFFFF];
    goto LABEL_30;
  }

  if (v15 == 89)
  {
    [v4 setYear:v13 & 0x7FFFFFFF];
    goto LABEL_30;
  }

LABEL_38:
  v23 = VCSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [(VCSAlarm *)v3 _componentsWithISO8601DurationString:v23, v31, v32, v33, v34, v35, v36];
  }

LABEL_40:

  v9 = 0;
LABEL_41:
  v6 = v9;
LABEL_42:

LABEL_43:

  return v6;
}

+ (void)_componentsWithISO8601DurationString:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2754C5000, a2, a3, "String %@ is not a duration.(1)", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_componentsWithISO8601DurationString:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2754C5000, a2, a3, "String %@ is not a duration.(3)", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_componentsWithISO8601DurationString:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2754C5000, a2, a3, "String %@ is not a duration.(2)", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end