@interface REMChangeTrackingState
- (BOOL)isEqual:(id)a3;
- (REMChangeTrackingState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMChangeTrackingState

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMChangeTrackingState *)self lastConsumedChangeToken];
  [v4 encodeObject:v5 forKey:@"lastConsumedChangeToken"];

  v6 = [(REMChangeTrackingState *)self lastConsumedDate];
  [v4 encodeObject:v6 forKey:@"lastConsumedDate"];
}

- (REMChangeTrackingState)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = REMChangeTrackingState;
  v5 = [(REMChangeTrackingState *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastConsumedChangeToken"];
    if (!v6)
    {
      v11 = 0;
      goto LABEL_6;
    }

    lastConsumedChangeToken = v5->_lastConsumedChangeToken;
    v5->_lastConsumedChangeToken = v6;
    v8 = v6;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastConsumedDate"];
    lastConsumedDate = v5->_lastConsumedDate;
    v5->_lastConsumedDate = v9;
  }

  v11 = v5;
LABEL_6:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMChangeTrackingState *)self lastConsumedChangeToken];
      v8 = [(REMChangeTrackingState *)v6 lastConsumedChangeToken];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMChangeTrackingState *)self lastConsumedChangeToken];
        v11 = [(REMChangeTrackingState *)v6 lastConsumedChangeToken];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(REMChangeTrackingState *)self lastConsumedDate];
      v15 = [(REMChangeTrackingState *)v6 lastConsumedDate];
      if (v14 == v15)
      {
        v13 = 1;
      }

      else
      {
        v16 = [(REMChangeTrackingState *)self lastConsumedDate];
        v17 = [(REMChangeTrackingState *)v6 lastConsumedDate];
        v13 = [v16 isEqual:v17];
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