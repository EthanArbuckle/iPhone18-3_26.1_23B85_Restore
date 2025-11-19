@interface SKDPowerLogProvider
- (SKDPowerLogProvider)init;
- (void)sendLog:(id)a3 domain:(id)a4;
@end

@implementation SKDPowerLogProvider

- (SKDPowerLogProvider)init
{
  v7.receiver = self;
  v7.super_class = SKDPowerLogProvider;
  v2 = [(SKDPowerLogProvider *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.spotlightknowledge.PowerLogProvider", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)sendLog:(id)a3 domain:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] && PLShouldLogRegisteredEvent())
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__SKDPowerLogProvider_sendLog_domain___block_invoke;
    v9[3] = &unk_27893D900;
    v10 = v7;
    v11 = v6;
    dispatch_async(queue, v9);
  }
}

@end