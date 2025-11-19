@interface STDeviceBedtime
+ (STBlueprintScheduleSimpleItem)defaultBedtimeSchedule;
- (NSString)scheduleText;
- (STDeviceBedtime)initWithBlueprint:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation STDeviceBedtime

- (STDeviceBedtime)initWithBlueprint:(id)a3
{
  v42[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = STDeviceBedtime;
  v5 = [(STDeviceBedtime *)&v41 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v5->_deviceBedtimeEnabled = [v4 enabled];
      v7 = [v4 schedule];
      v8 = [v7 scheduleRepresentation];

      v9 = [v8 simpleSchedule];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
        simpleSchedule = v6->_simpleSchedule;
        v6->_simpleSchedule = v11;
      }

      else
      {
        simpleSchedule = [v8 customScheduleItems];
        v15 = objc_alloc(MEMORY[0x277CBEAC0]);
        v16 = [simpleSchedule valueForKey:@"day"];
        v17 = [v15 initWithObjects:simpleSchedule forKeys:v16];
        scheduleByWeekdayIndex = v6->_scheduleByWeekdayIndex;
        v6->_scheduleByWeekdayIndex = v17;

        v19 = [simpleSchedule firstObject];
        if (v19)
        {
          v20 = objc_opt_new();
          v21 = v6->_simpleSchedule;
          v6->_simpleSchedule = v20;

          v22 = [v19 startTime];
          [(STBlueprintScheduleSimpleItem *)v6->_simpleSchedule setStartTime:v22];

          v23 = [v19 endTime];
          [(STBlueprintScheduleSimpleItem *)v6->_simpleSchedule setEndTime:v23];
        }

        else
        {
          v24 = [objc_opt_class() defaultBedtimeSchedule];
          v23 = v6->_simpleSchedule;
          v6->_simpleSchedule = v24;
        }
      }

      v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
      v42[0] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];

      v27 = [v4 configurations];
      v28 = [v27 sortedArrayUsingDescriptors:v26];
      v29 = [v28 firstObject];

      if (v29)
      {
        v30 = MEMORY[0x277CFBBD0];
        v31 = [v29 payloadPlist];
        v40 = 0;
        v32 = [v30 declarationForData:v31 error:&v40];
        v33 = v40;

        v34 = [v32 payloadMode];
        v35 = [v34 isEqualToString:*MEMORY[0x277CFBB78]];

        if (v35)
        {
          v6->_askForMoreTime = 0;
        }

        else
        {
          v36 = [v32 payloadMode];
          v37 = [v36 isEqualToString:*MEMORY[0x277CFBB70]];

          if (v37)
          {
            v6->_askForMoreTime = 1;
          }

          else if (!v32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            [STDeviceBedtime initWithBlueprint:];
          }
        }

        v38 = [v32 unknownPayloadKeys];
        v6->_shouldAllowEditing = [v38 count] == 0;
      }
    }

    else
    {
      *&v5->_deviceBedtimeEnabled = 0;
      v13 = [objc_opt_class() defaultBedtimeSchedule];
      v14 = v6->_simpleSchedule;
      v6->_simpleSchedule = v13;

      v6->_shouldAllowEditing = 1;
    }
  }

  return v6;
}

- (NSString)scheduleText
{
  v3 = [(STDeviceBedtime *)self scheduleByWeekdayIndex];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277D4B928];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __31__STDeviceBedtime_scheduleText__block_invoke;
    v18[3] = &unk_279B7E2E0;
    v19 = v3;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __31__STDeviceBedtime_scheduleText__block_invoke_2;
    v16 = &unk_279B7E308;
    v17 = v19;
    v6 = [v5 scheduleTextWithLocale:0 weekdayScheduleComparator:v18 scheduleTimeGetter:&v13];
    if (!v6)
    {
      v7 = [STScreenTimeSettingsUIBundle bundle:v13];
      v6 = [v7 localizedStringForKey:@"DeviceDowntimeDailyScheduleOff" value:&stru_28766E5A8 table:0];
    }
  }

  else
  {
    v8 = [(STDeviceBedtime *)self simpleSchedule];
    v9 = MEMORY[0x277D4B928];
    v10 = [v8 startTime];
    v11 = [v8 endTime];
    v6 = [v9 simpleScheduleTimeRangeWithStartTimeComponents:v10 endTimeComponents:v11];
  }

  return v6;
}

uint64_t __31__STDeviceBedtime_scheduleText__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2 - 1];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3 - 1];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [v10 startTime];
    v12 = [v7 startTime];
    if ([v11 isEqual:v12])
    {
      v13 = [v10 endTime];
      v14 = [v7 endTime];
      v15 = [v13 isEqual:v14];
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

  return v15;
}

id __31__STDeviceBedtime_scheduleText__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2 - 1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = MEMORY[0x277D4B928];
    v6 = [v4 startTime];
    v7 = [v4 endTime];
    v8 = [v5 customScheduleTimeRangeWithLocale:0 startTimeComponents:v6 endTimeComponents:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithBlueprint:", 0}];
  *(v5 + 8) = self->_deviceBedtimeEnabled;
  *(v5 + 9) = self->_askForMoreTime;
  v6 = [(STBlueprintScheduleSimpleItem *)self->_simpleSchedule copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSDictionary *)self->_scheduleByWeekdayIndex copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

+ (STBlueprintScheduleSimpleItem)defaultBedtimeSchedule
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D4B928] defaultStartTime];
  [v2 setStartTime:v3];

  v4 = [MEMORY[0x277D4B928] defaultEndTime];
  [v2 setEndTime:v4];

  return v2;
}

@end