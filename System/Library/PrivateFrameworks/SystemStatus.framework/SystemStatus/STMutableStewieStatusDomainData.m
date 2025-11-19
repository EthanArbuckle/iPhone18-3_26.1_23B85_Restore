@interface STMutableStewieStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setMaxStewieSignalStrengthBars:(unint64_t)a3;
- (void)setStewieActive:(BOOL)a3;
- (void)setStewieConnected:(BOOL)a3;
- (void)setStewieSignalStrengthBars:(unint64_t)a3;
@end

@implementation STMutableStewieStatusDomainData

- (void)setStewieActive:(BOOL)a3
{
  if (self->super._stewieActive != a3)
  {
    self->super._stewieActive = a3;
  }
}

- (void)setStewieConnected:(BOOL)a3
{
  if (self->super._stewieConnected != a3)
  {
    self->super._stewieConnected = a3;
  }
}

- (void)setStewieSignalStrengthBars:(unint64_t)a3
{
  if (self->super._stewieSignalStrengthBars != a3)
  {
    self->super._stewieSignalStrengthBars = a3;
  }
}

- (void)setMaxStewieSignalStrengthBars:(unint64_t)a3
{
  if (self->super._maxStewieSignalStrengthBars != a3)
  {
    self->super._maxStewieSignalStrengthBars = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STStewieStatusDomainData allocWithZone:a3];

  return [(STStewieStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end