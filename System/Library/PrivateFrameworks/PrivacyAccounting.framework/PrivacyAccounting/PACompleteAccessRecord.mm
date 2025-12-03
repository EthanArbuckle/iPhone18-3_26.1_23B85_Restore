@interface PACompleteAccessRecord
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccessRecord:(id)record;
- (NSString)description;
- (PACompleteAccessRecord)initWithAccess:(id)access startTime:(double)time endTime:(double)endTime;
- (PACompleteAccessRecord)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PACompleteAccessRecord

- (PACompleteAccessRecord)initWithAccess:(id)access startTime:(double)time endTime:(double)endTime
{
  accessCopy = access;
  v13.receiver = self;
  v13.super_class = PACompleteAccessRecord;
  v10 = [(PACompleteAccessRecord *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_access, access);
    v11->_startTime = time;
    v11->_endTime = endTime;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else if ([(PACompleteAccessRecord *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(PACompleteAccessRecord *)self isEqualToAccessRecord:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToAccessRecord:(id)record
{
  recordCopy = record;
  access = self->_access;
  access = [recordCopy access];
  if (-[PAAccess isEqual:](access, "isEqual:", access) && (startTime = self->_startTime, [recordCopy startTime], startTime == v8))
  {
    endTime = self->_endTime;
    [recordCopy endTime];
    v11 = endTime == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  access = self->_access;
  coderCopy = coder;
  [coderCopy encodeObject:access forKey:@"access"];
  [coderCopy encodeDouble:@"startTime" forKey:self->_startTime];
  [coderCopy encodeDouble:@"endTime" forKey:self->_endTime];
}

- (PACompleteAccessRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"access"];
  [coderCopy decodeDoubleForKey:@"startTime"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"endTime"];
  v9 = v8;

  v10 = [(PACompleteAccessRecord *)self initWithAccess:v5 startTime:v7 endTime:v9];
  return v10;
}

@end