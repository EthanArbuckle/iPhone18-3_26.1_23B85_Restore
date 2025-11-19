@interface PSTaskOutput
+ (id)outputWithKey:(id)a3;
+ (id)outputWithKey:(id)a3 retainsInputs:(id)a4;
+ (id)outputWithKey:(id)a3 withCapacity:(unint64_t)a4;
- (PSTaskOutput)initWithKey:(char *)a3;
- (PSTaskOutput)initWithResourceKey:(id)a3 retainsInputs:(id)a4 withCapacity:(unint64_t)a5;
@end

@implementation PSTaskOutput

+ (id)outputWithKey:(id)a3
{
  v3 = a3;
  v4 = [[PSTaskOutput alloc] initWithResourceKey:v3 retainsInputs:0 withCapacity:1];

  return v4;
}

+ (id)outputWithKey:(id)a3 retainsInputs:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PSTaskOutput alloc] initWithResourceKey:v6 retainsInputs:v5 withCapacity:1];

  return v7;
}

+ (id)outputWithKey:(id)a3 withCapacity:(unint64_t)a4
{
  v5 = a3;
  v6 = [[PSTaskOutput alloc] initWithResourceKey:v5 retainsInputs:0 withCapacity:a4];

  return v6;
}

- (PSTaskOutput)initWithKey:(char *)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
  v5 = [(PSTaskOutput *)self initWithResourceKey:v4 retainsInputs:0 withCapacity:1];

  return v5;
}

- (PSTaskOutput)initWithResourceKey:(id)a3 retainsInputs:(id)a4 withCapacity:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = PSTaskOutput;
  v11 = [(PSTaskOutput *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_resourceKey, a3);
    v13 = [v9 UTF8String];
    v12->_capacity = a5;
    v12->_key = v13;
    if (v10)
    {
      v14 = [v10 copy];
    }

    else
    {
      v14 = [MEMORY[0x277CBEA60] array];
    }

    retainedInputs = v12->_retainedInputs;
    v12->_retainedInputs = v14;
  }

  return v12;
}

@end