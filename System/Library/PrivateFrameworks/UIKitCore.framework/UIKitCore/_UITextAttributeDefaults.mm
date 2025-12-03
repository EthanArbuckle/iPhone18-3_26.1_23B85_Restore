@interface _UITextAttributeDefaults
+ (_UITextAttributeDefaultCategories)_unspecifiedDefaults;
+ (id)_defaultsForUserInterfaceIdiom:(int64_t)idiom;
+ (void)_getFontSizesForUserInterfaceIdiom:(int64_t)idiom labelFontSize:(double *)size buttonFontSize:(double *)fontSize systemFontSize:(double *)systemFontSize smallSystemFontSize:(double *)smallSystemFontSize;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UITextAttributeDictionary)_attributes;
- (id)_init;
- (id)_initWithFallback:(id)fallback;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setFont:(id)font;
- (void)_setParagraphStyle:(id)style;
- (void)_setTextColor:(id)color;
@end

@implementation _UITextAttributeDefaults

+ (_UITextAttributeDefaultCategories)_unspecifiedDefaults
{
  if (qword_1ED49CC60 != -1)
  {
    dispatch_once(&qword_1ED49CC60, &__block_literal_global_120);
  }

  v3 = qword_1ED49CC58;

  return v3;
}

- (_UITextAttributeDictionary)_attributes
{
  v2 = [(_UIMutableTextAttributeDictionary *)self->_attributes copy];

  return v2;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = _UITextAttributeDefaults;
  v2 = [(_UITextAttributeDefaults *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    attributes = v2->_attributes;
    v2->_attributes = v3;
  }

  return v2;
}

+ (id)_defaultsForUserInterfaceIdiom:(int64_t)idiom
{
  v3 = [[_UITextAttributeDefaultCategories alloc] initWithUserInterfaceIdiom:idiom];

  return v3;
}

- (id)_initWithFallback:(id)fallback
{
  fallbackCopy = fallback;
  v10.receiver = self;
  v10.super_class = _UITextAttributeDefaults;
  v5 = [(_UITextAttributeDefaults *)&v10 init];
  if (v5)
  {
    _attributes = [fallbackCopy _attributes];
    v7 = [_attributes mutableCopy];
    attributes = v5->_attributes;
    v5->_attributes = v7;
  }

  return v5;
}

- (void)_setTextColor:(id)color
{
  colorCopy = color;
  v7 = colorCopy;
  if (!colorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextAttributeDefaults.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"textColor"}];

    colorCopy = 0;
  }

  [(_UIMutableTextAttributeDictionary *)self->_attributes setObject:colorCopy forKeyedSubscript:*off_1E70EC920];
}

- (void)_setFont:(id)font
{
  fontCopy = font;
  v7 = fontCopy;
  if (!fontCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextAttributeDefaults.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"font"}];

    fontCopy = 0;
  }

  [(_UIMutableTextAttributeDictionary *)self->_attributes setObject:fontCopy forKeyedSubscript:*off_1E70EC918];
}

- (void)_setParagraphStyle:(id)style
{
  styleCopy = style;
  v7 = styleCopy;
  if (!styleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextAttributeDefaults.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"paragraphStyle"}];

    styleCopy = 0;
  }

  [(_UIMutableTextAttributeDictionary *)self->_attributes setObject:styleCopy forKeyedSubscript:*off_1E70EC988];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = [(_UIMutableTextAttributeDictionary *)self->_attributes mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (NSString)description
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"attributes";
  _attributes = [(_UITextAttributeDefaults *)self _attributes];
  v8[0] = _attributes;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [UIDescriptionBuilder descriptionForObject:self namesAndObjects:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_8;
  }

  if (equalCopy == self)
  {
    v11 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes = self->_attributes;
    _attributes = [(_UITextAttributeDefaults *)v5 _attributes];
    v8 = attributes;
    v9 = _attributes;
    v10 = v9;
    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (v8 && v9)
      {
        v11 = [(_UIMutableTextAttributeDictionary *)v8 isEqual:v9];
      }
    }
  }

  else
  {
LABEL_8:
    v11 = 0;
  }

LABEL_12:

  return v11;
}

+ (void)_getFontSizesForUserInterfaceIdiom:(int64_t)idiom labelFontSize:(double *)size buttonFontSize:(double *)fontSize systemFontSize:(double *)systemFontSize smallSystemFontSize:(double *)smallSystemFontSize
{
  v7 = 17.0;
  if (idiom == 5)
  {
    v7 = 13.0;
  }

  *size = v7;
  v8 = 18.0;
  if (idiom == 5)
  {
    v8 = 14.0;
  }

  *fontSize = v8;
  v9 = 10.0;
  if (idiom != 5)
  {
    v9 = 14.0;
  }

  *systemFontSize = v9;
  v10 = 12.0;
  if (idiom == 5)
  {
    v10 = 9.0;
  }

  *smallSystemFontSize = v10;
}

@end