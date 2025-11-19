@interface REMDisplayDateUtils
+ (id)_displayDateWithDueDateComponents:(id)a3 alarms:(id)a4 hasAlarmDateComponents:(BOOL)a5 floatingDateComponents:(id)a6 nonFloatingDateComponents:(id)a7 displayDateUtils:(id)a8;
+ (id)displayDateWithDueDateComponents:(id)a3 alarms:(id)a4;
- (REMDisplayDateUtilsDelegate)delegete;
- (id)displayDateWithDueDateComponents:(id)a3 alarms:(id)a4;
- (id)updateDisplayDateWithDueDateComponents:(id)a3 alarm:(id)a4 alarmsProviding:(id)a5;
@end

@implementation REMDisplayDateUtils

+ (id)_displayDateWithDueDateComponents:(id)a3 alarms:(id)a4 hasAlarmDateComponents:(BOOL)a5 floatingDateComponents:(id)a6 nonFloatingDateComponents:(id)a7 displayDateUtils:(id)a8
{
  v67 = *MEMORY[0x1E69E9840];
  v55 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v53 = a8;
  v54 = [MEMORY[0x1E695DF70] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v12;
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
          v21 = [v19 trigger];
          v22 = REMDynamicCast(v20, v21);

          v23 = objc_opt_class();
          v24 = [v19 trigger];
          v25 = REMDynamicCast(v23, v24);

          if (v22)
          {
            v26 = [v22 dateComponents];

            if (v26)
            {
              v27 = [v22 dateComponents];
              goto LABEL_10;
            }
          }

          if (v25)
          {
            [v25 timeInterval];
            if (v55)
            {
              if (v29 != 0.0 && ([v55 rem_isAllDayDateComponents] & 1) == 0)
              {
                [v25 timeInterval];
                v27 = [v55 rem_dateComponentsByAddingTimeInterval:?];
LABEL_10:
                v28 = v27;
                [v54 addObject:v27];
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

  if (a5 || [v54 count])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v31 = v54;
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
        v37 = [v36 timeZone];

        if (v37)
        {
          if (!v14)
          {
            v39 = 0;
            v40 = v36;
            v41 = v13;
LABEL_36:
            v42 = v36;

            v14 = v40;
            v13 = v41;
            continue;
          }

          v38 = [v14 rem_compare:v36];
          v39 = v14;
          v40 = v36;
          v41 = v13;
        }

        else
        {
          if (!v13)
          {
            v39 = 0;
            v40 = v14;
            v41 = v36;
            goto LABEL_36;
          }

          v38 = [v13 rem_compare:v36];
          v39 = v13;
          v40 = v14;
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

        v43 = [[REMDisplayDate alloc] initWithFloatingDateComponents:v13 nonFloatingDateComponents:v14];
        v44 = 1;
        v45 = v55;
        goto LABEL_40;
      }
    }
  }

  v45 = v55;
  v48 = [v55 timeZone];

  v49 = [REMDisplayDate alloc];
  if (v48)
  {
    v50 = 0;
    v51 = v55;
  }

  else
  {
    v50 = v55;
    v51 = 0;
  }

  v43 = [(REMDisplayDate *)v49 initWithFloatingDateComponents:v50 nonFloatingDateComponents:v51];
  v44 = 0;
LABEL_40:
  if (v53)
  {
    [v53 setIsCacheSet:1];
    [v53 setDueDateComponents:v45];
    [v53 setFloatingDateComponents:v13];
    [v53 setNonFloatingDateComponents:v14];
    [v53 setHasAlarmDateComponents:v44];
  }

  v46 = *MEMORY[0x1E69E9840];

  return v43;
}

+ (id)displayDateWithDueDateComponents:(id)a3 alarms:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _displayDateWithDueDateComponents:v6 alarms:v5 hasAlarmDateComponents:0 floatingDateComponents:0 nonFloatingDateComponents:0 displayDateUtils:0];

  return v7;
}

- (id)displayDateWithDueDateComponents:(id)a3 alarms:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _displayDateWithDueDateComponents:v7 alarms:v6 hasAlarmDateComponents:0 floatingDateComponents:0 nonFloatingDateComponents:0 displayDateUtils:self];

  return v8;
}

- (id)updateDisplayDateWithDueDateComponents:(id)a3 alarm:(id)a4 alarmsProviding:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(REMDisplayDateUtils *)self dueDateComponents];
  if (v11 == v8)
  {
    v13 = 1;
  }

  else
  {
    v12 = [(REMDisplayDateUtils *)self dueDateComponents];
    v13 = [v12 isEqual:v8];
  }

  v14 = [(REMDisplayDateUtils *)self isCacheSet];
  WeakRetained = objc_loadWeakRetained(&self->_delegete);
  v16 = WeakRetained;
  if (v14 && (v13 & 1) != 0)
  {
    [WeakRetained invokeWithCache:1];

    v17 = objc_opt_class();
    v26[0] = v9;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v19 = [(REMDisplayDateUtils *)self hasAlarmDateComponents];
    v20 = [(REMDisplayDateUtils *)self floatingDateComponents];
    v21 = [(REMDisplayDateUtils *)self nonFloatingDateComponents];
    v22 = [v17 _displayDateWithDueDateComponents:v8 alarms:v18 hasAlarmDateComponents:v19 floatingDateComponents:v20 nonFloatingDateComponents:v21 displayDateUtils:self];
  }

  else
  {
    [WeakRetained invokeWithCache:0];

    v23 = [v10 alarms];
    v22 = [(REMDisplayDateUtils *)self displayDateWithDueDateComponents:v8 alarms:v23];
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