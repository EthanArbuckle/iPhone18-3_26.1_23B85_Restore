@interface PREditorColorPickerVibrantMonotoneColor
+ (double)luminanceForPosterColor:(id)a3 withAppliedVariation:(double)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)localizedName;
- (PREditorColorPickerVibrantMonotoneColor)colorWithVariation:(double)a3;
- (PREditorColorPickerVibrantMonotoneColor)initWithBSXPCCoder:(id)a3;
- (PREditorColorPickerVibrantMonotoneColor)initWithCoder:(id)a3;
- (PREditorColorPickerVibrantMonotoneColor)initWithColor:(id)a3 displayColors:(id)a4 localizedName:(id)a5;
- (id)displayColorWithVariation:(double)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setContentsLuminance:(double)a3;
@end

@implementation PREditorColorPickerVibrantMonotoneColor

+ (double)luminanceForPosterColor:(id)a3 withAppliedVariation:(double)a4
{
  v4 = a4 * -0.25;
  v5 = [a3 hslValues];
  [v5 luminance];
  v7 = v6;

  result = fmax(v7 + v4, 0.1);
  if (result > 0.9)
  {
    return 0.9;
  }

  return result;
}

- (PREditorColorPickerVibrantMonotoneColor)initWithColor:(id)a3 displayColors:(id)a4 localizedName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PREditorColorPickerVibrantMonotoneColor;
  v12 = [(PREditorColorPickerVibrantMonotoneColor *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_color, a3);
    objc_storeStrong(&v13->_displayColors, a4);
    v14 = [(NSDictionary *)v13->_displayColors objectForKeyedSubscript:&unk_1F1C6B9C8];
    activeDisplayColor = v13->_activeDisplayColor;
    v13->_activeDisplayColor = v14;

    v16 = [v11 copy];
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
    v3 = localizedName;
  }

  else
  {
    v3 = [(PRPosterColor *)self->_activeDisplayColor localizedName];
  }

  return v3;
}

- (void)setContentsLuminance:(double)a3
{
  v4 = PRPosterContentsBackgroundTypeForLuminance(a3);
  displayColors = self->_displayColors;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v7 = [(NSDictionary *)displayColors objectForKeyedSubscript:v6];

  activeDisplayColor = self->_activeDisplayColor;
  self->_activeDisplayColor = v7;
}

- (PREditorColorPickerVibrantMonotoneColor)colorWithVariation:(double)a3
{
  v3 = [(PRPosterColor *)self->_color copyWithAlpha:(a3 + 1.0) * 0.5 + 0.0];

  return v3;
}

- (id)displayColorWithVariation:(double)a3
{
  [objc_opt_class() luminanceForPosterColor:self->_activeDisplayColor withAppliedVariation:a3];
  v4 = [(PRPosterColor *)self->_activeDisplayColor copyWithLuminance:?];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PREditorColorPickerVibrantMonotoneColor *)self color];
      v9 = [(PREditorColorPickerVibrantMonotoneColor *)v7 color];
      v10 = BSEqualObjects();

      if (v10 && ([(PREditorColorPickerVibrantMonotoneColor *)self displayColors], v11 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerVibrantMonotoneColor *)v7 displayColors], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v11, v13) && ([(PREditorColorPickerVibrantMonotoneColor *)self initialVariation], v15 = v14, [(PREditorColorPickerVibrantMonotoneColor *)v7 initialVariation], v15 == v16))
      {
        v19 = [(PREditorColorPickerVibrantMonotoneColor *)self localizedName];
        v20 = [(PREditorColorPickerVibrantMonotoneColor *)v7 localizedName];
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
  v4 = [(PREditorColorPickerVibrantMonotoneColor *)self color];
  v5 = [v3 appendObject:v4];

  v6 = [(PREditorColorPickerVibrantMonotoneColor *)self displayColors];
  v7 = [v3 appendObject:v6];

  [(PREditorColorPickerVibrantMonotoneColor *)self initialVariation];
  v8 = [v3 appendCGFloat:?];
  if (self->_localizedName)
  {
    v9 = [(PREditorColorPickerVibrantMonotoneColor *)self localizedName];
    v10 = [v3 appendObject:v9];
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
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(PREditorColorPickerVibrantMonotoneColor *)self color];
  [v7 encodeObject:v4 forKey:@"color"];

  v5 = [(PREditorColorPickerVibrantMonotoneColor *)self displayColors];
  [v7 encodeObject:v5 forKey:@"displayColors"];

  if (self->_localizedName)
  {
    v6 = [(PREditorColorPickerVibrantMonotoneColor *)self localizedName];
    [v7 encodeObject:v6 forKey:@"localizedName"];
  }
}

- (PREditorColorPickerVibrantMonotoneColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"color"];

  v7 = objc_opt_class();
  v8 = [v4 decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"displayColors"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];

  v10 = [(PREditorColorPickerVibrantMonotoneColor *)self initWithColor:v6 displayColors:v8 localizedName:v9];
  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PREditorColorPickerVibrantMonotoneColor *)self color];
  [v4 encodeObject:v5 forKey:@"color"];

  v6 = [(PREditorColorPickerVibrantMonotoneColor *)self displayColors];
  v7 = MEMORY[0x1E695DF70];
  v8 = [(PREditorColorPickerVibrantMonotoneColor *)self displayColors];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v6 allKeys];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        [v9 addObject:v16];
        v17 = [v6 objectForKey:v16];
        [v10 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [v4 encodeCollection:v9 forKey:@"displayColorKeys"];
  [v4 encodeCollection:v10 forKey:@"displayColorValues"];
  if (self->_localizedName)
  {
    v18 = [(PREditorColorPickerVibrantMonotoneColor *)self localizedName];
    [v4 encodeObject:v18 forKey:@"localizedName"];
  }
}

- (PREditorColorPickerVibrantMonotoneColor)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"color"];

  v7 = objc_opt_class();
  v8 = [v4 decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"displayColorKeys"];
  v9 = objc_opt_class();
  v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"displayColorValues"];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v8];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];

  v13 = [(PREditorColorPickerVibrantMonotoneColor *)self initWithColor:v6 displayColors:v11 localizedName:v12];
  return v13;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v10 = a3;
  v4 = [(PREditorColorPickerVibrantMonotoneColor *)self color];
  v5 = [v10 appendObject:v4 withName:@"color"];

  v6 = [(PREditorColorPickerVibrantMonotoneColor *)self displayColors];
  v7 = [v10 appendObject:v6 withName:@"displayColors"];

  v8 = [(PREditorColorPickerVibrantMonotoneColor *)self localizedName];
  v9 = [v10 appendObject:v8 withName:@"localizedName" skipIfNil:1];
}

@end