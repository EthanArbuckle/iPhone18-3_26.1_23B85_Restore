@interface STMutableFocusStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setModeIdentifier:(id)a3;
- (void)setModeName:(id)a3;
- (void)setModeSymbol:(id)a3;
@end

@implementation STMutableFocusStatusDomainData

- (void)setModeIdentifier:(id)a3
{
  v5 = a3;
  modeIdentifier = self->super._modeIdentifier;
  p_modeIdentifier = &self->super._modeIdentifier;
  if (modeIdentifier != v5)
  {
    v8 = v5;
    objc_storeStrong(p_modeIdentifier, a3);
    v5 = v8;
  }
}

- (void)setModeName:(id)a3
{
  v5 = a3;
  modeName = self->super._modeName;
  p_modeName = &self->super._modeName;
  if (modeName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_modeName, a3);
    v5 = v8;
  }
}

- (void)setModeSymbol:(id)a3
{
  v5 = a3;
  modeSymbol = self->super._modeSymbol;
  p_modeSymbol = &self->super._modeSymbol;
  if (modeSymbol != v5)
  {
    v8 = v5;
    objc_storeStrong(p_modeSymbol, a3);
    v5 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STFocusStatusDomainData allocWithZone:a3];

  return [(STFocusStatusDomainData *)&v4->super.isa initWithData:?];
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