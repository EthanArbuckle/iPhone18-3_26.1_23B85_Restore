@interface PGControlsViewModelValues
- (BOOL)_BOOLForKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPrerollActive;
- (PGControlsViewModelValues)initWithDictionaryRepresentation:(id)representation;
- (UIColor)prerollTintColor;
- (id)_objectForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_integerForKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation PGControlsViewModelValues

- (PGControlsViewModelValues)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = PGControlsViewModelValues;
  v5 = [(PGControlsViewModelValues *)&v11 init];
  if (v5)
  {
    v6 = [representationCopy mutableCopy];
    v7 = v6;
    if (v6)
    {
      dictionary = v6;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = dictionary;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  dictionaryRepresentation = [(PGControlsViewModelValues *)self dictionaryRepresentation];
  v6 = [v4 initWithDictionaryRepresentation:dictionaryRepresentation];

  return v6;
}

- (BOOL)isPrerollActive
{
  prerollAttributes = [(PGControlsViewModelValues *)self prerollAttributes];
  v3 = prerollAttributes != 0;

  return v3;
}

- (UIColor)prerollTintColor
{
  if ([(PGControlsViewModelValues *)self isPrerollActive])
  {
    prerollAttributes = [(PGControlsViewModelValues *)self prerollAttributes];
    preferredTintColor = [prerollAttributes preferredTintColor];
    v5 = preferredTintColor;
    if (preferredTintColor)
    {
      defaultPrerollTintColor = preferredTintColor;
    }

    else
    {
      defaultPrerollTintColor = [objc_opt_class() defaultPrerollTintColor];
    }

    v7 = defaultPrerollTintColor;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  dictionaryRepresentation = [(PGControlsViewModelValues *)self dictionaryRepresentation];
  v8 = [dictionaryRepresentation objectForKeyedSubscript:keyCopy];

  if (valueCopy | v8 && ([v8 isEqual:valueCopy] & 1) == 0)
  {
    dictionaryRepresentation2 = [(PGControlsViewModelValues *)self dictionaryRepresentation];
    [dictionaryRepresentation2 setObject:valueCopy forKeyedSubscript:keyCopy];
  }
}

- (BOOL)_BOOLForKey:(id)key
{
  v3 = [(PGControlsViewModelValues *)self _objectForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int64_t)_integerForKey:(id)key
{
  v3 = [(PGControlsViewModelValues *)self _objectForKey:key];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)_objectForKey:(id)key
{
  keyCopy = key;
  dictionaryRepresentation = [(PGControlsViewModelValues *)self dictionaryRepresentation];
  v6 = [dictionaryRepresentation objectForKeyedSubscript:keyCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  dictionaryRepresentation = [(PGControlsViewModelValues *)self dictionaryRepresentation];
  dictionaryRepresentation2 = [v6 dictionaryRepresentation];

  LOBYTE(v6) = [dictionaryRepresentation isEqual:dictionaryRepresentation2];
  return v6;
}

@end