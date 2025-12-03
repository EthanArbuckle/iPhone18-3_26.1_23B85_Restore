@interface PRPosterContentVibrantMaterialStyle
+ (void)performClassReplacementForKeyedUnarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation;
- (NSString)nonVariatedIdentifier;
- (PRPosterContentVibrantMaterialStyle)initWithCoder:(id)coder;
- (PRPosterContentVibrantMaterialStyle)initWithPreferredMaterialType:(unint64_t)type;
- (id)copyWithPreferredMaterial:(unint64_t)material;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)renderer;
@end

@implementation PRPosterContentVibrantMaterialStyle

- (PRPosterContentVibrantMaterialStyle)initWithPreferredMaterialType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PRPosterContentVibrantMaterialStyle;
  result = [(PRPosterContentVibrantMaterialStyle *)&v5 init];
  if (result)
  {
    result->_preferredMaterialType = type;
  }

  return result;
}

- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
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
  type = [(PRPosterContentVibrantMaterialStyle *)self type];

  return _PRPosterContentStyleStringForType(type);
}

- (void)applyStyleWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  if (objc_opt_respondsToSelector())
  {
    [rendererCopy renderVibrantMaterialStyle:self];
  }
}

- (id)copyWithPreferredMaterial:(unint64_t)material
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithPreferredMaterialType:material];
}

- (PRPosterContentVibrantMaterialStyle)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:*MEMORY[0x1E69C54B8]];

  return [(PRPosterContentVibrantMaterialStyle *)self initWithPreferredMaterialType:v4];
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)unarchiver
{
  sub_1A8BDDB84();
  unarchiverCopy = unarchiver;
  sub_1A8BDDB74();
}

@end