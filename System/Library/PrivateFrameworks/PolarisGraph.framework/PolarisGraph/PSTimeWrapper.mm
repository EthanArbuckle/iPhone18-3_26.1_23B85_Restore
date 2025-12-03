@interface PSTimeWrapper
- (PSTimeWrapper)initWithTime:(id *)time;
- (void)setTime:(id *)time;
@end

@implementation PSTimeWrapper

- (PSTimeWrapper)initWithTime:(id *)time
{
  v6.receiver = self;
  v6.super_class = PSTimeWrapper;
  result = [(PSTimeWrapper *)&v6 init];
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

@end