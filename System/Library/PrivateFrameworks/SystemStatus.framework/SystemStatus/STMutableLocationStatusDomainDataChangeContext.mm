@interface STMutableLocationStatusDomainDataChangeContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)setUserInitiated:(BOOL)initiated;
- (void)setWantsProminentIndication:(BOOL)indication;
@end

@implementation STMutableLocationStatusDomainDataChangeContext

- (void)setUserInitiated:(BOOL)initiated
{
  if (self->super._userInitiated != initiated)
  {
    self->super._userInitiated = initiated;
  }
}

- (void)setWantsProminentIndication:(BOOL)indication
{
  if (self->super._wantsProminentIndication != indication)
  {
    self->super._wantsProminentIndication = indication;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STLocationStatusDomainDataChangeContext allocWithZone:zone];

  return [(STLocationStatusDomainDataChangeContext *)v4 initWithChangeContext:?];
}

@end