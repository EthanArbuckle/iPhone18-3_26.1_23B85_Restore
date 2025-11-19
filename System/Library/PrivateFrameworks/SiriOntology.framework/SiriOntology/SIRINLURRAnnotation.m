@interface SIRINLURRAnnotation
- (SIRINLURRAnnotation)initWithCoder:(id)a3;
- (SIRINLURRAnnotation)initWithKey:(id)a3 value:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLURRAnnotation

- (void)encodeWithCoder:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 encodeObject:key forKey:@"key"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

- (SIRINLURRAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLURRAnnotation;
  v5 = [(SIRINLURRAnnotation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

- (SIRINLURRAnnotation)initWithKey:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SIRINLURRAnnotation;
  v9 = [(SIRINLURRAnnotation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

@end