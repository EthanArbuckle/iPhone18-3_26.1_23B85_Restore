@interface ISURLCacheConfiguration
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation ISURLCacheConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISURLCacheConfiguration;
  [(ISURLCacheConfiguration *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_diskCapacity;
  v5[2] = self->_memoryCapacity;
  v5[3] = [(NSString *)self->_persistentIdentifier copyWithZone:a3];
  return v5;
}

@end