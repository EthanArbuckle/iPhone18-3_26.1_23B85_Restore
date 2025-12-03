@interface _UICascadingTextStorage
+ (id)defaultFont;
- (CGSize)shadowOffset;
- (UIColor)shadowColor;
- (UIColor)textColor;
- (UIFont)font;
- (_UICascadingTextStorage)initWithDefaults:(id)defaults;
- (double)shadowBlur;
- (id)_defaultAttributes;
- (id)_shadow;
- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)attribute:(id)attribute atIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)attributesAtIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange;
- (int64_t)_ui_resolvedTextAlignment;
- (int64_t)defaultBaseWritingDirection;
- (int64_t)lineBreakMode;
- (int64_t)resolvedWritingDirectionForBaseWritingDirection:(int64_t)direction;
- (int64_t)textAlignment;
- (void)_setDefaults:(id)defaults;
- (void)_setShadow:(id)shadow;
- (void)setDefaultAttributes:(id)attributes;
- (void)setDefaultBaseWritingDirection:(int64_t)direction;
- (void)setFont:(id)font;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setShadowBlur:(double)blur;
- (void)setShadowColor:(id)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
@end

@implementation _UICascadingTextStorage

- (UIColor)textColor
{
  v3 = [(NSConcreteTextStorage *)self length];
  v4 = *off_1E70EC920;
  if (!v3 || ([(_UICascadingTextStorage *)self attribute:*off_1E70EC920 atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _defaultAttributes = [(_UICascadingTextStorage *)self _defaultAttributes];
    v5 = [_defaultAttributes objectForKey:v4];
  }

  return v5;
}

- (int64_t)textAlignment
{
  selfCopy = self;
  v3 = [(NSConcreteTextStorage *)selfCopy length];
  v4 = *off_1E70EC988;
  if (!v3 || ([(_UICascadingTextStorage *)selfCopy attribute:*off_1E70EC988 atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _defaultAttributes = [(_UICascadingTextStorage *)selfCopy _defaultAttributes];
    v5 = [_defaultAttributes objectForKey:v4];
  }

  alignment = [v5 alignment];
  return alignment;
}

- (id)_defaultAttributes
{
  defaultAttributes = self->_defaultAttributes;
  if (!defaultAttributes)
  {
    _attributes = [(_UITextAttributeDefaults *)self->_defaults _attributes];
    v5 = [_attributes mutableCopy];
    v6 = self->_defaultAttributes;
    self->_defaultAttributes = v5;

    defaultAttributes = self->_defaultAttributes;
  }

  return defaultAttributes;
}

- (UIFont)font
{
  if ([(NSConcreteTextStorage *)self length])
  {
    v3 = [(_UICascadingTextStorage *)self attribute:*off_1E70EC978 atIndex:0 effectiveRange:0];
    if (v3 || (v4 = *off_1E70EC918, [(_UICascadingTextStorage *)self attribute:*off_1E70EC918 atIndex:0 effectiveRange:0], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v3;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = *off_1E70EC918;
  }

  _defaultAttributes = [(_UICascadingTextStorage *)self _defaultAttributes];
  v5 = [_defaultAttributes objectForKey:v4];

LABEL_7:

  return v5;
}

- (id)_shadow
{
  v3 = [(NSConcreteTextStorage *)self length];
  v4 = *off_1E70EC9B0;
  if (!v3 || ([(_UICascadingTextStorage *)self attribute:*off_1E70EC9B0 atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _defaultAttributes = [(_UICascadingTextStorage *)self _defaultAttributes];
    v5 = [_defaultAttributes objectForKey:v4];
  }

  return v5;
}

- (double)shadowBlur
{
  _shadow = [(_UICascadingTextStorage *)self _shadow];
  [_shadow shadowBlurRadius];
  v4 = v3;

  return v4;
}

- (int64_t)_ui_resolvedTextAlignment
{
  selfCopy = self;
  v3 = [(NSConcreteTextStorage *)selfCopy length];
  v4 = *off_1E70EC988;
  if (!v3 || ([(_UICascadingTextStorage *)selfCopy attribute:*off_1E70EC988 atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _defaultAttributes = [(_UICascadingTextStorage *)selfCopy _defaultAttributes];
    v5 = [_defaultAttributes objectForKey:v4];
  }

  alignment = [v5 alignment];
  if (!v5 || (v8 = [v5 baseWritingDirection], v8 == -1))
  {
    if ([(NSConcreteTextStorage *)selfCopy length])
    {
      v8 = [(_UICascadingTextStorage *)selfCopy resolvedWritingDirectionForBaseWritingDirection:-1];
    }

    else
    {
      v8 = [off_1E70ECB88 defaultWritingDirectionForLanguage:0];
    }
  }

  if ((alignment - 3) >= 2)
  {
    v9 = alignment;
  }

  else
  {
    v9 = 2 * (v8 == 1);
  }

  return v9;
}

- (int64_t)lineBreakMode
{
  selfCopy = self;
  v3 = [(NSConcreteTextStorage *)selfCopy length];
  v4 = *off_1E70EC988;
  if (!v3 || ([(_UICascadingTextStorage *)selfCopy attribute:*off_1E70EC988 atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _defaultAttributes = [(_UICascadingTextStorage *)selfCopy _defaultAttributes];
    v5 = [_defaultAttributes objectForKey:v4];
  }

  lineBreakMode = [v5 lineBreakMode];
  return lineBreakMode;
}

- (_UICascadingTextStorage)initWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v8.receiver = self;
  v8.super_class = _UICascadingTextStorage;
  v5 = [(NSConcreteTextStorage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UICascadingTextStorage *)v5 _setDefaults:defaultsCopy];
  }

  return v6;
}

- (void)_setDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v7 = defaultsCopy;
  if (!defaultsCopy)
  {
    v3 = +[_UITextAttributeDefaults _unspecifiedDefaults];
    defaultsCopy = [v3 _textField];
  }

  objc_storeStrong(&self->_defaults, defaultsCopy);
  v6 = v7;
  if (!v7)
  {

    v6 = 0;
  }
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v9.receiver = self;
  v9.super_class = _UICascadingTextStorage;
  v5 = [(NSConcreteTextStorage *)&v9 attributesAtIndex:index effectiveRange:range];
  defaultAttributes = [(_UICascadingTextStorage *)self defaultAttributes];
  v7 = [defaultAttributes mutableCopy];

  [v7 addEntriesFromDictionary:v5];

  return v7;
}

- (id)attributesAtIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange
{
  v10.receiver = self;
  v10.super_class = _UICascadingTextStorage;
  v6 = [(NSConcreteTextStorage *)&v10 attributesAtIndex:index longestEffectiveRange:range inRange:inRange.location, inRange.length];
  defaultAttributes = [(_UICascadingTextStorage *)self defaultAttributes];
  v8 = [defaultAttributes mutableCopy];

  [v8 addEntriesFromDictionary:v6];

  return v8;
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  attributeCopy = attribute;
  v14.receiver = self;
  v14.super_class = _UICascadingTextStorage;
  v9 = [(NSConcreteTextStorage *)&v14 attribute:attributeCopy atIndex:index effectiveRange:range];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(NSMutableDictionary *)self->_defaultAttributes objectForKey:attributeCopy];
  }

  v12 = v11;

  return v12;
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange
{
  length = inRange.length;
  location = inRange.location;
  attributeCopy = attribute;
  v17.receiver = self;
  v17.super_class = _UICascadingTextStorage;
  v12 = [(NSConcreteTextStorage *)&v17 attribute:attributeCopy atIndex:index longestEffectiveRange:range inRange:location, length];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [(NSMutableDictionary *)self->_defaultAttributes objectForKey:attributeCopy];
  }

  v15 = v14;

  return v15;
}

- (void)setDefaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___UICascadingTextStorage_setDefaultAttributes___block_invoke;
  v6[3] = &unk_1E70F81A0;
  v6[4] = self;
  v7 = attributesCopy;
  v5 = attributesCopy;
  [(_UICascadingTextStorage *)self coordinateEditing:v6];
}

- (void)setDefaultBaseWritingDirection:(int64_t)direction
{
  v5 = *off_1E70EC988;
  v7 = [(NSMutableDictionary *)self->_defaultAttributes objectForKey:*off_1E70EC988];
  if ([v7 baseWritingDirection] != direction)
  {
    v6 = [v7 mutableCopy];
    [v6 setBaseWritingDirection:direction];
    [(NSMutableDictionary *)self->_defaultAttributes setObject:v6 forKeyedSubscript:v5];
  }
}

- (int64_t)defaultBaseWritingDirection
{
  v2 = [(NSMutableDictionary *)self->_defaultAttributes objectForKey:*off_1E70EC988];
  baseWritingDirection = [v2 baseWritingDirection];

  return baseWritingDirection;
}

+ (id)defaultFont
{
  [off_1E70ECC18 defaultFontSize];

  return [off_1E70ECC18 systemFontOfSize:?];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (fontCopy || ([(_UITextAttributeDefaults *)self->_defaults _font], (fontCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = fontCopy;
    v20 = 0;
    v21 = 0;
    if ([(NSConcreteTextStorage *)self length])
    {
      v7 = [(_UICascadingTextStorage *)self attribute:*off_1E70EC918 atIndex:0 effectiveRange:&v20];
    }

    else
    {
      _defaultAttributes = [(_UICascadingTextStorage *)self _defaultAttributes];
      v7 = [_defaultAttributes objectForKey:*off_1E70EC918];
    }

    if (v7 != v6 || (v9 = v21, v9 < [(NSConcreteTextStorage *)self length]))
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __46___UICascadingTextStorage_Accessors__setFont___block_invoke;
      v16[3] = &unk_1E70F81C8;
      selfCopy = self;
      v19 = a2;
      v17 = v6;
      [(_UICascadingTextStorage *)self coordinateEditing:v16];
    }
  }

  else
  {
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    font = [(_UICascadingTextStorage *)self font];
    fontName = [font fontName];
    font2 = [(_UICascadingTextStorage *)self font];
    [font2 pointSize];
    NSLog(&cfstr_NilPassedToSet.isa, v10, v11, fontName, v14);
  }
}

- (void)_setShadow:(id)shadow
{
  shadowCopy = shadow;
  v12 = 0;
  v13 = 0;
  if ([(NSConcreteTextStorage *)self length])
  {
    v6 = [(_UICascadingTextStorage *)self attribute:*off_1E70EC9B0 atIndex:0 effectiveRange:&v12];
  }

  else
  {
    _defaultAttributes = [(_UICascadingTextStorage *)self _defaultAttributes];
    v6 = [_defaultAttributes objectForKey:*off_1E70EC9B0];
  }

  if (v6 != shadowCopy || (v8 = v13, v8 < [(NSConcreteTextStorage *)self length]))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49___UICascadingTextStorage_Accessors___setShadow___block_invoke;
    v9[3] = &unk_1E70F81C8;
    v9[4] = self;
    v10 = shadowCopy;
    v11 = a2;
    [(_UICascadingTextStorage *)self coordinateEditing:v9];
  }
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  _shadow = [(_UICascadingTextStorage *)self _shadow];
  v5 = [_shadow copy];

  shadowColor = [v5 shadowColor];

  if (shadowColor != colorCopy)
  {
    [v5 setShadowColor:colorCopy];
    [(_UICascadingTextStorage *)self _setShadow:v5];
  }
}

- (UIColor)shadowColor
{
  _shadow = [(_UICascadingTextStorage *)self _shadow];
  shadowColor = [_shadow shadowColor];

  return shadowColor;
}

- (void)setShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  _shadow = [(_UICascadingTextStorage *)self _shadow];
  v10 = [_shadow copy];

  [v10 shadowOffset];
  if (v8 != width || v7 != height)
  {
    [v10 setShadowOffset:{width, height}];
    [(_UICascadingTextStorage *)self _setShadow:v10];
  }
}

- (CGSize)shadowOffset
{
  _shadow = [(_UICascadingTextStorage *)self _shadow];
  [_shadow shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowBlur:(double)blur
{
  _shadow = [(_UICascadingTextStorage *)self _shadow];
  v7 = [_shadow copy];

  [v7 shadowBlurRadius];
  if (v6 != blur)
  {
    [v7 setShadowBlurRadius:blur];
    [(_UICascadingTextStorage *)self _setShadow:v7];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    _textColor = [(_UITextAttributeDefaults *)self->_defaults _textColor];
    v7 = _textColor;
    if (_textColor)
    {
      v8 = _textColor;
    }

    else
    {
      v8 = +[UIColor labelColor];
    }

    colorCopy = v8;
  }

  v9 = [(NSConcreteTextStorage *)self length];
  v24 = 0;
  v25 = 0;
  if (v9)
  {
    v10 = v9;
    v11 = *off_1E70EC920;
    v12 = [(_UICascadingTextStorage *)self attribute:*off_1E70EC920 atIndex:0 longestEffectiveRange:&v24 inRange:0, v9];
    if (v12 != colorCopy || v25 < v10)
    {
      goto LABEL_15;
    }

    _defaultAttributes = [(_UICascadingTextStorage *)self _defaultAttributes];
    v15 = [_defaultAttributes objectForKey:v11];

    if (v15 != colorCopy)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51___UICascadingTextStorage_Accessors__setTextColor___block_invoke_2;
      v18[3] = &unk_1E70F81A0;
      v18[4] = self;
      v19 = colorCopy;
      [(_UICascadingTextStorage *)self coordinateEditing:v18];
      v16 = v19;
LABEL_16:
    }
  }

  else
  {
    _defaultAttributes2 = [(_UICascadingTextStorage *)self _defaultAttributes];
    v12 = [_defaultAttributes2 objectForKey:*off_1E70EC920];

    if (v12 != colorCopy)
    {
LABEL_15:
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __51___UICascadingTextStorage_Accessors__setTextColor___block_invoke;
      v20[3] = &unk_1E70F81C8;
      selfCopy = self;
      v23 = a2;
      v21 = colorCopy;
      [(_UICascadingTextStorage *)self coordinateEditing:v20];
      v16 = v21;
      goto LABEL_16;
    }
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  selfCopy = self;
  v6 = [(NSConcreteTextStorage *)selfCopy length];
  v7 = *off_1E70EC988;
  if (!v6 || ([(_UICascadingTextStorage *)selfCopy attribute:*off_1E70EC988 atIndex:0 effectiveRange:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _defaultAttributes = [(_UICascadingTextStorage *)selfCopy _defaultAttributes];
    v8 = [_defaultAttributes objectForKey:v7];
  }

  if ([v8 alignment] != alignment)
  {
    v10 = [v8 mutableCopy];
    [v10 setAlignment:alignment];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55___UICascadingTextStorage_Accessors__setTextAlignment___block_invoke;
    v12[3] = &unk_1E70F81C8;
    v14 = selfCopy;
    v15 = a2;
    v13 = v10;
    v11 = v10;
    [(_UICascadingTextStorage *)selfCopy coordinateEditing:v12];
  }
}

- (void)setLineBreakMode:(int64_t)mode
{
  selfCopy = self;
  v6 = [(NSConcreteTextStorage *)selfCopy length];
  v7 = *off_1E70EC988;
  if (!v6 || ([(_UICascadingTextStorage *)selfCopy attribute:*off_1E70EC988 atIndex:0 effectiveRange:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _defaultAttributes = [(_UICascadingTextStorage *)selfCopy _defaultAttributes];
    v8 = [_defaultAttributes objectForKey:v7];
  }

  if ([v8 lineBreakMode] != mode)
  {
    v10 = [v8 mutableCopy];
    [v10 setLineBreakMode:mode];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55___UICascadingTextStorage_Accessors__setLineBreakMode___block_invoke;
    v12[3] = &unk_1E70F81C8;
    v14 = selfCopy;
    v15 = a2;
    v13 = v10;
    v11 = v10;
    [(_UICascadingTextStorage *)selfCopy coordinateEditing:v12];
  }
}

- (int64_t)resolvedWritingDirectionForBaseWritingDirection:(int64_t)direction
{
  v4 = [(NSConcreteTextStorage *)self length];
  if (v4)
  {
    v5 = v4;
    v6 = [off_1E70ECBB8 defaultBaseWritingDirectionResolutionStrategy] == 2 && direction == -1;
    v7 = [off_1E70ECB88 defaultWritingDirectionForLanguage:0];
    v8 = malloc_type_calloc(v5, 1uLL, 0x100004077774924uLL);
    v9 = 0;
    if (direction == -1)
    {
      v9 = malloc_type_calloc(v5, 1uLL, 0x100004077774924uLL);
      memset(v9, v7, v5);
      if (v6)
      {
LABEL_7:
        CFAttributedStringGetStatisticalWritingDirections();
        if (!v9)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v6)
    {
      goto LABEL_7;
    }

    CFAttributedStringGetBidiLevelsAndResolvedDirections();
    if (!v9)
    {
LABEL_12:
      free(v9);
      free(v8);
      return direction;
    }

LABEL_11:
    direction = *v9;
    goto LABEL_12;
  }

  return direction;
}

@end