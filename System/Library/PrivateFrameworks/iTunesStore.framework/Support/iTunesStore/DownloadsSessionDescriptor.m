@interface DownloadsSessionDescriptor
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation DownloadsSessionDescriptor

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadsSessionDescriptor;
  [(DownloadsSessionDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[1] = self->_database;
  v4[2] = self->_externalState;
  v4[3] = self->_pipeline;
  v4[4] = self->_policyManager;
  return v4;
}

@end