@interface MBDriveOperation
+ (id)stringForType:(int)a3;
- (MBDriveOperation)initWithType:(int)a3 count:(int64_t)a4 size:(int64_t)a5 duration:(double)a6;
- (id)description;
@end

@implementation MBDriveOperation

+ (id)stringForType:(int)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return off_1000FE100[a3];
  }
}

- (MBDriveOperation)initWithType:(int)a3 count:(int64_t)a4 size:(int64_t)a5 duration:(double)a6
{
  v8 = a4;
  if (a4 < -1)
  {
    v13 = 112;
  }

  else
  {
    if (a4 < 0x80000000)
    {
      goto LABEL_3;
    }

    v13 = 113;
  }

  sub_10009EC18(a2, self, v13);
LABEL_3:
  if (a5 <= -2)
  {
    sub_10009EC98(a2, self);
  }

  if (a6 < 0.0)
  {
    sub_10009ED0C(a2, self);
  }

  v14.receiver = self;
  v14.super_class = MBDriveOperation;
  result = [(MBDriveOperation *)&v14 init];
  if (result)
  {
    result->_type = a3;
    result->_count = v8;
    result->_size = a5;
    result->_duration = a6;
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