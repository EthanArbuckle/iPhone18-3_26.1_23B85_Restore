@interface OS_remote_service
- (void)dealloc;
@end

@implementation OS_remote_service

- (void)dealloc
{
  free(self->name);
  v3.receiver = self;
  v3.super_class = OS_remote_service;
  [(OS_remote_service *)&v3 dealloc];
}

@end