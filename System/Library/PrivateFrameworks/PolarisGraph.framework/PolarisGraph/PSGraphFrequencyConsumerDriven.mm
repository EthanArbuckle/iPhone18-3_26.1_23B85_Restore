@interface PSGraphFrequencyConsumerDriven
+ (id)consumerDrivenForOutputKey:(id)a3 defaultFrequency:(unint64_t)a4;
+ (id)consumerDrivenForOutputKey:(id)a3 defaultInterval:(id *)a4;
+ (id)consumerDrivenWithDefaultFrequency:(unint64_t)a3;
+ (id)consumerDrivenWithDefaultInterval:(id *)a3;
- (PSGraphFrequencyConsumerDriven)initWithDefaultInterval:(id *)a3;
- (void)setDefaultInterval:(id *)a3;
@end

@implementation PSGraphFrequencyConsumerDriven

- (PSGraphFrequencyConsumerDriven)initWithDefaultInterval:(id *)a3
{
  v6.receiver = self;
  v6.super_class = PSGraphFrequencyConsumerDriven;
  result = [(PSGraphFrequencyConsumerDriven *)&v6 init];
  if (result)
  {
    result->_type = 2;
    v5 = *&a3->var0;
    result->_defaultInterval.epoch = a3->var3;
    *&result->_defaultInterval.value = v5;
  }

  return result;
}

+ (id)consumerDrivenForOutputKey:(id)a3 defaultInterval:(id *)a4
{
  v5 = [a1 alloc];
  v8 = *a4;
  v6 = [v5 initWithDefaultInterval:&v8];

  return v6;
}

+ (id)consumerDrivenForOutputKey:(id)a3 defaultFrequency:(unint64_t)a4
{
  v5 = [a1 alloc];
  if (a4)
  {
    CMTimeMake(&v8, 1, a4);
  }

  else
  {
    v8 = **&MEMORY[0x277CC0898];
  }

  v6 = [v5 initWithDefaultInterval:&v8];

  return v6;
}

+ (id)consumerDrivenWithDefaultInterval:(id *)a3
{
  v4 = [a1 alloc];
  v7 = *a3;
  v5 = [v4 initWithDefaultInterval:&v7];

  return v5;
}

+ (id)consumerDrivenWithDefaultFrequency:(unint64_t)a3
{
  v4 = [a1 alloc];
  if (a3)
  {
    CMTimeMake(&v7, 1, a3);
  }

  else
  {
    v7 = **&MEMORY[0x277CC0898];
  }

  v5 = [v4 initWithDefaultInterval:&v7];

  return v5;
}

- (void)setDefaultInterval:(id *)a3
{
  v3 = *&a3->var0;
  self->_defaultInterval.epoch = a3->var3;
  *&self->_defaultInterval.value = v3;
}

@end