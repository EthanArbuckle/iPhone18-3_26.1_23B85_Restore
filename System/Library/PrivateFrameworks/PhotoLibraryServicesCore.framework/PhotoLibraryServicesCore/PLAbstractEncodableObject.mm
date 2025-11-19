@interface PLAbstractEncodableObject
- (PLAbstractEncodableObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLAbstractEncodableObject

- (PLAbstractEncodableObject)initWithCoder:(id)a3
{
  v3 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLAbstractEncodableObject *)IsAbstract encodeWithCoder:v5, v6];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = a3;
  IsAbstract = _PFThrowMethodIsAbstract();
  +[(PLXPCObject *)IsAbstract];
}

@end