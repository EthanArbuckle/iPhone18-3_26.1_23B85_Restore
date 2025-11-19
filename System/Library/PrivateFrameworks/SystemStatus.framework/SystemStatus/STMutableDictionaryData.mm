@interface STMutableDictionaryData
- (BOOL)applyDiff:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setObjectsAndKeys:(id)a3;
@end

@implementation STMutableDictionaryData

- (void)setObjectsAndKeys:(id)a3
{
  v10 = a3;
  v4 = [(NSMutableDictionary *)self->super._objectsAndKeys isEqual:v10];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    v6 = [v10 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
    }

    objectsAndKeys = self->super._objectsAndKeys;
    self->super._objectsAndKeys = v8;

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STDictionaryData allocWithZone:a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(STDictionaryData *)self objectsAndKeys];
  v7 = [(STDictionaryData *)v5 initWithObjectsAndKeys:v6];

  return v7;
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableDictionaryData:self];
  }

  return isKindOfClass & 1;
}

@end