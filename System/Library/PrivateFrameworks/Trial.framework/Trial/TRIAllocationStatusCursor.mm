@interface TRIAllocationStatusCursor
- (BOOL)isEqual:(id)a3;
- (NSDate)date;
- (TRIAllocationStatusCursor)initWithCoder:(id)a3;
- (TRIAllocationStatusCursor)initWithSecondsFromEpoch:(double)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIAllocationStatusCursor

- (TRIAllocationStatusCursor)initWithSecondsFromEpoch:(double)a3
{
  v5.receiver = self;
  v5.super_class = TRIAllocationStatusCursor;
  result = [(TRIAllocationStatusCursor *)&v5 init];
  if (result)
  {
    result->_secondsFromEpoch = a3;
  }

  return result;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:self->_secondsFromEpoch];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_secondsFromEpoch];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4[1]];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_secondsFromEpoch];
  v3 = [v2 hash];

  return v3;
}

- (TRIAllocationStatusCursor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v5)
  {
    v11 = 0;
    v6 = [(TRIPBMessage *)TRIPersistedAllocationStatusCursor parseFromData:v5 error:&v11];
    v7 = v11;
    if (v6)
    {
      if ([v6 hasLowerBoundExclusive])
      {
        v8 = [v6 lowerBoundExclusive];
        [v8 timeIntervalSince1970];
        self = [(TRIAllocationStatusCursor *)self initWithSecondsFromEpoch:?];

        v9 = self;
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      [v4 failWithError:v7];
    }

    v9 = 0;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D73B88]) initWithTimeIntervalSince1970:self->_secondsFromEpoch];
  [v5 setLowerBoundExclusive:v6];

  v7 = [v5 data];
  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  [v9 encodeObject:v7 forKey:@"data"];
}

@end