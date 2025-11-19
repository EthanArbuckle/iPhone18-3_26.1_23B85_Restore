@interface TSUPermanentObject
- (TSUPermanentObject)retain;
- (void)release;
@end

@implementation TSUPermanentObject

- (TSUPermanentObject)retain
{
  if (!self->_isPermanent)
  {
    v2.receiver = self;
    v2.super_class = TSUPermanentObject;
    return [(TSUPermanentObject *)&v2 retain];
  }

  return self;
}

- (void)release
{
  if (!self->_isPermanent)
  {
    v2.receiver = self;
    v2.super_class = TSUPermanentObject;
    [(TSUPermanentObject *)&v2 release];
  }
}

@end