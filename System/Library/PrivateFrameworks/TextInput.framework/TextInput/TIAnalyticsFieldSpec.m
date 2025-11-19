@interface TIAnalyticsFieldSpec
+ (id)BOOLeanFieldSpecWithName:(id)a3;
+ (id)enumFieldSpecWithName:(id)a3;
+ (id)floatFieldSpecWithName:(id)a3;
+ (id)floatFieldSpecWithName:(id)a3 maxValue:(double)a4;
+ (id)floatFieldSpecWithName:(id)a3 minValue:(double)a4;
+ (id)floatFieldSpecWithName:(id)a3 minValue:(double)a4 maxValue:(double)a5;
+ (id)floatFieldSpecWithName:(id)a3 minValue:(id)a4 maxValue:(id)a5 significantDigits:(id)a6;
+ (id)integerFieldSpecWithName:(id)a3;
+ (id)integerFieldSpecWithName:(id)a3 maxValue:(int64_t)a4;
+ (id)integerFieldSpecWithName:(id)a3 minValue:(id)a4 maxValue:(id)a5 significantDigits:(id)a6;
+ (id)integerFieldSpecWithName:(id)a3 minValue:(int64_t)a4;
+ (id)integerFieldSpecWithName:(id)a3 minValue:(int64_t)a4 maxValue:(int64_t)a5;
+ (id)stringFieldSpecWithName:(id)a3;
+ (id)stringFieldSpecWithName:(id)a3 allowedValues:(id)a4;
- (TIAnalyticsFieldSpec)initWithName:(id)a3;
- (id)errorFromNil;
- (id)errorFromValue:(id)a3 code:(int64_t)a4 message:(id)a5;
@end

@implementation TIAnalyticsFieldSpec

- (id)errorFromValue:(id)a3 code:(int64_t)a4 message:(id)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = [[v8 alloc] initWithFormat:v9 arguments:&v19];

  v11 = MEMORY[0x1E696ABC0];
  v16[0] = @"message";
  v16[1] = @"value";
  v17[0] = v10;
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:{2, &v19}];
  v14 = [v11 errorWithDomain:@"TIAnalyticsErrorDomain" code:a4 userInfo:v13];

  if (!v7)
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
  v4 = [(TIAnalyticsFieldSpec *)self name];
  v5 = [v3 stringWithFormat:@"Field '%@' cannot be nil.", v4];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v2 errorWithDomain:@"TIAnalyticsErrorDomain" code:11 userInfo:v6];

  return v7;
}

- (TIAnalyticsFieldSpec)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIAnalyticsFieldSpec;
  v5 = [(TIAnalyticsFieldSpec *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

+ (id)BOOLeanFieldSpecWithName:(id)a3
{
  v3 = a3;
  v4 = [[TIAnalyticsBooleanFieldSpec alloc] initWithName:v3];

  return v4;
}

+ (id)floatFieldSpecWithName:(id)a3 minValue:(id)a4 maxValue:(id)a5 significantDigits:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[TIAnalyticsNumberFieldSpec alloc] initWithName:v12 isInteger:0 minValue:v11 maxValue:v10 significantDigits:v9];

  return v13;
}

+ (id)floatFieldSpecWithName:(id)a3 minValue:(double)a4 maxValue:(double)a5
{
  v7 = a3;
  v8 = [TIAnalyticsNumberFieldSpec alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v11 = [(TIAnalyticsNumberFieldSpec *)v8 initWithName:v7 isInteger:0 minValue:v9 maxValue:v10 significantDigits:0];

  return v11;
}

+ (id)floatFieldSpecWithName:(id)a3 maxValue:(double)a4
{
  v5 = a3;
  v6 = [TIAnalyticsNumberFieldSpec alloc];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v8 = [(TIAnalyticsNumberFieldSpec *)v6 initWithName:v5 isInteger:0 minValue:0 maxValue:v7 significantDigits:0];

  return v8;
}

+ (id)floatFieldSpecWithName:(id)a3 minValue:(double)a4
{
  v5 = a3;
  v6 = [TIAnalyticsNumberFieldSpec alloc];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v8 = [(TIAnalyticsNumberFieldSpec *)v6 initWithName:v5 isInteger:0 minValue:v7 maxValue:0 significantDigits:0];

  return v8;
}

+ (id)floatFieldSpecWithName:(id)a3
{
  v3 = a3;
  v4 = [[TIAnalyticsNumberFieldSpec alloc] initWithName:v3 isInteger:0 minValue:0 maxValue:0 significantDigits:0];

  return v4;
}

+ (id)integerFieldSpecWithName:(id)a3 minValue:(id)a4 maxValue:(id)a5 significantDigits:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[TIAnalyticsNumberFieldSpec alloc] initWithName:v12 isInteger:1 minValue:v11 maxValue:v10 significantDigits:v9];

  return v13;
}

+ (id)integerFieldSpecWithName:(id)a3 minValue:(int64_t)a4 maxValue:(int64_t)a5
{
  v7 = a3;
  v8 = [TIAnalyticsNumberFieldSpec alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v11 = [(TIAnalyticsNumberFieldSpec *)v8 initWithName:v7 isInteger:1 minValue:v9 maxValue:v10 significantDigits:0];

  return v11;
}

+ (id)integerFieldSpecWithName:(id)a3 maxValue:(int64_t)a4
{
  v5 = a3;
  v6 = [TIAnalyticsNumberFieldSpec alloc];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v8 = [(TIAnalyticsNumberFieldSpec *)v6 initWithName:v5 isInteger:1 minValue:0 maxValue:v7 significantDigits:0];

  return v8;
}

+ (id)integerFieldSpecWithName:(id)a3 minValue:(int64_t)a4
{
  v5 = a3;
  v6 = [TIAnalyticsNumberFieldSpec alloc];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v8 = [(TIAnalyticsNumberFieldSpec *)v6 initWithName:v5 isInteger:1 minValue:v7 maxValue:0 significantDigits:0];

  return v8;
}

+ (id)integerFieldSpecWithName:(id)a3
{
  v3 = a3;
  v4 = [[TIAnalyticsNumberFieldSpec alloc] initWithName:v3 isInteger:1 minValue:0 maxValue:0 significantDigits:0];

  return v4;
}

+ (id)enumFieldSpecWithName:(id)a3
{
  v3 = a3;
  v4 = [[TIAnalyticsNumberFieldSpec alloc] initWithName:v3 isInteger:1 minValue:&unk_1EF7DC470 maxValue:0 significantDigits:0];

  return v4;
}

+ (id)stringFieldSpecWithName:(id)a3 allowedValues:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TIAnalyticsStringFieldSpec alloc] initWithName:v6 allowedValues:v5];

  return v7;
}

+ (id)stringFieldSpecWithName:(id)a3
{
  v3 = a3;
  v4 = [[TIAnalyticsStringFieldSpec alloc] initWithName:v3 allowedValues:0];

  return v4;
}

@end