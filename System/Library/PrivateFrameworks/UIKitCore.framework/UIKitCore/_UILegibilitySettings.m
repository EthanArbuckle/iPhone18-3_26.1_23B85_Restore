@interface _UILegibilitySettings
+ (id)sharedInstanceForStyle:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UILegibilitySettings)initWithCoder:(id)a3;
- (_UILegibilitySettings)initWithContentColor:(id)a3;
- (_UILegibilitySettings)initWithContentColor:(id)a3 contrast:(double)a4;
- (_UILegibilitySettings)initWithStyle:(int64_t)a3 contentColor:(id)a4;
- (_UILegibilitySettings)initWithStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6;
- (_UILegibilitySettings)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setContentColor:(id)a3;
- (void)setPropertiesForStyle:(int64_t)a3;
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

+ (id)sharedInstanceForStyle:(int64_t)a3
{
  if (a3 != 2)
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

- (_UILegibilitySettings)initWithContentColor:(id)a3
{
  v5 = [_UILegibilitySettingsProvider styleForContentColor:?];

  return [(_UILegibilitySettings *)self initWithStyle:v5 contentColor:a3];
}

- (_UILegibilitySettings)initWithContentColor:(id)a3 contrast:(double)a4
{
  v6 = [_UILegibilitySettingsProvider styleForContentColor:a4 contrast:?];

  return [(_UILegibilitySettings *)self initWithStyle:v6 contentColor:a3];
}

- (_UILegibilitySettings)initWithStyle:(int64_t)a3 contentColor:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UILegibilitySettings;
  v6 = [(_UILegibilitySettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(_UILegibilitySettings *)v6 setStyle:a3];
    [(_UILegibilitySettings *)v7 setMinFillHeight:20.0];
    [(_UILegibilitySettings *)v7 setPropertiesForStyle:a3];
    [(_UILegibilitySettings *)v7 setContentColor:a4];
  }

  return v7;
}

- (_UILegibilitySettings)initWithStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6
{
  v9 = [(_UILegibilitySettings *)self initWithStyle:a3];
  v10 = v9;
  if (v9)
  {
    [(_UILegibilitySettings *)v9 setPrimaryColor:a4];
    [(_UILegibilitySettings *)v10 setSecondaryColor:a5];
    [(_UILegibilitySettings *)v10 setShadowColor:a6];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)setPropertiesForStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"lightenSourceOver";
    goto LABEL_7;
  }

  if (a3 == 1)
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

  if (a3)
  {
    return;
  }

  v4 = 0.0;
  [(_UILegibilitySettings *)self setShadowRadius:0.0];
  [(_UILegibilitySettings *)self setShadowAlpha:0.0];
LABEL_8:

  [(_UILegibilitySettings *)self setImageOutset:v4];
}

- (void)setContentColor:(id)a3
{
  contentColor = self->_contentColor;
  self->_contentColor = a3;

  v6 = [(_UILegibilitySettings *)self style];
  if (v6 == 2)
  {
    if (a3)
    {
      v8 = ComputeLegibilityColorFromColor(a3, 0.3);
    }

    else
    {
      v8 = +[UIColor blackColor];
    }

    [(_UILegibilitySettings *)self setPrimaryColor:v8];
    [(_UILegibilitySettings *)self setSecondaryColor:[(UIColor *)[(_UILegibilitySettings *)self primaryColor] colorWithAlphaComponent:0.45]];
    v7 = +[UIColor whiteColor];
  }

  else if (v6 == 1)
  {
    [(_UILegibilitySettings *)self setPrimaryColor:+[UIColor whiteColor]];
    [(_UILegibilitySettings *)self setSecondaryColor:[(UIColor *)[(_UILegibilitySettings *)self primaryColor] colorWithAlphaComponent:0.45]];
    if (a3)
    {
      v7 = ComputeLegibilityColorFromColor(a3, 0.25);
    }

    else
    {
      v7 = +[UIColor blackColor];
    }
  }

  else
  {
    if (v6)
    {
      return;
    }

    [(_UILegibilitySettings *)self setPrimaryColor:+[UIColor clearColor]];
    [(_UILegibilitySettings *)self setSecondaryColor:+[UIColor clearColor]];
    v7 = +[UIColor clearColor];
  }

  [(_UILegibilitySettings *)self setShadowColor:v7];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_style == *(a3 + 1) && vabdd_f64(self->_shadowAlpha, *(a3 + 7)) < 2.22044605e-16 && vabdd_f64(self->_shadowRadius, *(a3 + 6)) < 2.22044605e-16 && vabdd_f64(self->_imageOutset, *(a3 + 8)) < 2.22044605e-16 && vabdd_f64(self->_minFillHeight, *(a3 + 9)) < 2.22044605e-16)
  {
    contentColor = self->_contentColor;
    v6 = *(a3 + 2);
    if (contentColor == v6 || !(contentColor | v6) || (v7 = [(UIColor *)contentColor _isSimilarToColor:0.01 withinPercentage:?]))
    {
      primaryColor = self->_primaryColor;
      v9 = *(a3 + 3);
      if (primaryColor == v9 || !(primaryColor | v9) || (v7 = [(UIColor *)primaryColor _isSimilarToColor:0.01 withinPercentage:?]))
      {
        secondaryColor = self->_secondaryColor;
        v11 = *(a3 + 4);
        if (secondaryColor == v11 || !(secondaryColor | v11) || (v7 = [(UIColor *)secondaryColor _isSimilarToColor:0.01 withinPercentage:?]))
        {
          shadowColor = self->_shadowColor;
          v13 = *(a3 + 5);
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:-[_UILegibilitySettings style](self forKey:{"style"), @"UILegibilityStyle"}];
  [a3 encodeObject:-[_UILegibilitySettings contentColor](self forKey:{"contentColor"), @"UILegibilityContentColor"}];
  [a3 encodeObject:-[_UILegibilitySettings primaryColor](self forKey:{"primaryColor"), @"UILegibilityPrimaryColor"}];
  [a3 encodeObject:-[_UILegibilitySettings secondaryColor](self forKey:{"secondaryColor"), @"UILegibilitySecondaryColor"}];
  [a3 encodeObject:-[_UILegibilitySettings shadowColor](self forKey:{"shadowColor"), @"UILegibilityShadowColor"}];
  [a3 encodeObject:-[_UILegibilitySettings shadowCompositingFilterName](self forKey:{"shadowCompositingFilterName"), @"UILegibilityShadowCompositingFilterName"}];
  [(_UILegibilitySettings *)self shadowRadius];
  [a3 encodeDouble:@"UILegibilityShadowRadius" forKey:?];
  [(_UILegibilitySettings *)self shadowAlpha];
  [a3 encodeDouble:@"UILegibilityShadowAlpha" forKey:?];
  [(_UILegibilitySettings *)self imageOutset];
  [a3 encodeDouble:@"UILegibilityImageOutset" forKey:?];
  [(_UILegibilitySettings *)self minFillHeight];

  [a3 encodeDouble:@"UILegibilityMinFillHeight" forKey:?];
}

- (_UILegibilitySettings)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UILegibilitySettings;
  v4 = [(_UILegibilitySettings *)&v6 init];
  if (v4)
  {
    -[_UILegibilitySettings setStyle:](v4, "setStyle:", [a3 decodeIntegerForKey:@"UILegibilityStyle"]);
    -[_UILegibilitySettings setContentColor:](v4, "setContentColor:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UILegibilityContentColor"]);
    -[_UILegibilitySettings setPrimaryColor:](v4, "setPrimaryColor:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UILegibilityPrimaryColor"]);
    -[_UILegibilitySettings setSecondaryColor:](v4, "setSecondaryColor:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UILegibilitySecondaryColor"]);
    -[_UILegibilitySettings setShadowColor:](v4, "setShadowColor:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UILegibilityShadowColor"]);
    -[_UILegibilitySettings setShadowCompositingFilterName:](v4, "setShadowCompositingFilterName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UILegibilityShadowCompositingFilterName"]);
    [a3 decodeDoubleForKey:@"UILegibilityShadowRadius"];
    [(_UILegibilitySettings *)v4 setShadowRadius:?];
    [a3 decodeDoubleForKey:@"UILegibilityShadowAlpha"];
    [(_UILegibilitySettings *)v4 setShadowAlpha:?];
    [a3 decodeDoubleForKey:@"UILegibilityImageOutset"];
    [(_UILegibilitySettings *)v4 setImageOutset:?];
    [a3 decodeDoubleForKey:@"UILegibilityMinFillHeight"];
    [(_UILegibilitySettings *)v4 setMinFillHeight:?];
  }

  return v4;
}

- (_UILegibilitySettings)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UILegibilitySettings;
  v4 = [(_UILegibilitySettings *)&v6 init];
  if (v4)
  {
    -[_UILegibilitySettings setStyle:](v4, "setStyle:", xpc_dictionary_get_int64(a3, [@"UILegibilityStyle" UTF8String]));
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
    -[_UILegibilitySettings setShadowRadius:](v4, "setShadowRadius:", xpc_dictionary_get_double(a3, [@"UILegibilityShadowRadius" UTF8String]));
    -[_UILegibilitySettings setShadowAlpha:](v4, "setShadowAlpha:", xpc_dictionary_get_double(a3, [@"UILegibilityShadowAlpha" UTF8String]));
    -[_UILegibilitySettings setImageOutset:](v4, "setImageOutset:", xpc_dictionary_get_double(a3, [@"UILegibilityImageOutset" UTF8String]));
    -[_UILegibilitySettings setMinFillHeight:](v4, "setMinFillHeight:", xpc_dictionary_get_double(a3, [@"UILegibilityMinFillHeight" UTF8String]));
  }

  return v4;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xpc_dictionary_set_int64(a3, [@"UILegibilityStyle" UTF8String], -[_UILegibilitySettings style](self, "style"));
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
  v5 = [@"UILegibilityShadowRadius" UTF8String];
  [(_UILegibilitySettings *)self shadowRadius];
  xpc_dictionary_set_double(a3, v5, v6);
  v7 = [@"UILegibilityShadowAlpha" UTF8String];
  [(_UILegibilitySettings *)self shadowAlpha];
  xpc_dictionary_set_double(a3, v7, v8);
  v9 = [@"UILegibilityImageOutset" UTF8String];
  [(_UILegibilitySettings *)self imageOutset];
  xpc_dictionary_set_double(a3, v9, v10);
  v11 = [@"UILegibilityMinFillHeight" UTF8String];
  [(_UILegibilitySettings *)self minFillHeight];

  xpc_dictionary_set_double(a3, v11, v12);
}

@end