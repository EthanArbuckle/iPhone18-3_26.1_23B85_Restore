@interface REMDisplayDateUtils
+ (id)_displayDateWithDueDateComponents:(id)components alarms:(id)alarms hasAlarmDateComponents:(BOOL)dateComponents floatingDateComponents:(id)floatingDateComponents nonFloatingDateComponents:(id)nonFloatingDateComponents displayDateUtils:(id)utils;
+ (id)displayDateWithDueDateComponents:(id)components alarms:(id)alarms;
- (REMDisplayDateUtilsDelegate)delegete;
- (id)displayDateWithDueDateComponents:(id)components alarms:(id)alarms;
- (id)updateDisplayDateWithDueDateComponents:(id)components alarm:(id)alarm alarmsProviding:(id)providing;
@end

@implementation REMDisplayDateUtils

+ (id)_displayDateWithDueDateComponents:(id)components alarms:(id)alarms hasAlarmDateComponents:(BOOL)dateComponents floatingDateComponents:(id)floatingDateComponents nonFloatingDateComponents:(id)nonFloatingDateComponents displayDateUtils:(id)utils
{
  v67 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  alarmsCopy = alarms;
  floatingDateComponentsCopy = floatingDateComponents;
  nonFloatingDateComponentsCopy = nonFloatingDateComponents;
  utilsCopy = utils;
  array = [MEMORY[0x1E695DF70] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = alarmsCopy;
  v15 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v62;
    do
    {
      v18 = 0;
      do
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v61 + 1) + 8 * v18);
        if ([v19 isOriginal])
        {
          v20 = objc_opt_class();
          trigger = [v19 trigger];
          v22 = REMDynamicCast(v20, trigger);

          v23 = objc_opt_class();
          trigger2 = [v19 trigger];
          v25 = REMDynamicCast(v23, trigger2);

          if (v22)
          {
            dateComponents = [v22 dateComponents];

            if (dateComponents)
            {
              dateComponents2 = [v22 dateComponents];
              goto LABEL_10;
            }
          }

          if (v25)
          {
            [v25 timeInterval];
            if (componentsCopy)
            {
              if (v29 != 0.0 && ([componentsCopy rem_isAllDayDateComponents] & 1) == 0)
              {
                [v25 timeInterval];
                dateComponents2 = [componentsCopy rem_dateComponentsByAddingTimeInterval:?];
LABEL_10:
                v28 = dateComponents2;
                [array addObject:dateComponents2];
              }
            }
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v30 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      v16 = v30;
    }

    while (v30);
  }

  if (dateComponents || [array count])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v31 = array;
    v32 = [v31 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (!v32)
    {
      goto LABEL_39;
    }

    v33 = v32;
    v34 = *v58;
    while (1)
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v58 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v57 + 1) + 8 * i);
        timeZone = [v36 timeZone];

        if (timeZone)
        {
          if (!nonFloatingDateComponentsCopy)
          {
            v39 = 0;
            v40 = v36;
            v41 = floatingDateComponentsCopy;
LABEL_36:
            v42 = v36;

            nonFloatingDateComponentsCopy = v40;
            floatingDateComponentsCopy = v41;
            continue;
          }

          v38 = [nonFloatingDateComponentsCopy rem_compare:v36];
          v39 = nonFloatingDateComponentsCopy;
          v40 = v36;
          v41 = floatingDateComponentsCopy;
        }

        else
        {
          if (!floatingDateComponentsCopy)
          {
            v39 = 0;
            v40 = nonFloatingDateComponentsCopy;
            v41 = v36;
            goto LABEL_36;
          }

          v38 = [floatingDateComponentsCopy rem_compare:v36];
          v39 = floatingDateComponentsCopy;
          v40 = nonFloatingDateComponentsCopy;
          v41 = v36;
        }

        if (v38 == 1)
        {
          goto LABEL_36;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (!v33)
      {
LABEL_39:

        v43 = [[REMDisplayDate alloc] initWithFloatingDateComponents:floatingDateComponentsCopy nonFloatingDateComponents:nonFloatingDateComponentsCopy];
        v44 = 1;
        v45 = componentsCopy;
        goto LABEL_40;
      }
    }
  }

  v45 = componentsCopy;
  timeZone2 = [componentsCopy timeZone];

  v49 = [REMDisplayDate alloc];
  if (timeZone2)
  {
    v50 = 0;
    v51 = componentsCopy;
  }

  else
  {
    v50 = componentsCopy;
    v51 = 0;
  }

  v43 = [(REMDisplayDate *)v49 initWithFloatingDateComponents:v50 nonFloatingDateComponents:v51];
  v44 = 0;
LABEL_40:
  if (utilsCopy)
  {
    [utilsCopy setIsCacheSet:1];
    [utilsCopy setDueDateComponents:v45];
    [utilsCopy setFloatingDateComponents:floatingDateComponentsCopy];
    [utilsCopy setNonFloatingDateComponents:nonFloatingDateComponentsCopy];
    [utilsCopy setHasAlarmDateComponents:v44];
  }

  v46 = *MEMORY[0x1E69E9840];

  return v43;
}

+ (id)displayDateWithDueDateComponents:(id)components alarms:(id)alarms
{
  alarmsCopy = alarms;
  componentsCopy = components;
  v7 = [objc_opt_class() _displayDateWithDueDateComponents:componentsCopy alarms:alarmsCopy hasAlarmDateComponents:0 floatingDateComponents:0 nonFloatingDateComponents:0 displayDateUtils:0];

  return v7;
}

- (id)displayDateWithDueDateComponents:(id)components alarms:(id)alarms
{
  alarmsCopy = alarms;
  componentsCopy = components;
  v8 = [objc_opt_class() _displayDateWithDueDateComponents:componentsCopy alarms:alarmsCopy hasAlarmDateComponents:0 floatingDateComponents:0 nonFloatingDateComponents:0 displayDateUtils:self];

  return v8;
}

- (id)updateDisplayDateWithDueDateComponents:(id)components alarm:(id)alarm alarmsProviding:(id)providing
{
  v26[1] = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  alarmCopy = alarm;
  providingCopy = providing;
  dueDateComponents = [(REMDisplayDateUtils *)self dueDateComponents];
  if (dueDateComponents == componentsCopy)
  {
    v13 = 1;
  }

  else
  {
    dueDateComponents2 = [(REMDisplayDateUtils *)self dueDateComponents];
    v13 = [dueDateComponents2 isEqual:componentsCopy];
  }

  isCacheSet = [(REMDisplayDateUtils *)self isCacheSet];
  WeakRetained = objc_loadWeakRetained(&self->_delegete);
  v16 = WeakRetained;
  if (isCacheSet && (v13 & 1) != 0)
  {
    [WeakRetained invokeWithCache:1];

    v17 = objc_opt_class();
    v26[0] = alarmCopy;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    hasAlarmDateComponents = [(REMDisplayDateUtils *)self hasAlarmDateComponents];
    floatingDateComponents = [(REMDisplayDateUtils *)self floatingDateComponents];
    nonFloatingDateComponents = [(REMDisplayDateUtils *)self nonFloatingDateComponents];
    v22 = [v17 _displayDateWithDueDateComponents:componentsCopy alarms:v18 hasAlarmDateComponents:hasAlarmDateComponents floatingDateComponents:floatingDateComponents nonFloatingDateComponents:nonFloatingDateComponents displayDateUtils:self];
  }

  else
  {
    [WeakRetained invokeWithCache:0];

    alarms = [providingCopy alarms];
    v22 = [(REMDisplayDateUtils *)self displayDateWithDueDateComponents:componentsCopy alarms:alarms];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v22;
}

- (REMDisplayDateUtilsDelegate)delegete
{
  WeakRetained = objc_loadWeakRetained(&self->_delegete);

  return WeakRetained;
}

@end