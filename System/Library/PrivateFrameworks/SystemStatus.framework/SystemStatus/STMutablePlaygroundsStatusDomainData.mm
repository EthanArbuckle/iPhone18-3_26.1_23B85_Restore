@interface STMutablePlaygroundsStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPlaygroundsActive:(BOOL)active;
@end

@implementation STMutablePlaygroundsStatusDomainData

- (void)setPlaygroundsActive:(BOOL)active
{
  if (self->super._playgroundsActive != active)
  {
    self->super._playgroundsActive = active;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [STPlaygroundsStatusDomainData allocWithZone:zone];
  if (result)
  {
    v5 = result;
    isPlaygroundsActive = [(STPlaygroundsStatusDomainData *)self isPlaygroundsActive];
    v7.receiver = v5;
    v7.super_class = STPlaygroundsStatusDomainData;
    result = [(STPlaygroundsStatusDomainData *)&v7 init];
    if (result)
    {
      *(result + 8) = isPlaygroundsActive;
    }
  }

  return result;
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