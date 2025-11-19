@interface NSUUID(_PASDistilledString)
- (id)_pas_revivedString;
@end

@implementation NSUUID(_PASDistilledString)

- (id)_pas_revivedString
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 UUIDString];
  objc_autoreleasePoolPop(v2);

  return v3;
}

@end