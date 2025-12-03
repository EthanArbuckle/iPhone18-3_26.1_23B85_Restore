@interface _UIVibrancyStyleKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToKey:(id)key;
- (_UIVibrancyStyleKey)initWithRecipe:(id)recipe vibrancyStyle:(int64_t)style category:(id)category;
@end

@implementation _UIVibrancyStyleKey

- (_UIVibrancyStyleKey)initWithRecipe:(id)recipe vibrancyStyle:(int64_t)style category:(id)category
{
  recipeCopy = recipe;
  v12.receiver = self;
  v12.super_class = _UIVibrancyStyleKey;
  v9 = [(_UIVibrancyStyleKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_materialRecipe, recipe);
    v10->_vibrancyStyle = style;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UIVibrancyStyleKey *)self isEqualToKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy && self->_materialRecipe == keyCopy[1] && self->_vibrancyStyle == keyCopy[2];

  return v5;
}

@end