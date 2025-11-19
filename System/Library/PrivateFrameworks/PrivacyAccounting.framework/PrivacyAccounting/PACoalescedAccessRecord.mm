@interface PACoalescedAccessRecord
- (BOOL)isEqualToAccessRecord:(id)a3;
- (PACoalescedAccessRecord)initWithAccess:(id)a3 startTime:(double)a4 endTime:(double)a5 count:(int64_t)a6;
- (PACoalescedAccessRecord)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PACoalescedAccessRecord

- (PACoalescedAccessRecord)initWithAccess:(id)a3 startTime:(double)a4 endTime:(double)a5 count:(int64_t)a6
{
  v8.receiver = self;
  v8.super_class = PACoalescedAccessRecord;
  result = [(PACompleteAccessRecord *)&v8 initWithAccess:a3 startTime:a4 endTime:a5];
  if (result)
  {
    result->_count = a6;
  }

  return result;
}

- (PACoalescedAccessRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PACoalescedAccessRecord;
  v5 = [(PACompleteAccessRecord *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_count = [v4 decodeIntegerForKey:@"count"];
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

- (BOOL)isEqualToAccessRecord:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PACoalescedAccessRecord;
  if ([(PACompleteAccessRecord *)&v8 isEqualToAccessRecord:v4])
  {
    count = self->_count;
    v6 = count == [v4 count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PACoalescedAccessRecord;
  v4 = a3;
  [(PACompleteAccessRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_count forKey:{@"count", v5.receiver, v5.super_class}];
}

@end