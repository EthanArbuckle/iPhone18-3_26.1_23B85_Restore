@interface NSData(_PASDistilledString)
- (id)_pas_revivedString;
@end

@implementation NSData(_PASDistilledString)

- (id)_pas_revivedString
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 base64EncodedStringWithOptions:0];
  objc_autoreleasePoolPop(v2);

  return v3;
}

@end