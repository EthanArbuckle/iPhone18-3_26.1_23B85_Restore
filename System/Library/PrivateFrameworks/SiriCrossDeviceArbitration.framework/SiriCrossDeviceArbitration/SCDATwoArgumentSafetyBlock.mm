@interface SCDATwoArgumentSafetyBlock
- (BOOL)invokeWithValue:(id)value andValue:(id)andValue;
- (SCDATwoArgumentSafetyBlock)initWithBlock:(id)block defaultValue1:(id)value1 defaultValue2:(id)value2;
- (void)dealloc;
@end

@implementation SCDATwoArgumentSafetyBlock

- (void)dealloc
{
  [(SCDATwoArgumentSafetyBlock *)self invokeWithValue:self->_defaultValue1 andValue:self->_defaultValue2];
  v3.receiver = self;
  v3.super_class = SCDATwoArgumentSafetyBlock;
  [(SCDATwoArgumentSafetyBlock *)&v3 dealloc];
}

- (BOOL)invokeWithValue:(id)value andValue:(id)andValue
{
  valueCopy = value;
  andValueCopy = andValue;
  v8 = atomic_exchange(&self->_hasInvoked._Value, 1u);
  if ((v8 & 1) == 0)
  {
    block = self->_block;
    if (block)
    {
      block[2](block, valueCopy, andValueCopy);
      v10 = self->_block;
      self->_block = 0;
    }
  }

  return (v8 & 1) == 0;
}

- (SCDATwoArgumentSafetyBlock)initWithBlock:(id)block defaultValue1:(id)value1 defaultValue2:(id)value2
{
  blockCopy = block;
  value1Copy = value1;
  value2Copy = value2;
  v15.receiver = self;
  v15.super_class = SCDATwoArgumentSafetyBlock;
  v11 = [(SCDATwoArgumentSafetyBlock *)&v15 init];
  if (v11)
  {
    v12 = MEMORY[0x1E1270630](blockCopy);
    block = v11->_block;
    v11->_block = v12;

    objc_storeStrong(&v11->_defaultValue1, value1);
    objc_storeStrong(&v11->_defaultValue2, value2);
  }

  return v11;
}

@end