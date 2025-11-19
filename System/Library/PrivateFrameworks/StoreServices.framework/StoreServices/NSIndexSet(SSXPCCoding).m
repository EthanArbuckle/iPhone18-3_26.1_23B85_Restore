@interface NSIndexSet(SSXPCCoding)
- (id)initWithXPCEncoding:()SSXPCCoding;
@end

@implementation NSIndexSet(SSXPCCoding)

- (id)initWithXPCEncoding:()SSXPCCoding
{
  v5 = objc_opt_class();
  NSSecureCodingObjectForXPCObject = SSCodingCreateNSSecureCodingObjectForXPCObject(a3, v5);

  return NSSecureCodingObjectForXPCObject;
}

@end