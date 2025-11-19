@interface _UIVibrancyStyleKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToKey:(id)a3;
- (_UIVibrancyStyleKey)initWithRecipe:(id)a3 vibrancyStyle:(int64_t)a4 category:(id)a5;
@end

@implementation _UIVibrancyStyleKey

- (_UIVibrancyStyleKey)initWithRecipe:(id)a3 vibrancyStyle:(int64_t)a4 category:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = _UIVibrancyStyleKey;
  v9 = [(_UIVibrancyStyleKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_materialRecipe, a3);
    v10->_vibrancyStyle = a4;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UIVibrancyStyleKey *)self isEqualToKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToKey:(id)a3
{
  v4 = a3;
  v5 = v4 && self->_materialRecipe == v4[1] && self->_vibrancyStyle == v4[2];

  return v5;
}

@end