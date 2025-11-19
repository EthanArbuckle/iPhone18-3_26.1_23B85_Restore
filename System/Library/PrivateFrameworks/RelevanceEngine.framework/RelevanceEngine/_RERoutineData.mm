@interface _RERoutineData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoutineData:(id)a3;
@end

@implementation _RERoutineData

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_RERoutineData *)self isEqualToRoutineData:v4];
  }

  return v5;
}

- (BOOL)isEqualToRoutineData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (v6 = [(_RERoutineData *)self mode], v6 == [(_RERoutineData *)v5 mode]))
  {
    v7 = [(_RERoutineData *)self locationsOfInterest];
    v8 = [(_RERoutineData *)v5 locationsOfInterest];
    v9 = [v7 isEqualToArray:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end