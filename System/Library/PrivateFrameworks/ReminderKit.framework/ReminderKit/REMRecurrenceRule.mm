@interface REMRecurrenceRule
+ (id)hourlyRecurrentDueDateBefore:(id)a3 dueDate:(id)a4 interval:(int64_t)a5;
+ (id)hourlyRecurrentDueDateToward:(id)a3 dueDate:(id)a4 interval:(int64_t)a5 adjustingStepsBy:(id)a6;
+ (id)iCalendarValueFromDate:(id)a3 isDateOnly:(BOOL)a4 isFloating:(BOOL)a5;
+ (id)iCalendarValueFromRecurrenceType:(int64_t)a3;
+ (id)iCalendarValueFromWeekday:(int64_t)a3;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
+ (id)previousRecurrentDueDateBefore:(id)a3 dueDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 recurrenceRules:(id)a7;
+ (int)_convertREMRecurrenceFrequencyToCalRecurrenceFrequency:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecurrenceRule:(id)a3;
- (REMRecurrenceRule)initWithCoder:(id)a3;
- (REMRecurrenceRule)initWithRecurrenceRule:(id)a3 objectID:(id)a4 accountID:(id)a5 reminderID:(id)a6;
- (REMRecurrenceRule)initWithRecurrenceRule:(id)a3 objectID:(id)a4 end:(id)a5;
- (id)debugDescription;
- (id)description;
- (id)iCalendarDescription;
- (id)initRecurrenceRuleWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 frequency:(int64_t)a6 interval:(int64_t)a7 firstDayOfTheWeek:(int64_t)a8 daysOfTheWeek:(id)a9 daysOfTheMonth:(id)a10 monthsOfTheYear:(id)a11 weeksOfTheYear:(id)a12 daysOfTheYear:(id)a13 setPositions:(id)a14 end:(id)a15;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRecurrenceRule

- (id)initRecurrenceRuleWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 frequency:(int64_t)a6 interval:(int64_t)a7 firstDayOfTheWeek:(int64_t)a8 daysOfTheWeek:(id)a9 daysOfTheMonth:(id)a10 monthsOfTheYear:(id)a11 weeksOfTheYear:(id)a12 daysOfTheYear:(id)a13 setPositions:(id)a14 end:(id)a15
{
  v50 = a3;
  v49 = a4;
  obj = a5;
  v48 = a5;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v51.receiver = self;
  v51.super_class = REMRecurrenceRule;
  v25 = [(REMRecurrenceRule *)&v51 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_objectID, a3);
    objc_storeStrong(&v26->_accountID, a4);
    objc_storeStrong(&v26->_reminderID, obj);
    v27 = [v24 copy];
    recurrenceEnd = v26->_recurrenceEnd;
    v26->_recurrenceEnd = v27;

    v29 = a7;
    if (a7 <= 1)
    {
      v29 = 1;
    }

    v26->_frequency = a6;
    v26->_interval = v29;
    v26->_firstDayOfTheWeek = a8;
    v30 = [v18 copy];
    daysOfTheWeek = v26->_daysOfTheWeek;
    v26->_daysOfTheWeek = v30;

    v32 = [v19 copy];
    daysOfTheMonth = v26->_daysOfTheMonth;
    v26->_daysOfTheMonth = v32;

    v34 = [v20 copy];
    monthsOfTheYear = v26->_monthsOfTheYear;
    v26->_monthsOfTheYear = v34;

    v36 = [v21 copy];
    weeksOfTheYear = v26->_weeksOfTheYear;
    v26->_weeksOfTheYear = v36;

    v38 = [v22 copy];
    daysOfTheYear = v26->_daysOfTheYear;
    v26->_daysOfTheYear = v38;

    v40 = [v23 copy];
    setPositions = v26->_setPositions;
    v26->_setPositions = v40;
  }

  return v26;
}

- (REMRecurrenceRule)initWithRecurrenceRule:(id)a3 objectID:(id)a4 accountID:(id)a5 reminderID:(id)a6
{
  v24 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v23 = [v11 frequency];
  v22 = [v11 interval];
  v21 = [v11 firstDayOfTheWeek];
  v12 = [v11 daysOfTheWeek];
  v20 = [v11 daysOfTheMonth];
  v13 = [v11 monthsOfTheYear];
  v14 = [v11 weeksOfTheYear];
  v15 = [v11 daysOfTheYear];
  v16 = [v11 setPositions];
  v17 = [v11 recurrenceEnd];

  v18 = [(REMRecurrenceRule *)self initRecurrenceRuleWithObjectID:v10 accountID:v9 reminderID:v24 frequency:v23 interval:v22 firstDayOfTheWeek:v21 daysOfTheWeek:v12 daysOfTheMonth:v20 monthsOfTheYear:v13 weeksOfTheYear:v14 daysOfTheYear:v15 setPositions:v16 end:v17];
  return v18;
}

- (REMRecurrenceRule)initWithRecurrenceRule:(id)a3 objectID:(id)a4 end:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v21 = [v9 accountID];
  v20 = [v9 reminderID];
  v19 = [v9 frequency];
  v18 = [v9 interval];
  v17 = [v9 firstDayOfTheWeek];
  v10 = [v9 daysOfTheWeek];
  v11 = [v9 daysOfTheMonth];
  v12 = [v9 monthsOfTheYear];
  v13 = [v9 weeksOfTheYear];
  v14 = [v9 daysOfTheYear];
  v15 = [v9 setPositions];

  v23 = [(REMRecurrenceRule *)self initRecurrenceRuleWithObjectID:v8 accountID:v21 reminderID:v20 frequency:v19 interval:v18 firstDayOfTheWeek:v17 daysOfTheWeek:v10 daysOfTheMonth:v11 monthsOfTheYear:v12 weeksOfTheYear:v13 daysOfTheYear:v14 setPositions:v15 end:v7];
  return v23;
}

- (REMRecurrenceRule)initWithCoder:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = REMRecurrenceRule;
  v5 = [(REMRecurrenceRule *)&v49 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reminderID"];
    reminderID = v5->_reminderID;
    v5->_reminderID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recurrenceEnd"];
    recurrenceEnd = v5->_recurrenceEnd;
    v5->_recurrenceEnd = v12;

    v14 = [v4 decodeIntegerForKey:@"frequency"];
    if (v14 >= 5)
    {
      v15 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [(REMRecurrenceRule *)v14 initWithCoder:v15];
      }

      v14 = 0;
    }

    v5->_frequency = v14;
    v16 = [v4 decodeIntegerForKey:@"interval"];
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v5->_interval = v17;
    v5->_firstDayOfTheWeek = [v4 decodeIntegerForKey:@"firstDayOfTheWeek"];
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"daysOfTheWeek"];
    daysOfTheWeek = v5->_daysOfTheWeek;
    v5->_daysOfTheWeek = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"daysOfTheMonth"];
    daysOfTheMonth = v5->_daysOfTheMonth;
    v5->_daysOfTheMonth = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"daysOfTheYear"];
    daysOfTheYear = v5->_daysOfTheYear;
    v5->_daysOfTheYear = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"weeksOfTheYear"];
    weeksOfTheYear = v5->_weeksOfTheYear;
    v5->_weeksOfTheYear = v36;

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"monthsOfTheYear"];
    monthsOfTheYear = v5->_monthsOfTheYear;
    v5->_monthsOfTheYear = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"setPositions"];
    setPositions = v5->_setPositions;
    v5->_setPositions = v46;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMRecurrenceRule *)self objectID];
  [v4 encodeObject:v5 forKey:@"objectID"];

  v6 = [(REMRecurrenceRule *)self accountID];
  [v4 encodeObject:v6 forKey:@"accountID"];

  v7 = [(REMRecurrenceRule *)self reminderID];
  [v4 encodeObject:v7 forKey:@"reminderID"];

  v8 = [(REMRecurrenceRule *)self recurrenceEnd];
  [v4 encodeObject:v8 forKey:@"recurrenceEnd"];

  [v4 encodeInteger:-[REMRecurrenceRule frequency](self forKey:{"frequency"), @"frequency"}];
  [v4 encodeInteger:-[REMRecurrenceRule interval](self forKey:{"interval"), @"interval"}];
  [v4 encodeInteger:-[REMRecurrenceRule firstDayOfTheWeek](self forKey:{"firstDayOfTheWeek"), @"firstDayOfTheWeek"}];
  v9 = [(REMRecurrenceRule *)self daysOfTheWeek];
  [v4 encodeObject:v9 forKey:@"daysOfTheWeek"];

  v10 = [(REMRecurrenceRule *)self daysOfTheMonth];
  [v4 encodeObject:v10 forKey:@"daysOfTheMonth"];

  v11 = [(REMRecurrenceRule *)self daysOfTheYear];
  [v4 encodeObject:v11 forKey:@"daysOfTheYear"];

  v12 = [(REMRecurrenceRule *)self weeksOfTheYear];
  [v4 encodeObject:v12 forKey:@"weeksOfTheYear"];

  v13 = [(REMRecurrenceRule *)self monthsOfTheYear];
  [v4 encodeObject:v13 forKey:@"monthsOfTheYear"];

  v14 = [(REMRecurrenceRule *)self setPositions];
  [v4 encodeObject:v14 forKey:@"setPositions"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);

  if (v6)
  {
    v7 = [(REMRecurrenceRule *)self isEqualToRecurrenceRule:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToRecurrenceRule:(id)a3
{
  v4 = a3;
  v5 = [(REMRecurrenceRule *)self frequency];
  if (v5 == [v4 frequency])
  {
    v6 = [(REMRecurrenceRule *)self interval];
    if (v6 == [v4 interval])
    {
      v7 = [(REMRecurrenceRule *)self firstDayOfTheWeek];
      if (v7 == [v4 firstDayOfTheWeek])
      {
        v8 = [(REMRecurrenceRule *)self objectID];
        v9 = [v4 objectID];
        if (v8 != v9)
        {
          v10 = [(REMRecurrenceRule *)self objectID];
          v83 = [v4 objectID];
          v84 = v10;
          if (![v10 isEqual:?])
          {
            v11 = 0;
            goto LABEL_58;
          }
        }

        v13 = [(REMRecurrenceRule *)self accountID];
        v14 = [v4 accountID];
        if (v13 != v14)
        {
          v15 = [(REMRecurrenceRule *)self accountID];
          v16 = [v4 accountID];
          if (![v15 isEqual:v16])
          {
            v11 = 0;
LABEL_56:

LABEL_57:
            if (v8 == v9)
            {
LABEL_59:

              goto LABEL_8;
            }

LABEL_58:

            goto LABEL_59;
          }

          v79 = v16;
          v80 = v15;
        }

        v17 = [(REMRecurrenceRule *)self reminderID];
        v81 = [v4 reminderID];
        v82 = v17;
        if (v17 != v81)
        {
          v18 = [(REMRecurrenceRule *)self reminderID];
          v76 = [v4 reminderID];
          v77 = v18;
          if (![v18 isEqual:?])
          {
            v11 = 0;
LABEL_54:

LABEL_55:
            v16 = v79;
            v15 = v80;
            if (v13 == v14)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          }
        }

        v19 = [(REMRecurrenceRule *)self recurrenceEnd];
        v20 = [v4 recurrenceEnd];
        v78 = v19;
        v21 = v19 == v20;
        v22 = v20;
        if (!v21)
        {
          v23 = [(REMRecurrenceRule *)self recurrenceEnd];
          v73 = [v4 recurrenceEnd];
          v74 = v23;
          if (![v23 isEqual:?])
          {
            v11 = 0;
            v24 = v22;
            v25 = v78;
LABEL_52:

LABEL_53:
            if (v82 == v81)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }
        }

        v26 = [(REMRecurrenceRule *)self monthsOfTheYear];
        v27 = [v4 monthsOfTheYear];
        v75 = v26;
        v21 = v26 == v27;
        v28 = v27;
        if (!v21)
        {
          v29 = [(REMRecurrenceRule *)self monthsOfTheYear];
          v69 = [v4 monthsOfTheYear];
          v70 = v29;
          if (![v29 isEqual:?])
          {
            v24 = v22;
            v11 = 0;
            v30 = v75;
LABEL_50:

LABEL_51:
            v25 = v78;
            if (v78 == v24)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }
        }

        v31 = [(REMRecurrenceRule *)self daysOfTheMonth];
        v32 = [v4 daysOfTheMonth];
        v71 = v31;
        v72 = v28;
        v21 = v31 == v32;
        v33 = v32;
        if (v21)
        {
          v66 = v32;
          v35 = v22;
        }

        else
        {
          v34 = [(REMRecurrenceRule *)self daysOfTheMonth];
          v64 = [v4 daysOfTheMonth];
          v65 = v34;
          if (![v34 isEqual:?])
          {
            v11 = 0;
            v38 = v71;
            goto LABEL_47;
          }

          v66 = v33;
          v35 = v22;
        }

        v36 = [(REMRecurrenceRule *)self daysOfTheYear];
        [v4 daysOfTheYear];
        v68 = v67 = v35;
        if (v36 == v68)
        {
          v63 = v36;
        }

        else
        {
          v37 = [(REMRecurrenceRule *)self daysOfTheYear];
          v60 = [v4 daysOfTheYear];
          v61 = v37;
          if (![v37 isEqual:?])
          {
            v11 = 0;
            v43 = v68;
            v33 = v66;
LABEL_45:

LABEL_46:
            v38 = v71;
            v22 = v67;
            if (v71 == v33)
            {
              v24 = v67;
LABEL_49:

              v30 = v75;
              v28 = v72;
              if (v75 == v72)
              {
                goto LABEL_51;
              }

              goto LABEL_50;
            }

LABEL_47:
            v24 = v22;

            goto LABEL_49;
          }

          v63 = v36;
        }

        v39 = [(REMRecurrenceRule *)self weeksOfTheYear];
        [v4 weeksOfTheYear];
        v40 = v62 = v39;
        if (v39 != v40)
        {
          v41 = [(REMRecurrenceRule *)self weeksOfTheYear];
          v57 = [v4 weeksOfTheYear];
          v58 = v41;
          if (![v41 isEqual:?])
          {
            v11 = 0;
            v33 = v66;
            v42 = v39;
LABEL_43:

LABEL_44:
            v43 = v68;
            v36 = v63;
            if (v63 == v68)
            {
              goto LABEL_46;
            }

            goto LABEL_45;
          }
        }

        v44 = [(REMRecurrenceRule *)self daysOfTheWeek];
        v59 = [v4 daysOfTheWeek];
        if (v44 == v59 || (-[REMRecurrenceRule daysOfTheWeek](self, "daysOfTheWeek"), v45 = objc_claimAutoreleasedReturnValue(), [v4 daysOfTheWeek], v55 = objc_claimAutoreleasedReturnValue(), v56 = v45, objc_msgSend(v45, "isEqual:")))
        {
          v47 = [(REMRecurrenceRule *)self setPositions];
          v48 = [v4 setPositions];
          if (v47 == v48)
          {

            v11 = 1;
            v46 = v59;
            if (v44 == v59)
            {
LABEL_42:

              v42 = v62;
              v33 = v66;
              if (v62 == v40)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }
          }

          else
          {
            v54 = v48;
            v49 = [(REMRecurrenceRule *)self setPositions];
            [v4 setPositions];
            v53 = v40;
            v50 = v49;
            v52 = v51 = v44;
            v11 = [v49 isEqual:?];

            v44 = v51;
            v40 = v53;

            v46 = v59;
            if (v51 == v59)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v11 = 0;
          v46 = v59;
        }

        goto LABEL_42;
      }
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (unint64_t)hash
{
  v2 = [(REMRecurrenceRule *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMRecurrenceRule *)self objectID];
  v6 = [(REMRecurrenceRule *)self reminderID];
  v7 = [(REMRecurrenceRule *)self accountID];
  v8 = [v3 stringWithFormat:@"<%@: %p objectID: %@, reminderID: %@, accountID: %@>", v4, self, v5, v6, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMRecurrenceRule *)self objectID];
  v6 = [(REMRecurrenceRule *)self reminderID];
  v7 = [(REMRecurrenceRule *)self accountID];
  v8 = [(REMRecurrenceRule *)self iCalendarDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p objectID: %@, reminderID: %@, accountID: %@> %@", v4, self, v5, v6, v7, v8];

  return v9;
}

- (id)iCalendarDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(REMRecurrenceRule *)self stringValueAsDateOnly:0 isFloating:0];
  v4 = [v2 stringWithFormat:@"RRULE:%@", v3];

  return v4;
}

+ (id)iCalendarValueFromRecurrenceType:(int64_t)a3
{
  if (a3 > 4)
  {
    return &stru_1F0D67F00;
  }

  else
  {
    return off_1E7509428[a3];
  }
}

+ (id)iCalendarValueFromDate:(id)a3 isDateOnly:(BOOL)a4 isFloating:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = MEMORY[0x1E696AB78];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  [v9 setFormatterBehavior:1040];
  v10 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  [v9 setTimeZone:v10];

  v11 = @"yyyyMMdd'T'HHmmss'Z'";
  if (v5)
  {
    v11 = @"yyyyMMdd'T'HHmmss";
  }

  if (v6)
  {
    v12 = @"yyyyMMdd";
  }

  else
  {
    v12 = v11;
  }

  [v9 setDateFormat:v12];
  v13 = [v9 stringFromDate:v8];

  return v13;
}

+ (id)iCalendarValueFromWeekday:(int64_t)a3
{
  if (iCalendarValueFromWeekday__onceToken != -1)
  {
    +[REMRecurrenceRule iCalendarValueFromWeekday:];
  }

  if (a3 > 6)
  {
    v4 = &stru_1F0D67F00;
  }

  else
  {
    v4 = [iCalendarValueFromWeekday____iCalendarValuesForWeekday objectAtIndexedSubscript:a3];
  }

  return v4;
}

void __47__REMRecurrenceRule_iCalendarValueFromWeekday___block_invoke()
{
  v0 = iCalendarValueFromWeekday____iCalendarValuesForWeekday;
  iCalendarValueFromWeekday____iCalendarValuesForWeekday = &unk_1F0D999E8;
}

+ (id)previousRecurrentDueDateBefore:(id)a3 dueDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 recurrenceRules:(id)a7
{
  v54 = a6;
  v72 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v55 = a5;
  v12 = a7;
  v56 = v10;
  v52 = v11;
  v45 = v12;
  if ([v10 compare:v11] == 1)
  {
    v46 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v12;
    v51 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (v51)
    {
      v49 = *v68;
      do
      {
        v13 = 0;
        do
        {
          if (*v68 != v49)
          {
            v14 = v13;
            objc_enumerationMutation(obj);
            v13 = v14;
          }

          v53 = v13;
          v15 = *(*(&v67 + 1) + 8 * v13);
          if ([v15 frequency] == 4)
          {
            v16 = [a1 hourlyRecurrentDueDateBefore:v56 dueDate:v52 interval:{objc_msgSend(v15, "interval")}];
            if (v16)
            {
              [v46 addObject:v16];
            }
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v17 = [a1 recurrenceGeneratorConfiguredForDueDate:v52 timeZone:v55 allDay:v54 recurrenceRule:v15];
            v18 = [v15 recurrenceEnd];
            v19 = [v18 occurrenceCount] == 0;

            if (v19)
            {
              v21 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = [v15 recurrenceEnd];
              v21 = [v20 occurrenceCount];
            }

            v22 = v52;
            v23 = v22;
            if (v52 && v21 >= 1)
            {
              v24 = 0;
              v25 = v22;
              do
              {
                v26 = [v25 isEqualToDate:v23];
                v27 = v26;
                if (v21 + (v26 ^ 1u) >= 0x1F4)
                {
                  v28 = 500;
                }

                else
                {
                  v28 = v21 + (v26 ^ 1u);
                }

                v29 = [v17 copyOccurrenceDatesWithInitialDate:v23 allDay:v54 rangeStart:v25 rangeEnd:v56 timeZone:v55 limit:v28];
                v30 = [v29 count];
                if (v30 <= 1)
                {
                  v31 = 1;
                }

                else
                {
                  v31 = v30;
                }

                v32 = v31 - 1;
                if (v27)
                {
                  v33 = v30;
                }

                else
                {
                  v33 = v32;
                }

                v61 = 0;
                v62 = &v61;
                v63 = 0x3032000000;
                v64 = __Block_byref_object_copy__10;
                v65 = __Block_byref_object_dispose__10;
                v66 = 0;
                v57[0] = MEMORY[0x1E69E9820];
                v57[1] = 3221225472;
                v57[2] = __92__REMRecurrenceRule_previousRecurrentDueDateBefore_dueDate_timeZone_allDay_recurrenceRules___block_invoke;
                v57[3] = &unk_1E75093E8;
                v34 = v25;
                v58 = v34;
                v35 = v56;
                v59 = v35;
                v60 = &v61;
                [v29 enumerateObjectsWithOptions:2 usingBlock:v57];
                v36 = v62[5];
                if (v36)
                {
                  v37 = v36;

                  v38 = [v29 lastObject];
                  v39 = v38;
                  if (v38 && [v38 compare:v35] == -1)
                  {
                    v25 = v39;
                  }

                  else
                  {
                    v25 = 0;
                  }

                  v34 = v39;
                  v24 = v37;
                }

                else
                {
                  v25 = 0;
                }

                _Block_object_dispose(&v61, 8);
                if (!v25)
                {
                  break;
                }

                v40 = v21 <= v33;
                v21 -= v33;
              }

              while (!v40);
              if (v24)
              {
                [v46 addObject:v24];
              }
            }

            else
            {
              v25 = v22;
            }

            objc_autoreleasePoolPop(context);
          }

          v13 = v53 + 1;
        }

        while (v53 + 1 != v51);
        v51 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
      }

      while (v51);
    }

    v41 = [v46 sortedArrayUsingSelector:sel_compare_];
    v42 = [v41 lastObject];
  }

  else
  {
    v42 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

void __92__REMRecurrenceRule_previousRecurrentDueDateBefore_dueDate_timeZone_allDay_recurrenceRules___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) compare:?] == -1 && objc_msgSend(v7, "compare:", *(a1 + 40)) == -1)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)hourlyRecurrentDueDateToward:(id)a3 dueDate:(id)a4 interval:(int64_t)a5 adjustingStepsBy:(id)a6
{
  if (a5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a5;
  }

  v9 = v8 * 3600.0;
  v10 = a6;
  v11 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v13 = v12;
  [v11 timeIntervalSinceReferenceDate];
  v15 = v10[2](v10, fmax(v13 - v14, 0.0) / v9);

  v16 = [v11 dateByAddingTimeInterval:v9 * v15];

  return v16;
}

+ (id)hourlyRecurrentDueDateBefore:(id)a3 dueDate:(id)a4 interval:(int64_t)a5
{
  v8 = a4;
  v9 = [a1 hourlyRecurrentDueDateToward:a3 dueDate:v8 interval:a5 adjustingStepsBy:&__block_literal_global_154];
  LOBYTE(a3) = [v9 isEqualToDate:v8];

  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

+ (int)_convertREMRecurrenceFrequencyToCalRecurrenceFrequency:(int64_t)a3
{
  result = 1;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      return 4;
    }

    else if (a3 == 4)
    {
      v5 = +[REMLogStore utility];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [REMRecurrenceRule _convertREMRecurrenceFrequencyToCalRecurrenceFrequency:v5];
      }

      return 1;
    }
  }

  else
  {
    if (a3 == 2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    if (a3 == 1)
    {
      return 2;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

+ (id)newObjectID
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

  return v6;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMRecurrenceFrequency %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end