@interface USOASRAlternative
- (USOASRAlternative)initWithCoder:(id)coder;
- (USOASRAlternative)initWithValue:(id)value;
- (USOASRAlternative)initWithValue:(id)value probability:(float)probability;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOASRAlternative

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  value = [(USOASRAlternative *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  probability = [(USOASRAlternative *)self probability];
  [coderCopy encodeObject:probability forKey:@"probability"];
}

- (USOASRAlternative)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = USOASRAlternative;
  v5 = [(USOASRAlternative *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"probability"];
    probability = v5->_probability;
    v5->_probability = v8;
  }

  return v5;
}

- (USOASRAlternative)initWithValue:(id)value probability:(float)probability
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = USOASRAlternative;
  v8 = [(USOASRAlternative *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
    *&v10 = probability;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    probability = v9->_probability;
    v9->_probability = v11;
  }

  return v9;
}

- (USOASRAlternative)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = USOASRAlternative;
  v6 = [(USOASRAlternative *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

@end