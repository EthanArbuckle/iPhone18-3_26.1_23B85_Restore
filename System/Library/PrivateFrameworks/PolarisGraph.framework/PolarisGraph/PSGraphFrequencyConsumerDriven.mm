@interface PSGraphFrequencyConsumerDriven
+ (id)consumerDrivenForOutputKey:(id)key defaultFrequency:(unint64_t)frequency;
+ (id)consumerDrivenForOutputKey:(id)key defaultInterval:(id *)interval;
+ (id)consumerDrivenWithDefaultFrequency:(unint64_t)frequency;
+ (id)consumerDrivenWithDefaultInterval:(id *)interval;
- (PSGraphFrequencyConsumerDriven)initWithDefaultInterval:(id *)interval;
- (void)setDefaultInterval:(id *)interval;
@end

@implementation PSGraphFrequencyConsumerDriven

- (PSGraphFrequencyConsumerDriven)initWithDefaultInterval:(id *)interval
{
  v6.receiver = self;
  v6.super_class = PSGraphFrequencyConsumerDriven;
  result = [(PSGraphFrequencyConsumerDriven *)&v6 init];
  if (result)
  {
    result->_type = 2;
    v5 = *&interval->var0;
    result->_defaultInterval.epoch = interval->var3;
    *&result->_defaultInterval.value = v5;
  }

  return result;
}

+ (id)consumerDrivenForOutputKey:(id)key defaultInterval:(id *)interval
{
  v5 = [self alloc];
  v8 = *interval;
  v6 = [v5 initWithDefaultInterval:&v8];

  return v6;
}

+ (id)consumerDrivenForOutputKey:(id)key defaultFrequency:(unint64_t)frequency
{
  v5 = [self alloc];
  if (frequency)
  {
    CMTimeMake(&v8, 1, frequency);
  }

  else
  {
    v8 = **&MEMORY[0x277CC0898];
  }

  v6 = [v5 initWithDefaultInterval:&v8];

  return v6;
}

+ (id)consumerDrivenWithDefaultInterval:(id *)interval
{
  v4 = [self alloc];
  v7 = *interval;
  v5 = [v4 initWithDefaultInterval:&v7];

  return v5;
}

+ (id)consumerDrivenWithDefaultFrequency:(unint64_t)frequency
{
  v4 = [self alloc];
  if (frequency)
  {
    CMTimeMake(&v7, 1, frequency);
  }

  else
  {
    v7 = **&MEMORY[0x277CC0898];
  }

  v5 = [v4 initWithDefaultInterval:&v7];

  return v5;
}

- (void)setDefaultInterval:(id *)interval
{
  v3 = *&interval->var0;
  self->_defaultInterval.epoch = interval->var3;
  *&self->_defaultInterval.value = v3;
}

@end