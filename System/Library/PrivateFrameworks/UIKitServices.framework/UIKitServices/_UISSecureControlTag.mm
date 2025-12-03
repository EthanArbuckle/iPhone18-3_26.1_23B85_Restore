@interface _UISSecureControlTag
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (CGSize)size;
- (_UISSecureControlTag)initWithCategory:(id)category cornerStyle:(int64_t)style cornerRadius:(double)radius baseForegroundColor:(CGColor *)color baseBackgroundColor:(CGColor *)backgroundColor imagePlacement:(unint64_t)placement size:(CGSize)size;
- (_UISSecureControlTag)initWithCoder:(id)coder;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISSecureControlTag

- (_UISSecureControlTag)initWithCategory:(id)category cornerStyle:(int64_t)style cornerRadius:(double)radius baseForegroundColor:(CGColor *)color baseBackgroundColor:(CGColor *)backgroundColor imagePlacement:(unint64_t)placement size:(CGSize)size
{
  height = size.height;
  width = size.width;
  categoryCopy = category;
  v22.receiver = self;
  v22.super_class = _UISSecureControlTag;
  v19 = [(_UISSecureControlTag *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_category, category);
    v20->_cornerRadius = radius;
    v20->_cornerStyle = style;
    v20->_baseForegroundColor = CGColorRetain(color);
    v20->_baseBackgroundColor = CGColorRetain(backgroundColor);
    v20->_imagePlacement = placement;
    v20->_size.width = width;
    v20->_size.height = height;
  }

  return v20;
}

- (_UISSecureControlTag)initWithCoder:(id)coder
{
  components[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _UISSecureControlTag;
  v5 = [(_UISSecureControlTag *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v6;

    [coderCopy decodeFloatForKey:@"cornerRadius"];
    v5->_cornerRadius = v8;
    v5->_cornerStyle = [coderCopy decodeIntegerForKey:@"cornerStyle"];
    v5->_imagePlacement = [coderCopy decodeIntegerForKey:@"imagePlacement"];
    [coderCopy decodeSizeForKey:@"size"];
    v5->_size.width = v9;
    v5->_size.height = v10;
    v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    if ([coderCopy containsValueForKey:@"foregroundColorRed"])
    {
      [coderCopy decodeDoubleForKey:@"foregroundColorRed"];
      components[0] = v12;
      [coderCopy decodeDoubleForKey:@"foregroundColorGreen"];
      components[1] = v13;
      [coderCopy decodeDoubleForKey:@"foregroundColorBlue"];
      components[2] = v14;
      [coderCopy decodeDoubleForKey:@"foregroundColorAlpha"];
      components[3] = v15;
      v5->_baseForegroundColor = CGColorCreate(v11, components);
    }

    if ([coderCopy containsValueForKey:@"backgroundColorRed"])
    {
      [coderCopy decodeDoubleForKey:@"backgroundColorRed"];
      v22[0] = v16;
      [coderCopy decodeDoubleForKey:@"backgroundColorGreen"];
      v22[1] = v17;
      [coderCopy decodeDoubleForKey:@"backgroundColorBlue"];
      v22[2] = v18;
      [coderCopy decodeDoubleForKey:@"backgroundColorAlpha"];
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

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeObject:self->_category forKey:@"category"];
  cornerRadius = self->_cornerRadius;
  *&cornerRadius = cornerRadius;
  [coderCopy encodeFloat:@"cornerRadius" forKey:cornerRadius];
  [coderCopy encodeInteger:self->_cornerStyle forKey:@"cornerStyle"];
  [coderCopy encodeInteger:self->_imagePlacement forKey:@"imagePlacement"];
  [coderCopy encodeSize:@"size" forKey:{self->_size.width, self->_size.height}];
  baseForegroundColor = self->_baseForegroundColor;
  if (baseForegroundColor)
  {
    UISGetColorSRGBComponents(baseForegroundColor, &v8);
    [coderCopy encodeDouble:@"foregroundColorRed" forKey:v8];
    [coderCopy encodeDouble:@"foregroundColorGreen" forKey:v9];
    [coderCopy encodeDouble:@"foregroundColorBlue" forKey:v10];
    [coderCopy encodeDouble:@"foregroundColorAlpha" forKey:v11];
  }

  baseBackgroundColor = self->_baseBackgroundColor;
  if (baseBackgroundColor)
  {
    UISGetColorSRGBComponents(baseBackgroundColor, &v8);
    [coderCopy encodeDouble:@"backgroundColorRed" forKey:v8];
    [coderCopy encodeDouble:@"backgroundColorGreen" forKey:v9];
    [coderCopy encodeDouble:@"backgroundColorBlue" forKey:v10];
    [coderCopy encodeDouble:@"backgroundColorAlpha" forKey:v11];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && ((category = self->_category, category == *(equalCopy + 1)) || [(_UISSecureControlCategory *)category isEqual:?]) && self->_cornerRadius == *(equalCopy + 2) && self->_cornerStyle == *(equalCopy + 3) && self->_imagePlacement == *(equalCopy + 6) && (self->_size.width == *(equalCopy + 7) ? (v6 = self->_size.height == *(equalCopy + 8)) : (v6 = 0), v6 && CGColorEqualToColor(self->_baseForegroundColor, *(equalCopy + 4))) && CGColorEqualToColor(self->_baseBackgroundColor, *(equalCopy + 5));

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
  isValid = [(_UISSecureControlCategory *)self->_category isValid];
  if (isValid)
  {
    if (self->_cornerRadius < 0.0 || (self->_cornerStyle + 1) > 5 || ((imagePlacement = self->_imagePlacement, v5 = imagePlacement > 8, v6 = (1 << imagePlacement) & 0x116, !v5) ? (v7 = v6 == 0) : (v7 = 1), v7 || self->_size.width <= 0.0 || self->_size.height <= 0.0))
    {
      LOBYTE(isValid) = 0;
    }

    else
    {
      baseForegroundColor = self->_baseForegroundColor;
      if (!baseForegroundColor || (isValid = UISIsColorInDisplayP3Gamut(baseForegroundColor)) != 0)
      {
        baseBackgroundColor = self->_baseBackgroundColor;
        if (baseBackgroundColor)
        {

          LOBYTE(isValid) = UISIsColorInDisplayP3Gamut(baseBackgroundColor);
        }

        else
        {
          LOBYTE(isValid) = 1;
        }
      }
    }
  }

  return isValid;
}

- (id)resolvedStyleForStyle:(id)style
{
  v3 = [style copyWithChangeBlock:&__block_literal_global_0];

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