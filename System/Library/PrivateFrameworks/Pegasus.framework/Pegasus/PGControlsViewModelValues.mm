@interface PGControlsViewModelValues
- (BOOL)_BOOLForKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPrerollActive;
- (PGControlsViewModelValues)initWithDictionaryRepresentation:(id)a3;
- (UIColor)prerollTintColor;
- (id)_objectForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_integerForKey:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation PGControlsViewModelValues

- (PGControlsViewModelValues)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PGControlsViewModelValues;
  v5 = [(PGControlsViewModelValues *)&v11 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
    }

    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PGControlsViewModelValues *)self dictionaryRepresentation];
  v6 = [v4 initWithDictionaryRepresentation:v5];

  return v6;
}

- (BOOL)isPrerollActive
{
  v2 = [(PGControlsViewModelValues *)self prerollAttributes];
  v3 = v2 != 0;

  return v3;
}

- (UIColor)prerollTintColor
{
  if ([(PGControlsViewModelValues *)self isPrerollActive])
  {
    v3 = [(PGControlsViewModelValues *)self prerollAttributes];
    v4 = [v3 preferredTintColor];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [objc_opt_class() defaultPrerollTintColor];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(PGControlsViewModelValues *)self dictionaryRepresentation];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v10 | v8 && ([v8 isEqual:v10] & 1) == 0)
  {
    v9 = [(PGControlsViewModelValues *)self dictionaryRepresentation];
    [v9 setObject:v10 forKeyedSubscript:v6];
  }
}

- (BOOL)_BOOLForKey:(id)a3
{
  v3 = [(PGControlsViewModelValues *)self _objectForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int64_t)_integerForKey:(id)a3
{
  v3 = [(PGControlsViewModelValues *)self _objectForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (id)_objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(PGControlsViewModelValues *)self dictionaryRepresentation];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [(PGControlsViewModelValues *)self dictionaryRepresentation];
  v8 = [v6 dictionaryRepresentation];

  LOBYTE(v6) = [v7 isEqual:v8];
  return v6;
}

@end