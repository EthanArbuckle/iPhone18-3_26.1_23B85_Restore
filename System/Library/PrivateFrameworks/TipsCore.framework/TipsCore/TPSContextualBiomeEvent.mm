@interface TPSContextualBiomeEvent
+ (id)observationDateFromEvent:(id)event;
- (TPSContextualBiomeEvent)initWithCoder:(id)coder;
- (TPSContextualBiomeEvent)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)filterParametersForBiomeQuery;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSContextualBiomeEvent

+ (id)observationDateFromEvent:(id)event
{
  v3 = MEMORY[0x1E695DF00];
  [event timestamp];

  return [v3 dateWithTimeIntervalSinceReferenceDate:?];
}

- (TPSContextualBiomeEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = TPSContextualBiomeEvent;
  v5 = [(TPSContextualEvent *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeStringForKey:@"stream"];
    stream = v5->_stream;
    v5->_stream = v6;

    v8 = [dictionaryCopy TPSSafeDictionaryForKey:@"filter"];
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
    filterInfo = [(TPSContextualBiomeEvent *)self filterInfo];
    v5 = [filterInfo TPSSafeObjectForKey:@"isStarting"];

    if (v5)
    {
      v6 = MEMORY[0x1E696AD98];
      filterInfo2 = [(TPSContextualBiomeEvent *)self filterInfo];
      v8 = [v6 numberWithBool:{objc_msgSend(filterInfo2, "TPSSafeBoolForKey:", @"isStarting"}];
      [v3 setObject:v8 forKeyedSubscript:@"starting"];
    }

    filterInfo3 = [(TPSContextualBiomeEvent *)self filterInfo];
    v10 = [filterInfo3 TPSSafeObjectForKey:@"bundleID"];

    if (v10)
    {
      filterInfo4 = [(TPSContextualBiomeEvent *)self filterInfo];
      v12 = [filterInfo4 TPSSafeStringForKey:@"bundleID"];
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

- (TPSContextualBiomeEvent)initWithCoder:(id)coder
{
  v16[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TPSContextualBiomeEvent;
  v5 = [(TPSContextualEvent *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stream"];
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

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"filter"];
    filterInfo = v5->_filterInfo;
    v5->_filterInfo = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSContextualBiomeEvent;
  coderCopy = coder;
  [(TPSContextualEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stream forKey:{@"stream", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_filterInfo forKey:@"filter"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TPSContextualBiomeEvent;
  v4 = [(TPSContextualEvent *)&v6 copyWithZone:zone];
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