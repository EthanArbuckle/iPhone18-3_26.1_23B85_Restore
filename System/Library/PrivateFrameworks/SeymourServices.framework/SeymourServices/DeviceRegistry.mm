@interface DeviceRegistry
- (void)update;
@end

@implementation DeviceRegistry

- (void)update
{
  v3 = *self->lock;

  sub_2276696A0();
  sub_227393184();
  v4 = *self->eventHub;
  v5 = *&self->eventHub[8];
  swift_getObjectType();
  sub_227089A90();
  sub_2276699D0();
}

@end