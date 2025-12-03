@interface NCNotificationMutableSystemSettings
- (void)setScheduledDeliveryTimes:(id)times;
@end

@implementation NCNotificationMutableSystemSettings

- (void)setScheduledDeliveryTimes:(id)times
{
  self->super._scheduledDeliveryTimes = [times copy];

  MEMORY[0x2821F96F8]();
}

@end