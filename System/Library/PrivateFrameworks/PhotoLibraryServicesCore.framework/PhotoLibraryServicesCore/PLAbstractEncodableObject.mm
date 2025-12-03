@interface PLAbstractEncodableObject
- (PLAbstractEncodableObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLAbstractEncodableObject

- (PLAbstractEncodableObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLAbstractEncodableObject *)IsAbstract encodeWithCoder:v5, v6];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  IsAbstract = _PFThrowMethodIsAbstract();
  +[(PLXPCObject *)IsAbstract];
}

@end