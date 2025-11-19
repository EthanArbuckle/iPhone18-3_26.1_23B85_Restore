@interface NCNotificationMutableSystemSettings
- (void)setScheduledDeliveryTimes:(id)a3;
@end

@implementation NCNotificationMutableSystemSettings

- (void)setScheduledDeliveryTimes:(id)a3
{
  self->super._scheduledDeliveryTimes = [a3 copy];

  MEMORY[0x2821F96F8]();
}

@end