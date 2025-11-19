@interface NSObject
- (unsigned)objectInstanceID;
@end

@implementation NSObject

- (unsigned)objectInstanceID
{
  if (qword_100069BF0 != -1)
  {
    dispatch_once(&qword_100069BF0, &stru_1000591B0);
  }

  return dword_100069BEC;
}

@end