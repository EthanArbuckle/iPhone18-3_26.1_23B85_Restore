@interface STMutableWifiStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAssociatedToIOSHotspot:(BOOL)hotspot;
- (void)setSignalStrengthBars:(unint64_t)bars;
- (void)setWifiActive:(BOOL)active;
@end

@implementation STMutableWifiStatusDomainData

- (void)setWifiActive:(BOOL)active
{
  if (self->super._wifiActive != active)
  {
    self->super._wifiActive = active;
  }
}

- (void)setSignalStrengthBars:(unint64_t)bars
{
  if (self->super._signalStrengthBars != bars)
  {
    self->super._signalStrengthBars = bars;
  }
}

- (void)setAssociatedToIOSHotspot:(BOOL)hotspot
{
  if (self->super._associatedToIOSHotspot != hotspot)
  {
    self->super._associatedToIOSHotspot = hotspot;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STWifiStatusDomainData allocWithZone:zone];

  return [(STWifiStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end