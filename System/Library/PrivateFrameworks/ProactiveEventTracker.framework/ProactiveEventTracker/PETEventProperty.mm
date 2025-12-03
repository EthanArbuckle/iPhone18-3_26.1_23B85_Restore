@interface PETEventProperty
+ (id)freeValuedPropertyWithName:(id)name;
+ (id)propertyWithName:(id)name range:(_NSRange)range;
+ (id)propertyWithName:(id)name rangeMin:(unint64_t)min rangeMax:(unint64_t)max;
- (PETEventProperty)initWithName:(id)name;
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

- (PETEventProperty)initWithName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PETEventProperty;
  v5 = [(PETEventProperty *)&v12 init];
  if (v5)
  {
    if (![PETEventStringValidator stringIsValid:nameCopy])
    {
      v6 = MEMORY[0x1E695DF30];
      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"property name may only contain [a-zA-Z0-9_] and may not be prefixed with _: %@", nameCopy];
      v8 = [v6 exceptionWithName:@"PETEventTrackingException" reason:nameCopy userInfo:0];

      [v8 raise];
    }

    v9 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v9;
  }

  return v5;
}

+ (id)freeValuedPropertyWithName:(id)name
{
  nameCopy = name;
  v4 = [[PETEventFreeValuedProperty alloc] initWithName:nameCopy];

  return v4;
}

+ (id)propertyWithName:(id)name rangeMin:(unint64_t)min rangeMax:(unint64_t)max
{
  nameCopy = name;
  v8 = [objc_opt_class() propertyWithName:nameCopy range:min clampValues:{max - min + 1, 0}];

  return v8;
}

+ (id)propertyWithName:(id)name range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  nameCopy = name;
  v7 = [objc_opt_class() propertyWithName:nameCopy range:location clampValues:{length, 0}];

  return v7;
}

@end