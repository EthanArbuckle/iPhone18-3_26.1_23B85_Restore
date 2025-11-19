@interface SCLScheduleSettings(ViewModel)
+ (id)scheduleSettingsWithViewModel:()ViewModel;
@end

@implementation SCLScheduleSettings(ViewModel)

+ (id)scheduleSettingsWithViewModel:()ViewModel
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D4B730]);
  [v4 setEnabled:{objc_msgSend(v3, "isEnabled")}];
  v5 = [v3 scheduleType];
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        goto LABEL_11;
      }

      v7 = [v3 customSchedule];
      v8 = [v7 copy];
      goto LABEL_9;
    }

LABEL_8:
    v9 = objc_alloc(MEMORY[0x277D4B738]);
    v7 = [v3 timeIntervals];
    v8 = [v9 initWithTimeIntervals:v7 repeatSchedule:{objc_msgSend(v3, "repeatSchedule")}];
LABEL_9:
    v6 = v8;

    goto LABEL_11;
  }

  if (!v5)
  {
    v10 = objc_alloc(MEMORY[0x277D4B738]);
    v6 = [v10 initWithRecurrences:MEMORY[0x277CBEBF8]];
    goto LABEL_11;
  }

  if (v5 == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  [v4 setSchedule:v6];

  return v4;
}

@end