@interface HVMutableContentState
- (id)copyWithZone:(_NSZone *)a3;
- (void)setConsumers:(id)a3;
@end

@implementation HVMutableContentState

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HVContentState alloc];
  consumers = self->super._consumers;
  levelOfService = self->super._levelOfService;

  return [(HVContentState *)v4 initWithConsumers:consumers levelOfService:levelOfService];
}

- (void)setConsumers:(id)a3
{
  v4 = [a3 copy];
  consumers = self->super._consumers;
  self->super._consumers = v4;

  MEMORY[0x2821F96F8]();
}

@end