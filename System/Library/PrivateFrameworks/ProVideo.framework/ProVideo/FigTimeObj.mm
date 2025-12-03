@interface FigTimeObj
+ (id)timeWithTime:(id *)time;
- (BOOL)isEqual:(id)equal;
- (FigTimeObj)initWithCMTime:(id *)time;
- (FigTimeObj)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compareWithTime:(id)time;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)getValue:(id *)value;
- (void)setTime:(id *)time;
@end

@implementation FigTimeObj

- (FigTimeObj)initWithCMTime:(id *)time
{
  v6.receiver = self;
  v6.super_class = FigTimeObj;
  result = [(FigTimeObj *)&v6 init];
  if (result)
  {
    v5 = *&time->var0;
    result->_time.epoch = time->var3;
    *&result->_time.value = v5;
  }

  return result;
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

- (void)getValue:(id *)value
{
  v3 = *&self->_time.value;
  value->var3 = self->_time.epoch;
  *&value->var0 = v3;
}

- (FigTimeObj)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FigTimeObj;
  v4 = [(FigTimeObj *)&v6 init];
  if (v4)
  {
    v4->_time.epoch = [coder decodeInt64ForKey:@"epoch"];
    v4->_time.value = [coder decodeInt64ForKey:@"value"];
    v4->_time.timescale = [coder decodeInt32ForKey:@"timescale"];
    v4->_time.flags = [coder decodeInt32ForKey:@"flags"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt64:self->_time.epoch forKey:@"epoch"];
  [coder encodeInt64:self->_time.value forKey:@"value"];
  [coder encodeInt32:self->_time.timescale forKey:@"timescale"];
  flags = self->_time.flags;

  [coder encodeInt32:flags forKey:@"flags"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FigTimeObj allocWithZone:zone];
  time = self->_time;
  return [(FigTimeObj *)v4 initWithCMTime:&time];
}

- (int64_t)compareWithTime:(id)time
{
  time1 = self->_time;
  v5 = *(time + 8);
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
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
    time2 = *(equal + 8);
    v7 = &v13;
    p_time2 = &time2;
    return CMTimeCompare(v7, p_time2) == 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !strcmp([equal objCType], "{?=qiIq}"))
  {
    [equal getValue:&v13];
    time2 = self->_time;
    v10 = v13;
    v11 = epoch;
    v7 = &time2;
    p_time2 = &v10;
    return CMTimeCompare(v7, p_time2) == 0;
  }

  return 0;
}

+ (id)timeWithTime:(id *)time
{
  v4 = objc_alloc(objc_opt_class());
  v6 = *time;
  return [v4 initWithCMTime:&v6];
}

@end