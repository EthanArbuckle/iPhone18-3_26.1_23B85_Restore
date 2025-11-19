@interface OS_remote_listening_service
- (void)dealloc;
@end

@implementation OS_remote_listening_service

- (void)dealloc
{
  service_name = self->service_name;
  if (service_name)
  {
    free(service_name);
  }

  v4.receiver = self;
  v4.super_class = OS_remote_listening_service;
  [(OS_remote_listening_service *)&v4 dealloc];
}

@end