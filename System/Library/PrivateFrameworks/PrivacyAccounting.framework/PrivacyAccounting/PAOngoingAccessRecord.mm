@interface PAOngoingAccessRecord
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PAOngoingAccessRecord)initWithAccess:(id)access startTime:(double)time;
- (PAOngoingAccessRecord)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PAOngoingAccessRecord

- (PAOngoingAccessRecord)initWithAccess:(id)access startTime:(double)time
{
  accessCopy = access;
  v11.receiver = self;
  v11.super_class = PAOngoingAccessRecord;
  v8 = [(PAOngoingAccessRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_access, access);
    v9->_startTime = time;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  access = self->_access;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
  v7 = [v3 stringWithFormat:@"<%@ access:<%@> startTime:%@>", v4, access, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(PAAccess *)self->_access hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
  v5 = [v4 hash] - v3 + 32 * v3;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if ([(PAOngoingAccessRecord *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    access = self->_access;
    access = [(PAOngoingAccessRecord *)v5 access];
    if ([(PAAccess *)access isEqual:access])
    {
      startTime = self->_startTime;
      [(PAOngoingAccessRecord *)v5 startTime];
      v10 = startTime == v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  access = self->_access;
  coderCopy = coder;
  [coderCopy encodeObject:access forKey:@"access"];
  [coderCopy encodeDouble:@"startTime" forKey:self->_startTime];
}

- (PAOngoingAccessRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"access"];
  [coderCopy decodeDoubleForKey:@"startTime"];
  v7 = v6;

  v8 = [(PAOngoingAccessRecord *)self initWithAccess:v5 startTime:v7];
  return v8;
}

@end