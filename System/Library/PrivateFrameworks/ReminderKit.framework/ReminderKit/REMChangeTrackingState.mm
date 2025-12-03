@interface REMChangeTrackingState
- (BOOL)isEqual:(id)equal;
- (REMChangeTrackingState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMChangeTrackingState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lastConsumedChangeToken = [(REMChangeTrackingState *)self lastConsumedChangeToken];
  [coderCopy encodeObject:lastConsumedChangeToken forKey:@"lastConsumedChangeToken"];

  lastConsumedDate = [(REMChangeTrackingState *)self lastConsumedDate];
  [coderCopy encodeObject:lastConsumedDate forKey:@"lastConsumedDate"];
}

- (REMChangeTrackingState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = REMChangeTrackingState;
  v5 = [(REMChangeTrackingState *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastConsumedChangeToken"];
    if (!v6)
    {
      v11 = 0;
      goto LABEL_6;
    }

    lastConsumedChangeToken = v5->_lastConsumedChangeToken;
    v5->_lastConsumedChangeToken = v6;
    v8 = v6;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastConsumedDate"];
    lastConsumedDate = v5->_lastConsumedDate;
    v5->_lastConsumedDate = v9;
  }

  v11 = v5;
LABEL_6:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lastConsumedChangeToken = [(REMChangeTrackingState *)self lastConsumedChangeToken];
      lastConsumedChangeToken2 = [(REMChangeTrackingState *)v6 lastConsumedChangeToken];
      v9 = lastConsumedChangeToken2;
      if (lastConsumedChangeToken == lastConsumedChangeToken2)
      {
      }

      else
      {
        lastConsumedChangeToken3 = [(REMChangeTrackingState *)self lastConsumedChangeToken];
        lastConsumedChangeToken4 = [(REMChangeTrackingState *)v6 lastConsumedChangeToken];
        v12 = [lastConsumedChangeToken3 isEqual:lastConsumedChangeToken4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      lastConsumedDate = [(REMChangeTrackingState *)self lastConsumedDate];
      lastConsumedDate2 = [(REMChangeTrackingState *)v6 lastConsumedDate];
      if (lastConsumedDate == lastConsumedDate2)
      {
        v13 = 1;
      }

      else
      {
        lastConsumedDate3 = [(REMChangeTrackingState *)self lastConsumedDate];
        lastConsumedDate4 = [(REMChangeTrackingState *)v6 lastConsumedDate];
        v13 = [lastConsumedDate3 isEqual:lastConsumedDate4];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

@end