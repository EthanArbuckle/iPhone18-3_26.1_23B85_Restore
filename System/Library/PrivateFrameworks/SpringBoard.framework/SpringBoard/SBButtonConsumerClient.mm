@interface SBButtonConsumerClient
- (BOOL)canReceiveEvents;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation SBButtonConsumerClient

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_systemServiceClient withName:@"systemServiceClient" skipIfNil:0];
  v5 = [v3 appendBool:self->_entitledToConsumeButtonsInBackground withName:@"entitledToConsumeButtonsInBackground"];
  v6 = [v3 appendBool:self->_application withName:@"application"];
  v7 = [v3 appendBool:self->_runningVisible withName:@"runningVisible"];
  v8 = [v3 appendBool:self->_suspended withName:@"suspended"];
  build = [v3 build];

  return build;
}

- (BOOL)canReceiveEvents
{
  if (self->_suspended)
  {
    return 0;
  }

  else
  {
    return !self->_application || self->_entitledToConsumeButtonsInBackground || self->_runningVisible;
  }
}

- (BOOL)isEqual:(id)equal
{
  systemServiceClient = self->_systemServiceClient;
  systemServiceClient = [equal systemServiceClient];
  LOBYTE(systemServiceClient) = [(FBSServiceFacilityClientHandle *)systemServiceClient isEqual:systemServiceClient];

  return systemServiceClient;
}

@end