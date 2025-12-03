@interface REMAlarmLocationTrigger
- (BOOL)isContentEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (REMAlarmLocationTrigger)initWithCoder:(id)coder;
- (REMAlarmLocationTrigger)initWithObjectID:(id)d structuredLocation:(id)location proximity:(int64_t)proximity;
- (REMAlarmLocationTrigger)initWithStructuredLocation:(id)location proximity:(int64_t)proximity;
- (id)_deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAlarmLocationTrigger

- (REMAlarmLocationTrigger)initWithObjectID:(id)d structuredLocation:(id)location proximity:(int64_t)proximity
{
  locationCopy = location;
  v12.receiver = self;
  v12.super_class = REMAlarmLocationTrigger;
  v9 = [(REMAlarmTrigger *)&v12 initWithObjectID:d];
  v10 = v9;
  if (v9)
  {
    [(REMAlarmLocationTrigger *)v9 setStructuredLocation:locationCopy];
    [(REMAlarmLocationTrigger *)v10 setProximity:proximity];
  }

  return v10;
}

- (REMAlarmLocationTrigger)initWithStructuredLocation:(id)location proximity:(int64_t)proximity
{
  locationCopy = location;
  v10.receiver = self;
  v10.super_class = REMAlarmLocationTrigger;
  v7 = [(REMAlarmTrigger *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(REMAlarmLocationTrigger *)v7 setStructuredLocation:locationCopy];
    [(REMAlarmLocationTrigger *)v8 setProximity:proximity];
  }

  return v8;
}

- (REMAlarmLocationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = REMAlarmLocationTrigger;
  v5 = [(REMAlarmTrigger *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"structuredLocation"];
    [(REMAlarmLocationTrigger *)v5 setStructuredLocation:v6];

    v7 = [coderCopy decodeIntegerForKey:@"proximity"];
    if (v7 >= 3)
    {
      v8 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(REMAlarmLocationTrigger *)v7 initWithCoder:v8];
      }

      v7 = 0;
    }

    [(REMAlarmLocationTrigger *)v5 setProximity:v7];
  }

  return v5;
}

- (id)_deepCopy
{
  v3 = [REMAlarmLocationTrigger alloc];
  structuredLocation = [(REMAlarmLocationTrigger *)self structuredLocation];
  v5 = [structuredLocation copy];
  v6 = [(REMAlarmLocationTrigger *)v3 initWithStructuredLocation:v5 proximity:[(REMAlarmLocationTrigger *)self proximity]];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    structuredLocation = [(REMAlarmLocationTrigger *)self structuredLocation];
    structuredLocation2 = [v5 structuredLocation];
    if ([structuredLocation isEqual:structuredLocation2])
    {
      proximity = [(REMAlarmLocationTrigger *)self proximity];
      v9 = proximity == [v5 proximity];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isContentEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    structuredLocation = [(REMAlarmLocationTrigger *)self structuredLocation];
    structuredLocation2 = [v5 structuredLocation];
    if ([structuredLocation isContentEqual:structuredLocation2])
    {
      proximity = [(REMAlarmLocationTrigger *)self proximity];
      v9 = proximity == [v5 proximity];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  structuredLocation = [(REMAlarmLocationTrigger *)self structuredLocation];
  v3 = [structuredLocation hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = REMAlarmLocationTrigger;
  v4 = [(REMAlarmLocationTrigger *)&v8 description];
  structuredLocation = [(REMAlarmLocationTrigger *)self structuredLocation];
  v6 = [v3 stringWithFormat:@"%@ {structuredLocation = %@ proximity = %ld;}", v4, structuredLocation, -[REMAlarmLocationTrigger proximity](self, "proximity")];;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = REMAlarmLocationTrigger;
  coderCopy = coder;
  [(REMAlarmTrigger *)&v6 encodeWithCoder:coderCopy];
  v5 = [(REMAlarmLocationTrigger *)self structuredLocation:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"structuredLocation"];

  [coderCopy encodeInteger:-[REMAlarmLocationTrigger proximity](self forKey:{"proximity"), @"proximity"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMAlarmProximity %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end