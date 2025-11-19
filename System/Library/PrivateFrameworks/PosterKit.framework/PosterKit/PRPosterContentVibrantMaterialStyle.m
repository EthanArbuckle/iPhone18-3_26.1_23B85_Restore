@interface PRPosterContentVibrantMaterialStyle
+ (void)performClassReplacementForKeyedUnarchiver:(id)a3;
- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4;
- (NSString)nonVariatedIdentifier;
- (PRPosterContentVibrantMaterialStyle)initWithCoder:(id)a3;
- (PRPosterContentVibrantMaterialStyle)initWithPreferredMaterialType:(unint64_t)a3;
- (id)copyWithPreferredMaterial:(unint64_t)a3;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)a3;
@end

@implementation PRPosterContentVibrantMaterialStyle

- (PRPosterContentVibrantMaterialStyle)initWithPreferredMaterialType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PRPosterContentVibrantMaterialStyle;
  result = [(PRPosterContentVibrantMaterialStyle *)&v5 init];
  if (result)
  {
    result->_preferredMaterialType = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    if (v6 && self->_preferredMaterialType == *(v6 + 1))
    {
      v8 = [(PRPosterContentVibrantMaterialStyle *)self isEqual:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendUnsignedInteger:self->_preferredMaterialType];
  v5 = [v3 hash];

  return v5;
}

- (NSString)nonVariatedIdentifier
{
  v2 = [(PRPosterContentVibrantMaterialStyle *)self type];

  return _PRPosterContentStyleStringForType(v2);
}

- (void)applyStyleWithRenderer:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 renderVibrantMaterialStyle:self];
  }
}

- (id)copyWithPreferredMaterial:(unint64_t)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithPreferredMaterialType:a3];
}

- (PRPosterContentVibrantMaterialStyle)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:*MEMORY[0x1E69C54B8]];

  return [(PRPosterContentVibrantMaterialStyle *)self initWithPreferredMaterialType:v4];
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)a3
{
  sub_1A8BDDB84();
  v4 = a3;
  sub_1A8BDDB74();
}

@end