@interface MBDriveOperation
+ (id)stringForType:(int)type;
- (MBDriveOperation)initWithType:(int)type count:(int64_t)count size:(int64_t)size duration:(double)duration;
- (id)description;
@end

@implementation MBDriveOperation

+ (id)stringForType:(int)type
{
  if (type > 6)
  {
    return 0;
  }

  else
  {
    return off_1000FE100[type];
  }
}

- (MBDriveOperation)initWithType:(int)type count:(int64_t)count size:(int64_t)size duration:(double)duration
{
  countCopy = count;
  if (count < -1)
  {
    v13 = 112;
  }

  else
  {
    if (count < 0x80000000)
    {
      goto LABEL_3;
    }

    v13 = 113;
  }

  sub_10009EC18(a2, self, v13);
LABEL_3:
  if (size <= -2)
  {
    sub_10009EC98(a2, self);
  }

  if (duration < 0.0)
  {
    sub_10009ED0C(a2, self);
  }

  v14.receiver = self;
  v14.super_class = MBDriveOperation;
  result = [(MBDriveOperation *)&v14 init];
  if (result)
  {
    result->_type = type;
    result->_count = countCopy;
    result->_size = size;
    result->_duration = duration;
  }

  return result;
}

- (id)description
{
  v3 = [MBDriveOperation stringForType:self->_type];
  v4 = [NSString stringWithFormat:@"[MBDriveOperation type=%@ count=%ld size=%lld duration=%0.3f]", v3, self->_count, self->_size, *&self->_duration];

  return v4;
}

@end