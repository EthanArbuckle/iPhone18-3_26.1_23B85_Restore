@interface TIAnalyticsFieldSpec
+ (id)BOOLeanFieldSpecWithName:(id)name;
+ (id)enumFieldSpecWithName:(id)name;
+ (id)floatFieldSpecWithName:(id)name;
+ (id)floatFieldSpecWithName:(id)name maxValue:(double)value;
+ (id)floatFieldSpecWithName:(id)name minValue:(double)value;
+ (id)floatFieldSpecWithName:(id)name minValue:(double)value maxValue:(double)maxValue;
+ (id)floatFieldSpecWithName:(id)name minValue:(id)value maxValue:(id)maxValue significantDigits:(id)digits;
+ (id)integerFieldSpecWithName:(id)name;
+ (id)integerFieldSpecWithName:(id)name maxValue:(int64_t)value;
+ (id)integerFieldSpecWithName:(id)name minValue:(id)value maxValue:(id)maxValue significantDigits:(id)digits;
+ (id)integerFieldSpecWithName:(id)name minValue:(int64_t)value;
+ (id)integerFieldSpecWithName:(id)name minValue:(int64_t)value maxValue:(int64_t)maxValue;
+ (id)stringFieldSpecWithName:(id)name;
+ (id)stringFieldSpecWithName:(id)name allowedValues:(id)values;
- (TIAnalyticsFieldSpec)initWithName:(id)name;
- (id)errorFromNil;
- (id)errorFromValue:(id)value code:(int64_t)code message:(id)message;
@end

@implementation TIAnalyticsFieldSpec

- (id)errorFromValue:(id)value code:(int64_t)code message:(id)message
{
  v17[2] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v8 = MEMORY[0x1E696AEC0];
  messageCopy = message;
  v10 = [[v8 alloc] initWithFormat:messageCopy arguments:&v19];

  v11 = MEMORY[0x1E696ABC0];
  v16[0] = @"message";
  v16[1] = @"value";
  v17[0] = v10;
  null = valueCopy;
  if (!valueCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:{2, &v19}];
  v14 = [v11 errorWithDomain:@"TIAnalyticsErrorDomain" code:code userInfo:v13];

  if (!valueCopy)
  {
  }

  return v14;
}

- (id)errorFromNil
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v9 = @"message";
  v3 = MEMORY[0x1E696AEC0];
  name = [(TIAnalyticsFieldSpec *)self name];
  v5 = [v3 stringWithFormat:@"Field '%@' cannot be nil.", name];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v2 errorWithDomain:@"TIAnalyticsErrorDomain" code:11 userInfo:v6];

  return v7;
}

- (TIAnalyticsFieldSpec)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = TIAnalyticsFieldSpec;
  v5 = [(TIAnalyticsFieldSpec *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

+ (id)BOOLeanFieldSpecWithName:(id)name
{
  nameCopy = name;
  v4 = [[TIAnalyticsBooleanFieldSpec alloc] initWithName:nameCopy];

  return v4;
}

+ (id)floatFieldSpecWithName:(id)name minValue:(id)value maxValue:(id)maxValue significantDigits:(id)digits
{
  digitsCopy = digits;
  maxValueCopy = maxValue;
  valueCopy = value;
  nameCopy = name;
  v13 = [[TIAnalyticsNumberFieldSpec alloc] initWithName:nameCopy isInteger:0 minValue:valueCopy maxValue:maxValueCopy significantDigits:digitsCopy];

  return v13;
}

+ (id)floatFieldSpecWithName:(id)name minValue:(double)value maxValue:(double)maxValue
{
  nameCopy = name;
  v8 = [TIAnalyticsNumberFieldSpec alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:maxValue];
  v11 = [(TIAnalyticsNumberFieldSpec *)v8 initWithName:nameCopy isInteger:0 minValue:v9 maxValue:v10 significantDigits:0];

  return v11;
}

+ (id)floatFieldSpecWithName:(id)name maxValue:(double)value
{
  nameCopy = name;
  v6 = [TIAnalyticsNumberFieldSpec alloc];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v8 = [(TIAnalyticsNumberFieldSpec *)v6 initWithName:nameCopy isInteger:0 minValue:0 maxValue:v7 significantDigits:0];

  return v8;
}

+ (id)floatFieldSpecWithName:(id)name minValue:(double)value
{
  nameCopy = name;
  v6 = [TIAnalyticsNumberFieldSpec alloc];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v8 = [(TIAnalyticsNumberFieldSpec *)v6 initWithName:nameCopy isInteger:0 minValue:v7 maxValue:0 significantDigits:0];

  return v8;
}

+ (id)floatFieldSpecWithName:(id)name
{
  nameCopy = name;
  v4 = [[TIAnalyticsNumberFieldSpec alloc] initWithName:nameCopy isInteger:0 minValue:0 maxValue:0 significantDigits:0];

  return v4;
}

+ (id)integerFieldSpecWithName:(id)name minValue:(id)value maxValue:(id)maxValue significantDigits:(id)digits
{
  digitsCopy = digits;
  maxValueCopy = maxValue;
  valueCopy = value;
  nameCopy = name;
  v13 = [[TIAnalyticsNumberFieldSpec alloc] initWithName:nameCopy isInteger:1 minValue:valueCopy maxValue:maxValueCopy significantDigits:digitsCopy];

  return v13;
}

+ (id)integerFieldSpecWithName:(id)name minValue:(int64_t)value maxValue:(int64_t)maxValue
{
  nameCopy = name;
  v8 = [TIAnalyticsNumberFieldSpec alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:maxValue];
  v11 = [(TIAnalyticsNumberFieldSpec *)v8 initWithName:nameCopy isInteger:1 minValue:v9 maxValue:v10 significantDigits:0];

  return v11;
}

+ (id)integerFieldSpecWithName:(id)name maxValue:(int64_t)value
{
  nameCopy = name;
  v6 = [TIAnalyticsNumberFieldSpec alloc];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v8 = [(TIAnalyticsNumberFieldSpec *)v6 initWithName:nameCopy isInteger:1 minValue:0 maxValue:v7 significantDigits:0];

  return v8;
}

+ (id)integerFieldSpecWithName:(id)name minValue:(int64_t)value
{
  nameCopy = name;
  v6 = [TIAnalyticsNumberFieldSpec alloc];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v8 = [(TIAnalyticsNumberFieldSpec *)v6 initWithName:nameCopy isInteger:1 minValue:v7 maxValue:0 significantDigits:0];

  return v8;
}

+ (id)integerFieldSpecWithName:(id)name
{
  nameCopy = name;
  v4 = [[TIAnalyticsNumberFieldSpec alloc] initWithName:nameCopy isInteger:1 minValue:0 maxValue:0 significantDigits:0];

  return v4;
}

+ (id)enumFieldSpecWithName:(id)name
{
  nameCopy = name;
  v4 = [[TIAnalyticsNumberFieldSpec alloc] initWithName:nameCopy isInteger:1 minValue:&unk_1EF7DC470 maxValue:0 significantDigits:0];

  return v4;
}

+ (id)stringFieldSpecWithName:(id)name allowedValues:(id)values
{
  valuesCopy = values;
  nameCopy = name;
  v7 = [[TIAnalyticsStringFieldSpec alloc] initWithName:nameCopy allowedValues:valuesCopy];

  return v7;
}

+ (id)stringFieldSpecWithName:(id)name
{
  nameCopy = name;
  v4 = [[TIAnalyticsStringFieldSpec alloc] initWithName:nameCopy allowedValues:0];

  return v4;
}

@end