@interface SILogicalTimestamp
- (BOOL)isEqual:(id)a3;
- (SILogicalTimestamp)initWithClockIdentifier:(id)a3 nanosecondsSinceBoot:(unint64_t)a4;
- (SILogicalTimestamp)initWithInternalType:(id)a3;
@end

@implementation SILogicalTimestamp

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self->_underlying == v4;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 0;
      goto LABEL_9;
    }

    v5 = self->_underlying == *(v4 + 1);
  }

  v6 = v5;
LABEL_9:

  return v6;
}

- (SILogicalTimestamp)initWithInternalType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SILogicalTimestamp;
  v6 = [(SILogicalTimestamp *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlying, a3);
  }

  return v7;
}

- (SILogicalTimestamp)initWithClockIdentifier:(id)a3 nanosecondsSinceBoot:(unint64_t)a4
{
  v6 = a3;
  v7 = [[SILogicalTimestampInternal alloc] initWithClockIdentifier:v6 nanosecondsSinceBoot:a4];

  v8 = [(SILogicalTimestamp *)self initWithInternalType:v7];
  return v8;
}

@end