@interface REMRecurrenceRule
+ (id)hourlyRecurrentDueDateBefore:(id)before dueDate:(id)date interval:(int64_t)interval;
+ (id)hourlyRecurrentDueDateToward:(id)toward dueDate:(id)date interval:(int64_t)interval adjustingStepsBy:(id)by;
+ (id)iCalendarValueFromDate:(id)date isDateOnly:(BOOL)only isFloating:(BOOL)floating;
+ (id)iCalendarValueFromRecurrenceType:(int64_t)type;
+ (id)iCalendarValueFromWeekday:(int64_t)weekday;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
+ (id)previousRecurrentDueDateBefore:(id)before dueDate:(id)date timeZone:(id)zone allDay:(BOOL)day recurrenceRules:(id)rules;
+ (int)_convertREMRecurrenceFrequencyToCalRecurrenceFrequency:(int64_t)frequency;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecurrenceRule:(id)rule;
- (REMRecurrenceRule)initWithCoder:(id)coder;
- (REMRecurrenceRule)initWithRecurrenceRule:(id)rule objectID:(id)d accountID:(id)iD reminderID:(id)reminderID;
- (REMRecurrenceRule)initWithRecurrenceRule:(id)rule objectID:(id)d end:(id)end;
- (id)debugDescription;
- (id)description;
- (id)iCalendarDescription;
- (id)initRecurrenceRuleWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID frequency:(int64_t)frequency interval:(int64_t)interval firstDayOfTheWeek:(int64_t)week daysOfTheWeek:(id)theWeek daysOfTheMonth:(id)self0 monthsOfTheYear:(id)self1 weeksOfTheYear:(id)self2 daysOfTheYear:(id)self3 setPositions:(id)self4 end:(id)self5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRecurrenceRule

- (id)initRecurrenceRuleWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID frequency:(int64_t)frequency interval:(int64_t)interval firstDayOfTheWeek:(int64_t)week daysOfTheWeek:(id)theWeek daysOfTheMonth:(id)self0 monthsOfTheYear:(id)self1 weeksOfTheYear:(id)self2 daysOfTheYear:(id)self3 setPositions:(id)self4 end:(id)self5
{
  dCopy = d;
  iDCopy = iD;
  obj = reminderID;
  reminderIDCopy = reminderID;
  theWeekCopy = theWeek;
  monthCopy = month;
  yearCopy = year;
  theYearCopy = theYear;
  ofTheYearCopy = ofTheYear;
  positionsCopy = positions;
  endCopy = end;
  v51.receiver = self;
  v51.super_class = REMRecurrenceRule;
  v25 = [(REMRecurrenceRule *)&v51 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_objectID, d);
    objc_storeStrong(&v26->_accountID, iD);
    objc_storeStrong(&v26->_reminderID, obj);
    v27 = [endCopy copy];
    recurrenceEnd = v26->_recurrenceEnd;
    v26->_recurrenceEnd = v27;

    intervalCopy = interval;
    if (interval <= 1)
    {
      intervalCopy = 1;
    }

    v26->_frequency = frequency;
    v26->_interval = intervalCopy;
    v26->_firstDayOfTheWeek = week;
    v30 = [theWeekCopy copy];
    daysOfTheWeek = v26->_daysOfTheWeek;
    v26->_daysOfTheWeek = v30;

    v32 = [monthCopy copy];
    daysOfTheMonth = v26->_daysOfTheMonth;
    v26->_daysOfTheMonth = v32;

    v34 = [yearCopy copy];
    monthsOfTheYear = v26->_monthsOfTheYear;
    v26->_monthsOfTheYear = v34;

    v36 = [theYearCopy copy];
    weeksOfTheYear = v26->_weeksOfTheYear;
    v26->_weeksOfTheYear = v36;

    v38 = [ofTheYearCopy copy];
    daysOfTheYear = v26->_daysOfTheYear;
    v26->_daysOfTheYear = v38;

    v40 = [positionsCopy copy];
    setPositions = v26->_setPositions;
    v26->_setPositions = v40;
  }

  return v26;
}

- (REMRecurrenceRule)initWithRecurrenceRule:(id)rule objectID:(id)d accountID:(id)iD reminderID:(id)reminderID
{
  reminderIDCopy = reminderID;
  iDCopy = iD;
  dCopy = d;
  ruleCopy = rule;
  frequency = [ruleCopy frequency];
  interval = [ruleCopy interval];
  firstDayOfTheWeek = [ruleCopy firstDayOfTheWeek];
  daysOfTheWeek = [ruleCopy daysOfTheWeek];
  daysOfTheMonth = [ruleCopy daysOfTheMonth];
  monthsOfTheYear = [ruleCopy monthsOfTheYear];
  weeksOfTheYear = [ruleCopy weeksOfTheYear];
  daysOfTheYear = [ruleCopy daysOfTheYear];
  setPositions = [ruleCopy setPositions];
  recurrenceEnd = [ruleCopy recurrenceEnd];

  v18 = [(REMRecurrenceRule *)self initRecurrenceRuleWithObjectID:dCopy accountID:iDCopy reminderID:reminderIDCopy frequency:frequency interval:interval firstDayOfTheWeek:firstDayOfTheWeek daysOfTheWeek:daysOfTheWeek daysOfTheMonth:daysOfTheMonth monthsOfTheYear:monthsOfTheYear weeksOfTheYear:weeksOfTheYear daysOfTheYear:daysOfTheYear setPositions:setPositions end:recurrenceEnd];
  return v18;
}

- (REMRecurrenceRule)initWithRecurrenceRule:(id)rule objectID:(id)d end:(id)end
{
  endCopy = end;
  dCopy = d;
  ruleCopy = rule;
  accountID = [ruleCopy accountID];
  reminderID = [ruleCopy reminderID];
  frequency = [ruleCopy frequency];
  interval = [ruleCopy interval];
  firstDayOfTheWeek = [ruleCopy firstDayOfTheWeek];
  daysOfTheWeek = [ruleCopy daysOfTheWeek];
  daysOfTheMonth = [ruleCopy daysOfTheMonth];
  monthsOfTheYear = [ruleCopy monthsOfTheYear];
  weeksOfTheYear = [ruleCopy weeksOfTheYear];
  daysOfTheYear = [ruleCopy daysOfTheYear];
  setPositions = [ruleCopy setPositions];

  v23 = [(REMRecurrenceRule *)self initRecurrenceRuleWithObjectID:dCopy accountID:accountID reminderID:reminderID frequency:frequency interval:interval firstDayOfTheWeek:firstDayOfTheWeek daysOfTheWeek:daysOfTheWeek daysOfTheMonth:daysOfTheMonth monthsOfTheYear:monthsOfTheYear weeksOfTheYear:weeksOfTheYear daysOfTheYear:daysOfTheYear setPositions:setPositions end:endCopy];
  return v23;
}

- (REMRecurrenceRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = REMRecurrenceRule;
  v5 = [(REMRecurrenceRule *)&v49 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderID"];
    reminderID = v5->_reminderID;
    v5->_reminderID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recurrenceEnd"];
    recurrenceEnd = v5->_recurrenceEnd;
    v5->_recurrenceEnd = v12;

    v14 = [coderCopy decodeIntegerForKey:@"frequency"];
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
    v16 = [coderCopy decodeIntegerForKey:@"interval"];
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v5->_interval = v17;
    v5->_firstDayOfTheWeek = [coderCopy decodeIntegerForKey:@"firstDayOfTheWeek"];
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"daysOfTheWeek"];
    daysOfTheWeek = v5->_daysOfTheWeek;
    v5->_daysOfTheWeek = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"daysOfTheMonth"];
    daysOfTheMonth = v5->_daysOfTheMonth;
    v5->_daysOfTheMonth = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"daysOfTheYear"];
    daysOfTheYear = v5->_daysOfTheYear;
    v5->_daysOfTheYear = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"weeksOfTheYear"];
    weeksOfTheYear = v5->_weeksOfTheYear;
    v5->_weeksOfTheYear = v36;

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"monthsOfTheYear"];
    monthsOfTheYear = v5->_monthsOfTheYear;
    v5->_monthsOfTheYear = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"setPositions"];
    setPositions = v5->_setPositions;
    v5->_setPositions = v46;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMRecurrenceRule *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  accountID = [(REMRecurrenceRule *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  reminderID = [(REMRecurrenceRule *)self reminderID];
  [coderCopy encodeObject:reminderID forKey:@"reminderID"];

  recurrenceEnd = [(REMRecurrenceRule *)self recurrenceEnd];
  [coderCopy encodeObject:recurrenceEnd forKey:@"recurrenceEnd"];

  [coderCopy encodeInteger:-[REMRecurrenceRule frequency](self forKey:{"frequency"), @"frequency"}];
  [coderCopy encodeInteger:-[REMRecurrenceRule interval](self forKey:{"interval"), @"interval"}];
  [coderCopy encodeInteger:-[REMRecurrenceRule firstDayOfTheWeek](self forKey:{"firstDayOfTheWeek"), @"firstDayOfTheWeek"}];
  daysOfTheWeek = [(REMRecurrenceRule *)self daysOfTheWeek];
  [coderCopy encodeObject:daysOfTheWeek forKey:@"daysOfTheWeek"];

  daysOfTheMonth = [(REMRecurrenceRule *)self daysOfTheMonth];
  [coderCopy encodeObject:daysOfTheMonth forKey:@"daysOfTheMonth"];

  daysOfTheYear = [(REMRecurrenceRule *)self daysOfTheYear];
  [coderCopy encodeObject:daysOfTheYear forKey:@"daysOfTheYear"];

  weeksOfTheYear = [(REMRecurrenceRule *)self weeksOfTheYear];
  [coderCopy encodeObject:weeksOfTheYear forKey:@"weeksOfTheYear"];

  monthsOfTheYear = [(REMRecurrenceRule *)self monthsOfTheYear];
  [coderCopy encodeObject:monthsOfTheYear forKey:@"monthsOfTheYear"];

  setPositions = [(REMRecurrenceRule *)self setPositions];
  [coderCopy encodeObject:setPositions forKey:@"setPositions"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, equalCopy);

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

- (BOOL)isEqualToRecurrenceRule:(id)rule
{
  ruleCopy = rule;
  frequency = [(REMRecurrenceRule *)self frequency];
  if (frequency == [ruleCopy frequency])
  {
    interval = [(REMRecurrenceRule *)self interval];
    if (interval == [ruleCopy interval])
    {
      firstDayOfTheWeek = [(REMRecurrenceRule *)self firstDayOfTheWeek];
      if (firstDayOfTheWeek == [ruleCopy firstDayOfTheWeek])
      {
        objectID = [(REMRecurrenceRule *)self objectID];
        objectID2 = [ruleCopy objectID];
        if (objectID != objectID2)
        {
          objectID3 = [(REMRecurrenceRule *)self objectID];
          objectID4 = [ruleCopy objectID];
          v84 = objectID3;
          if (![objectID3 isEqual:?])
          {
            v11 = 0;
            goto LABEL_58;
          }
        }

        accountID = [(REMRecurrenceRule *)self accountID];
        accountID2 = [ruleCopy accountID];
        if (accountID != accountID2)
        {
          accountID3 = [(REMRecurrenceRule *)self accountID];
          accountID4 = [ruleCopy accountID];
          if (![accountID3 isEqual:accountID4])
          {
            v11 = 0;
LABEL_56:

LABEL_57:
            if (objectID == objectID2)
            {
LABEL_59:

              goto LABEL_8;
            }

LABEL_58:

            goto LABEL_59;
          }

          v79 = accountID4;
          v80 = accountID3;
        }

        reminderID = [(REMRecurrenceRule *)self reminderID];
        reminderID2 = [ruleCopy reminderID];
        v82 = reminderID;
        if (reminderID != reminderID2)
        {
          reminderID3 = [(REMRecurrenceRule *)self reminderID];
          reminderID4 = [ruleCopy reminderID];
          v77 = reminderID3;
          if (![reminderID3 isEqual:?])
          {
            v11 = 0;
LABEL_54:

LABEL_55:
            accountID4 = v79;
            accountID3 = v80;
            if (accountID == accountID2)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          }
        }

        recurrenceEnd = [(REMRecurrenceRule *)self recurrenceEnd];
        recurrenceEnd2 = [ruleCopy recurrenceEnd];
        v78 = recurrenceEnd;
        v21 = recurrenceEnd == recurrenceEnd2;
        v22 = recurrenceEnd2;
        if (!v21)
        {
          recurrenceEnd3 = [(REMRecurrenceRule *)self recurrenceEnd];
          recurrenceEnd4 = [ruleCopy recurrenceEnd];
          v74 = recurrenceEnd3;
          if (![recurrenceEnd3 isEqual:?])
          {
            v11 = 0;
            v24 = v22;
            v25 = v78;
LABEL_52:

LABEL_53:
            if (v82 == reminderID2)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }
        }

        monthsOfTheYear = [(REMRecurrenceRule *)self monthsOfTheYear];
        monthsOfTheYear2 = [ruleCopy monthsOfTheYear];
        v75 = monthsOfTheYear;
        v21 = monthsOfTheYear == monthsOfTheYear2;
        v28 = monthsOfTheYear2;
        if (!v21)
        {
          monthsOfTheYear3 = [(REMRecurrenceRule *)self monthsOfTheYear];
          monthsOfTheYear4 = [ruleCopy monthsOfTheYear];
          v70 = monthsOfTheYear3;
          if (![monthsOfTheYear3 isEqual:?])
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

        daysOfTheMonth = [(REMRecurrenceRule *)self daysOfTheMonth];
        daysOfTheMonth2 = [ruleCopy daysOfTheMonth];
        v71 = daysOfTheMonth;
        v72 = v28;
        v21 = daysOfTheMonth == daysOfTheMonth2;
        v33 = daysOfTheMonth2;
        if (v21)
        {
          v66 = daysOfTheMonth2;
          v35 = v22;
        }

        else
        {
          daysOfTheMonth3 = [(REMRecurrenceRule *)self daysOfTheMonth];
          daysOfTheMonth4 = [ruleCopy daysOfTheMonth];
          v65 = daysOfTheMonth3;
          if (![daysOfTheMonth3 isEqual:?])
          {
            v11 = 0;
            v38 = v71;
            goto LABEL_47;
          }

          v66 = v33;
          v35 = v22;
        }

        daysOfTheYear = [(REMRecurrenceRule *)self daysOfTheYear];
        [ruleCopy daysOfTheYear];
        v68 = v67 = v35;
        if (daysOfTheYear == v68)
        {
          v63 = daysOfTheYear;
        }

        else
        {
          daysOfTheYear2 = [(REMRecurrenceRule *)self daysOfTheYear];
          daysOfTheYear3 = [ruleCopy daysOfTheYear];
          v61 = daysOfTheYear2;
          if (![daysOfTheYear2 isEqual:?])
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

          v63 = daysOfTheYear;
        }

        weeksOfTheYear = [(REMRecurrenceRule *)self weeksOfTheYear];
        [ruleCopy weeksOfTheYear];
        v40 = v62 = weeksOfTheYear;
        if (weeksOfTheYear != v40)
        {
          weeksOfTheYear2 = [(REMRecurrenceRule *)self weeksOfTheYear];
          weeksOfTheYear3 = [ruleCopy weeksOfTheYear];
          v58 = weeksOfTheYear2;
          if (![weeksOfTheYear2 isEqual:?])
          {
            v11 = 0;
            v33 = v66;
            v42 = weeksOfTheYear;
LABEL_43:

LABEL_44:
            v43 = v68;
            daysOfTheYear = v63;
            if (v63 == v68)
            {
              goto LABEL_46;
            }

            goto LABEL_45;
          }
        }

        daysOfTheWeek = [(REMRecurrenceRule *)self daysOfTheWeek];
        daysOfTheWeek2 = [ruleCopy daysOfTheWeek];
        if (daysOfTheWeek == daysOfTheWeek2 || (-[REMRecurrenceRule daysOfTheWeek](self, "daysOfTheWeek"), v45 = objc_claimAutoreleasedReturnValue(), [ruleCopy daysOfTheWeek], v55 = objc_claimAutoreleasedReturnValue(), v56 = v45, objc_msgSend(v45, "isEqual:")))
        {
          setPositions = [(REMRecurrenceRule *)self setPositions];
          setPositions2 = [ruleCopy setPositions];
          if (setPositions == setPositions2)
          {

            v11 = 1;
            v46 = daysOfTheWeek2;
            if (daysOfTheWeek == daysOfTheWeek2)
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
            v54 = setPositions2;
            setPositions3 = [(REMRecurrenceRule *)self setPositions];
            [ruleCopy setPositions];
            v53 = v40;
            v50 = setPositions3;
            v52 = v51 = daysOfTheWeek;
            v11 = [setPositions3 isEqual:?];

            daysOfTheWeek = v51;
            v40 = v53;

            v46 = daysOfTheWeek2;
            if (v51 == daysOfTheWeek2)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v11 = 0;
          v46 = daysOfTheWeek2;
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
  objectID = [(REMRecurrenceRule *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMRecurrenceRule *)self objectID];
  reminderID = [(REMRecurrenceRule *)self reminderID];
  accountID = [(REMRecurrenceRule *)self accountID];
  v8 = [v3 stringWithFormat:@"<%@: %p objectID: %@, reminderID: %@, accountID: %@>", v4, self, objectID, reminderID, accountID];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMRecurrenceRule *)self objectID];
  reminderID = [(REMRecurrenceRule *)self reminderID];
  accountID = [(REMRecurrenceRule *)self accountID];
  iCalendarDescription = [(REMRecurrenceRule *)self iCalendarDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p objectID: %@, reminderID: %@, accountID: %@> %@", v4, self, objectID, reminderID, accountID, iCalendarDescription];

  return v9;
}

- (id)iCalendarDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(REMRecurrenceRule *)self stringValueAsDateOnly:0 isFloating:0];
  v4 = [v2 stringWithFormat:@"RRULE:%@", v3];

  return v4;
}

+ (id)iCalendarValueFromRecurrenceType:(int64_t)type
{
  if (type > 4)
  {
    return &stru_1F0D67F00;
  }

  else
  {
    return off_1E7509428[type];
  }
}

+ (id)iCalendarValueFromDate:(id)date isDateOnly:(BOOL)only isFloating:(BOOL)floating
{
  floatingCopy = floating;
  onlyCopy = only;
  v7 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v9 = objc_alloc_init(v7);
  [v9 setFormatterBehavior:1040];
  v10 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  [v9 setTimeZone:v10];

  v11 = @"yyyyMMdd'T'HHmmss'Z'";
  if (floatingCopy)
  {
    v11 = @"yyyyMMdd'T'HHmmss";
  }

  if (onlyCopy)
  {
    v12 = @"yyyyMMdd";
  }

  else
  {
    v12 = v11;
  }

  [v9 setDateFormat:v12];
  v13 = [v9 stringFromDate:dateCopy];

  return v13;
}

+ (id)iCalendarValueFromWeekday:(int64_t)weekday
{
  if (iCalendarValueFromWeekday__onceToken != -1)
  {
    +[REMRecurrenceRule iCalendarValueFromWeekday:];
  }

  if (weekday > 6)
  {
    v4 = &stru_1F0D67F00;
  }

  else
  {
    v4 = [iCalendarValueFromWeekday____iCalendarValuesForWeekday objectAtIndexedSubscript:weekday];
  }

  return v4;
}

void __47__REMRecurrenceRule_iCalendarValueFromWeekday___block_invoke()
{
  v0 = iCalendarValueFromWeekday____iCalendarValuesForWeekday;
  iCalendarValueFromWeekday____iCalendarValuesForWeekday = &unk_1F0D999E8;
}

+ (id)previousRecurrentDueDateBefore:(id)before dueDate:(id)date timeZone:(id)zone allDay:(BOOL)day recurrenceRules:(id)rules
{
  dayCopy = day;
  v72 = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  dateCopy = date;
  zoneCopy = zone;
  rulesCopy = rules;
  v56 = beforeCopy;
  v52 = dateCopy;
  v45 = rulesCopy;
  if ([beforeCopy compare:dateCopy] == 1)
  {
    v46 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = rulesCopy;
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
            v16 = [self hourlyRecurrentDueDateBefore:v56 dueDate:v52 interval:{objc_msgSend(v15, "interval")}];
            if (v16)
            {
              [v46 addObject:v16];
            }
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v17 = [self recurrenceGeneratorConfiguredForDueDate:v52 timeZone:zoneCopy allDay:dayCopy recurrenceRule:v15];
            recurrenceEnd = [v15 recurrenceEnd];
            v19 = [recurrenceEnd occurrenceCount] == 0;

            if (v19)
            {
              occurrenceCount = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              recurrenceEnd2 = [v15 recurrenceEnd];
              occurrenceCount = [recurrenceEnd2 occurrenceCount];
            }

            v22 = v52;
            v23 = v22;
            if (v52 && occurrenceCount >= 1)
            {
              v24 = 0;
              v25 = v22;
              do
              {
                v26 = [v25 isEqualToDate:v23];
                v27 = v26;
                if (occurrenceCount + (v26 ^ 1u) >= 0x1F4)
                {
                  v28 = 500;
                }

                else
                {
                  v28 = occurrenceCount + (v26 ^ 1u);
                }

                v29 = [v17 copyOccurrenceDatesWithInitialDate:v23 allDay:dayCopy rangeStart:v25 rangeEnd:v56 timeZone:zoneCopy limit:v28];
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

                  lastObject = [v29 lastObject];
                  v39 = lastObject;
                  if (lastObject && [lastObject compare:v35] == -1)
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

                v40 = occurrenceCount <= v33;
                occurrenceCount -= v33;
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
    lastObject2 = [v41 lastObject];
  }

  else
  {
    lastObject2 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];

  return lastObject2;
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

+ (id)hourlyRecurrentDueDateToward:(id)toward dueDate:(id)date interval:(int64_t)interval adjustingStepsBy:(id)by
{
  if (interval <= 1)
  {
    intervalCopy = 1;
  }

  else
  {
    intervalCopy = interval;
  }

  v9 = intervalCopy * 3600.0;
  byCopy = by;
  dateCopy = date;
  [toward timeIntervalSinceReferenceDate];
  v13 = v12;
  [dateCopy timeIntervalSinceReferenceDate];
  v15 = byCopy[2](byCopy, fmax(v13 - v14, 0.0) / v9);

  v16 = [dateCopy dateByAddingTimeInterval:v9 * v15];

  return v16;
}

+ (id)hourlyRecurrentDueDateBefore:(id)before dueDate:(id)date interval:(int64_t)interval
{
  dateCopy = date;
  v9 = [self hourlyRecurrentDueDateToward:before dueDate:dateCopy interval:interval adjustingStepsBy:&__block_literal_global_154];
  LOBYTE(before) = [v9 isEqualToDate:dateCopy];

  if (before)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

+ (int)_convertREMRecurrenceFrequencyToCalRecurrenceFrequency:(int64_t)frequency
{
  result = 1;
  if (frequency > 2)
  {
    if (frequency == 3)
    {
      return 4;
    }

    else if (frequency == 4)
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
    if (frequency == 2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    if (frequency == 1)
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

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