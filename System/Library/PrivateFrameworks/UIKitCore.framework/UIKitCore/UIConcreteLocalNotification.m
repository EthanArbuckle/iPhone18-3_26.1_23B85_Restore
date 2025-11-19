@interface UIConcreteLocalNotification
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (UIConcreteLocalNotification)init;
- (UIConcreteLocalNotification)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)nextFireDateAfterDate:(id)a3 localTimeZone:(id)a4;
- (id)nextFireDateForLastFireDate:(id)a3;
- (id)userInfo;
- (int64_t)compareFireDates:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setUserInfo:(id)a3;
- (void)validate;
@end

@implementation UIConcreteLocalNotification

- (UIConcreteLocalNotification)init
{
  v5.receiver = self;
  v5.super_class = UIConcreteLocalNotification;
  v2 = [(UILocalNotification *)&v5 init];
  v3 = v2;
  if (v2)
  {
    UILocalNotificationCommonInit(v2);
  }

  return v3;
}

- (UIConcreteLocalNotification)initWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"UILocalNotification.m" lineNumber:395 description:@"New properties were added so can only decode correctly if can test for keys."];
  }

  v35.receiver = self;
  v35.super_class = UIConcreteLocalNotification;
  v6 = [(UILocalNotification *)&v35 init];
  v7 = v6;
  if (v6)
  {
    UILocalNotificationCommonInit(v6);
    v8 = objc_opt_class();
    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_UILocalNotificationFireDate"];
    fireDate = v7->fireDate;
    v7->fireDate = v9;

    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_UILocalNotificationTimeZone"];
    timeZone = v7->timeZone;
    v7->timeZone = v11;

    v7->repeatInterval = [v5 decodeIntegerForKey:@"_UILocalNotificationRepeatInterval"];
    v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_UILocalNotificationRepeatCalendar"];
    repeatCalendar = v7->repeatCalendar;
    v7->repeatCalendar = v13;

    v15 = [v5 decodeObjectOfClass:v8 forKey:@"_UILocalNotificationAlertBody"];
    alertBody = v7->alertBody;
    v7->alertBody = v15;

    v7->hasAction = [v5 decodeBoolForKey:@"_UILocalNotificationHasAction"];
    v17 = [v5 decodeObjectOfClass:v8 forKey:@"_UILocalNotificationAlertAction"];
    alertAction = v7->alertAction;
    v7->alertAction = v17;

    v19 = [v5 decodeObjectOfClass:v8 forKey:@"_UILocalNotificationAlertLaunchImage"];
    alertLaunchImage = v7->alertLaunchImage;
    v7->alertLaunchImage = v19;

    v21 = [v5 decodeObjectOfClass:v8 forKey:@"_UILocalNotificationAlertTitle"];
    alertTitle = v7->alertTitle;
    v7->alertTitle = v21;

    v23 = [v5 decodeObjectOfClass:v8 forKey:@"_UILocalNotificationSoundName"];
    soundName = v7->soundName;
    v7->soundName = v23;

    v7->applicationIconBadgeNumber = [v5 decodeIntegerForKey:@"_UILocalNotificationApplicationIconBadgeNumber"];
    v25 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_UILocalNotificationUserInfoData"];
    userInfoData = v7->userInfoData;
    v7->userInfoData = v25;

    v27 = [v5 decodeObjectOfClass:v8 forKey:@"_UILocalNotificationCategoryKey"];
    category = v7->category;
    v7->category = v27;

    v7->regionTriggersOnce = [v5 decodeBoolForKey:@"_UILocalNotificationRegionTriggersOnceKey"];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v29 = _MergedGlobals_1_18;
    v40 = _MergedGlobals_1_18;
    if (!_MergedGlobals_1_18)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __getCLRegionClass_block_invoke;
      v36[3] = &unk_1E70F2F20;
      v36[4] = &v37;
      __getCLRegionClass_block_invoke(v36);
      v29 = v38[3];
    }

    v30 = v29;
    _Block_object_dispose(&v37, 8);
    v31 = [v5 decodeObjectOfClass:v29 forKey:@"_UILocalNotificationRegionKey"];
    region = v7->region;
    v7->region = v31;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  fireDate = self->fireDate;
  v5 = a3;
  [v5 encodeObject:fireDate forKey:@"_UILocalNotificationFireDate"];
  [v5 encodeObject:self->timeZone forKey:@"_UILocalNotificationTimeZone"];
  [v5 encodeInteger:self->repeatInterval forKey:@"_UILocalNotificationRepeatInterval"];
  [v5 encodeObject:self->repeatCalendar forKey:@"_UILocalNotificationRepeatCalendar"];
  [v5 encodeObject:self->alertBody forKey:@"_UILocalNotificationAlertBody"];
  [v5 encodeBool:self->hasAction forKey:@"_UILocalNotificationHasAction"];
  [v5 encodeObject:self->alertAction forKey:@"_UILocalNotificationAlertAction"];
  [v5 encodeObject:self->alertLaunchImage forKey:@"_UILocalNotificationAlertLaunchImage"];
  [v5 encodeObject:self->alertTitle forKey:@"_UILocalNotificationAlertTitle"];
  [v5 encodeObject:self->soundName forKey:@"_UILocalNotificationSoundName"];
  [v5 encodeInteger:self->applicationIconBadgeNumber forKey:@"_UILocalNotificationApplicationIconBadgeNumber"];
  [v5 encodeObject:self->userInfoData forKey:@"_UILocalNotificationUserInfoData"];
  [v5 encodeObject:self->category forKey:@"_UILocalNotificationCategoryKey"];
  [v5 encodeBool:self->regionTriggersOnce forKey:@"_UILocalNotificationRegionTriggersOnceKey"];
  [v5 encodeObject:self->region forKey:@"_UILocalNotificationRegionKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setFireDate:self->fireDate];
  [v4 setTimeZone:self->timeZone];
  [v4 setRepeatInterval:self->repeatInterval];
  [v4 setRepeatCalendar:self->repeatCalendar];
  [v4 setAlertBody:self->alertBody];
  [v4 setHasAction:self->hasAction];
  [v4 setAlertAction:self->alertAction];
  [v4 setAlertLaunchImage:self->alertLaunchImage];
  [v4 setAlertTitle:self->alertTitle];
  [v4 setSoundName:self->soundName];
  [v4 setApplicationIconBadgeNumber:self->applicationIconBadgeNumber];
  [v4 _setUserInfoData:self->userInfoData];
  [v4 setCategory:self->category];
  [v4 setRegion:self->region];
  [v4 setRegionTriggersOnce:self->regionTriggersOnce];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fireDate = self->fireDate;
    v6 = [v4 fireDate];
    if (fireDate == v6 || [(NSDate *)fireDate isEqual:v6])
    {
      timeZone = self->timeZone;
      v8 = [v4 timeZone];
      if ((timeZone == v8 || -[NSTimeZone isEqual:](timeZone, "isEqual:", v8)) && (repeatInterval = self->repeatInterval, repeatInterval == [v4 repeatInterval]))
      {
        repeatCalendar = self->repeatCalendar;
        v11 = [v4 repeatCalendar];
        if (repeatCalendar == v11 || [(NSCalendar *)repeatCalendar isEqual:v11])
        {
          alertBody = self->alertBody;
          v13 = [v4 alertBody];
          if ((alertBody == v13 || -[NSString isEqual:](alertBody, "isEqual:", v13)) && (hasAction = self->hasAction, hasAction == [v4 hasAction]))
          {
            alertAction = self->alertAction;
            v16 = [v4 alertAction];
            if (alertAction == v16 || [(NSString *)alertAction isEqual:v16])
            {
              alertLaunchImage = self->alertLaunchImage;
              v18 = [v4 alertLaunchImage];
              if (alertLaunchImage == v18 || [(NSString *)alertLaunchImage isEqual:v18])
              {
                alertTitle = self->alertTitle;
                v20 = [v4 alertTitle];
                if (alertTitle == v20 || [(NSString *)alertTitle isEqual:v20])
                {
                  soundName = self->soundName;
                  v22 = [v4 soundName];
                  if (soundName == v22 || (v23 = soundName, v24 = v22, v25 = [(NSString *)v23 isEqual:v22], v22 = v24, v25))
                  {
                    v50 = v22;
                    applicationIconBadgeNumber = self->applicationIconBadgeNumber;
                    if (applicationIconBadgeNumber == [v4 applicationIconBadgeNumber])
                    {
                      v27 = [(UIConcreteLocalNotification *)self userInfo];
                      v28 = [v4 userInfo];
                      v29 = v27;
                      v30 = v28;
                      v49 = v29;
                      if (v29 == v28 || [v29 isEqual:v28])
                      {
                        v48 = v30;
                        category = self->category;
                        v32 = [v4 category];
                        if (category == v32 || (v33 = category, v34 = v32, v35 = [(NSString *)v33 isEqual:v32], v32 = v34, v35))
                        {
                          v47 = v32;
                          v36 = [(CLRegion *)self->region identifier];
                          v46 = [v4 region];
                          v37 = [v46 identifier];
                          v45 = v36;
                          if (v36 == v37 || (v44 = v37, v38 = [v36 isEqual:v37], v37 = v44, v38))
                          {
                            regionTriggersOnce = self->regionTriggersOnce;
                            v40 = v37;
                            v41 = [v4 regionTriggersOnce];
                            v37 = v40;
                            v42 = regionTriggersOnce == v41;
                          }

                          else
                          {
                            v42 = 0;
                          }

                          v32 = v47;
                        }

                        else
                        {
                          v42 = 0;
                        }

                        v30 = v48;
                      }

                      else
                      {
                        v42 = 0;
                      }
                    }

                    else
                    {
                      v42 = 0;
                    }

                    v22 = v50;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }

                else
                {
                  v42 = 0;
                }
              }

              else
              {
                v42 = 0;
              }
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v42 = 0;
          }
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (unint64_t)hash
{
  v3 = self->repeatInterval + [(NSDate *)self->fireDate hash];
  v4 = [(CLRegion *)self->region identifier];
  v5 = v3 + [v4 hash];
  regionTriggersOnce = self->regionTriggersOnce;

  return v5 + regionTriggersOnce;
}

- (int64_t)compareFireDates:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->region || ([v4 region], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 region];
    v8 = comparePotentiallyNilObjects(v7, self->region);
  }

  else
  {
    fireDate = self->fireDate;
    v11 = [v5 fireDate];
    v8 = comparePotentiallyNilObjects(fireDate, v11);

    if (!v8)
    {
      v12 = [v5 repeatInterval];
      repeatInterval = self->repeatInterval;
      v14 = repeatInterval >= v12;
      v15 = repeatInterval > v12;
      if (v14)
      {
        v8 = v15;
      }

      else
      {
        v8 = -1;
      }
    }
  }

  return v8;
}

- (void)setUserInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"userInfo is not an NSDictionary" userInfo:0];
      objc_exception_throw(v10);
    }

    userInfoData = self->userInfoData;
    self->userInfoData = 0;

    v16 = 0;
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v16];
    v7 = v16;
    v8 = self->userInfoData;
    self->userInfoData = v6;

    if (!self->userInfoData)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to serialize userInfo: %@", v7];
      v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
      v15 = v14;

      objc_exception_throw(v14);
    }
  }

  else
  {
    v9 = self->userInfoData;
    self->userInfoData = 0;
  }
}

- (id)userInfo
{
  userInfoData = self->userInfoData;
  if (userInfoData)
  {
    v3 = [MEMORY[0x1E696AE40] propertyListWithData:userInfoData options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (id)description
{
  if (self->region)
  {
    v3 = MEMORY[0x1E696AEC0];
    v21.receiver = self;
    v21.super_class = UIConcreteLocalNotification;
    v4 = [(UIConcreteLocalNotification *)&v21 description];
    region = self->region;
    if (self->regionTriggersOnce)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = [(UIConcreteLocalNotification *)self userInfo];
    v8 = [v3 stringWithFormat:@"%@{region = %@, regionTriggersOnce = %@, user info = %@}", v4, region, v6, v7];
    goto LABEL_41;
  }

  repeatInterval = self->repeatInterval;
  if (repeatInterval > 255)
  {
    if (repeatInterval <= 2047)
    {
      switch(repeatInterval)
      {
        case 256:
          v4 = @"NSWeekCalendarUnit";
          goto LABEL_40;
        case 512:
          v4 = @"NSCalendarUnitWeekday";
          goto LABEL_40;
        case 1024:
          v4 = @"NSCalendarUnitWeekdayOrdinal";
          goto LABEL_40;
      }
    }

    else if (repeatInterval >= 0x2000)
    {
      if (repeatInterval == 0x2000)
      {
        v4 = @"NSCalendarUnitWeekOfYear";
        goto LABEL_40;
      }

      if (repeatInterval == 0x4000)
      {
        v4 = @"NSCalendarUnitYearForWeekOfYear";
        goto LABEL_40;
      }
    }

    else
    {
      if (repeatInterval == 2048)
      {
        v4 = @"NSCalendarUnitQuarter";
        goto LABEL_40;
      }

      if (repeatInterval == 4096)
      {
        v4 = @"NSCalendarUnitWeekOfMonth";
        goto LABEL_40;
      }
    }

LABEL_39:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->repeatInterval];
    goto LABEL_40;
  }

  if (repeatInterval <= 15)
  {
    switch(repeatInterval)
    {
      case 2:
        v4 = @"NSCalendarUnitEra";
        goto LABEL_40;
      case 4:
        v4 = @"NSCalendarUnitYear";
        goto LABEL_40;
      case 8:
        v4 = @"NSCalendarUnitMonth";
        goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (repeatInterval > 63)
  {
    if (repeatInterval == 64)
    {
      v4 = @"NSCalendarUnitMinute";
      goto LABEL_40;
    }

    if (repeatInterval == 128)
    {
      v4 = @"NSCalendarUnitSecond";
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (repeatInterval == 16)
  {
    v4 = @"NSCalendarUnitDay";
    goto LABEL_40;
  }

  if (repeatInterval != 32)
  {
    goto LABEL_39;
  }

  v4 = @"NSCalendarUnitHour";
LABEL_40:
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDateStyle:4];
  [v7 setTimeStyle:4];
  [v7 setTimeZone:self->timeZone];
  v10 = [v7 stringForObjectValue:self->fireDate];
  v11 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  [v7 setTimeZone:v11];

  v12 = [MEMORY[0x1E695DF00] date];
  v13 = [(UIConcreteLocalNotification *)self nextFireDateForLastFireDate:v12];
  v14 = [v7 stringForObjectValue:v13];

  v15 = MEMORY[0x1E696AEC0];
  v20.receiver = self;
  v20.super_class = UIConcreteLocalNotification;
  v16 = [(UIConcreteLocalNotification *)&v20 description];
  timeZone = self->timeZone;
  v18 = [(UIConcreteLocalNotification *)self userInfo];
  v8 = [v15 stringWithFormat:@"%@{fire date = %@, time zone = %@, repeat interval = %@, next fire date = %@, user info = %@}", v16, v10, timeZone, v4, v14, v18];

LABEL_41:

  return v8;
}

- (id)nextFireDateForLastFireDate:(id)a3
{
  v4 = a3;
  if ([(UIConcreteLocalNotification *)self isTriggeredByDate])
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF00] distantPast];
    }

    v5 = -60.0;
    if ((self->repeatInterval & 0xC0) == 0)
    {
      v5 = -900.0;
    }

    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v5];
    v7 = [v4 laterDate:v6];
    v8 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v9 = [(UIConcreteLocalNotification *)self nextFireDateAfterDate:v7 localTimeZone:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)nextFireDateAfterDate:(id)a3 localTimeZone:(id)a4
{
  v7 = a3;
  v8 = a4;
  repeatInterval = self->repeatInterval;
  if (repeatInterval)
  {
    v10 = 0;
    do
    {
      v11 = qword_18A680A80[v10];
      if (v10 > 9)
      {
        break;
      }

      ++v10;
    }

    while (v11 != repeatInterval);
    if (v11 != repeatInterval)
    {
      goto LABEL_25;
    }
  }

  fireDate = self->fireDate;
  if (!fireDate)
  {
    v13 = v7;
    goto LABEL_46;
  }

  v13 = fireDate;
  if (v8)
  {
    timeZone = self->timeZone;
    if (timeZone)
    {
      if (([(NSTimeZone *)timeZone isEqual:v8]& 1) == 0)
      {
        v15 = self->repeatCalendar;
        if (!v15)
        {
          v15 = [MEMORY[0x1E695DEE8] currentCalendar];
        }

        v16 = [(NSCalendar *)v15 copy];

        [v16 setTimeZone:self->timeZone];
        v17 = [v16 components:254 fromDate:v13];
        [v16 setTimeZone:v8];
        v18 = [v16 dateFromComponents:v17];

        v13 = v18;
      }
    }
  }

  v19 = [(NSDate *)v13 earlierDate:v7];

  if (v19 != v13)
  {
    if (!v13)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (!self->repeatInterval)
  {

LABEL_25:
    v13 = 0;
    goto LABEL_46;
  }

  v20 = self->repeatCalendar;
  if (!v20)
  {
    v20 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v21 = [(NSCalendar *)v20 timeZone];
  v22 = [v21 isEqual:v8];

  if ((v22 & 1) == 0)
  {
    v23 = [(NSCalendar *)v20 copy];

    [(NSCalendar *)v23 setTimeZone:v8];
    v20 = v23;
  }

  if (([MEMORY[0x1E695DF10] _ui_smallerComponentsRelativeToComponent:self->repeatInterval] & 0x20) != 0)
  {
    v24 = [NSCalendar components:v20 fromDate:"components:fromDate:"];
  }

  else
  {
    v24 = 0;
  }

  v25 = [(NSCalendar *)v20 components:self->repeatInterval fromDate:v13 toDate:v7 options:0];
  if (!v25)
  {

    v27 = 0;
    goto LABEL_43;
  }

  v36 = a2;
  v26 = _nextAdjustedFireDateForPreviousDateAndComponentsWithRepeatIntervalForCalendar(v13, v25, self->repeatInterval, v20, v24);
  if (!v26)
  {
    goto LABEL_40;
  }

  v27 = v26;
  v28 = [(NSDate *)v26 earlierDate:v7];

  if (v28 != v27)
  {
    goto LABEL_30;
  }

  [v25 _ui_setValue:objc_msgSend(v25 forComponent:{"_ui_valueForComponent:", self->repeatInterval) + 1, self->repeatInterval}];
  v30 = _nextAdjustedFireDateForPreviousDateAndComponentsWithRepeatIntervalForCalendar(v13, v25, self->repeatInterval, v20, v24);

  if (!v30)
  {
    goto LABEL_40;
  }

  v31 = [(NSDate *)v30 earlierDate:v7];

  if (v31 != v30)
  {
    v27 = v30;
    goto LABEL_30;
  }

  [v25 _ui_setValue:objc_msgSend(v25 forComponent:{"_ui_valueForComponent:", self->repeatInterval) + 1, self->repeatInterval}];
  v27 = _nextAdjustedFireDateForPreviousDateAndComponentsWithRepeatIntervalForCalendar(v13, v25, self->repeatInterval, v20, v24);

  if (!v27)
  {
LABEL_40:
    v27 = 0;
    goto LABEL_41;
  }

  v32 = [(NSDate *)v27 earlierDate:v7];

  if (v32 == v27)
  {
    NSLog(&cfstr_Uilocalnotific_16.isa, v13, v27, self->repeatInterval);

    goto LABEL_40;
  }

LABEL_30:
  v37 = 0.0;
  a2 = v36;
  if (![(NSCalendar *)v20 rangeOfUnit:self->repeatInterval startDate:0 interval:&v37 forDate:v27]|| v37 >= 59.0)
  {
    goto LABEL_42;
  }

  v29 = [(NSDate *)v27 dateByAddingTimeInterval:59.0 - v37];

  v27 = v29;
LABEL_41:
  a2 = v36;
LABEL_42:

LABEL_43:
  v13 = v27;
  if (!v27)
  {
    goto LABEL_46;
  }

LABEL_44:
  [(NSDate *)v13 timeIntervalSinceDate:v7];
  if (v33 <= 0.0)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"UILocalNotification.m" lineNumber:890 description:@"invariant not satisfied"];
  }

LABEL_46:

  return v13;
}

- (BOOL)isValid
{
  if (self->repeatInterval)
  {
    return 1;
  }

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(UIConcreteLocalNotification *)self nextFireDateForLastFireDate:v4];
  v2 = v5 != 0;

  return v2;
}

- (void)validate
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->region)
  {
    if (self->fireDate)
    {
      v2 = MEMORY[0x1E695DF30];
      v3 = *MEMORY[0x1E695D940];
      v7 = @"UILocalNotification";
      v8[0] = self;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      v5 = [v2 exceptionWithName:v3 reason:@"UILocalNotification may not have both a region and a fireDate defined" userInfo:v4];
      v6 = v5;

      objc_exception_throw(v5);
    }
  }
}

@end