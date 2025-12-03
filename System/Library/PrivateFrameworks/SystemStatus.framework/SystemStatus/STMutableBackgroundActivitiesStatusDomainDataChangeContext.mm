@interface STMutableBackgroundActivitiesStatusDomainDataChangeContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)setUserInitiated:(BOOL)initiated;
@end

@implementation STMutableBackgroundActivitiesStatusDomainDataChangeContext

- (void)setUserInitiated:(BOOL)initiated
{
  if (self->super._userInitiated != initiated)
  {
    self->super._userInitiated = initiated;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [STBackgroundActivitiesStatusDomainDataChangeContext allocWithZone:zone];
  if (result)
  {
    v5 = result;
    isUserInitiated = [(STBackgroundActivitiesStatusDomainDataChangeContext *)self isUserInitiated];
    v7.receiver = v5;
    v7.super_class = STBackgroundActivitiesStatusDomainDataChangeContext;
    result = [(STBackgroundActivitiesStatusDomainDataChangeContext *)&v7 init];
    if (result)
    {
      *(result + 8) = isUserInitiated;
    }
  }

  return result;
}

@end