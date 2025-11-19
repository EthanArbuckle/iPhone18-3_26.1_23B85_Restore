@interface REMRecurrenceEnd
+ (id)recurrenceEndWithEndDate:(id)a3;
+ (id)recurrenceEndWithOccurrenceCount:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)usesEndDate;
- (REMRecurrenceEnd)initWithCoder:(id)a3;
- (REMRecurrenceEnd)initWithEndDate:(id)a3;
- (REMRecurrenceEnd)initWithOccurrenceCount:(unint64_t)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRecurrenceEnd

+ (id)recurrenceEndWithEndDate:(id)a3
{
  v3 = a3;
  v4 = [[REMRecurrenceEnd alloc] initWithEndDate:v3];

  return v4;
}

+ (id)recurrenceEndWithOccurrenceCount:(unint64_t)a3
{
  v3 = [[REMRecurrenceEnd alloc] initWithOccurrenceCount:a3];

  return v3;
}

- (REMRecurrenceEnd)initWithEndDate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"endDate is nil"];
  }

  v11.receiver = self;
  v11.super_class = REMRecurrenceEnd;
  v5 = [(REMRecurrenceEnd *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DF00];
    [v4 timeIntervalSinceReferenceDate];
    v8 = [v6 dateWithTimeIntervalSinceReferenceDate:floor(v7)];
    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (REMRecurrenceEnd)initWithOccurrenceCount:(unint64_t)a3
{
  if (!a3)
  {
    v5 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [REMRecurrenceEnd initWithOccurrenceCount:v5];
    }
  }

  v7.receiver = self;
  v7.super_class = REMRecurrenceEnd;
  result = [(REMRecurrenceEnd *)&v7 init];
  if (result)
  {
    result->_occurrenceCount = a3;
  }

  return result;
}

- (REMRecurrenceEnd)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMRecurrenceEnd;
  v5 = [(REMRecurrenceEnd *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v6;

    v5->_occurrenceCount = [v4 decodeIntegerForKey:@"occurrenceCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(REMRecurrenceEnd *)self endDate];
  [v5 encodeObject:v4 forKey:@"endDate"];

  [v5 encodeInteger:-[REMRecurrenceEnd occurrenceCount](self forKey:{"occurrenceCount"), @"occurrenceCount"}];
}

- (BOOL)usesEndDate
{
  v2 = [(REMRecurrenceEnd *)self endDate];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v3 = [(REMRecurrenceEnd *)self endDate];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (v3)
  {
    v6 = [(REMRecurrenceEnd *)self endDate];
    v7 = [v4 stringWithFormat:@"%@ %p { UNTIL=%@ } ", v5, self, v6];
  }

  else
  {
    v7 = [v4 stringWithFormat:@"%@ %p { COUNT=%lu }", v5, self, -[REMRecurrenceEnd occurrenceCount](self, "occurrenceCount")];
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(REMRecurrenceEnd *)self occurrenceCount];
  v4 = [(REMRecurrenceEnd *)self endDate];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (v6 = [(REMRecurrenceEnd *)self occurrenceCount], v6 == [(REMRecurrenceEnd *)v4 occurrenceCount]))
    {
      v7 = [(REMRecurrenceEnd *)self endDate];
      v8 = [(REMRecurrenceEnd *)v4 endDate];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else if (v4)
      {
        v9 = [(REMRecurrenceEnd *)self endDate];
        v10 = [(REMRecurrenceEnd *)v4 endDate];
        v11 = [v9 isEqualToDate:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)initWithOccurrenceCount:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AF00] callStackSymbols];
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_19A0DB000, a1, OS_LOG_TYPE_ERROR, "An REMRecurrenceEnd was created with an occurrence count of 0. %@", &v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

@end