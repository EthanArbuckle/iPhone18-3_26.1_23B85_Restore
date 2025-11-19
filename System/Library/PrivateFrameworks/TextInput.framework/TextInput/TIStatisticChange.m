@interface TIStatisticChange
+ (id)statisticChangeWithName:(id)a3 andValue:(int)a4 andInputMode:(id)a5;
- (TIStatisticChange)initWithCoder:(id)a3;
- (TIStatisticChange)initWithName:(id)a3 andValue:(int)a4 andInputMode:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIStatisticChange

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  name = self->_name;
  v8 = v4;
  if (name)
  {
    [v4 encodeObject:name forKey:@"name"];
    v4 = v8;
  }

  value = self->_value;
  if (value)
  {
    [v8 encodeInt:value forKey:@"value"];
    v4 = v8;
  }

  inputMode = self->_inputMode;
  if (inputMode)
  {
    [v8 encodeObject:inputMode forKey:@"inputMode"];
    v4 = v8;
  }
}

- (TIStatisticChange)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TIStatisticChange;
  v5 = [(TIStatisticChange *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v5->_value = [v4 decodeIntForKey:@"value"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputMode"];
    v10 = [v9 copy];
    inputMode = v5->_inputMode;
    v5->_inputMode = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(TIStatisticChange);
  if (v5)
  {
    v6 = [(NSString *)self->_name copyWithZone:a3];
    name = v5->_name;
    v5->_name = v6;

    v5->_value = self->_value;
    v8 = [(NSString *)self->_inputMode copyWithZone:a3];
    inputMode = v5->_inputMode;
    v5->_inputMode = v8;
  }

  return v5;
}

- (TIStatisticChange)initWithName:(id)a3 andValue:(int)a4 andInputMode:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TIStatisticChange;
  v11 = [(TIStatisticChange *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v12->_value = a4;
    objc_storeStrong(&v12->_inputMode, a5);
  }

  return v12;
}

+ (id)statisticChangeWithName:(id)a3 andValue:(int)a4 andInputMode:(id)a5
{
  v5 = *&a4;
  v7 = a5;
  v8 = a3;
  v9 = [[TIStatisticChange alloc] initWithName:v8 andValue:v5 andInputMode:v7];

  return v9;
}

@end