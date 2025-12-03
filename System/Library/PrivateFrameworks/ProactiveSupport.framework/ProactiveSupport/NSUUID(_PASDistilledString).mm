@interface NSUUID(_PASDistilledString)
- (id)_pas_revivedString;
@end

@implementation NSUUID(_PASDistilledString)

- (id)_pas_revivedString
{
  v2 = objc_autoreleasePoolPush();
  uUIDString = [self UUIDString];
  objc_autoreleasePoolPop(v2);

  return uUIDString;
}

@end