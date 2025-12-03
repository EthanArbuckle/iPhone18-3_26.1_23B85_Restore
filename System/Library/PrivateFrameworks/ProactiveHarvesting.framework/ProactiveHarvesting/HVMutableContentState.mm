@interface HVMutableContentState
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConsumers:(id)consumers;
@end

@implementation HVMutableContentState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HVContentState alloc];
  consumers = self->super._consumers;
  levelOfService = self->super._levelOfService;

  return [(HVContentState *)v4 initWithConsumers:consumers levelOfService:levelOfService];
}

- (void)setConsumers:(id)consumers
{
  v4 = [consumers copy];
  consumers = self->super._consumers;
  self->super._consumers = v4;

  MEMORY[0x2821F96F8]();
}

@end