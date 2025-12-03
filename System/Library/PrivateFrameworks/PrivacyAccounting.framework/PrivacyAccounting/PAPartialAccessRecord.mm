@interface PAPartialAccessRecord
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PAPartialAccessRecord)initWithAccess:(id)access endTime:(double)time;
- (PAPartialAccessRecord)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PAPartialAccessRecord

- (PAPartialAccessRecord)initWithAccess:(id)access endTime:(double)time
{
  accessCopy = access;
  v11.receiver = self;
  v11.super_class = PAPartialAccessRecord;
  v8 = [(PAPartialAccessRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_access, access);
    v9->_endTime = time;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  access = self->_access;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTime];
  v7 = [v3 stringWithFormat:@"<%@ access:<%@> endTime:%@>", v4, access, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(PAAccess *)self->_access hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTime];
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

  else if ([(PAPartialAccessRecord *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    access = self->_access;
    access = [(PAPartialAccessRecord *)v5 access];
    if ([(PAAccess *)access isEqual:access])
    {
      endTime = self->_endTime;
      [(PAPartialAccessRecord *)v5 endTime];
      v10 = endTime == v9;
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
  [coderCopy encodeDouble:@"endTime" forKey:self->_endTime];
}

- (PAPartialAccessRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"access"];
  [coderCopy decodeDoubleForKey:@"endTime"];
  v7 = v6;

  v8 = [(PAPartialAccessRecord *)self initWithAccess:v5 endTime:v7];
  return v8;
}

@end