@interface NSCalendar(SchoolTime)
- (id)SCL_orderedWeekdays;
- (uint64_t)SCL_nonWeekendDays;
- (void)SCL_enumerateWeekdaysUsingBlock:()SchoolTime;
- (void)SCL_nonWeekendDays;
@end

@implementation NSCalendar(SchoolTime)

- (void)SCL_enumerateWeekdaysUsingBlock:()SchoolTime
{
  v4 = a3;
  v5 = [a1 firstWeekday];
  v6 = v5;
  v9 = 0;
  if (v5 > 7)
  {
    goto LABEL_8;
  }

  v7 = v5;
LABEL_3:
  v4[2](v4, v7, &v9);
  while (v7 != 7)
  {
    ++v7;
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  if (v6 >= 2)
  {
LABEL_8:
    v8 = 1;
    do
    {
      if ((v9 & 1) == 0)
      {
        v4[2](v4, v8, &v9);
      }

      ++v8;
    }

    while (v6 != v8);
  }
}

- (id)SCL_orderedWeekdays
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NSCalendar_SchoolTime__SCL_orderedWeekdays__block_invoke;
  v5[3] = &unk_279B6C988;
  v3 = v2;
  v6 = v3;
  [a1 SCL_enumerateWeekdaysUsingBlock:v5];

  return v3;
}

- (uint64_t)SCL_nonWeekendDays
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  v3 = [MEMORY[0x277CBEB58] set];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v22 = __44__NSCalendar_SchoolTime__SCL_nonWeekendDays__block_invoke;
  v23 = &unk_279B6C9B0;
  v4 = v3;
  v24 = v4;
  for (i = 1; i != 8; ++i)
  {
    if ((i - 8) >= 0xFFFFFFF9)
    {
      v22(v21, i);
    }
  }

  v6 = 0;
  v7 = 7;
  do
  {
    v8 = v2;
    v9 = [a1 component:512 fromDate:v2];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    [v4 removeObject:v10];

    v11 = [a1 isDateInWeekend:v8];
    if ((v9 - 1) >= 7)
    {
      v12 = 0;
    }

    else
    {
      v12 = (1 << (v9 - 1));
    }

    v13 = v12 | v6;
    if ((v11 & 1) == 0)
    {
      v6 = v13;
    }

    v2 = [a1 dateByAddingUnit:512 value:1 toDate:v8 options:0];

    --v7;
  }

  while (v7);
  if ([v4 count])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v14 = MEMORY[0x277CBEAD8];
      v15 = *MEMORY[0x277CBE648];
      v16 = [a1 calendarIdentifier];
      v17 = [a1 locale];
      v18 = [v17 localeIdentifier];
      v19 = [a1 timeZone];
      [v14 raise:v15 format:{@"Did not iterate all weekdays; %@; %@ %@ - %@", v4, v16, v18, v19}];
    }

    else
    {
      v16 = scl_framework_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(NSCalendar(SchoolTime) *)v4 SCL_nonWeekendDays];
      }
    }
  }

  return v6;
}

- (void)SCL_nonWeekendDays
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [a2 calendarIdentifier];
  v7 = [a2 locale];
  v8 = [v7 localeIdentifier];
  v9 = [a2 timeZone];
  v11 = 138544130;
  v12 = a1;
  v13 = 2114;
  v14 = v6;
  v15 = 2114;
  v16 = v8;
  v17 = 2114;
  v18 = v9;
  _os_log_fault_impl(&dword_264829000, a3, OS_LOG_TYPE_FAULT, "Did not iterate all weekdays; %{public}@; %{public}@ %{public}@ - %{public}@", &v11, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

@end