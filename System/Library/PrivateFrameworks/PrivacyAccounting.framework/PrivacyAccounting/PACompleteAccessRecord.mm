@interface PACompleteAccessRecord
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccessRecord:(id)a3;
- (NSString)description;
- (PACompleteAccessRecord)initWithAccess:(id)a3 startTime:(double)a4 endTime:(double)a5;
- (PACompleteAccessRecord)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PACompleteAccessRecord

- (PACompleteAccessRecord)initWithAccess:(id)a3 startTime:(double)a4 endTime:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PACompleteAccessRecord;
  v10 = [(PACompleteAccessRecord *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_access, a3);
    v11->_startTime = a4;
    v11->_endTime = a5;
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  access = self->_access;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTime];
  v8 = [v3 stringWithFormat:@"<%@ access:<%@> startTime:%@ endTime:%@>", v4, access, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PAAccess *)self->_access hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
  v5 = [v4 hash] - v3 + 32 * v3;

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTime];
  v7 = [v6 hash] - v5 + 32 * v5;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else if ([(PACompleteAccessRecord *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(PACompleteAccessRecord *)self isEqualToAccessRecord:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToAccessRecord:(id)a3
{
  v4 = a3;
  access = self->_access;
  v6 = [v4 access];
  if (-[PAAccess isEqual:](access, "isEqual:", v6) && (startTime = self->_startTime, [v4 startTime], startTime == v8))
  {
    endTime = self->_endTime;
    [v4 endTime];
    v11 = endTime == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  access = self->_access;
  v5 = a3;
  [v5 encodeObject:access forKey:@"access"];
  [v5 encodeDouble:@"startTime" forKey:self->_startTime];
  [v5 encodeDouble:@"endTime" forKey:self->_endTime];
}

- (PACompleteAccessRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"access"];
  [v4 decodeDoubleForKey:@"startTime"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"endTime"];
  v9 = v8;

  v10 = [(PACompleteAccessRecord *)self initWithAccess:v5 startTime:v7 endTime:v9];
  return v10;
}

@end