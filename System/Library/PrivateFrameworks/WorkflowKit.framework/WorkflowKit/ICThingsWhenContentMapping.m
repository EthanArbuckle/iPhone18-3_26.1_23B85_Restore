@interface ICThingsWhenContentMapping
- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5;
@end

@implementation ICThingsWhenContentMapping

- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v31 = a3;
  v6 = a5;
  v7 = [v6 objectForKey:@"thingsWhen"];
  if ([v7 isEqualToString:@"This Evening"])
  {
    v8 = v31[2];
LABEL_5:
    v8();
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"Someday"])
  {
    v8 = v31[2];
    goto LABEL_5;
  }

  v9 = [v6 objectForKey:@"thingsWhenCustomDate"];
  v10 = [MEMORY[0x1E6996DC0] datesInString:v9 error:0];
  v11 = [v10 firstObject];

  if ([v7 isEqualToString:@"Today"])
  {
    v12 = [MEMORY[0x1E695DF00] date];
LABEL_8:
    v13 = v12;
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"Tomorrow"])
  {
    v14 = [MEMORY[0x1E695DF00] date];
    v13 = [v14 dateByAddingTimeInterval:86400.0];

LABEL_11:
    v15 = objc_opt_new();
    v16 = [v6 objectForKey:@"thingsWhenReminderTime"];
    v17 = [MEMORY[0x1E6996DC0] datesInString:v16 error:0];
    v18 = [v17 firstObject];

    if ([v16 length] && v18)
    {
      v19 = [MEMORY[0x1E695DEE8] currentCalendar];
      [v19 components:224 fromDate:v18];
      v20 = v29 = v18;
      v30 = v15;
      v21 = v11;
      v22 = v9;
      v23 = [v20 hour];
      v24 = [v20 minute];
      v25 = [v20 second];
      v26 = v23;
      v9 = v22;
      v11 = v21;
      v15 = v30;
      v27 = [v19 dateBySettingHour:v26 minute:v24 second:v25 ofDate:v13 options:0];

      [v30 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
      v18 = v29;

      v13 = v27;
    }

    else
    {
      [v15 setDateFormat:@"yyyy-MM-dd"];
    }

    v28 = [v15 stringFromDate:v13];
    (v31[2])(v31, v28, 0);

    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"On Date"])
  {
    v12 = v11;
    goto LABEL_8;
  }

  (v31[2])(v31, 0, 0);
LABEL_16:

LABEL_17:
}

@end