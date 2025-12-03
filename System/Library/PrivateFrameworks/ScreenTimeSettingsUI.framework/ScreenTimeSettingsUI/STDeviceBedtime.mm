@interface STDeviceBedtime
+ (STBlueprintScheduleSimpleItem)defaultBedtimeSchedule;
- (NSString)scheduleText;
- (STDeviceBedtime)initWithBlueprint:(id)blueprint;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation STDeviceBedtime

- (STDeviceBedtime)initWithBlueprint:(id)blueprint
{
  v42[1] = *MEMORY[0x277D85DE8];
  blueprintCopy = blueprint;
  v41.receiver = self;
  v41.super_class = STDeviceBedtime;
  v5 = [(STDeviceBedtime *)&v41 init];
  v6 = v5;
  if (v5)
  {
    if (blueprintCopy)
    {
      v5->_deviceBedtimeEnabled = [blueprintCopy enabled];
      schedule = [blueprintCopy schedule];
      scheduleRepresentation = [schedule scheduleRepresentation];

      simpleSchedule = [scheduleRepresentation simpleSchedule];
      v10 = simpleSchedule;
      if (simpleSchedule)
      {
        v11 = simpleSchedule;
        simpleSchedule = v6->_simpleSchedule;
        v6->_simpleSchedule = v11;
      }

      else
      {
        simpleSchedule = [scheduleRepresentation customScheduleItems];
        v15 = objc_alloc(MEMORY[0x277CBEAC0]);
        v16 = [simpleSchedule valueForKey:@"day"];
        v17 = [v15 initWithObjects:simpleSchedule forKeys:v16];
        scheduleByWeekdayIndex = v6->_scheduleByWeekdayIndex;
        v6->_scheduleByWeekdayIndex = v17;

        firstObject = [simpleSchedule firstObject];
        if (firstObject)
        {
          v20 = objc_opt_new();
          v21 = v6->_simpleSchedule;
          v6->_simpleSchedule = v20;

          startTime = [firstObject startTime];
          [(STBlueprintScheduleSimpleItem *)v6->_simpleSchedule setStartTime:startTime];

          endTime = [firstObject endTime];
          [(STBlueprintScheduleSimpleItem *)v6->_simpleSchedule setEndTime:endTime];
        }

        else
        {
          defaultBedtimeSchedule = [objc_opt_class() defaultBedtimeSchedule];
          endTime = v6->_simpleSchedule;
          v6->_simpleSchedule = defaultBedtimeSchedule;
        }
      }

      v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
      v42[0] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];

      configurations = [blueprintCopy configurations];
      v28 = [configurations sortedArrayUsingDescriptors:v26];
      firstObject2 = [v28 firstObject];

      if (firstObject2)
      {
        v30 = MEMORY[0x277CFBBD0];
        payloadPlist = [firstObject2 payloadPlist];
        v40 = 0;
        v32 = [v30 declarationForData:payloadPlist error:&v40];
        v33 = v40;

        payloadMode = [v32 payloadMode];
        v35 = [payloadMode isEqualToString:*MEMORY[0x277CFBB78]];

        if (v35)
        {
          v6->_askForMoreTime = 0;
        }

        else
        {
          payloadMode2 = [v32 payloadMode];
          v37 = [payloadMode2 isEqualToString:*MEMORY[0x277CFBB70]];

          if (v37)
          {
            v6->_askForMoreTime = 1;
          }

          else if (!v32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            [STDeviceBedtime initWithBlueprint:];
          }
        }

        unknownPayloadKeys = [v32 unknownPayloadKeys];
        v6->_shouldAllowEditing = [unknownPayloadKeys count] == 0;
      }
    }

    else
    {
      *&v5->_deviceBedtimeEnabled = 0;
      defaultBedtimeSchedule2 = [objc_opt_class() defaultBedtimeSchedule];
      v14 = v6->_simpleSchedule;
      v6->_simpleSchedule = defaultBedtimeSchedule2;

      v6->_shouldAllowEditing = 1;
    }
  }

  return v6;
}

- (NSString)scheduleText
{
  scheduleByWeekdayIndex = [(STDeviceBedtime *)self scheduleByWeekdayIndex];
  v4 = scheduleByWeekdayIndex;
  if (scheduleByWeekdayIndex)
  {
    v5 = MEMORY[0x277D4B928];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __31__STDeviceBedtime_scheduleText__block_invoke;
    v18[3] = &unk_279B7E2E0;
    v19 = scheduleByWeekdayIndex;
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
    simpleSchedule = [(STDeviceBedtime *)self simpleSchedule];
    v9 = MEMORY[0x277D4B928];
    startTime = [simpleSchedule startTime];
    endTime = [simpleSchedule endTime];
    v6 = [v9 simpleScheduleTimeRangeWithStartTimeComponents:startTime endTimeComponents:endTime];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithBlueprint:", 0}];
  *(v5 + 8) = self->_deviceBedtimeEnabled;
  *(v5 + 9) = self->_askForMoreTime;
  v6 = [(STBlueprintScheduleSimpleItem *)self->_simpleSchedule copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSDictionary *)self->_scheduleByWeekdayIndex copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

+ (STBlueprintScheduleSimpleItem)defaultBedtimeSchedule
{
  v2 = objc_opt_new();
  defaultStartTime = [MEMORY[0x277D4B928] defaultStartTime];
  [v2 setStartTime:defaultStartTime];

  defaultEndTime = [MEMORY[0x277D4B928] defaultEndTime];
  [v2 setEndTime:defaultEndTime];

  return v2;
}

@end