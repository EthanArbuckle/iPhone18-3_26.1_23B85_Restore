@interface OS_xpc_remote_listener
- (void)dealloc;
@end

@implementation OS_xpc_remote_listener

- (void)dealloc
{
  *self = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *self;
  _os_crash_msg();
  __break(1u);
}

@end