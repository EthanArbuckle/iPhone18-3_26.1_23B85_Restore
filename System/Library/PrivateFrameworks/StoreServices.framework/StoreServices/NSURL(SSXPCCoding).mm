@interface NSURL(SSXPCCoding)
- (id)initWithXPCEncoding:()SSXPCCoding;
@end

@implementation NSURL(SSXPCCoding)

- (id)initWithXPCEncoding:()SSXPCCoding
{
  if (!a3)
  {
    goto LABEL_9;
  }

  v5 = MEMORY[0x1DA6E0380](a3);
  if (v5 == MEMORY[0x1E69E9F10])
  {
    v9 = SSXPCCreateCFObjectFromXPCObject(a3);
LABEL_7:
    v10 = v9;
    if (v9)
    {
      NSSecureCodingObjectForXPCObject = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];

      goto LABEL_10;
    }

LABEL_9:
    NSSecureCodingObjectForXPCObject = 0;
    goto LABEL_10;
  }

  if (v5 != MEMORY[0x1E69E9E70])
  {
    goto LABEL_9;
  }

  v6 = objc_opt_class();
  NSSecureCodingObjectForXPCObject = SSCodingCreateNSSecureCodingObjectForXPCObject(a3, v6);
  if (!NSSecureCodingObjectForXPCObject)
  {
    v8 = objc_opt_class();
    v9 = SSCodingCreateNSSecureCodingObjectForXPCObject(a3, v8);
    goto LABEL_7;
  }

LABEL_10:

  return NSSecureCodingObjectForXPCObject;
}

@end