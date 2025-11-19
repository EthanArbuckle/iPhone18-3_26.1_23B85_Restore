@interface REMAlarmLocationTrigger
- (BOOL)isContentEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (REMAlarmLocationTrigger)initWithCoder:(id)a3;
- (REMAlarmLocationTrigger)initWithObjectID:(id)a3 structuredLocation:(id)a4 proximity:(int64_t)a5;
- (REMAlarmLocationTrigger)initWithStructuredLocation:(id)a3 proximity:(int64_t)a4;
- (id)_deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAlarmLocationTrigger

- (REMAlarmLocationTrigger)initWithObjectID:(id)a3 structuredLocation:(id)a4 proximity:(int64_t)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMAlarmLocationTrigger;
  v9 = [(REMAlarmTrigger *)&v12 initWithObjectID:a3];
  v10 = v9;
  if (v9)
  {
    [(REMAlarmLocationTrigger *)v9 setStructuredLocation:v8];
    [(REMAlarmLocationTrigger *)v10 setProximity:a5];
  }

  return v10;
}

- (REMAlarmLocationTrigger)initWithStructuredLocation:(id)a3 proximity:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = REMAlarmLocationTrigger;
  v7 = [(REMAlarmTrigger *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(REMAlarmLocationTrigger *)v7 setStructuredLocation:v6];
    [(REMAlarmLocationTrigger *)v8 setProximity:a4];
  }

  return v8;
}

- (REMAlarmLocationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = REMAlarmLocationTrigger;
  v5 = [(REMAlarmTrigger *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"structuredLocation"];
    [(REMAlarmLocationTrigger *)v5 setStructuredLocation:v6];

    v7 = [v4 decodeIntegerForKey:@"proximity"];
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
  v4 = [(REMAlarmLocationTrigger *)self structuredLocation];
  v5 = [v4 copy];
  v6 = [(REMAlarmLocationTrigger *)v3 initWithStructuredLocation:v5 proximity:[(REMAlarmLocationTrigger *)self proximity]];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(REMAlarmLocationTrigger *)self structuredLocation];
    v7 = [v5 structuredLocation];
    if ([v6 isEqual:v7])
    {
      v8 = [(REMAlarmLocationTrigger *)self proximity];
      v9 = v8 == [v5 proximity];
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

- (BOOL)isContentEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(REMAlarmLocationTrigger *)self structuredLocation];
    v7 = [v5 structuredLocation];
    if ([v6 isContentEqual:v7])
    {
      v8 = [(REMAlarmLocationTrigger *)self proximity];
      v9 = v8 == [v5 proximity];
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
  v2 = [(REMAlarmLocationTrigger *)self structuredLocation];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = REMAlarmLocationTrigger;
  v4 = [(REMAlarmLocationTrigger *)&v8 description];
  v5 = [(REMAlarmLocationTrigger *)self structuredLocation];
  v6 = [v3 stringWithFormat:@"%@ {structuredLocation = %@ proximity = %ld;}", v4, v5, -[REMAlarmLocationTrigger proximity](self, "proximity")];;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = REMAlarmLocationTrigger;
  v4 = a3;
  [(REMAlarmTrigger *)&v6 encodeWithCoder:v4];
  v5 = [(REMAlarmLocationTrigger *)self structuredLocation:v6.receiver];
  [v4 encodeObject:v5 forKey:@"structuredLocation"];

  [v4 encodeInteger:-[REMAlarmLocationTrigger proximity](self forKey:{"proximity"), @"proximity"}];
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