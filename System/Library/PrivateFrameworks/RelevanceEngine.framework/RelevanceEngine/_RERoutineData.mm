@interface _RERoutineData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoutineData:(id)data;
@end

@implementation _RERoutineData

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_RERoutineData *)self isEqualToRoutineData:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRoutineData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (self == dataCopy)
  {
    v9 = 1;
  }

  else if (dataCopy && (v6 = [(_RERoutineData *)self mode], v6 == [(_RERoutineData *)v5 mode]))
  {
    locationsOfInterest = [(_RERoutineData *)self locationsOfInterest];
    locationsOfInterest2 = [(_RERoutineData *)v5 locationsOfInterest];
    v9 = [locationsOfInterest isEqualToArray:locationsOfInterest2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end