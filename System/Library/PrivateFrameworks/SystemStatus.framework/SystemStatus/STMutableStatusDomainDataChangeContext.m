@interface STMutableStatusDomainDataChangeContext
- (id)copyWithZone:(_NSZone *)a3;
- (void)setUserInitiated:(BOOL)a3;
@end

@implementation STMutableStatusDomainDataChangeContext

- (void)setUserInitiated:(BOOL)a3
{
  if (self->super._userInitiated != a3)
  {
    self->super._userInitiated = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [STStatusDomainDataChangeContext allocWithZone:a3];
  if (result)
  {
    v5 = result;
    v6 = [(STStatusDomainDataChangeContext *)self isUserInitiated];
    v7.receiver = v5;
    v7.super_class = STStatusDomainDataChangeContext;
    result = [(STStatusDomainDataChangeContext *)&v7 init];
    if (result)
    {
      *(result + 8) = v6;
    }
  }

  return result;
}

@end