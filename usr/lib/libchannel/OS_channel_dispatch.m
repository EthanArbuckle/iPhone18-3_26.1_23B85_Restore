@interface OS_channel_dispatch
- (void)_xref_dispose;
- (void)dealloc;
@end

@implementation OS_channel_dispatch

- (void)dealloc
{
  channel_dispatch_dispose(&self->super.super.super.isa);
  v3.receiver = self;
  v3.super_class = OS_channel_dispatch;
  [(OS_channel *)&v3 dealloc];
}

- (void)_xref_dispose
{
  channel_dispatch_xref_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_channel_dispatch;
  [(OS_object *)&v3 _xref_dispose];
}

@end