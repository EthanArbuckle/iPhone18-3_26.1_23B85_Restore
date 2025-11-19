@interface PRPosterContentVibrantMonochromeStyle
+ (void)performClassReplacementForKeyedUnarchiver:(id)a3;
- (BOOL)isEqual:(id)a3 strict:(BOOL)a4;
- (NSArray)colors;
- (NSString)nonVariatedIdentifier;
- (PRPosterContentVibrantMonochromeStyle)initWithBackgroundType:(unint64_t)a3 preferredMaterialType:(unint64_t)a4;
- (PRPosterContentVibrantMonochromeStyle)initWithCoder:(id)a3;
- (id)copyWithPreferredMaterial:(unint64_t)a3;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterContentVibrantMonochromeStyle

- (PRPosterContentVibrantMonochromeStyle)initWithBackgroundType:(unint64_t)a3 preferredMaterialType:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = PRPosterContentVibrantMonochromeStyle;
  v6 = [(PRPosterContentVibrantMonochromeStyle *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_backgroundType = a3;
    if (a3 == 1)
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

    v7->_preferredMaterialType = a4;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3 strict:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = (!v4 || self->_backgroundType == v7->_backgroundType) && self->_preferredMaterialType == v7->_preferredMaterialType;
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
  v2 = [(PRPosterContentVibrantMonochromeStyle *)self type];

  return _PRPosterContentStyleStringForType(v2);
}

- (NSArray)colors
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_effectiveColor;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)applyStyleWithRenderer:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 renderVibrantMonochromeStyle:self];
  }
}

- (id)copyWithPreferredMaterial:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  backgroundType = self->_backgroundType;

  return [v5 initWithBackgroundType:backgroundType preferredMaterialType:a3];
}

- (PRPosterContentVibrantMonochromeStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:*MEMORY[0x1E69C54B8]];
  v6 = *MEMORY[0x1E69C54C0];
  if ([v4 containsValueForKey:*MEMORY[0x1E69C54C0]])
  {
    v7 = [v4 decodeIntegerForKey:v6];
  }

  else
  {
    v7 = 1;
  }

  v8 = [(PRPosterContentVibrantMonochromeStyle *)self initWithBackgroundType:v7 preferredMaterialType:v5];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  preferredMaterialType = self->_preferredMaterialType;
  v5 = *MEMORY[0x1E69C54B8];
  v6 = a3;
  [v6 encodeInteger:preferredMaterialType forKey:v5];
  [v6 encodeInteger:self->_backgroundType forKey:*MEMORY[0x1E69C54C0]];
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)a3
{
  sub_1A8BDDBA4();
  v4 = a3;
  sub_1A8BDDB94();
}

@end