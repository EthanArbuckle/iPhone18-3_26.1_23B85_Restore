@interface OS_session_core
- (void)dealloc;
@end

@implementation OS_session_core

- (void)dealloc
{
  _session_core_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_session_core;
  [(OS_session_core *)&v3 dealloc];
}

@end