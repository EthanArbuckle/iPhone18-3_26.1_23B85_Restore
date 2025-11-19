@interface USOASRAlternative
- (USOASRAlternative)initWithCoder:(id)a3;
- (USOASRAlternative)initWithValue:(id)a3;
- (USOASRAlternative)initWithValue:(id)a3 probability:(float)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOASRAlternative

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(USOASRAlternative *)self value];
  [v4 encodeObject:v5 forKey:@"value"];

  v6 = [(USOASRAlternative *)self probability];
  [v4 encodeObject:v6 forKey:@"probability"];
}

- (USOASRAlternative)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = USOASRAlternative;
  v5 = [(USOASRAlternative *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"probability"];
    probability = v5->_probability;
    v5->_probability = v8;
  }

  return v5;
}

- (USOASRAlternative)initWithValue:(id)a3 probability:(float)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = USOASRAlternative;
  v8 = [(USOASRAlternative *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, a3);
    *&v10 = a4;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    probability = v9->_probability;
    v9->_probability = v11;
  }

  return v9;
}

- (USOASRAlternative)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = USOASRAlternative;
  v6 = [(USOASRAlternative *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

@end