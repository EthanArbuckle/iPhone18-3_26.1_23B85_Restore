@interface SACSSymbolOwnerWrapper
- (uint64_t)symbolOwner;
- (void)dealloc;
@end

@implementation SACSSymbolOwnerWrapper

- (void)dealloc
{
  opaque_1 = self->_symbolOwner._opaque_1;
  opaque_2 = self->_symbolOwner._opaque_2;
  CSRelease();
  v5.receiver = self;
  v5.super_class = SACSSymbolOwnerWrapper;
  [(SACSSymbolOwnerWrapper *)&v5 dealloc];
}

- (uint64_t)symbolOwner
{
  if (result)
  {
    objc_copyStruct(&v1, (result + 16), 16, 1, 0);
    return v1;
  }

  return result;
}

@end