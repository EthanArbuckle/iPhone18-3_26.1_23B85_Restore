@interface PACoalescedAccessRecord
- (BOOL)isEqualToAccessRecord:(id)record;
- (PACoalescedAccessRecord)initWithAccess:(id)access startTime:(double)time endTime:(double)endTime count:(int64_t)count;
- (PACoalescedAccessRecord)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PACoalescedAccessRecord

- (PACoalescedAccessRecord)initWithAccess:(id)access startTime:(double)time endTime:(double)endTime count:(int64_t)count
{
  v8.receiver = self;
  v8.super_class = PACoalescedAccessRecord;
  result = [(PACompleteAccessRecord *)&v8 initWithAccess:access startTime:time endTime:endTime];
  if (result)
  {
    result->_count = count;
  }

  return result;
}

- (PACoalescedAccessRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PACoalescedAccessRecord;
  v5 = [(PACompleteAccessRecord *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_count = [coderCopy decodeIntegerForKey:@"count"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  access = self->super._access;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->super._startTime];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->super._endTime];
  v8 = [v3 stringWithFormat:@"<%@ access:%@ startTime:%@ endTime:%@ count:%lu>", v4, access, v6, v7, self->_count];

  return v8;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = PACoalescedAccessRecord;
  v3 = [(PACompleteAccessRecord *)&v5 hash];
  return self->_count - v3 + 32 * v3;
}

- (BOOL)isEqualToAccessRecord:(id)record
{
  recordCopy = record;
  v8.receiver = self;
  v8.super_class = PACoalescedAccessRecord;
  if ([(PACompleteAccessRecord *)&v8 isEqualToAccessRecord:recordCopy])
  {
    count = self->_count;
    v6 = count == [recordCopy count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PACoalescedAccessRecord;
  coderCopy = coder;
  [(PACompleteAccessRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_count forKey:{@"count", v5.receiver, v5.super_class}];
}

@end