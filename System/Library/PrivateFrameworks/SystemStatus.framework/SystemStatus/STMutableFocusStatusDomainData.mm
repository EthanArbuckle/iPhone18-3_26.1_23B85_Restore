@interface STMutableFocusStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setModeIdentifier:(id)identifier;
- (void)setModeName:(id)name;
- (void)setModeSymbol:(id)symbol;
@end

@implementation STMutableFocusStatusDomainData

- (void)setModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  modeIdentifier = self->super._modeIdentifier;
  p_modeIdentifier = &self->super._modeIdentifier;
  if (modeIdentifier != identifierCopy)
  {
    v8 = identifierCopy;
    objc_storeStrong(p_modeIdentifier, identifier);
    identifierCopy = v8;
  }
}

- (void)setModeName:(id)name
{
  nameCopy = name;
  modeName = self->super._modeName;
  p_modeName = &self->super._modeName;
  if (modeName != nameCopy)
  {
    v8 = nameCopy;
    objc_storeStrong(p_modeName, name);
    nameCopy = v8;
  }
}

- (void)setModeSymbol:(id)symbol
{
  symbolCopy = symbol;
  modeSymbol = self->super._modeSymbol;
  p_modeSymbol = &self->super._modeSymbol;
  if (modeSymbol != symbolCopy)
  {
    v8 = symbolCopy;
    objc_storeStrong(p_modeSymbol, symbol);
    symbolCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STFocusStatusDomainData allocWithZone:zone];

  return [(STFocusStatusDomainData *)&v4->super.isa initWithData:?];
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