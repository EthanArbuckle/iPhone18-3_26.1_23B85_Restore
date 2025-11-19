@interface STMutablePlaygroundsStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPlaygroundsActive:(BOOL)a3;
@end

@implementation STMutablePlaygroundsStatusDomainData

- (void)setPlaygroundsActive:(BOOL)a3
{
  if (self->super._playgroundsActive != a3)
  {
    self->super._playgroundsActive = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [STPlaygroundsStatusDomainData allocWithZone:a3];
  if (result)
  {
    v5 = result;
    v6 = [(STPlaygroundsStatusDomainData *)self isPlaygroundsActive];
    v7.receiver = v5;
    v7.super_class = STPlaygroundsStatusDomainData;
    result = [(STPlaygroundsStatusDomainData *)&v7 init];
    if (result)
    {
      *(result + 8) = v6;
    }
  }

  return result;
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