@interface STMutableStatusItemsStatusDomainDataChangeContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)setUserInitiated:(BOOL)initiated;
@end

@implementation STMutableStatusItemsStatusDomainDataChangeContext

- (void)setUserInitiated:(BOOL)initiated
{
  if (self->super._userInitiated != initiated)
  {
    self->super._userInitiated = initiated;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [STStatusItemsStatusDomainDataChangeContext allocWithZone:zone];
  if (result)
  {
    v5 = result;
    isUserInitiated = [(STStatusItemsStatusDomainDataChangeContext *)self isUserInitiated];
    v7.receiver = v5;
    v7.super_class = STStatusItemsStatusDomainDataChangeContext;
    result = [(STStatusItemsStatusDomainDataChangeContext *)&v7 init];
    if (result)
    {
      *(result + 8) = isUserInitiated;
    }
  }

  return result;
}

@end