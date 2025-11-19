@interface PSTimeWrapper
- (PSTimeWrapper)initWithTime:(id *)a3;
- (void)setTime:(id *)a3;
@end

@implementation PSTimeWrapper

- (PSTimeWrapper)initWithTime:(id *)a3
{
  v6.receiver = self;
  v6.super_class = PSTimeWrapper;
  result = [(PSTimeWrapper *)&v6 init];
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

@end