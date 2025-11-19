@interface PETEventProperty
+ (id)freeValuedPropertyWithName:(id)a3;
+ (id)propertyWithName:(id)a3 range:(_NSRange)a4;
+ (id)propertyWithName:(id)a3 rangeMin:(unint64_t)a4 rangeMax:(unint64_t)a5;
- (PETEventProperty)initWithName:(id)a3;
- (_NSRange)validRange;
@end

@implementation PETEventProperty

- (_NSRange)validRange
{
  v2 = 0;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (PETEventProperty)initWithName:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PETEventProperty;
  v5 = [(PETEventProperty *)&v12 init];
  if (v5)
  {
    if (![PETEventStringValidator stringIsValid:v4])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"property name may only contain [a-zA-Z0-9_] and may not be prefixed with _: %@", v4];
      v8 = [v6 exceptionWithName:@"PETEventTrackingException" reason:v7 userInfo:0];

      [v8 raise];
    }

    v9 = [v4 copy];
    name = v5->_name;
    v5->_name = v9;
  }

  return v5;
}

+ (id)freeValuedPropertyWithName:(id)a3
{
  v3 = a3;
  v4 = [[PETEventFreeValuedProperty alloc] initWithName:v3];

  return v4;
}

+ (id)propertyWithName:(id)a3 rangeMin:(unint64_t)a4 rangeMax:(unint64_t)a5
{
  v7 = a3;
  v8 = [objc_opt_class() propertyWithName:v7 range:a4 clampValues:{a5 - a4 + 1, 0}];

  return v8;
}

+ (id)propertyWithName:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = [objc_opt_class() propertyWithName:v6 range:location clampValues:{length, 0}];

  return v7;
}

@end