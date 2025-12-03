@interface STMutableDictionaryData
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setObjectsAndKeys:(id)keys;
@end

@implementation STMutableDictionaryData

- (void)setObjectsAndKeys:(id)keys
{
  keysCopy = keys;
  v4 = [(NSMutableDictionary *)self->super._objectsAndKeys isEqual:keysCopy];
  v5 = keysCopy;
  if ((v4 & 1) == 0)
  {
    v6 = [keysCopy mutableCopy];
    v7 = v6;
    if (v6)
    {
      dictionary = v6;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    objectsAndKeys = self->super._objectsAndKeys;
    self->super._objectsAndKeys = dictionary;

    v5 = keysCopy;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STDictionaryData allocWithZone:zone];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  objectsAndKeys = [(STDictionaryData *)self objectsAndKeys];
  v7 = [(STDictionaryData *)v5 initWithObjectsAndKeys:objectsAndKeys];

  return v7;
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableDictionaryData:self];
  }

  return isKindOfClass & 1;
}

@end