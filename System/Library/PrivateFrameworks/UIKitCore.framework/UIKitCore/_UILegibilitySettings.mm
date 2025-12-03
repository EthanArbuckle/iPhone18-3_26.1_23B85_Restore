@interface _UILegibilitySettings
+ (id)sharedInstanceForStyle:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UILegibilitySettings)initWithCoder:(id)coder;
- (_UILegibilitySettings)initWithContentColor:(id)color;
- (_UILegibilitySettings)initWithContentColor:(id)color contrast:(double)contrast;
- (_UILegibilitySettings)initWithStyle:(int64_t)style contentColor:(id)color;
- (_UILegibilitySettings)initWithStyle:(int64_t)style primaryColor:(id)color secondaryColor:(id)secondaryColor shadowColor:(id)shadowColor;
- (_UILegibilitySettings)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setContentColor:(id)color;
- (void)setPropertiesForStyle:(int64_t)style;
@end

@implementation _UILegibilitySettings

- (void)dealloc
{
  self->_shadowCompositingFilterName = 0;

  self->_contentColor = 0;
  self->_primaryColor = 0;

  self->_secondaryColor = 0;
  self->_shadowColor = 0;
  v3.receiver = self;
  v3.super_class = _UILegibilitySettings;
  [(_UILegibilitySettings *)&v3 dealloc];
}

+ (id)sharedInstanceForStyle:(int64_t)style
{
  if (style != 2)
  {
    if (qword_1EA963BF0 == -1)
    {
      v3 = &qword_1EA963BF8;
      return *v3;
    }

    v5 = &qword_1EA963BF0;
    v6 = &__block_literal_global_97_0;
LABEL_9:
    dispatch_once(v5, v6);
    v3 = v5 + 1;
    return *v3;
  }

  if (qword_1EA963C00 != -1)
  {
    v5 = &qword_1EA963C00;
    v6 = &__block_literal_global_101_0;
    goto LABEL_9;
  }

  v3 = &qword_1EA963C08;
  return *v3;
}

- (_UILegibilitySettings)initWithContentColor:(id)color
{
  v5 = [_UILegibilitySettingsProvider styleForContentColor:?];

  return [(_UILegibilitySettings *)self initWithStyle:v5 contentColor:color];
}

- (_UILegibilitySettings)initWithContentColor:(id)color contrast:(double)contrast
{
  v6 = [_UILegibilitySettingsProvider styleForContentColor:contrast contrast:?];

  return [(_UILegibilitySettings *)self initWithStyle:v6 contentColor:color];
}

- (_UILegibilitySettings)initWithStyle:(int64_t)style contentColor:(id)color
{
  v9.receiver = self;
  v9.super_class = _UILegibilitySettings;
  v6 = [(_UILegibilitySettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(_UILegibilitySettings *)v6 setStyle:style];
    [(_UILegibilitySettings *)v7 setMinFillHeight:20.0];
    [(_UILegibilitySettings *)v7 setPropertiesForStyle:style];
    [(_UILegibilitySettings *)v7 setContentColor:color];
  }

  return v7;
}

- (_UILegibilitySettings)initWithStyle:(int64_t)style primaryColor:(id)color secondaryColor:(id)secondaryColor shadowColor:(id)shadowColor
{
  v9 = [(_UILegibilitySettings *)self initWithStyle:style];
  v10 = v9;
  if (v9)
  {
    [(_UILegibilitySettings *)v9 setPrimaryColor:color];
    [(_UILegibilitySettings *)v10 setSecondaryColor:secondaryColor];
    [(_UILegibilitySettings *)v10 setShadowColor:shadowColor];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UILegibilitySettings allocWithZone:?]primaryColor:"initWithStyle:primaryColor:secondaryColor:shadowColor:" secondaryColor:self->_style shadowColor:self->_primaryColor, self->_secondaryColor, self->_shadowColor];
  v4->_contentColor = [(UIColor *)[(_UILegibilitySettings *)self contentColor] copy];
  [(_UILegibilitySettings *)self shadowRadius];
  v4->_shadowRadius = v5;
  [(_UILegibilitySettings *)self shadowAlpha];
  v4->_shadowAlpha = v6;
  [(_UILegibilitySettings *)self imageOutset];
  v4->_imageOutset = v7;
  [(_UILegibilitySettings *)self minFillHeight];
  v4->_minFillHeight = v8;
  v4->_shadowCompositingFilterName = [(NSString *)[(_UILegibilitySettings *)self shadowCompositingFilterName] copy];
  return v4;
}

- (void)setPropertiesForStyle:(int64_t)style
{
  if (style == 2)
  {
    v5 = @"lightenSourceOver";
    goto LABEL_7;
  }

  if (style == 1)
  {
    v5 = @"darkenSourceOver";
LABEL_7:
    [(_UILegibilitySettings *)self setShadowCompositingFilterName:v5];
    [(_UILegibilitySettings *)self setShadowRadius:12.0];
    [(_UILegibilitySettings *)self setShadowAlpha:1.0];
    [(_UILegibilitySettings *)self shadowRadius];
    v4 = v6 + v6;
    goto LABEL_8;
  }

  if (style)
  {
    return;
  }

  v4 = 0.0;
  [(_UILegibilitySettings *)self setShadowRadius:0.0];
  [(_UILegibilitySettings *)self setShadowAlpha:0.0];
LABEL_8:

  [(_UILegibilitySettings *)self setImageOutset:v4];
}

- (void)setContentColor:(id)color
{
  contentColor = self->_contentColor;
  self->_contentColor = color;

  style = [(_UILegibilitySettings *)self style];
  if (style == 2)
  {
    if (color)
    {
      v8 = ComputeLegibilityColorFromColor(color, 0.3);
    }

    else
    {
      v8 = +[UIColor blackColor];
    }

    [(_UILegibilitySettings *)self setPrimaryColor:v8];
    [(_UILegibilitySettings *)self setSecondaryColor:[(UIColor *)[(_UILegibilitySettings *)self primaryColor] colorWithAlphaComponent:0.45]];
    v7 = +[UIColor whiteColor];
  }

  else if (style == 1)
  {
    [(_UILegibilitySettings *)self setPrimaryColor:+[UIColor whiteColor]];
    [(_UILegibilitySettings *)self setSecondaryColor:[(UIColor *)[(_UILegibilitySettings *)self primaryColor] colorWithAlphaComponent:0.45]];
    if (color)
    {
      v7 = ComputeLegibilityColorFromColor(color, 0.25);
    }

    else
    {
      v7 = +[UIColor blackColor];
    }
  }

  else
  {
    if (style)
    {
      return;
    }

    [(_UILegibilitySettings *)self setPrimaryColor:+[UIColor clearColor]];
    [(_UILegibilitySettings *)self setSecondaryColor:+[UIColor clearColor]];
    v7 = +[UIColor clearColor];
  }

  [(_UILegibilitySettings *)self setShadowColor:v7];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_style == *(equal + 1) && vabdd_f64(self->_shadowAlpha, *(equal + 7)) < 2.22044605e-16 && vabdd_f64(self->_shadowRadius, *(equal + 6)) < 2.22044605e-16 && vabdd_f64(self->_imageOutset, *(equal + 8)) < 2.22044605e-16 && vabdd_f64(self->_minFillHeight, *(equal + 9)) < 2.22044605e-16)
  {
    contentColor = self->_contentColor;
    v6 = *(equal + 2);
    if (contentColor == v6 || !(contentColor | v6) || (v7 = [(UIColor *)contentColor _isSimilarToColor:0.01 withinPercentage:?]))
    {
      primaryColor = self->_primaryColor;
      v9 = *(equal + 3);
      if (primaryColor == v9 || !(primaryColor | v9) || (v7 = [(UIColor *)primaryColor _isSimilarToColor:0.01 withinPercentage:?]))
      {
        secondaryColor = self->_secondaryColor;
        v11 = *(equal + 4);
        if (secondaryColor == v11 || !(secondaryColor | v11) || (v7 = [(UIColor *)secondaryColor _isSimilarToColor:0.01 withinPercentage:?]))
        {
          shadowColor = self->_shadowColor;
          v13 = *(equal + 5);
          LOBYTE(v7) = 1;
          if (shadowColor != v13)
          {
            if (shadowColor | v13)
            {
              v14 = self->_shadowColor;

              LOBYTE(v7) = [(UIColor *)v14 _isSimilarToColor:0.01 withinPercentage:?];
            }
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"_UILegibilityStyleDefault";
  style = self->_style;
  if (style == 2)
  {
    v5 = @"_UILegibilityStyleDarkContentWithLightShadow";
  }

  if (style == 1)
  {
    v5 = @"_UILegibilityStyleLightContentWithDarkShadow";
  }

  return [v3 stringWithFormat:@"<%@: %p; style: '%@' primaryColor: '%@' secondaryColor: '%@' shadowColor: '%@' contentColor: '%@'>", v4, self, v5, self->_primaryColor, self->_secondaryColor, self->_shadowColor, self->_contentColor];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:-[_UILegibilitySettings style](self forKey:{"style"), @"UILegibilityStyle"}];
  [coder encodeObject:-[_UILegibilitySettings contentColor](self forKey:{"contentColor"), @"UILegibilityContentColor"}];
  [coder encodeObject:-[_UILegibilitySettings primaryColor](self forKey:{"primaryColor"), @"UILegibilityPrimaryColor"}];
  [coder encodeObject:-[_UILegibilitySettings secondaryColor](self forKey:{"secondaryColor"), @"UILegibilitySecondaryColor"}];
  [coder encodeObject:-[_UILegibilitySettings shadowColor](self forKey:{"shadowColor"), @"UILegibilityShadowColor"}];
  [coder encodeObject:-[_UILegibilitySettings shadowCompositingFilterName](self forKey:{"shadowCompositingFilterName"), @"UILegibilityShadowCompositingFilterName"}];
  [(_UILegibilitySettings *)self shadowRadius];
  [coder encodeDouble:@"UILegibilityShadowRadius" forKey:?];
  [(_UILegibilitySettings *)self shadowAlpha];
  [coder encodeDouble:@"UILegibilityShadowAlpha" forKey:?];
  [(_UILegibilitySettings *)self imageOutset];
  [coder encodeDouble:@"UILegibilityImageOutset" forKey:?];
  [(_UILegibilitySettings *)self minFillHeight];

  [coder encodeDouble:@"UILegibilityMinFillHeight" forKey:?];
}

- (_UILegibilitySettings)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UILegibilitySettings;
  v4 = [(_UILegibilitySettings *)&v6 init];
  if (v4)
  {
    -[_UILegibilitySettings setStyle:](v4, "setStyle:", [coder decodeIntegerForKey:@"UILegibilityStyle"]);
    -[_UILegibilitySettings setContentColor:](v4, "setContentColor:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"UILegibilityContentColor"]);
    -[_UILegibilitySettings setPrimaryColor:](v4, "setPrimaryColor:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"UILegibilityPrimaryColor"]);
    -[_UILegibilitySettings setSecondaryColor:](v4, "setSecondaryColor:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"UILegibilitySecondaryColor"]);
    -[_UILegibilitySettings setShadowColor:](v4, "setShadowColor:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"UILegibilityShadowColor"]);
    -[_UILegibilitySettings setShadowCompositingFilterName:](v4, "setShadowCompositingFilterName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"UILegibilityShadowCompositingFilterName"]);
    [coder decodeDoubleForKey:@"UILegibilityShadowRadius"];
    [(_UILegibilitySettings *)v4 setShadowRadius:?];
    [coder decodeDoubleForKey:@"UILegibilityShadowAlpha"];
    [(_UILegibilitySettings *)v4 setShadowAlpha:?];
    [coder decodeDoubleForKey:@"UILegibilityImageOutset"];
    [(_UILegibilitySettings *)v4 setImageOutset:?];
    [coder decodeDoubleForKey:@"UILegibilityMinFillHeight"];
    [(_UILegibilitySettings *)v4 setMinFillHeight:?];
  }

  return v4;
}

- (_UILegibilitySettings)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = _UILegibilitySettings;
  v4 = [(_UILegibilitySettings *)&v6 init];
  if (v4)
  {
    -[_UILegibilitySettings setStyle:](v4, "setStyle:", xpc_dictionary_get_int64(dictionary, [@"UILegibilityStyle" UTF8String]));
    objc_opt_class();
    [@"UILegibilityContentColor" UTF8String];
    [(_UILegibilitySettings *)v4 setContentColor:BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey()];
    objc_opt_class();
    [@"UILegibilityPrimaryColor" UTF8String];
    [(_UILegibilitySettings *)v4 setPrimaryColor:BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey()];
    objc_opt_class();
    [@"UILegibilitySecondaryColor" UTF8String];
    [(_UILegibilitySettings *)v4 setSecondaryColor:BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey()];
    objc_opt_class();
    [@"UILegibilityShadowColor" UTF8String];
    [(_UILegibilitySettings *)v4 setShadowColor:BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey()];
    [@"UILegibilityShadowCompositingFilterName" UTF8String];
    [(_UILegibilitySettings *)v4 setShadowCompositingFilterName:BSDeserializeStringFromXPCDictionaryWithKey()];
    -[_UILegibilitySettings setShadowRadius:](v4, "setShadowRadius:", xpc_dictionary_get_double(dictionary, [@"UILegibilityShadowRadius" UTF8String]));
    -[_UILegibilitySettings setShadowAlpha:](v4, "setShadowAlpha:", xpc_dictionary_get_double(dictionary, [@"UILegibilityShadowAlpha" UTF8String]));
    -[_UILegibilitySettings setImageOutset:](v4, "setImageOutset:", xpc_dictionary_get_double(dictionary, [@"UILegibilityImageOutset" UTF8String]));
    -[_UILegibilitySettings setMinFillHeight:](v4, "setMinFillHeight:", xpc_dictionary_get_double(dictionary, [@"UILegibilityMinFillHeight" UTF8String]));
  }

  return v4;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xpc_dictionary_set_int64(dictionary, [@"UILegibilityStyle" UTF8String], -[_UILegibilitySettings style](self, "style"));
  [(_UILegibilitySettings *)self contentColor];
  [@"UILegibilityContentColor" UTF8String];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  [(_UILegibilitySettings *)self primaryColor];
  [@"UILegibilityPrimaryColor" UTF8String];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  [(_UILegibilitySettings *)self secondaryColor];
  [@"UILegibilitySecondaryColor" UTF8String];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  [(_UILegibilitySettings *)self shadowColor];
  [@"UILegibilityShadowColor" UTF8String];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  [(_UILegibilitySettings *)self shadowCompositingFilterName];
  [@"UILegibilityShadowCompositingFilterName" UTF8String];
  BSSerializeStringToXPCDictionaryWithKey();
  uTF8String = [@"UILegibilityShadowRadius" UTF8String];
  [(_UILegibilitySettings *)self shadowRadius];
  xpc_dictionary_set_double(dictionary, uTF8String, v6);
  uTF8String2 = [@"UILegibilityShadowAlpha" UTF8String];
  [(_UILegibilitySettings *)self shadowAlpha];
  xpc_dictionary_set_double(dictionary, uTF8String2, v8);
  uTF8String3 = [@"UILegibilityImageOutset" UTF8String];
  [(_UILegibilitySettings *)self imageOutset];
  xpc_dictionary_set_double(dictionary, uTF8String3, v10);
  uTF8String4 = [@"UILegibilityMinFillHeight" UTF8String];
  [(_UILegibilitySettings *)self minFillHeight];

  xpc_dictionary_set_double(dictionary, uTF8String4, v12);
}

@end