@interface PREditorColorPickerVibrantMonotoneColor
+ (double)luminanceForPosterColor:(id)color withAppliedVariation:(double)variation;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)localizedName;
- (PREditorColorPickerVibrantMonotoneColor)colorWithVariation:(double)variation;
- (PREditorColorPickerVibrantMonotoneColor)initWithBSXPCCoder:(id)coder;
- (PREditorColorPickerVibrantMonotoneColor)initWithCoder:(id)coder;
- (PREditorColorPickerVibrantMonotoneColor)initWithColor:(id)color displayColors:(id)colors localizedName:(id)name;
- (id)displayColorWithVariation:(double)variation;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setContentsLuminance:(double)luminance;
@end

@implementation PREditorColorPickerVibrantMonotoneColor

+ (double)luminanceForPosterColor:(id)color withAppliedVariation:(double)variation
{
  v4 = variation * -0.25;
  hslValues = [color hslValues];
  [hslValues luminance];
  v7 = v6;

  result = fmax(v7 + v4, 0.1);
  if (result > 0.9)
  {
    return 0.9;
  }

  return result;
}

- (PREditorColorPickerVibrantMonotoneColor)initWithColor:(id)color displayColors:(id)colors localizedName:(id)name
{
  colorCopy = color;
  colorsCopy = colors;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = PREditorColorPickerVibrantMonotoneColor;
  v12 = [(PREditorColorPickerVibrantMonotoneColor *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_color, color);
    objc_storeStrong(&v13->_displayColors, colors);
    v14 = [(NSDictionary *)v13->_displayColors objectForKeyedSubscript:&unk_1F1C6B9C8];
    activeDisplayColor = v13->_activeDisplayColor;
    v13->_activeDisplayColor = v14;

    v16 = [nameCopy copy];
    localizedName = v13->_localizedName;
    v13->_localizedName = v16;
  }

  return v13;
}

- (NSString)localizedName
{
  localizedName = self->_localizedName;
  if (localizedName)
  {
    localizedName = localizedName;
  }

  else
  {
    localizedName = [(PRPosterColor *)self->_activeDisplayColor localizedName];
  }

  return localizedName;
}

- (void)setContentsLuminance:(double)luminance
{
  v4 = PRPosterContentsBackgroundTypeForLuminance(luminance);
  displayColors = self->_displayColors;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v7 = [(NSDictionary *)displayColors objectForKeyedSubscript:v6];

  activeDisplayColor = self->_activeDisplayColor;
  self->_activeDisplayColor = v7;
}

- (PREditorColorPickerVibrantMonotoneColor)colorWithVariation:(double)variation
{
  v3 = [(PRPosterColor *)self->_color copyWithAlpha:(variation + 1.0) * 0.5 + 0.0];

  return v3;
}

- (id)displayColorWithVariation:(double)variation
{
  [objc_opt_class() luminanceForPosterColor:self->_activeDisplayColor withAppliedVariation:variation];
  v4 = [(PRPosterColor *)self->_activeDisplayColor copyWithLuminance:?];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      color = [(PREditorColorPickerVibrantMonotoneColor *)self color];
      color2 = [(PREditorColorPickerVibrantMonotoneColor *)v7 color];
      v10 = BSEqualObjects();

      if (v10 && ([(PREditorColorPickerVibrantMonotoneColor *)self displayColors], v11 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerVibrantMonotoneColor *)v7 displayColors], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v11, v13) && ([(PREditorColorPickerVibrantMonotoneColor *)self initialVariation], v15 = v14, [(PREditorColorPickerVibrantMonotoneColor *)v7 initialVariation], v15 == v16))
      {
        localizedName = [(PREditorColorPickerVibrantMonotoneColor *)self localizedName];
        localizedName2 = [(PREditorColorPickerVibrantMonotoneColor *)v7 localizedName];
        v17 = BSEqualStrings();
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  color = [(PREditorColorPickerVibrantMonotoneColor *)self color];
  v5 = [v3 appendObject:color];

  displayColors = [(PREditorColorPickerVibrantMonotoneColor *)self displayColors];
  v7 = [v3 appendObject:displayColors];

  [(PREditorColorPickerVibrantMonotoneColor *)self initialVariation];
  v8 = [v3 appendCGFloat:?];
  if (self->_localizedName)
  {
    localizedName = [(PREditorColorPickerVibrantMonotoneColor *)self localizedName];
    v10 = [v3 appendObject:localizedName];
  }

  v11 = [v3 hash];

  return v11;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __54__PREditorColorPickerVibrantMonotoneColor_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  color = [(PREditorColorPickerVibrantMonotoneColor *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  displayColors = [(PREditorColorPickerVibrantMonotoneColor *)self displayColors];
  [coderCopy encodeObject:displayColors forKey:@"displayColors"];

  if (self->_localizedName)
  {
    localizedName = [(PREditorColorPickerVibrantMonotoneColor *)self localizedName];
    [coderCopy encodeObject:localizedName forKey:@"localizedName"];
  }
}

- (PREditorColorPickerVibrantMonotoneColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"color"];

  v7 = objc_opt_class();
  v8 = [coderCopy decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"displayColors"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];

  v10 = [(PREditorColorPickerVibrantMonotoneColor *)self initWithColor:v6 displayColors:v8 localizedName:v9];
  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  color = [(PREditorColorPickerVibrantMonotoneColor *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  displayColors = [(PREditorColorPickerVibrantMonotoneColor *)self displayColors];
  v7 = MEMORY[0x1E695DF70];
  displayColors2 = [(PREditorColorPickerVibrantMonotoneColor *)self displayColors];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(displayColors2, "count")}];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [displayColors allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        [v9 addObject:v16];
        v17 = [displayColors objectForKey:v16];
        [v10 addObject:v17];
      }

      v13 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [coderCopy encodeCollection:v9 forKey:@"displayColorKeys"];
  [coderCopy encodeCollection:v10 forKey:@"displayColorValues"];
  if (self->_localizedName)
  {
    localizedName = [(PREditorColorPickerVibrantMonotoneColor *)self localizedName];
    [coderCopy encodeObject:localizedName forKey:@"localizedName"];
  }
}

- (PREditorColorPickerVibrantMonotoneColor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"color"];

  v7 = objc_opt_class();
  v8 = [coderCopy decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"displayColorKeys"];
  v9 = objc_opt_class();
  v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"displayColorValues"];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v8];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];

  v13 = [(PREditorColorPickerVibrantMonotoneColor *)self initWithColor:v6 displayColors:v11 localizedName:v12];
  return v13;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  color = [(PREditorColorPickerVibrantMonotoneColor *)self color];
  v5 = [formatterCopy appendObject:color withName:@"color"];

  displayColors = [(PREditorColorPickerVibrantMonotoneColor *)self displayColors];
  v7 = [formatterCopy appendObject:displayColors withName:@"displayColors"];

  localizedName = [(PREditorColorPickerVibrantMonotoneColor *)self localizedName];
  v9 = [formatterCopy appendObject:localizedName withName:@"localizedName" skipIfNil:1];
}

@end