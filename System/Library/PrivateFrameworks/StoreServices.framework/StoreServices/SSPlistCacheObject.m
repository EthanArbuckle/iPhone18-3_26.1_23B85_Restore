@interface SSPlistCacheObject
- (SSPlistCacheObject)initWithCacheObjectDataRepresentation:(id)a3;
- (id)plist;
- (void)dealloc;
- (void)setPlist:(id)a3;
@end

@implementation SSPlistCacheObject

- (void)setPlist:(id)a3
{
  plist = self->_plist;
  if (plist != a3)
  {

    self->_plist = a3;
  }
}

- (id)plist
{
  v2 = self->_plist;

  return v2;
}

- (SSPlistCacheObject)initWithCacheObjectDataRepresentation:(id)a3
{
  v4 = [(SSPlistCacheObject *)self init];
  if (v4)
  {
    v4->_plist = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:0];
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