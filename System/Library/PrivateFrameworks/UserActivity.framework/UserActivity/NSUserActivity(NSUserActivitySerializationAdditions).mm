@interface NSUserActivity(NSUserActivitySerializationAdditions)
- (id)_createUserActivityDataWithSaving:()NSUserActivitySerializationAdditions options:error:;
- (id)_createUserActivityStringsWithSaving:()NSUserActivitySerializationAdditions options:string:optionalString:data:error:;
@end

@implementation NSUserActivity(NSUserActivitySerializationAdditions)

- (id)_createUserActivityStringsWithSaving:()NSUserActivitySerializationAdditions options:string:optionalString:data:error:
{
  v13 = a4;
  _internalUserActivity = [self _internalUserActivity];
  v15 = [_internalUserActivity createUserActivityStringsWithSaving:a3 options:v13 optionalString:a6 data:a7 error:a8];

  return v15;
}

- (id)_createUserActivityDataWithSaving:()NSUserActivitySerializationAdditions options:error:
{
  v8 = a4;
  _internalUserActivity = [self _internalUserActivity];
  v10 = [_internalUserActivity createUserActivityDataWithSaving:a3 options:v8 error:a5];

  return v10;
}

@end