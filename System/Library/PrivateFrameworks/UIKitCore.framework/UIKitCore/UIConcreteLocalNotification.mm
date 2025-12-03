@interface UIConcreteLocalNotification
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (UIConcreteLocalNotification)init;
- (UIConcreteLocalNotification)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)nextFireDateAfterDate:(id)date localTimeZone:(id)zone;
- (id)nextFireDateForLastFireDate:(id)date;
- (id)userInfo;
- (int64_t)compareFireDates:(id)dates;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setUserInfo:(id)info;
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

- (UIConcreteLocalNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UILocalNotification.m" lineNumber:395 description:@"New properties were added so can only decode correctly if can test for keys."];
  }

  v35.receiver = self;
  v35.super_class = UIConcreteLocalNotification;
  v6 = [(UILocalNotification *)&v35 init];
  v7 = v6;
  if (v6)
  {
    UILocalNotificationCommonInit(v6);
    v8 = objc_opt_class();
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UILocalNotificationFireDate"];
    fireDate = v7->fireDate;
    v7->fireDate = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UILocalNotificationTimeZone"];
    timeZone = v7->timeZone;
    v7->timeZone = v11;

    v7->repeatInterval = [coderCopy decodeIntegerForKey:@"_UILocalNotificationRepeatInterval"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UILocalNotificationRepeatCalendar"];
    repeatCalendar = v7->repeatCalendar;
    v7->repeatCalendar = v13;

    v15 = [coderCopy decodeObjectOfClass:v8 forKey:@"_UILocalNotificationAlertBody"];
    alertBody = v7->alertBody;
    v7->alertBody = v15;

    v7->hasAction = [coderCopy decodeBoolForKey:@"_UILocalNotificationHasAction"];
    v17 = [coderCopy decodeObjectOfClass:v8 forKey:@"_UILocalNotificationAlertAction"];
    alertAction = v7->alertAction;
    v7->alertAction = v17;

    v19 = [coderCopy decodeObjectOfClass:v8 forKey:@"_UILocalNotificationAlertLaunchImage"];
    alertLaunchImage = v7->alertLaunchImage;
    v7->alertLaunchImage = v19;

    v21 = [coderCopy decodeObjectOfClass:v8 forKey:@"_UILocalNotificationAlertTitle"];
    alertTitle = v7->alertTitle;
    v7->alertTitle = v21;

    v23 = [coderCopy decodeObjectOfClass:v8 forKey:@"_UILocalNotificationSoundName"];
    soundName = v7->soundName;
    v7->soundName = v23;

    v7->applicationIconBadgeNumber = [coderCopy decodeIntegerForKey:@"_UILocalNotificationApplicationIconBadgeNumber"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UILocalNotificationUserInfoData"];
    userInfoData = v7->userInfoData;
    v7->userInfoData = v25;

    v27 = [coderCopy decodeObjectOfClass:v8 forKey:@"_UILocalNotificationCategoryKey"];
    category = v7->category;
    v7->category = v27;

    v7->regionTriggersOnce = [coderCopy decodeBoolForKey:@"_UILocalNotificationRegionTriggersOnceKey"];
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
    v31 = [coderCopy decodeObjectOfClass:v29 forKey:@"_UILocalNotificationRegionKey"];
    region = v7->region;
    v7->region = v31;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  fireDate = self->fireDate;
  coderCopy = coder;
  [coderCopy encodeObject:fireDate forKey:@"_UILocalNotificationFireDate"];
  [coderCopy encodeObject:self->timeZone forKey:@"_UILocalNotificationTimeZone"];
  [coderCopy encodeInteger:self->repeatInterval forKey:@"_UILocalNotificationRepeatInterval"];
  [coderCopy encodeObject:self->repeatCalendar forKey:@"_UILocalNotificationRepeatCalendar"];
  [coderCopy encodeObject:self->alertBody forKey:@"_UILocalNotificationAlertBody"];
  [coderCopy encodeBool:self->hasAction forKey:@"_UILocalNotificationHasAction"];
  [coderCopy encodeObject:self->alertAction forKey:@"_UILocalNotificationAlertAction"];
  [coderCopy encodeObject:self->alertLaunchImage forKey:@"_UILocalNotificationAlertLaunchImage"];
  [coderCopy encodeObject:self->alertTitle forKey:@"_UILocalNotificationAlertTitle"];
  [coderCopy encodeObject:self->soundName forKey:@"_UILocalNotificationSoundName"];
  [coderCopy encodeInteger:self->applicationIconBadgeNumber forKey:@"_UILocalNotificationApplicationIconBadgeNumber"];
  [coderCopy encodeObject:self->userInfoData forKey:@"_UILocalNotificationUserInfoData"];
  [coderCopy encodeObject:self->category forKey:@"_UILocalNotificationCategoryKey"];
  [coderCopy encodeBool:self->regionTriggersOnce forKey:@"_UILocalNotificationRegionTriggersOnceKey"];
  [coderCopy encodeObject:self->region forKey:@"_UILocalNotificationRegionKey"];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fireDate = self->fireDate;
    fireDate = [equalCopy fireDate];
    if (fireDate == fireDate || [(NSDate *)fireDate isEqual:fireDate])
    {
      timeZone = self->timeZone;
      timeZone = [equalCopy timeZone];
      if ((timeZone == timeZone || -[NSTimeZone isEqual:](timeZone, "isEqual:", timeZone)) && (repeatInterval = self->repeatInterval, repeatInterval == [equalCopy repeatInterval]))
      {
        repeatCalendar = self->repeatCalendar;
        repeatCalendar = [equalCopy repeatCalendar];
        if (repeatCalendar == repeatCalendar || [(NSCalendar *)repeatCalendar isEqual:repeatCalendar])
        {
          alertBody = self->alertBody;
          alertBody = [equalCopy alertBody];
          if ((alertBody == alertBody || -[NSString isEqual:](alertBody, "isEqual:", alertBody)) && (hasAction = self->hasAction, hasAction == [equalCopy hasAction]))
          {
            alertAction = self->alertAction;
            alertAction = [equalCopy alertAction];
            if (alertAction == alertAction || [(NSString *)alertAction isEqual:alertAction])
            {
              alertLaunchImage = self->alertLaunchImage;
              alertLaunchImage = [equalCopy alertLaunchImage];
              if (alertLaunchImage == alertLaunchImage || [(NSString *)alertLaunchImage isEqual:alertLaunchImage])
              {
                alertTitle = self->alertTitle;
                alertTitle = [equalCopy alertTitle];
                if (alertTitle == alertTitle || [(NSString *)alertTitle isEqual:alertTitle])
                {
                  soundName = self->soundName;
                  soundName = [equalCopy soundName];
                  if (soundName == soundName || (v23 = soundName, v24 = soundName, v25 = [(NSString *)v23 isEqual:soundName], soundName = v24, v25))
                  {
                    v50 = soundName;
                    applicationIconBadgeNumber = self->applicationIconBadgeNumber;
                    if (applicationIconBadgeNumber == [equalCopy applicationIconBadgeNumber])
                    {
                      userInfo = [(UIConcreteLocalNotification *)self userInfo];
                      userInfo2 = [equalCopy userInfo];
                      v29 = userInfo;
                      v30 = userInfo2;
                      v49 = v29;
                      if (v29 == userInfo2 || [v29 isEqual:userInfo2])
                      {
                        v48 = v30;
                        category = self->category;
                        category = [equalCopy category];
                        if (category == category || (v33 = category, v34 = category, v35 = [(NSString *)v33 isEqual:category], category = v34, v35))
                        {
                          v47 = category;
                          identifier = [(CLRegion *)self->region identifier];
                          region = [equalCopy region];
                          identifier2 = [region identifier];
                          v45 = identifier;
                          if (identifier == identifier2 || (v44 = identifier2, v38 = [identifier isEqual:identifier2], identifier2 = v44, v38))
                          {
                            regionTriggersOnce = self->regionTriggersOnce;
                            v40 = identifier2;
                            regionTriggersOnce = [equalCopy regionTriggersOnce];
                            identifier2 = v40;
                            v42 = regionTriggersOnce == regionTriggersOnce;
                          }

                          else
                          {
                            v42 = 0;
                          }

                          category = v47;
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

                    soundName = v50;
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
  identifier = [(CLRegion *)self->region identifier];
  v5 = v3 + [identifier hash];
  regionTriggersOnce = self->regionTriggersOnce;

  return v5 + regionTriggersOnce;
}

- (int64_t)compareFireDates:(id)dates
{
  datesCopy = dates;
  v5 = datesCopy;
  if (self->region || ([datesCopy region], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    region = [v5 region];
    v8 = comparePotentiallyNilObjects(region, self->region);
  }

  else
  {
    fireDate = self->fireDate;
    fireDate = [v5 fireDate];
    v8 = comparePotentiallyNilObjects(fireDate, fireDate);

    if (!v8)
    {
      repeatInterval = [v5 repeatInterval];
      repeatInterval = self->repeatInterval;
      v14 = repeatInterval >= repeatInterval;
      v15 = repeatInterval > repeatInterval;
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

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
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
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:infoCopy format:200 options:0 error:&v16];
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

    userInfo = [(UIConcreteLocalNotification *)self userInfo];
    v8 = [v3 stringWithFormat:@"%@{region = %@, regionTriggersOnce = %@, user info = %@}", v4, region, v6, userInfo];
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
  userInfo = objc_alloc_init(MEMORY[0x1E696AB78]);
  [userInfo setDateStyle:4];
  [userInfo setTimeStyle:4];
  [userInfo setTimeZone:self->timeZone];
  v10 = [userInfo stringForObjectValue:self->fireDate];
  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  [userInfo setTimeZone:defaultTimeZone];

  date = [MEMORY[0x1E695DF00] date];
  v13 = [(UIConcreteLocalNotification *)self nextFireDateForLastFireDate:date];
  v14 = [userInfo stringForObjectValue:v13];

  v15 = MEMORY[0x1E696AEC0];
  v20.receiver = self;
  v20.super_class = UIConcreteLocalNotification;
  v16 = [(UIConcreteLocalNotification *)&v20 description];
  timeZone = self->timeZone;
  userInfo2 = [(UIConcreteLocalNotification *)self userInfo];
  v8 = [v15 stringWithFormat:@"%@{fire date = %@, time zone = %@, repeat interval = %@, next fire date = %@, user info = %@}", v16, v10, timeZone, v4, v14, userInfo2];

LABEL_41:

  return v8;
}

- (id)nextFireDateForLastFireDate:(id)date
{
  dateCopy = date;
  if ([(UIConcreteLocalNotification *)self isTriggeredByDate])
  {
    if (!dateCopy)
    {
      dateCopy = [MEMORY[0x1E695DF00] distantPast];
    }

    v5 = -60.0;
    if ((self->repeatInterval & 0xC0) == 0)
    {
      v5 = -900.0;
    }

    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v5];
    v7 = [dateCopy laterDate:v6];
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v9 = [(UIConcreteLocalNotification *)self nextFireDateAfterDate:v7 localTimeZone:defaultTimeZone];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)nextFireDateAfterDate:(id)date localTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
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
    v13 = dateCopy;
    goto LABEL_46;
  }

  v13 = fireDate;
  if (zoneCopy)
  {
    timeZone = self->timeZone;
    if (timeZone)
    {
      if (([(NSTimeZone *)timeZone isEqual:zoneCopy]& 1) == 0)
      {
        currentCalendar = self->repeatCalendar;
        if (!currentCalendar)
        {
          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        }

        v16 = [(NSCalendar *)currentCalendar copy];

        [v16 setTimeZone:self->timeZone];
        v17 = [v16 components:254 fromDate:v13];
        [v16 setTimeZone:zoneCopy];
        v18 = [v16 dateFromComponents:v17];

        v13 = v18;
      }
    }
  }

  v19 = [(NSDate *)v13 earlierDate:dateCopy];

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

  currentCalendar2 = self->repeatCalendar;
  if (!currentCalendar2)
  {
    currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  timeZone = [(NSCalendar *)currentCalendar2 timeZone];
  v22 = [timeZone isEqual:zoneCopy];

  if ((v22 & 1) == 0)
  {
    v23 = [(NSCalendar *)currentCalendar2 copy];

    [(NSCalendar *)v23 setTimeZone:zoneCopy];
    currentCalendar2 = v23;
  }

  if (([MEMORY[0x1E695DF10] _ui_smallerComponentsRelativeToComponent:self->repeatInterval] & 0x20) != 0)
  {
    v24 = [NSCalendar components:currentCalendar2 fromDate:"components:fromDate:"];
  }

  else
  {
    v24 = 0;
  }

  v25 = [(NSCalendar *)currentCalendar2 components:self->repeatInterval fromDate:v13 toDate:dateCopy options:0];
  if (!v25)
  {

    v27 = 0;
    goto LABEL_43;
  }

  v36 = a2;
  v26 = _nextAdjustedFireDateForPreviousDateAndComponentsWithRepeatIntervalForCalendar(v13, v25, self->repeatInterval, currentCalendar2, v24);
  if (!v26)
  {
    goto LABEL_40;
  }

  v27 = v26;
  v28 = [(NSDate *)v26 earlierDate:dateCopy];

  if (v28 != v27)
  {
    goto LABEL_30;
  }

  [v25 _ui_setValue:objc_msgSend(v25 forComponent:{"_ui_valueForComponent:", self->repeatInterval) + 1, self->repeatInterval}];
  v30 = _nextAdjustedFireDateForPreviousDateAndComponentsWithRepeatIntervalForCalendar(v13, v25, self->repeatInterval, currentCalendar2, v24);

  if (!v30)
  {
    goto LABEL_40;
  }

  v31 = [(NSDate *)v30 earlierDate:dateCopy];

  if (v31 != v30)
  {
    v27 = v30;
    goto LABEL_30;
  }

  [v25 _ui_setValue:objc_msgSend(v25 forComponent:{"_ui_valueForComponent:", self->repeatInterval) + 1, self->repeatInterval}];
  v27 = _nextAdjustedFireDateForPreviousDateAndComponentsWithRepeatIntervalForCalendar(v13, v25, self->repeatInterval, currentCalendar2, v24);

  if (!v27)
  {
LABEL_40:
    v27 = 0;
    goto LABEL_41;
  }

  v32 = [(NSDate *)v27 earlierDate:dateCopy];

  if (v32 == v27)
  {
    NSLog(&cfstr_Uilocalnotific_16.isa, v13, v27, self->repeatInterval);

    goto LABEL_40;
  }

LABEL_30:
  v37 = 0.0;
  a2 = v36;
  if (![(NSCalendar *)currentCalendar2 rangeOfUnit:self->repeatInterval startDate:0 interval:&v37 forDate:v27]|| v37 >= 59.0)
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
  [(NSDate *)v13 timeIntervalSinceDate:dateCopy];
  if (v33 <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UILocalNotification.m" lineNumber:890 description:@"invariant not satisfied"];
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

  date = [MEMORY[0x1E695DF00] date];
  v5 = [(UIConcreteLocalNotification *)self nextFireDateForLastFireDate:date];
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