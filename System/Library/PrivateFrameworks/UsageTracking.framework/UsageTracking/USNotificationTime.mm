@interface USNotificationTime
- (BOOL)validateBudget:(id *)budget error:(id *)error;
@end

@implementation USNotificationTime

- (BOOL)validateBudget:(id *)budget error:(id *)error
{
  v4 = *budget;
  if (!*budget)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"USNotificationTime.m" lineNumber:21 description:@"Tried to set a nil budget!"];

    if (error)
    {
      *error = [NSError errorWithDomain:NSCocoaErrorDomain code:1024 userInfo:0];
    }
  }

  return v4 != 0;
}

@end