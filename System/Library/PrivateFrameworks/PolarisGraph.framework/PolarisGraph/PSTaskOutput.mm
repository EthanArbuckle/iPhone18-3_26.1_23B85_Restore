@interface PSTaskOutput
+ (id)outputWithKey:(id)key;
+ (id)outputWithKey:(id)key retainsInputs:(id)inputs;
+ (id)outputWithKey:(id)key withCapacity:(unint64_t)capacity;
- (PSTaskOutput)initWithKey:(char *)key;
- (PSTaskOutput)initWithResourceKey:(id)key retainsInputs:(id)inputs withCapacity:(unint64_t)capacity;
@end

@implementation PSTaskOutput

+ (id)outputWithKey:(id)key
{
  keyCopy = key;
  v4 = [[PSTaskOutput alloc] initWithResourceKey:keyCopy retainsInputs:0 withCapacity:1];

  return v4;
}

+ (id)outputWithKey:(id)key retainsInputs:(id)inputs
{
  inputsCopy = inputs;
  keyCopy = key;
  v7 = [[PSTaskOutput alloc] initWithResourceKey:keyCopy retainsInputs:inputsCopy withCapacity:1];

  return v7;
}

+ (id)outputWithKey:(id)key withCapacity:(unint64_t)capacity
{
  keyCopy = key;
  v6 = [[PSTaskOutput alloc] initWithResourceKey:keyCopy retainsInputs:0 withCapacity:capacity];

  return v6;
}

- (PSTaskOutput)initWithKey:(char *)key
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
  v5 = [(PSTaskOutput *)self initWithResourceKey:v4 retainsInputs:0 withCapacity:1];

  return v5;
}

- (PSTaskOutput)initWithResourceKey:(id)key retainsInputs:(id)inputs withCapacity:(unint64_t)capacity
{
  keyCopy = key;
  inputsCopy = inputs;
  v17.receiver = self;
  v17.super_class = PSTaskOutput;
  v11 = [(PSTaskOutput *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_resourceKey, key);
    uTF8String = [keyCopy UTF8String];
    v12->_capacity = capacity;
    v12->_key = uTF8String;
    if (inputsCopy)
    {
      array = [inputsCopy copy];
    }

    else
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    retainedInputs = v12->_retainedInputs;
    v12->_retainedInputs = array;
  }

  return v12;
}

@end