@interface STDowntime
- (void)setStartHour:(int64_t)a3 startMinute:(int64_t)a4 endHour:(int64_t)a5 endMinute:(int64_t)a6;
@end

@implementation STDowntime

- (void)setStartHour:(int64_t)a3 startMinute:(int64_t)a4 endHour:(int64_t)a5 endMinute:(int64_t)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v33 = [(STDowntime *)self managedObjectContext];
  v9 = MEMORY[0x1E695DEE8];
  v10 = [(STDowntime *)self calendarIdentifier];
  v11 = [v9 calendarWithIdentifier:v10];

  v12 = objc_alloc(MEMORY[0x1E696AD50]);
  v35 = v11;
  v13 = [v11 maximumRangeOfUnit:512];
  v38 = [v12 initWithIndexesInRange:{v13, v14}];
  v15 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v34 = self;
  v16 = [(STDowntime *)self schedule];
  v17 = [v16 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v51;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v51 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v50 + 1) + 8 * i);
        v23 = [v22 weekday];
        if ([v15 containsIndex:v23])
        {
          if (v19)
          {
            [v19 addObject:v22];
          }

          else
          {
            v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v22, 0}];
          }
        }

        else
        {
          [v38 removeIndex:v23];
          [v15 addIndex:v23];
          [v22 setStartHour:a3];
          [v22 setStartMinute:a4];
          [v22 setEndHour:a5];
          [v22 setEndMinute:a6];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __57__STDowntime_setStartHour_startMinute_endHour_endMinute___block_invoke;
  v43[3] = &unk_1E7CE7610;
  v24 = v33;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v44 = v24;
  v45 = v34;
  [v38 enumerateIndexesUsingBlock:v43];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = v19;
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v58 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v39 + 1) + 8 * j);
        v31 = +[STLog screentime];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v55 = "[STDowntime setStartHour:startMinute:endHour:endMinute:]";
          v56 = 2112;
          v57 = v30;
          _os_log_impl(&dword_1B831F000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: ScheduleToDelete (%@)", buf, 0x16u);
        }

        [v24 deleteObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v39 objects:v58 count:16];
    }

    while (v27);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __57__STDowntime_setStartHour_startMinute_endHour_endMinute___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [[STDailySchedule alloc] initWithContext:*(a1 + 32)];
  [(STDailySchedule *)v4 setWeekday:a2];
  [(STDailySchedule *)v4 setStartHour:*(a1 + 48)];
  [(STDailySchedule *)v4 setStartMinute:*(a1 + 56)];
  [(STDailySchedule *)v4 setEndHour:*(a1 + 64)];
  [(STDailySchedule *)v4 setEndMinute:*(a1 + 72)];
  [*(a1 + 40) addScheduleObject:v4];
}

@end