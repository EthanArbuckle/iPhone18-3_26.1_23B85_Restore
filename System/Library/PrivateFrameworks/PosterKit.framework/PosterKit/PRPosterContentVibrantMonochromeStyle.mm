@interface PRPosterContentVibrantMonochromeStyle
+ (void)performClassReplacementForKeyedUnarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal strict:(BOOL)strict;
- (NSArray)colors;
- (NSString)nonVariatedIdentifier;
- (PRPosterContentVibrantMonochromeStyle)initWithBackgroundType:(unint64_t)type preferredMaterialType:(unint64_t)materialType;
- (PRPosterContentVibrantMonochromeStyle)initWithCoder:(id)coder;
- (id)copyWithPreferredMaterial:(unint64_t)material;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)renderer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterContentVibrantMonochromeStyle

- (PRPosterContentVibrantMonochromeStyle)initWithBackgroundType:(unint64_t)type preferredMaterialType:(unint64_t)materialType
{
  v11.receiver = self;
  v11.super_class = PRPosterContentVibrantMonochromeStyle;
  v6 = [(PRPosterContentVibrantMonochromeStyle *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_backgroundType = type;
    if (type == 1)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v8 = ;
    effectiveColor = v7->_effectiveColor;
    v7->_effectiveColor = v8;

    v7->_preferredMaterialType = materialType;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal strict:(BOOL)strict
{
  strictCopy = strict;
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      v8 = (!strictCopy || self->_backgroundType == v7->_backgroundType) && self->_preferredMaterialType == v7->_preferredMaterialType;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendUnsignedInteger:self->_backgroundType];
  v5 = [v3 appendUnsignedInteger:self->_preferredMaterialType];
  v6 = [v3 hash];

  return v6;
}

- (NSString)nonVariatedIdentifier
{
  type = [(PRPosterContentVibrantMonochromeStyle *)self type];

  return _PRPosterContentStyleStringForType(type);
}

- (NSArray)colors
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_effectiveColor;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)applyStyleWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  if (objc_opt_respondsToSelector())
  {
    [rendererCopy renderVibrantMonochromeStyle:self];
  }
}

- (id)copyWithPreferredMaterial:(unint64_t)material
{
  v5 = objc_alloc(objc_opt_class());
  backgroundType = self->_backgroundType;

  return [v5 initWithBackgroundType:backgroundType preferredMaterialType:material];
}

- (PRPosterContentVibrantMonochromeStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:*MEMORY[0x1E69C54B8]];
  v6 = *MEMORY[0x1E69C54C0];
  if ([coderCopy containsValueForKey:*MEMORY[0x1E69C54C0]])
  {
    v7 = [coderCopy decodeIntegerForKey:v6];
  }

  else
  {
    v7 = 1;
  }

  v8 = [(PRPosterContentVibrantMonochromeStyle *)self initWithBackgroundType:v7 preferredMaterialType:v5];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  preferredMaterialType = self->_preferredMaterialType;
  v5 = *MEMORY[0x1E69C54B8];
  coderCopy = coder;
  [coderCopy encodeInteger:preferredMaterialType forKey:v5];
  [coderCopy encodeInteger:self->_backgroundType forKey:*MEMORY[0x1E69C54C0]];
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)unarchiver
{
  sub_1A8BDDBA4();
  unarchiverCopy = unarchiver;
  sub_1A8BDDB94();
}

@end