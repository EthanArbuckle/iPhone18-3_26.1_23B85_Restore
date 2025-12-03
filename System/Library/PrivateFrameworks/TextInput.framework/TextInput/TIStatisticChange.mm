@interface TIStatisticChange
+ (id)statisticChangeWithName:(id)name andValue:(int)value andInputMode:(id)mode;
- (TIStatisticChange)initWithCoder:(id)coder;
- (TIStatisticChange)initWithName:(id)name andValue:(int)value andInputMode:(id)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIStatisticChange

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = self->_name;
  v8 = coderCopy;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
    coderCopy = v8;
  }

  value = self->_value;
  if (value)
  {
    [v8 encodeInt:value forKey:@"value"];
    coderCopy = v8;
  }

  inputMode = self->_inputMode;
  if (inputMode)
  {
    [v8 encodeObject:inputMode forKey:@"inputMode"];
    coderCopy = v8;
  }
}

- (TIStatisticChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TIStatisticChange;
  v5 = [(TIStatisticChange *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v5->_value = [coderCopy decodeIntForKey:@"value"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMode"];
    v10 = [v9 copy];
    inputMode = v5->_inputMode;
    v5->_inputMode = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(TIStatisticChange);
  if (v5)
  {
    v6 = [(NSString *)self->_name copyWithZone:zone];
    name = v5->_name;
    v5->_name = v6;

    v5->_value = self->_value;
    v8 = [(NSString *)self->_inputMode copyWithZone:zone];
    inputMode = v5->_inputMode;
    v5->_inputMode = v8;
  }

  return v5;
}

- (TIStatisticChange)initWithName:(id)name andValue:(int)value andInputMode:(id)mode
{
  nameCopy = name;
  modeCopy = mode;
  v14.receiver = self;
  v14.super_class = TIStatisticChange;
  v11 = [(TIStatisticChange *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_value = value;
    objc_storeStrong(&v12->_inputMode, mode);
  }

  return v12;
}

+ (id)statisticChangeWithName:(id)name andValue:(int)value andInputMode:(id)mode
{
  v5 = *&value;
  modeCopy = mode;
  nameCopy = name;
  v9 = [[TIStatisticChange alloc] initWithName:nameCopy andValue:v5 andInputMode:modeCopy];

  return v9;
}

@end