@interface TRIAllocationStatusCursor
- (BOOL)isEqual:(id)equal;
- (NSDate)date;
- (TRIAllocationStatusCursor)initWithCoder:(id)coder;
- (TRIAllocationStatusCursor)initWithSecondsFromEpoch:(double)epoch;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIAllocationStatusCursor

- (TRIAllocationStatusCursor)initWithSecondsFromEpoch:(double)epoch
{
  v5.receiver = self;
  v5.super_class = TRIAllocationStatusCursor;
  result = [(TRIAllocationStatusCursor *)&v5 init];
  if (result)
  {
    result->_secondsFromEpoch = epoch;
  }

  return result;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:self->_secondsFromEpoch];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_secondsFromEpoch];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:equalCopy[1]];
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

- (TRIAllocationStatusCursor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v5)
  {
    v11 = 0;
    v6 = [(TRIPBMessage *)TRIPersistedAllocationStatusCursor parseFromData:v5 error:&v11];
    v7 = v11;
    if (v6)
    {
      if ([v6 hasLowerBoundExclusive])
      {
        lowerBoundExclusive = [v6 lowerBoundExclusive];
        [lowerBoundExclusive timeIntervalSince1970];
        self = [(TRIAllocationStatusCursor *)self initWithSecondsFromEpoch:?];

        selfCopy = self;
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      [coderCopy failWithError:v7];
    }

    selfCopy = 0;
    goto LABEL_8;
  }

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D73B88]) initWithTimeIntervalSince1970:self->_secondsFromEpoch];
  [v5 setLowerBoundExclusive:v6];

  data = [v5 data];
  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  [coderCopy encodeObject:data forKey:@"data"];
}

@end