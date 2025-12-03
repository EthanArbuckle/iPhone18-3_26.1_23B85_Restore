@interface PSGraphFrequencyInputDriven
+ (id)inputDriven;
- (PSGraphFrequencyInputDriven)init;
- (void)subsampleInput:(id)input factor:(unint64_t)factor;
- (void)subsampleInputKey:(id)key factor:(unint64_t)factor;
@end

@implementation PSGraphFrequencyInputDriven

- (PSGraphFrequencyInputDriven)init
{
  v7.receiver = self;
  v7.super_class = PSGraphFrequencyInputDriven;
  v2 = [(PSGraphFrequencyInputDriven *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_type = 1;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    subsampledInputs = v3->_subsampledInputs;
    v3->_subsampledInputs = dictionary;
  }

  return v3;
}

+ (id)inputDriven
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)subsampleInputKey:(id)key factor:(unint64_t)factor
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithUnsignedInteger:factor];
  [(NSMutableDictionary *)self->_subsampledInputs setObject:v8 forKeyedSubscript:keyCopy];
}

- (void)subsampleInput:(id)input factor:(unint64_t)factor
{
  resourceKey = [input resourceKey];
  [(PSGraphFrequencyInputDriven *)self subsampleInputKey:resourceKey factor:factor];
}

@end