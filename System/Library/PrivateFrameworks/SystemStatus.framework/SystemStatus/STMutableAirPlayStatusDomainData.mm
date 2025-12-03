@interface STMutableAirPlayStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAirPlayState:(unint64_t)state;
- (void)setBundleIdentifier:(id)identifier;
@end

@implementation STMutableAirPlayStatusDomainData

- (void)setAirPlayState:(unint64_t)state
{
  if (self->super._airPlayState != state)
  {
    self->super._airPlayState = state;
  }
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->super._bundleIdentifier isEqualToString:?])
  {
    v4 = [identifierCopy copy];
    bundleIdentifier = self->super._bundleIdentifier;
    self->super._bundleIdentifier = v4;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STAirPlayStatusDomainData allocWithZone:zone];

  return [(STAirPlayStatusDomainData *)&v4->super.isa initWithData:?];
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