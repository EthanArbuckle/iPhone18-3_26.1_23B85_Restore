@interface PAPartialAccessRecord
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PAPartialAccessRecord)initWithAccess:(id)a3 endTime:(double)a4;
- (PAPartialAccessRecord)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PAPartialAccessRecord

- (PAPartialAccessRecord)initWithAccess:(id)a3 endTime:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PAPartialAccessRecord;
  v8 = [(PAPartialAccessRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_access, a3);
    v9->_endTime = a4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if ([(PAPartialAccessRecord *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    access = self->_access;
    v7 = [(PAPartialAccessRecord *)v5 access];
    if ([(PAAccess *)access isEqual:v7])
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

- (void)encodeWithCoder:(id)a3
{
  access = self->_access;
  v5 = a3;
  [v5 encodeObject:access forKey:@"access"];
  [v5 encodeDouble:@"endTime" forKey:self->_endTime];
}

- (PAPartialAccessRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"access"];
  [v4 decodeDoubleForKey:@"endTime"];
  v7 = v6;

  v8 = [(PAPartialAccessRecord *)self initWithAccess:v5 endTime:v7];
  return v8;
}

@end