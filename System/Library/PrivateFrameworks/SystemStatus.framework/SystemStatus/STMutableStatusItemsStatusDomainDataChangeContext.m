@interface STMutableStatusItemsStatusDomainDataChangeContext
- (id)copyWithZone:(_NSZone *)a3;
- (void)setUserInitiated:(BOOL)a3;
@end

@implementation STMutableStatusItemsStatusDomainDataChangeContext

- (void)setUserInitiated:(BOOL)a3
{
  if (self->super._userInitiated != a3)
  {
    self->super._userInitiated = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [STStatusItemsStatusDomainDataChangeContext allocWithZone:a3];
  if (result)
  {
    v5 = result;
    v6 = [(STStatusItemsStatusDomainDataChangeContext *)self isUserInitiated];
    v7.receiver = v5;
    v7.super_class = STStatusItemsStatusDomainDataChangeContext;
    result = [(STStatusItemsStatusDomainDataChangeContext *)&v7 init];
    if (result)
    {
      *(result + 8) = v6;
    }
  }

  return result;
}

@end