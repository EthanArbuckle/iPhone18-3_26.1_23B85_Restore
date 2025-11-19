@interface TPSContextualBiomeEvent
+ (id)observationDateFromEvent:(id)a3;
- (TPSContextualBiomeEvent)initWithCoder:(id)a3;
- (TPSContextualBiomeEvent)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)filterParametersForBiomeQuery;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSContextualBiomeEvent

+ (id)observationDateFromEvent:(id)a3
{
  v3 = MEMORY[0x1E695DF00];
  [a3 timestamp];

  return [v3 dateWithTimeIntervalSinceReferenceDate:?];
}

- (TPSContextualBiomeEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPSContextualBiomeEvent;
  v5 = [(TPSContextualEvent *)&v11 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 TPSSafeStringForKey:@"stream"];
    stream = v5->_stream;
    v5->_stream = v6;

    v8 = [v4 TPSSafeDictionaryForKey:@"filter"];
    filterInfo = v5->_filterInfo;
    v5->_filterInfo = v8;
  }

  return v5;
}

- (id)filterParametersForBiomeQuery
{
  if (self->_filterInfo)
  {
    v3 = objc_opt_new();
    v4 = [(TPSContextualBiomeEvent *)self filterInfo];
    v5 = [v4 TPSSafeObjectForKey:@"isStarting"];

    if (v5)
    {
      v6 = MEMORY[0x1E696AD98];
      v7 = [(TPSContextualBiomeEvent *)self filterInfo];
      v8 = [v6 numberWithBool:{objc_msgSend(v7, "TPSSafeBoolForKey:", @"isStarting"}];
      [v3 setObject:v8 forKeyedSubscript:@"starting"];
    }

    v9 = [(TPSContextualBiomeEvent *)self filterInfo];
    v10 = [v9 TPSSafeObjectForKey:@"bundleID"];

    if (v10)
    {
      v11 = [(TPSContextualBiomeEvent *)self filterInfo];
      v12 = [v11 TPSSafeStringForKey:@"bundleID"];
      [v3 setObject:v12 forKeyedSubscript:@"bundleID"];
    }

    v13 = [v3 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TPSContextualBiomeEvent)initWithCoder:(id)a3
{
  v16[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSContextualBiomeEvent;
  v5 = [(TPSContextualEvent *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stream"];
    stream = v5->_stream;
    v5->_stream = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];
    v10 = [v8 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"filter"];
    filterInfo = v5->_filterInfo;
    v5->_filterInfo = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSContextualBiomeEvent;
  v4 = a3;
  [(TPSContextualEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_stream forKey:{@"stream", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_filterInfo forKey:@"filter"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TPSContextualBiomeEvent;
  v4 = [(TPSContextualEvent *)&v6 copyWithZone:a3];
  [v4 setStream:self->_stream];
  [v4 setFilterInfo:self->_filterInfo];
  return v4;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v10.receiver = self;
  v10.super_class = TPSContextualBiomeEvent;
  v4 = [(TPSContextualEvent *)&v10 debugDescription];
  v5 = [v3 initWithString:v4];

  stream = self->_stream;
  if (stream)
  {
    [v5 appendFormat:@"%@ = %@\n", @"stream", stream];
  }

  filterInfo = self->_filterInfo;
  if (filterInfo)
  {
    v8 = [(NSDictionary *)filterInfo debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"filter", v8];
  }

  return v5;
}

@end