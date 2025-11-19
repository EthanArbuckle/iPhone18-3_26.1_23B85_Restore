@interface _UISSecureControlTag
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (CGSize)size;
- (_UISSecureControlTag)initWithCategory:(id)a3 cornerStyle:(int64_t)a4 cornerRadius:(double)a5 baseForegroundColor:(CGColor *)a6 baseBackgroundColor:(CGColor *)a7 imagePlacement:(unint64_t)a8 size:(CGSize)a9;
- (_UISSecureControlTag)initWithCoder:(id)a3;
- (id)resolvedStyleForStyle:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UISSecureControlTag

- (_UISSecureControlTag)initWithCategory:(id)a3 cornerStyle:(int64_t)a4 cornerRadius:(double)a5 baseForegroundColor:(CGColor *)a6 baseBackgroundColor:(CGColor *)a7 imagePlacement:(unint64_t)a8 size:(CGSize)a9
{
  height = a9.height;
  width = a9.width;
  v18 = a3;
  v22.receiver = self;
  v22.super_class = _UISSecureControlTag;
  v19 = [(_UISSecureControlTag *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_category, a3);
    v20->_cornerRadius = a5;
    v20->_cornerStyle = a4;
    v20->_baseForegroundColor = CGColorRetain(a6);
    v20->_baseBackgroundColor = CGColorRetain(a7);
    v20->_imagePlacement = a8;
    v20->_size.width = width;
    v20->_size.height = height;
  }

  return v20;
}

- (_UISSecureControlTag)initWithCoder:(id)a3
{
  components[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _UISSecureControlTag;
  v5 = [(_UISSecureControlTag *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v6;

    [v4 decodeFloatForKey:@"cornerRadius"];
    v5->_cornerRadius = v8;
    v5->_cornerStyle = [v4 decodeIntegerForKey:@"cornerStyle"];
    v5->_imagePlacement = [v4 decodeIntegerForKey:@"imagePlacement"];
    [v4 decodeSizeForKey:@"size"];
    v5->_size.width = v9;
    v5->_size.height = v10;
    v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    if ([v4 containsValueForKey:@"foregroundColorRed"])
    {
      [v4 decodeDoubleForKey:@"foregroundColorRed"];
      components[0] = v12;
      [v4 decodeDoubleForKey:@"foregroundColorGreen"];
      components[1] = v13;
      [v4 decodeDoubleForKey:@"foregroundColorBlue"];
      components[2] = v14;
      [v4 decodeDoubleForKey:@"foregroundColorAlpha"];
      components[3] = v15;
      v5->_baseForegroundColor = CGColorCreate(v11, components);
    }

    if ([v4 containsValueForKey:@"backgroundColorRed"])
    {
      [v4 decodeDoubleForKey:@"backgroundColorRed"];
      v22[0] = v16;
      [v4 decodeDoubleForKey:@"backgroundColorGreen"];
      v22[1] = v17;
      [v4 decodeDoubleForKey:@"backgroundColorBlue"];
      v22[2] = v18;
      [v4 decodeDoubleForKey:@"backgroundColorAlpha"];
      v22[3] = v19;
      v5->_baseBackgroundColor = CGColorCreate(v11, v22);
    }

    CGColorSpaceRelease(v11);
  }

  return v5;
}

- (void)dealloc
{
  CGColorRelease(self->_baseForegroundColor);
  CGColorRelease(self->_baseBackgroundColor);
  v3.receiver = self;
  v3.super_class = _UISSecureControlTag;
  [(_UISSecureControlTag *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 encodeObject:self->_category forKey:@"category"];
  cornerRadius = self->_cornerRadius;
  *&cornerRadius = cornerRadius;
  [v4 encodeFloat:@"cornerRadius" forKey:cornerRadius];
  [v4 encodeInteger:self->_cornerStyle forKey:@"cornerStyle"];
  [v4 encodeInteger:self->_imagePlacement forKey:@"imagePlacement"];
  [v4 encodeSize:@"size" forKey:{self->_size.width, self->_size.height}];
  baseForegroundColor = self->_baseForegroundColor;
  if (baseForegroundColor)
  {
    UISGetColorSRGBComponents(baseForegroundColor, &v8);
    [v4 encodeDouble:@"foregroundColorRed" forKey:v8];
    [v4 encodeDouble:@"foregroundColorGreen" forKey:v9];
    [v4 encodeDouble:@"foregroundColorBlue" forKey:v10];
    [v4 encodeDouble:@"foregroundColorAlpha" forKey:v11];
  }

  baseBackgroundColor = self->_baseBackgroundColor;
  if (baseBackgroundColor)
  {
    UISGetColorSRGBComponents(baseBackgroundColor, &v8);
    [v4 encodeDouble:@"backgroundColorRed" forKey:v8];
    [v4 encodeDouble:@"backgroundColorGreen" forKey:v9];
    [v4 encodeDouble:@"backgroundColorBlue" forKey:v10];
    [v4 encodeDouble:@"backgroundColorAlpha" forKey:v11];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && ((category = self->_category, category == *(v4 + 1)) || [(_UISSecureControlCategory *)category isEqual:?]) && self->_cornerRadius == *(v4 + 2) && self->_cornerStyle == *(v4 + 3) && self->_imagePlacement == *(v4 + 6) && (self->_size.width == *(v4 + 7) ? (v6 = self->_size.height == *(v4 + 8)) : (v6 = 0), v6 && CGColorEqualToColor(self->_baseForegroundColor, *(v4 + 4))) && CGColorEqualToColor(self->_baseBackgroundColor, *(v4 + 5));

  return v7;
}

- (unint64_t)hash
{
  v3 = +[_UISSecureControlTag hash];
  v4 = [(_UISSecureControlCategory *)self->_category hash];
  cornerRadius = self->_cornerRadius;
  cornerStyle = self->_cornerStyle;
  imagePlacement = self->_imagePlacement;
  width = self->_size.width;
  height = self->_size.height;
  baseForegroundColor = self->_baseForegroundColor;
  if (baseForegroundColor)
  {
    v11 = CFHash(baseForegroundColor);
  }

  else
  {
    v11 = 0;
  }

  baseBackgroundColor = self->_baseBackgroundColor;
  if (baseBackgroundColor)
  {
    baseBackgroundColor = CFHash(baseBackgroundColor);
  }

  return v4 ^ v3 ^ cornerStyle ^ imagePlacement ^ cornerRadius ^ width ^ height ^ v11 ^ baseBackgroundColor;
}

- (BOOL)isValid
{
  v3 = [(_UISSecureControlCategory *)self->_category isValid];
  if (v3)
  {
    if (self->_cornerRadius < 0.0 || (self->_cornerStyle + 1) > 5 || ((imagePlacement = self->_imagePlacement, v5 = imagePlacement > 8, v6 = (1 << imagePlacement) & 0x116, !v5) ? (v7 = v6 == 0) : (v7 = 1), v7 || self->_size.width <= 0.0 || self->_size.height <= 0.0))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      baseForegroundColor = self->_baseForegroundColor;
      if (!baseForegroundColor || (v3 = UISIsColorInDisplayP3Gamut(baseForegroundColor)) != 0)
      {
        baseBackgroundColor = self->_baseBackgroundColor;
        if (baseBackgroundColor)
        {

          LOBYTE(v3) = UISIsColorInDisplayP3Gamut(baseBackgroundColor);
        }

        else
        {
          LOBYTE(v3) = 1;
        }
      }
    }
  }

  return v3;
}

- (id)resolvedStyleForStyle:(id)a3
{
  v3 = [a3 copyWithChangeBlock:&__block_literal_global_0];

  return v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end