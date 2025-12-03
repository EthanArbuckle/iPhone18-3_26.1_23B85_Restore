@interface STMutableStewieStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setMaxStewieSignalStrengthBars:(unint64_t)bars;
- (void)setStewieActive:(BOOL)active;
- (void)setStewieConnected:(BOOL)connected;
- (void)setStewieSignalStrengthBars:(unint64_t)bars;
@end

@implementation STMutableStewieStatusDomainData

- (void)setStewieActive:(BOOL)active
{
  if (self->super._stewieActive != active)
  {
    self->super._stewieActive = active;
  }
}

- (void)setStewieConnected:(BOOL)connected
{
  if (self->super._stewieConnected != connected)
  {
    self->super._stewieConnected = connected;
  }
}

- (void)setStewieSignalStrengthBars:(unint64_t)bars
{
  if (self->super._stewieSignalStrengthBars != bars)
  {
    self->super._stewieSignalStrengthBars = bars;
  }
}

- (void)setMaxStewieSignalStrengthBars:(unint64_t)bars
{
  if (self->super._maxStewieSignalStrengthBars != bars)
  {
    self->super._maxStewieSignalStrengthBars = bars;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STStewieStatusDomainData allocWithZone:zone];

  return [(STStewieStatusDomainData *)v4 initWithData:?];
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