@interface PSGraphFrequencyInputDriven
+ (id)inputDriven;
- (PSGraphFrequencyInputDriven)init;
- (void)subsampleInput:(id)a3 factor:(unint64_t)a4;
- (void)subsampleInputKey:(id)a3 factor:(unint64_t)a4;
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
    v4 = [MEMORY[0x277CBEB38] dictionary];
    subsampledInputs = v3->_subsampledInputs;
    v3->_subsampledInputs = v4;
  }

  return v3;
}

+ (id)inputDriven
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)subsampleInputKey:(id)a3 factor:(unint64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)self->_subsampledInputs setObject:v8 forKeyedSubscript:v7];
}

- (void)subsampleInput:(id)a3 factor:(unint64_t)a4
{
  v6 = [a3 resourceKey];
  [(PSGraphFrequencyInputDriven *)self subsampleInputKey:v6 factor:a4];
}

@end