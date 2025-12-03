@interface SSPlistCacheObject
- (SSPlistCacheObject)initWithCacheObjectDataRepresentation:(id)representation;
- (id)plist;
- (void)dealloc;
- (void)setPlist:(id)plist;
@end

@implementation SSPlistCacheObject

- (void)setPlist:(id)plist
{
  plist = self->_plist;
  if (plist != plist)
  {

    self->_plist = plist;
  }
}

- (id)plist
{
  v2 = self->_plist;

  return v2;
}

- (SSPlistCacheObject)initWithCacheObjectDataRepresentation:(id)representation
{
  v4 = [(SSPlistCacheObject *)self init];
  if (v4)
  {
    v4->_plist = [MEMORY[0x1E696AE40] propertyListWithData:representation options:0 format:0 error:0];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPlistCacheObject;
  [(SSPlistCacheObject *)&v3 dealloc];
}

@end