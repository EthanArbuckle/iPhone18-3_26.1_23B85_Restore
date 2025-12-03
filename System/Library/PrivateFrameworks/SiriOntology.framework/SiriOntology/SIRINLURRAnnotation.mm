@interface SIRINLURRAnnotation
- (SIRINLURRAnnotation)initWithCoder:(id)coder;
- (SIRINLURRAnnotation)initWithKey:(id)key value:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLURRAnnotation

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"key"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (SIRINLURRAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SIRINLURRAnnotation;
  v5 = [(SIRINLURRAnnotation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

- (SIRINLURRAnnotation)initWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = SIRINLURRAnnotation;
  v9 = [(SIRINLURRAnnotation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

@end