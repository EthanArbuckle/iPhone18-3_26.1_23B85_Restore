@interface RadioMutableRecentStationsGroup
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLocalizedTitle:(id)title;
- (void)setStations:(id)stations;
@end

@implementation RadioMutableRecentStationsGroup

- (void)setStations:(id)stations
{
  if (self->super._stations != stations)
  {
    v5 = [stations copy];
    stations = self->super._stations;
    self->super._stations = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setLocalizedTitle:(id)title
{
  if (self->super._localizedTitle != title)
  {
    v5 = [title copy];
    localizedTitle = self->super._localizedTitle;
    self->super._localizedTitle = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(RadioRecentStationsGroup *)self _copyWithRecentStationsGroupClass:v4];
}

@end