@interface STMutableStatusDomainDataChangeContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)setUserInitiated:(BOOL)initiated;
@end

@implementation STMutableStatusDomainDataChangeContext

- (void)setUserInitiated:(BOOL)initiated
{
  if (self->super._userInitiated != initiated)
  {
    self->super._userInitiated = initiated;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [STStatusDomainDataChangeContext allocWithZone:zone];
  if (result)
  {
    v5 = result;
    isUserInitiated = [(STStatusDomainDataChangeContext *)self isUserInitiated];
    v7.receiver = v5;
    v7.super_class = STStatusDomainDataChangeContext;
    result = [(STStatusDomainDataChangeContext *)&v7 init];
    if (result)
    {
      *(result + 8) = isUserInitiated;
    }
  }

  return result;
}

@end