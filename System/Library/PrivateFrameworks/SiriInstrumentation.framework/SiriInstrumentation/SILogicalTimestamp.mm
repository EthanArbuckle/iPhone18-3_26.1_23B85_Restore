@interface SILogicalTimestamp
- (BOOL)isEqual:(id)equal;
- (SILogicalTimestamp)initWithClockIdentifier:(id)identifier nanosecondsSinceBoot:(unint64_t)boot;
- (SILogicalTimestamp)initWithInternalType:(id)type;
@end

@implementation SILogicalTimestamp

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self->_underlying == equalCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 0;
      goto LABEL_9;
    }

    v5 = self->_underlying == *(equalCopy + 1);
  }

  v6 = v5;
LABEL_9:

  return v6;
}

- (SILogicalTimestamp)initWithInternalType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = SILogicalTimestamp;
  v6 = [(SILogicalTimestamp *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlying, type);
  }

  return v7;
}

- (SILogicalTimestamp)initWithClockIdentifier:(id)identifier nanosecondsSinceBoot:(unint64_t)boot
{
  identifierCopy = identifier;
  v7 = [[SILogicalTimestampInternal alloc] initWithClockIdentifier:identifierCopy nanosecondsSinceBoot:boot];

  v8 = [(SILogicalTimestamp *)self initWithInternalType:v7];
  return v8;
}

@end