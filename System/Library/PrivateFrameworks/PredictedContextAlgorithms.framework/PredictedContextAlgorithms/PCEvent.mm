@interface PCEvent
+ (id)describeCategory:(unint64_t)category;
+ (id)describeProvider:(unint64_t)provider;
+ (id)formatDate:(id)date;
+ (id)standardDateFormat;
- (BOOL)isEqual:(id)equal;
- (PCEvent)initWithCoder:(id)coder;
- (PCEvent)initWithEventIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate provider:(unint64_t)provider category:(unint64_t)category;
- (double)duration;
- (id)copy;
- (id)describeCategory;
- (id)describeProvider;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)initSubEvent;
@end

@implementation PCEvent

- (PCEvent)initWithEventIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate provider:(unint64_t)provider category:(unint64_t)category
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  creationDateCopy = creationDate;
  v28.receiver = self;
  v28.super_class = PCEvent;
  v19 = [(PCEvent *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_eventIdentifier, identifier);
    v21 = [dateCopy copy];
    startDate = v20->_startDate;
    v20->_startDate = v21;

    v23 = [endDateCopy copy];
    endDate = v20->_endDate;
    v20->_endDate = v23;

    v25 = [creationDateCopy copy];
    creationDate = v20->_creationDate;
    v20->_creationDate = v25;

    v20->_provider = provider;
    v20->_category = category;
    [(PCEvent *)v20 initSubEvent];
  }

  return v20;
}

- (void)initSubEvent
{
  category = self->_category;
  if (category == 1)
  {
    v4 = off_1E83B7848;
    v5 = 80;
  }

  else
  {
    if (category != 2)
    {
      return;
    }

    v4 = off_1E83B7850;
    v5 = 88;
  }

  v6 = objc_alloc_init(*v4);
  v7 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = v6;

  MEMORY[0x1EEE66BB8]();
}

+ (id)describeProvider:(unint64_t)provider
{
  if (provider > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E83B8260[provider];
  }
}

+ (id)describeCategory:(unint64_t)category
{
  v3 = @"Unknown Category";
  if (category == 1)
  {
    v3 = @"Visit";
  }

  if (category == 2)
  {
    return @"Workout";
  }

  else
  {
    return v3;
  }
}

- (id)describeCategory
{
  category = [(PCEvent *)self category];

  return [PCEvent describeCategory:category];
}

- (id)describeProvider
{
  provider = [(PCEvent *)self provider];

  return [PCEvent describeProvider:provider];
}

+ (id)standardDateFormat
{
  if (qword_1EE04AE98 != -1)
  {
    dispatch_once(&qword_1EE04AE98, &__block_literal_global_2);
  }

  v3 = _MergedGlobals;

  return v3;
}

uint64_t __29__PCEvent_standardDateFormat__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals;
  _MergedGlobals = v0;

  [_MergedGlobals setDateStyle:4];
  v2 = _MergedGlobals;

  return [v2 setTimeStyle:3];
}

+ (id)formatDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    v4 = +[PCEvent standardDateFormat];
    v5 = [v4 stringFromDate:dateCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  category = [(PCEvent *)self category];
  if (category == 2)
  {
    workoutEvent = self->_workoutEvent;
    if (workoutEvent)
    {
      goto LABEL_4;
    }

LABEL_6:
    v5 = 0;
    goto LABEL_8;
  }

  if (category == 1)
  {
    workoutEvent = self->_routineEvent;
    if (workoutEvent)
    {
LABEL_4:
      v5 = [workoutEvent description];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v5 = @"no other details";
LABEL_8:
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  eventIdentifier = [(PCEvent *)self eventIdentifier];
  identifierFromProvider = [(PCEvent *)self identifierFromProvider];
  startDate = [(PCEvent *)self startDate];
  v7 = [PCEvent formatDate:startDate];
  endDate = [(PCEvent *)self endDate];
  v8 = [PCEvent formatDate:endDate];
  creationDate = [(PCEvent *)self creationDate];
  v10 = [PCEvent formatDate:creationDate];
  timeZone = [(PCEvent *)self timeZone];
  describeProvider = [(PCEvent *)self describeProvider];
  describeCategory = [(PCEvent *)self describeCategory];
  v18 = [v17 initWithFormat:@"<PCEvent eventIdentifier, %@, identifierFromProvider, %@, startDate, %@, endDate, %@, creationDate, %@, timeZone, %@, provider, %@, category, %@, details, %@, >", eventIdentifier, identifierFromProvider, v7, v8, v10, timeZone, describeProvider, describeCategory, v5];

  return v18;
}

- (PCEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v9 = v8;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v6 == 0 || v7 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    v14 = -[PCEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](self, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", v5, v6, v7, v8, [coderCopy decodeIntegerForKey:@"provider"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"category"));
    v15 = v14;
    if (v14)
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifierFromProvider"];
      identifierFromProvider = v15->_identifierFromProvider;
      v15->_identifierFromProvider = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routineEvent"];
      routineEvent = v15->_routineEvent;
      v15->_routineEvent = v18;

      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutEvent"];
      workoutEvent = v15->_workoutEvent;
      v15->_workoutEvent = v20;
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  eventIdentifier = self->_eventIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:eventIdentifier forKey:@"eventIdentifier"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeInteger:self->_provider forKey:@"provider"];
  [coderCopy encodeInteger:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_identifierFromProvider forKey:@"identifierFromProvider"];
  [coderCopy encodeObject:self->_routineEvent forKey:@"routineEvent"];
  [coderCopy encodeObject:self->_workoutEvent forKey:@"workoutEvent"];
}

- (unint64_t)hash
{
  eventIdentifier = [(PCEvent *)self eventIdentifier];
  v3 = [eventIdentifier hash];

  return v3;
}

- (id)copy
{
  v3 = [PCEvent alloc];
  eventIdentifier = [(PCEvent *)self eventIdentifier];
  startDate = [(PCEvent *)self startDate];
  endDate = [(PCEvent *)self endDate];
  creationDate = [(PCEvent *)self creationDate];
  v8 = [(PCEvent *)v3 initWithEventIdentifier:eventIdentifier startDate:startDate endDate:endDate creationDate:creationDate provider:[(PCEvent *)self provider] category:[(PCEvent *)self category]];

  objc_storeStrong((v8 + 72), self->_identifierFromProvider);
  v9 = [(PCEventVisit *)self->_routineEvent copy];
  v10 = *(v8 + 80);
  *(v8 + 80) = v9;

  v11 = [(PCEventWorkout *)self->_workoutEvent copy];
  v12 = *(v8 + 88);
  *(v8 + 88) = v11;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        eventIdentifier = [(PCEvent *)self eventIdentifier];
        if (eventIdentifier || ([(PCEvent *)v7 eventIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          eventIdentifier2 = [(PCEvent *)self eventIdentifier];
          eventIdentifier3 = [(PCEvent *)v7 eventIdentifier];
          v11 = [eventIdentifier2 isEqual:eventIdentifier3];

          if (eventIdentifier)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (double)duration
{
  endDate = [(PCEvent *)self endDate];
  startDate = [(PCEvent *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

@end