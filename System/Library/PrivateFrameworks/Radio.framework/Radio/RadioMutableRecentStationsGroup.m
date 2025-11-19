@interface RadioMutableRecentStationsGroup
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLocalizedTitle:(id)a3;
- (void)setStations:(id)a3;
@end

@implementation RadioMutableRecentStationsGroup

- (void)setStations:(id)a3
{
  if (self->super._stations != a3)
  {
    v5 = [a3 copy];
    stations = self->super._stations;
    self->super._stations = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setLocalizedTitle:(id)a3
{
  if (self->super._localizedTitle != a3)
  {
    v5 = [a3 copy];
    localizedTitle = self->super._localizedTitle;
    self->super._localizedTitle = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(RadioRecentStationsGroup *)self _copyWithRecentStationsGroupClass:v4];
}

@end