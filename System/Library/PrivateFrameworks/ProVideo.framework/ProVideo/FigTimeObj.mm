@interface FigTimeObj
+ (id)timeWithTime:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (FigTimeObj)initWithCMTime:(id *)a3;
- (FigTimeObj)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compareWithTime:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)getValue:(id *)a3;
- (void)setTime:(id *)a3;
@end

@implementation FigTimeObj

- (FigTimeObj)initWithCMTime:(id *)a3
{
  v6.receiver = self;
  v6.super_class = FigTimeObj;
  result = [(FigTimeObj *)&v6 init];
  if (result)
  {
    v5 = *&a3->var0;
    result->_time.epoch = a3->var3;
    *&result->_time.value = v5;
  }

  return result;
}

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

- (void)getValue:(id *)a3
{
  v3 = *&self->_time.value;
  a3->var3 = self->_time.epoch;
  *&a3->var0 = v3;
}

- (FigTimeObj)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigTimeObj;
  v4 = [(FigTimeObj *)&v6 init];
  if (v4)
  {
    v4->_time.epoch = [a3 decodeInt64ForKey:@"epoch"];
    v4->_time.value = [a3 decodeInt64ForKey:@"value"];
    v4->_time.timescale = [a3 decodeInt32ForKey:@"timescale"];
    v4->_time.flags = [a3 decodeInt32ForKey:@"flags"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_time.epoch forKey:@"epoch"];
  [a3 encodeInt64:self->_time.value forKey:@"value"];
  [a3 encodeInt32:self->_time.timescale forKey:@"timescale"];
  flags = self->_time.flags;

  [a3 encodeInt32:flags forKey:@"flags"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [FigTimeObj allocWithZone:a3];
  time = self->_time;
  return [(FigTimeObj *)v4 initWithCMTime:&time];
}

- (int64_t)compareWithTime:(id)a3
{
  time1 = self->_time;
  v5 = *(a3 + 8);
  v3 = CMTimeCompare(&time1, &v5);
  if (v3 < 0)
  {
    return -1;
  }

  else
  {
    return v3 != 0;
  }
}

- (unint64_t)hash
{
  timescale = self->_time.timescale;
  if (timescale)
  {
    return ((self->_time.value << 10) / timescale);
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v15 = v3;
  v16 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = *&self->_time.value;
    epoch = self->_time.epoch;
    time2 = *(a3 + 8);
    v7 = &v13;
    p_time2 = &time2;
    return CMTimeCompare(v7, p_time2) == 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !strcmp([a3 objCType], "{?=qiIq}"))
  {
    [a3 getValue:&v13];
    time2 = self->_time;
    v10 = v13;
    v11 = epoch;
    v7 = &time2;
    p_time2 = &v10;
    return CMTimeCompare(v7, p_time2) == 0;
  }

  return 0;
}

+ (id)timeWithTime:(id *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v6 = *a3;
  return [v4 initWithCMTime:&v6];
}

@end