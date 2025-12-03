@interface PCEventBundle
+ (id)getInterfaceTypeString:(unint64_t)string superType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (PCEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d bundleType:(id)type creationDate:(id)date firstCreationDate:(id)creationDate endDate:(id)endDate events:(id)events interfaceType:(unint64_t)self0 startDate:(id)self1 action:(id)self2 actions:(id)self3 place:(id)self4 time:(id)self5 places:(id)self6 subBundleIDs:(id)self7 subSuggestionIDs:(id)self8 bundleSubType:(unint64_t)self9 bundleSuperType:(unint64_t)superType;
- (PCEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate;
- (PCEventBundle)initWithCoder:(id)coder;
- (double)duration;
- (id)dateInterval;
- (id)description;
- (id)getBundleType;
- (id)localEndDate;
- (id)localStartDate;
- (id)sensitiveDescription;
- (unint64_t)getInterfaceTypeEnum:(id)enum;
- (unint64_t)hash;
- (void)addEvent:(id)event;
- (void)addEvents:(id)events;
- (void)encodeWithCoder:(id)coder;
- (void)setPropertiesBasedOnEvents;
@end

@implementation PCEventBundle

- (PCEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate
{
  identifierCopy = identifier;
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  creationDateCopy = creationDate;
  v21.receiver = self;
  v21.super_class = PCEventBundle;
  v17 = [(PCEventBundle *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleIdentifier, identifier);
    objc_storeStrong(&v18->_suggestionID, d);
    objc_storeStrong(&v18->_startDate, date);
    objc_storeStrong(&v18->_endDate, endDate);
    objc_storeStrong(&v18->_creationDate, creationDate);
  }

  return v18;
}

- (PCEventBundle)initWithBundleIdentifier:(id)identifier suggestionID:(id)d bundleType:(id)type creationDate:(id)date firstCreationDate:(id)creationDate endDate:(id)endDate events:(id)events interfaceType:(unint64_t)self0 startDate:(id)self1 action:(id)self2 actions:(id)self3 place:(id)self4 time:(id)self5 places:(id)self6 subBundleIDs:(id)self7 subSuggestionIDs:(id)self8 bundleSubType:(unint64_t)self9 bundleSuperType:(unint64_t)superType
{
  typeCopy = type;
  creationDateCopy = creationDate;
  eventsCopy = events;
  timeCopy = time;
  dsCopy = ds;
  iDsCopy = iDs;
  identifierCopy = identifier;
  v29 = eventsCopy;
  v30 = [(PCEventBundle *)self initWithBundleIdentifier:identifierCopy suggestionID:d startDate:startDate endDate:endDate creationDate:date];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_firstCreationDate, creationDate);
    objc_storeStrong(&v31->_bundleType, type);
    v32 = [v29 copy];
    events = v31->_events;
    v31->_events = v32;

    v31->_interfaceType = interfaceType;
    objc_storeStrong(&v31->_time, time);
    v34 = [dsCopy copy];
    subBundleIDs = v31->_subBundleIDs;
    v31->_subBundleIDs = v34;

    v36 = [iDsCopy copy];
    subSuggestionIDs = v31->_subSuggestionIDs;
    v31->_subSuggestionIDs = v36;

    v31->_bundleSubType = subType;
    v31->_bundleSuperType = superType;
  }

  return v31;
}

- (id)getBundleType
{
  interfaceType = [(PCEventBundle *)self interfaceType];
  bundleSuperType = [(PCEventBundle *)self bundleSuperType];

  return [PCEventBundle getInterfaceTypeString:interfaceType superType:bundleSuperType];
}

+ (id)getInterfaceTypeString:(unint64_t)string superType:(unint64_t)type
{
  v4 = @"unknown";
  if (string == 1)
  {
    v4 = @"activity";
  }

  if (string == 2)
  {
    return @"outing";
  }

  else
  {
    return v4;
  }
}

- (unint64_t)getInterfaceTypeEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([enumCopy isEqualToString:@"activity"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"outing"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  bundleIdentifier = [(PCEventBundle *)self bundleIdentifier];
  suggestionID = [(PCEventBundle *)self suggestionID];
  startDate = [(PCEventBundle *)self startDate];
  endDate = [(PCEventBundle *)self endDate];
  creationDate = [(PCEventBundle *)self creationDate];
  interfaceType = [(PCEventBundle *)self interfaceType];
  activityType = [(PCEventBundle *)self activityType];
  bundleSubType = [(PCEventBundle *)self bundleSubType];
  bundleSuperType = [(PCEventBundle *)self bundleSuperType];
  time = [(PCEventBundle *)self time];
  events = [(PCEventBundle *)self events];
  v8 = [events count];
  placeType = [(PCEventBundle *)self placeType];
  placeUserType = [(PCEventBundle *)self placeUserType];
  poiCategory = [(PCEventBundle *)self poiCategory];
  v22 = [v21 stringWithFormat:@"<%@ bundleIdentifier:%@, suggestionID:%@, startDate:%@, endDate:%@, creationDate:%@, interfaceType:%lu, activityType:%@, bundleSubType:%lu, bundleSuperType:%lu, time:%@, eventCount:%lu, placeType:%d, placeUserType:%d, poiCategory:%@, workoutSessionLocationType:%d, workoutSwimmingLocationType:%d>", v20, bundleIdentifier, suggestionID, startDate, endDate, creationDate, interfaceType, activityType, bundleSubType, bundleSuperType, time, v8, placeType, placeUserType, poiCategory, -[PCEventBundle workoutSessionLocationType](self, "workoutSessionLocationType"), -[PCEventBundle workoutSwimmingLocationType](self, "workoutSwimmingLocationType")];

  return v22;
}

- (id)sensitiveDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PCEventBundle *)self description];
  placeName = [(PCEventBundle *)self placeName];
  location = [(PCEventBundle *)self location];
  v7 = [v3 stringWithFormat:@"%@ <placeName:%@, location:%@>", v4, placeName, location];

  return v7;
}

- (void)setPropertiesBasedOnEvents
{
  v29 = *MEMORY[0x1E69E9840];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  startDate = self->_startDate;
  self->_startDate = distantFuture;

  distantPast = [MEMORY[0x1E695DF00] distantPast];
  endDate = self->_endDate;
  self->_endDate = distantPast;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  events = [(PCEventBundle *)self events];
  v8 = [events countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(events);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = self->_startDate;
        startDate = [v12 startDate];
        LODWORD(v13) = [(NSDate *)v13 isAfterDate:startDate];

        if (v13)
        {
          startDate2 = [v12 startDate];
          v16 = [startDate2 copy];
          v17 = self->_startDate;
          self->_startDate = v16;
        }

        endDate = [v12 endDate];
        v19 = [endDate isAfterDate:self->_endDate];

        if (v19)
        {
          endDate2 = [v12 endDate];
          v21 = [endDate2 copy];
          v22 = self->_endDate;
          self->_endDate = v21;
        }
      }

      v9 = [events countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)localStartDate
{
  time = [(PCEventBundle *)self time];
  if (!time)
  {
    goto LABEL_4;
  }

  v4 = time;
  time2 = [(PCEventBundle *)self time];
  timeZone = [time2 timeZone];

  if (timeZone)
  {
    v7 = objc_alloc(MEMORY[0x1E695DFE8]);
    time3 = [(PCEventBundle *)self time];
    timeZone2 = [time3 timeZone];
    v10 = [v7 initWithName:timeZone2];

    startDate = [(PCEventBundle *)self startDate];
    startDate2 = [PCTime localTimeOfDate:startDate timeZone:v10];
  }

  else
  {
LABEL_4:
    startDate2 = [(PCEventBundle *)self startDate];
  }

  return startDate2;
}

- (id)localEndDate
{
  time = [(PCEventBundle *)self time];
  if (!time)
  {
    goto LABEL_4;
  }

  v4 = time;
  time2 = [(PCEventBundle *)self time];
  timeZone = [time2 timeZone];

  if (timeZone)
  {
    v7 = objc_alloc(MEMORY[0x1E695DFE8]);
    time3 = [(PCEventBundle *)self time];
    timeZone2 = [time3 timeZone];
    v10 = [v7 initWithName:timeZone2];

    endDate = [(PCEventBundle *)self endDate];
    endDate2 = [PCTime localTimeOfDate:endDate timeZone:v10];
  }

  else
  {
LABEL_4:
    endDate2 = [(PCEventBundle *)self endDate];
  }

  return endDate2;
}

- (void)addEvent:(id)event
{
  v11[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (eventCopy)
  {
    events = [(PCEventBundle *)self events];

    if (events)
    {
      v6 = MEMORY[0x1E695DF70];
      events2 = [(PCEventBundle *)self events];
      v8 = [v6 arrayWithArray:events2];

      [v8 addObject:eventCopy];
      v9 = [v8 copy];
      [(PCEventBundle *)self setEvents:v9];
    }

    else
    {
      v11[0] = eventCopy;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [(PCEventBundle *)self setEvents:v8];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addEvents:(id)events
{
  eventsCopy = events;
  if (eventsCopy)
  {
    v10 = eventsCopy;
    if ([eventsCopy count])
    {
      events = [(PCEventBundle *)self events];

      if (events)
      {
        v6 = MEMORY[0x1E695DF70];
        events2 = [(PCEventBundle *)self events];
        v8 = [v6 arrayWithArray:events2];

        if ([v10 count])
        {
          [v8 addObjectsFromArray:v10];
        }

        v9 = [v8 copy];
        [(PCEventBundle *)self setEvents:v9];
      }

      else
      {
        [(PCEventBundle *)self setEvents:v10];
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (PCEventBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    v10 = [(PCEventBundle *)self initWithBundleIdentifier:v5 creationDate:v6];
    v11 = v10;
    if (v10)
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
      startDate = v11->_startDate;
      v11->_startDate = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
      endDate = v11->_endDate;
      v11->_endDate = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstCreationDate"];
      firstCreationDate = v11->_firstCreationDate;
      v11->_firstCreationDate = v16;

      v11->_interfaceType = [coderCopy decodeIntegerForKey:@"interfaceType"];
      v18 = MEMORY[0x1E695DFD8];
      v19 = objc_opt_class();
      v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
      v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"events"];
      events = v11->_events;
      v11->_events = v21;

      v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
      time = v11->_time;
      v11->_time = v23;

      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionID"];
      suggestionID = v11->_suggestionID;
      v11->_suggestionID = v25;

      v27 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subBundleIDs"];
      subBundleIDs = v11->_subBundleIDs;
      v11->_subBundleIDs = v27;

      v29 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subSuggestionIDs"];
      subSuggestionIDs = v11->_subSuggestionIDs;
      v11->_subSuggestionIDs = v29;

      v11->_bundleSubType = [coderCopy decodeIntegerForKey:@"bundleSubType"];
      v11->_bundleSuperType = [coderCopy decodeIntegerForKey:@"bundleSuperType"];
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_firstCreationDate forKey:@"firstCreationDate"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeInteger:self->_interfaceType forKey:@"interfaceType"];
  [coderCopy encodeObject:self->_events forKey:@"events"];
  [coderCopy encodeObject:self->_time forKey:@"time"];
  [coderCopy encodeObject:self->_suggestionID forKey:@"suggestionID"];
  [coderCopy encodeObject:self->_subBundleIDs forKey:@"subBundleIDs"];
  [coderCopy encodeObject:self->_subSuggestionIDs forKey:@"subSuggestionIDs"];
  [coderCopy encodeInteger:self->_bundleSubType forKey:@"bundleSubType"];
  [coderCopy encodeInteger:self->_bundleSuperType forKey:@"bundleSuperType"];
}

- (id)dateInterval
{
  startDate = [(PCEventBundle *)self startDate];
  if (startDate)
  {
  }

  else
  {
    endDate = [(PCEventBundle *)self endDate];

    if (!endDate)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_12;
    }
  }

  endDate2 = [(PCEventBundle *)self endDate];

  startDate2 = [(PCEventBundle *)self startDate];
  endDate3 = startDate2;
  if (!endDate2)
  {
    [(PCEventBundle *)self setEndDate:startDate2];
LABEL_10:

    goto LABEL_11;
  }

  if (!endDate3)
  {
    endDate3 = [(PCEventBundle *)self endDate];
    [(PCEventBundle *)self setStartDate:endDate3];
    goto LABEL_10;
  }

  startDate3 = [(PCEventBundle *)self startDate];
  endDate4 = [(PCEventBundle *)self endDate];
  v10 = [startDate3 isBeforeDate:endDate4];

  if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v12 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate4 = [(PCEventBundle *)self startDate];
  endDate5 = [(PCEventBundle *)self endDate];
  v11 = [v12 initWithStartDate:startDate4 endDate:endDate5];

LABEL_12:

  return v11;
}

- (unint64_t)hash
{
  bundleIdentifier = [(PCEventBundle *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
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
        bundleIdentifier = [(PCEventBundle *)self bundleIdentifier];
        if (bundleIdentifier || ([(PCEventBundle *)v7 bundleIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          bundleIdentifier2 = [(PCEventBundle *)self bundleIdentifier];
          bundleIdentifier3 = [(PCEventBundle *)v7 bundleIdentifier];
          v11 = [bundleIdentifier2 isEqual:bundleIdentifier3];

          if (bundleIdentifier)
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
  endDate = [(PCEventBundle *)self endDate];
  startDate = [(PCEventBundle *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

@end