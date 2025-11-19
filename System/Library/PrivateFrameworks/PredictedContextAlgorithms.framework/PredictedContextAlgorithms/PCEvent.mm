@interface PCEvent
+ (id)describeCategory:(unint64_t)a3;
+ (id)describeProvider:(unint64_t)a3;
+ (id)formatDate:(id)a3;
+ (id)standardDateFormat;
- (BOOL)isEqual:(id)a3;
- (PCEvent)initWithCoder:(id)a3;
- (PCEvent)initWithEventIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 creationDate:(id)a6 provider:(unint64_t)a7 category:(unint64_t)a8;
- (double)duration;
- (id)copy;
- (id)describeCategory;
- (id)describeProvider;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)initSubEvent;
@end

@implementation PCEvent

- (PCEvent)initWithEventIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 creationDate:(id)a6 provider:(unint64_t)a7 category:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v28.receiver = self;
  v28.super_class = PCEvent;
  v19 = [(PCEvent *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_eventIdentifier, a3);
    v21 = [v16 copy];
    startDate = v20->_startDate;
    v20->_startDate = v21;

    v23 = [v17 copy];
    endDate = v20->_endDate;
    v20->_endDate = v23;

    v25 = [v18 copy];
    creationDate = v20->_creationDate;
    v20->_creationDate = v25;

    v20->_provider = a7;
    v20->_category = a8;
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

+ (id)describeProvider:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E83B8260[a3];
  }
}

+ (id)describeCategory:(unint64_t)a3
{
  v3 = @"Unknown Category";
  if (a3 == 1)
  {
    v3 = @"Visit";
  }

  if (a3 == 2)
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
  v2 = [(PCEvent *)self category];

  return [PCEvent describeCategory:v2];
}

- (id)describeProvider
{
  v2 = [(PCEvent *)self provider];

  return [PCEvent describeProvider:v2];
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

+ (id)formatDate:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[PCEvent standardDateFormat];
    v5 = [v4 stringFromDate:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = [(PCEvent *)self category];
  if (v3 == 2)
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

  if (v3 == 1)
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
  v6 = [(PCEvent *)self eventIdentifier];
  v15 = [(PCEvent *)self identifierFromProvider];
  v19 = [(PCEvent *)self startDate];
  v7 = [PCEvent formatDate:v19];
  v16 = [(PCEvent *)self endDate];
  v8 = [PCEvent formatDate:v16];
  v9 = [(PCEvent *)self creationDate];
  v10 = [PCEvent formatDate:v9];
  v11 = [(PCEvent *)self timeZone];
  v12 = [(PCEvent *)self describeProvider];
  v13 = [(PCEvent *)self describeCategory];
  v18 = [v17 initWithFormat:@"<PCEvent eventIdentifier, %@, identifierFromProvider, %@, startDate, %@, endDate, %@, creationDate, %@, timeZone, %@, provider, %@, category, %@, details, %@, >", v6, v15, v7, v8, v10, v11, v12, v13, v5];

  return v18;
}

- (PCEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
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
    v13 = 0;
  }

  else
  {
    v14 = -[PCEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](self, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", v5, v6, v7, v8, [v4 decodeIntegerForKey:@"provider"], objc_msgSend(v4, "decodeIntegerForKey:", @"category"));
    v15 = v14;
    if (v14)
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifierFromProvider"];
      identifierFromProvider = v15->_identifierFromProvider;
      v15->_identifierFromProvider = v16;

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routineEvent"];
      routineEvent = v15->_routineEvent;
      v15->_routineEvent = v18;

      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutEvent"];
      workoutEvent = v15->_workoutEvent;
      v15->_workoutEvent = v20;
    }

    self = v15;
    v13 = self;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  eventIdentifier = self->_eventIdentifier;
  v5 = a3;
  [v5 encodeObject:eventIdentifier forKey:@"eventIdentifier"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeInteger:self->_provider forKey:@"provider"];
  [v5 encodeInteger:self->_category forKey:@"category"];
  [v5 encodeObject:self->_identifierFromProvider forKey:@"identifierFromProvider"];
  [v5 encodeObject:self->_routineEvent forKey:@"routineEvent"];
  [v5 encodeObject:self->_workoutEvent forKey:@"workoutEvent"];
}

- (unint64_t)hash
{
  v2 = [(PCEvent *)self eventIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)copy
{
  v3 = [PCEvent alloc];
  v4 = [(PCEvent *)self eventIdentifier];
  v5 = [(PCEvent *)self startDate];
  v6 = [(PCEvent *)self endDate];
  v7 = [(PCEvent *)self creationDate];
  v8 = [(PCEvent *)v3 initWithEventIdentifier:v4 startDate:v5 endDate:v6 creationDate:v7 provider:[(PCEvent *)self provider] category:[(PCEvent *)self category]];

  objc_storeStrong((v8 + 72), self->_identifierFromProvider);
  v9 = [(PCEventVisit *)self->_routineEvent copy];
  v10 = *(v8 + 80);
  *(v8 + 80) = v9;

  v11 = [(PCEventWorkout *)self->_workoutEvent copy];
  v12 = *(v8 + 88);
  *(v8 + 88) = v11;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(PCEvent *)self eventIdentifier];
        if (v8 || ([(PCEvent *)v7 eventIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(PCEvent *)self eventIdentifier];
          v10 = [(PCEvent *)v7 eventIdentifier];
          v11 = [v9 isEqual:v10];

          if (v8)
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
  v3 = [(PCEvent *)self endDate];
  v4 = [(PCEvent *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

@end