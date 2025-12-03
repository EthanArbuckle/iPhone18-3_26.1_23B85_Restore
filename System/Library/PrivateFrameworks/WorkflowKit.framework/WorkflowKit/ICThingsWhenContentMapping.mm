@interface ICThingsWhenContentMapping
- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters;
@end

@implementation ICThingsWhenContentMapping

- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters
{
  representationCopy = representation;
  parametersCopy = parameters;
  v7 = [parametersCopy objectForKey:@"thingsWhen"];
  if ([v7 isEqualToString:@"This Evening"])
  {
    v8 = representationCopy[2];
LABEL_5:
    v8();
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"Someday"])
  {
    v8 = representationCopy[2];
    goto LABEL_5;
  }

  v9 = [parametersCopy objectForKey:@"thingsWhenCustomDate"];
  v10 = [MEMORY[0x1E6996DC0] datesInString:v9 error:0];
  firstObject = [v10 firstObject];

  if ([v7 isEqualToString:@"Today"])
  {
    date = [MEMORY[0x1E695DF00] date];
LABEL_8:
    v13 = date;
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"Tomorrow"])
  {
    date2 = [MEMORY[0x1E695DF00] date];
    v13 = [date2 dateByAddingTimeInterval:86400.0];

LABEL_11:
    v15 = objc_opt_new();
    v16 = [parametersCopy objectForKey:@"thingsWhenReminderTime"];
    v17 = [MEMORY[0x1E6996DC0] datesInString:v16 error:0];
    firstObject2 = [v17 firstObject];

    if ([v16 length] && firstObject2)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      [currentCalendar components:224 fromDate:firstObject2];
      v20 = v29 = firstObject2;
      v30 = v15;
      v21 = firstObject;
      v22 = v9;
      hour = [v20 hour];
      minute = [v20 minute];
      second = [v20 second];
      v26 = hour;
      v9 = v22;
      firstObject = v21;
      v15 = v30;
      v27 = [currentCalendar dateBySettingHour:v26 minute:minute second:second ofDate:v13 options:0];

      [v30 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
      firstObject2 = v29;

      v13 = v27;
    }

    else
    {
      [v15 setDateFormat:@"yyyy-MM-dd"];
    }

    v28 = [v15 stringFromDate:v13];
    (representationCopy[2])(representationCopy, v28, 0);

    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"On Date"])
  {
    date = firstObject;
    goto LABEL_8;
  }

  (representationCopy[2])(representationCopy, 0, 0);
LABEL_16:

LABEL_17:
}

@end