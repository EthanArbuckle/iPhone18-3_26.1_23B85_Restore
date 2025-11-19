@interface PCEventBundle
+ (id)getInterfaceTypeString:(unint64_t)a3 superType:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (PCEventBundle)initWithBundleIdentifier:(id)a3 suggestionID:(id)a4 bundleType:(id)a5 creationDate:(id)a6 firstCreationDate:(id)a7 endDate:(id)a8 events:(id)a9 interfaceType:(unint64_t)a10 startDate:(id)a11 action:(id)a12 actions:(id)a13 place:(id)a14 time:(id)a15 places:(id)a16 subBundleIDs:(id)a17 subSuggestionIDs:(id)a18 bundleSubType:(unint64_t)a19 bundleSuperType:(unint64_t)a20;
- (PCEventBundle)initWithBundleIdentifier:(id)a3 suggestionID:(id)a4 startDate:(id)a5 endDate:(id)a6 creationDate:(id)a7;
- (PCEventBundle)initWithCoder:(id)a3;
- (double)duration;
- (id)dateInterval;
- (id)description;
- (id)getBundleType;
- (id)localEndDate;
- (id)localStartDate;
- (id)sensitiveDescription;
- (unint64_t)getInterfaceTypeEnum:(id)a3;
- (unint64_t)hash;
- (void)addEvent:(id)a3;
- (void)addEvents:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPropertiesBasedOnEvents;
@end

@implementation PCEventBundle

- (PCEventBundle)initWithBundleIdentifier:(id)a3 suggestionID:(id)a4 startDate:(id)a5 endDate:(id)a6 creationDate:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = PCEventBundle;
  v17 = [(PCEventBundle *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleIdentifier, a3);
    objc_storeStrong(&v18->_suggestionID, a4);
    objc_storeStrong(&v18->_startDate, a5);
    objc_storeStrong(&v18->_endDate, a6);
    objc_storeStrong(&v18->_creationDate, a7);
  }

  return v18;
}

- (PCEventBundle)initWithBundleIdentifier:(id)a3 suggestionID:(id)a4 bundleType:(id)a5 creationDate:(id)a6 firstCreationDate:(id)a7 endDate:(id)a8 events:(id)a9 interfaceType:(unint64_t)a10 startDate:(id)a11 action:(id)a12 actions:(id)a13 place:(id)a14 time:(id)a15 places:(id)a16 subBundleIDs:(id)a17 subSuggestionIDs:(id)a18 bundleSubType:(unint64_t)a19 bundleSuperType:(unint64_t)a20
{
  v43 = a5;
  v42 = a7;
  v25 = a9;
  v41 = a15;
  v26 = a17;
  v27 = a18;
  v28 = a3;
  v29 = v25;
  v30 = [(PCEventBundle *)self initWithBundleIdentifier:v28 suggestionID:a4 startDate:a11 endDate:a8 creationDate:a6];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_firstCreationDate, a7);
    objc_storeStrong(&v31->_bundleType, a5);
    v32 = [v29 copy];
    events = v31->_events;
    v31->_events = v32;

    v31->_interfaceType = a10;
    objc_storeStrong(&v31->_time, a15);
    v34 = [v26 copy];
    subBundleIDs = v31->_subBundleIDs;
    v31->_subBundleIDs = v34;

    v36 = [v27 copy];
    subSuggestionIDs = v31->_subSuggestionIDs;
    v31->_subSuggestionIDs = v36;

    v31->_bundleSubType = a19;
    v31->_bundleSuperType = a20;
  }

  return v31;
}

- (id)getBundleType
{
  v3 = [(PCEventBundle *)self interfaceType];
  v4 = [(PCEventBundle *)self bundleSuperType];

  return [PCEventBundle getInterfaceTypeString:v3 superType:v4];
}

+ (id)getInterfaceTypeString:(unint64_t)a3 superType:(unint64_t)a4
{
  v4 = @"unknown";
  if (a3 == 1)
  {
    v4 = @"activity";
  }

  if (a3 == 2)
  {
    return @"outing";
  }

  else
  {
    return v4;
  }
}

- (unint64_t)getInterfaceTypeEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"activity"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"outing"])
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
  v19 = [(PCEventBundle *)self bundleIdentifier];
  v18 = [(PCEventBundle *)self suggestionID];
  v17 = [(PCEventBundle *)self startDate];
  v16 = [(PCEventBundle *)self endDate];
  v15 = [(PCEventBundle *)self creationDate];
  v14 = [(PCEventBundle *)self interfaceType];
  v4 = [(PCEventBundle *)self activityType];
  v13 = [(PCEventBundle *)self bundleSubType];
  v5 = [(PCEventBundle *)self bundleSuperType];
  v6 = [(PCEventBundle *)self time];
  v7 = [(PCEventBundle *)self events];
  v8 = [v7 count];
  v9 = [(PCEventBundle *)self placeType];
  v10 = [(PCEventBundle *)self placeUserType];
  v11 = [(PCEventBundle *)self poiCategory];
  v22 = [v21 stringWithFormat:@"<%@ bundleIdentifier:%@, suggestionID:%@, startDate:%@, endDate:%@, creationDate:%@, interfaceType:%lu, activityType:%@, bundleSubType:%lu, bundleSuperType:%lu, time:%@, eventCount:%lu, placeType:%d, placeUserType:%d, poiCategory:%@, workoutSessionLocationType:%d, workoutSwimmingLocationType:%d>", v20, v19, v18, v17, v16, v15, v14, v4, v13, v5, v6, v8, v9, v10, v11, -[PCEventBundle workoutSessionLocationType](self, "workoutSessionLocationType"), -[PCEventBundle workoutSwimmingLocationType](self, "workoutSwimmingLocationType")];

  return v22;
}

- (id)sensitiveDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PCEventBundle *)self description];
  v5 = [(PCEventBundle *)self placeName];
  v6 = [(PCEventBundle *)self location];
  v7 = [v3 stringWithFormat:@"%@ <placeName:%@, location:%@>", v4, v5, v6];

  return v7;
}

- (void)setPropertiesBasedOnEvents
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] distantFuture];
  startDate = self->_startDate;
  self->_startDate = v3;

  v5 = [MEMORY[0x1E695DF00] distantPast];
  endDate = self->_endDate;
  self->_endDate = v5;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [(PCEventBundle *)self events];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = self->_startDate;
        v14 = [v12 startDate];
        LODWORD(v13) = [(NSDate *)v13 isAfterDate:v14];

        if (v13)
        {
          v15 = [v12 startDate];
          v16 = [v15 copy];
          v17 = self->_startDate;
          self->_startDate = v16;
        }

        v18 = [v12 endDate];
        v19 = [v18 isAfterDate:self->_endDate];

        if (v19)
        {
          v20 = [v12 endDate];
          v21 = [v20 copy];
          v22 = self->_endDate;
          self->_endDate = v21;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)localStartDate
{
  v3 = [(PCEventBundle *)self time];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(PCEventBundle *)self time];
  v6 = [v5 timeZone];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DFE8]);
    v8 = [(PCEventBundle *)self time];
    v9 = [v8 timeZone];
    v10 = [v7 initWithName:v9];

    v11 = [(PCEventBundle *)self startDate];
    v12 = [PCTime localTimeOfDate:v11 timeZone:v10];
  }

  else
  {
LABEL_4:
    v12 = [(PCEventBundle *)self startDate];
  }

  return v12;
}

- (id)localEndDate
{
  v3 = [(PCEventBundle *)self time];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(PCEventBundle *)self time];
  v6 = [v5 timeZone];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DFE8]);
    v8 = [(PCEventBundle *)self time];
    v9 = [v8 timeZone];
    v10 = [v7 initWithName:v9];

    v11 = [(PCEventBundle *)self endDate];
    v12 = [PCTime localTimeOfDate:v11 timeZone:v10];
  }

  else
  {
LABEL_4:
    v12 = [(PCEventBundle *)self endDate];
  }

  return v12;
}

- (void)addEvent:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PCEventBundle *)self events];

    if (v5)
    {
      v6 = MEMORY[0x1E695DF70];
      v7 = [(PCEventBundle *)self events];
      v8 = [v6 arrayWithArray:v7];

      [v8 addObject:v4];
      v9 = [v8 copy];
      [(PCEventBundle *)self setEvents:v9];
    }

    else
    {
      v11[0] = v4;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [(PCEventBundle *)self setEvents:v8];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addEvents:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    if ([v4 count])
    {
      v5 = [(PCEventBundle *)self events];

      if (v5)
      {
        v6 = MEMORY[0x1E695DF70];
        v7 = [(PCEventBundle *)self events];
        v8 = [v6 arrayWithArray:v7];

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

- (PCEventBundle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
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
    v9 = 0;
  }

  else
  {
    v10 = [(PCEventBundle *)self initWithBundleIdentifier:v5 creationDate:v6];
    v11 = v10;
    if (v10)
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
      startDate = v11->_startDate;
      v11->_startDate = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
      endDate = v11->_endDate;
      v11->_endDate = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstCreationDate"];
      firstCreationDate = v11->_firstCreationDate;
      v11->_firstCreationDate = v16;

      v11->_interfaceType = [v4 decodeIntegerForKey:@"interfaceType"];
      v18 = MEMORY[0x1E695DFD8];
      v19 = objc_opt_class();
      v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
      v21 = [v4 decodeObjectOfClasses:v20 forKey:@"events"];
      events = v11->_events;
      v11->_events = v21;

      v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
      time = v11->_time;
      v11->_time = v23;

      v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionID"];
      suggestionID = v11->_suggestionID;
      v11->_suggestionID = v25;

      v27 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subBundleIDs"];
      subBundleIDs = v11->_subBundleIDs;
      v11->_subBundleIDs = v27;

      v29 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subSuggestionIDs"];
      subSuggestionIDs = v11->_subSuggestionIDs;
      v11->_subSuggestionIDs = v29;

      v11->_bundleSubType = [v4 decodeIntegerForKey:@"bundleSubType"];
      v11->_bundleSuperType = [v4 decodeIntegerForKey:@"bundleSuperType"];
    }

    self = v11;
    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_firstCreationDate forKey:@"firstCreationDate"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeInteger:self->_interfaceType forKey:@"interfaceType"];
  [v5 encodeObject:self->_events forKey:@"events"];
  [v5 encodeObject:self->_time forKey:@"time"];
  [v5 encodeObject:self->_suggestionID forKey:@"suggestionID"];
  [v5 encodeObject:self->_subBundleIDs forKey:@"subBundleIDs"];
  [v5 encodeObject:self->_subSuggestionIDs forKey:@"subSuggestionIDs"];
  [v5 encodeInteger:self->_bundleSubType forKey:@"bundleSubType"];
  [v5 encodeInteger:self->_bundleSuperType forKey:@"bundleSuperType"];
}

- (id)dateInterval
{
  v3 = [(PCEventBundle *)self startDate];
  if (v3)
  {
  }

  else
  {
    v4 = [(PCEventBundle *)self endDate];

    if (!v4)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_12;
    }
  }

  v5 = [(PCEventBundle *)self endDate];

  v6 = [(PCEventBundle *)self startDate];
  v7 = v6;
  if (!v5)
  {
    [(PCEventBundle *)self setEndDate:v6];
LABEL_10:

    goto LABEL_11;
  }

  if (!v7)
  {
    v7 = [(PCEventBundle *)self endDate];
    [(PCEventBundle *)self setStartDate:v7];
    goto LABEL_10;
  }

  v8 = [(PCEventBundle *)self startDate];
  v9 = [(PCEventBundle *)self endDate];
  v10 = [v8 isBeforeDate:v9];

  if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v12 = objc_alloc(MEMORY[0x1E696AB80]);
  v13 = [(PCEventBundle *)self startDate];
  v14 = [(PCEventBundle *)self endDate];
  v11 = [v12 initWithStartDate:v13 endDate:v14];

LABEL_12:

  return v11;
}

- (unint64_t)hash
{
  v2 = [(PCEventBundle *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
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
        v8 = [(PCEventBundle *)self bundleIdentifier];
        if (v8 || ([(PCEventBundle *)v7 bundleIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(PCEventBundle *)self bundleIdentifier];
          v10 = [(PCEventBundle *)v7 bundleIdentifier];
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
  v3 = [(PCEventBundle *)self endDate];
  v4 = [(PCEventBundle *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

@end