@interface _UICascadingTextStorage
+ (id)defaultFont;
- (CGSize)shadowOffset;
- (UIColor)shadowColor;
- (UIColor)textColor;
- (UIFont)font;
- (_UICascadingTextStorage)initWithDefaults:(id)a3;
- (double)shadowBlur;
- (id)_defaultAttributes;
- (id)_shadow;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 longestEffectiveRange:(_NSRange *)a5 inRange:(_NSRange)a6;
- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)attributesAtIndex:(unint64_t)a3 longestEffectiveRange:(_NSRange *)a4 inRange:(_NSRange)a5;
- (int64_t)_ui_resolvedTextAlignment;
- (int64_t)defaultBaseWritingDirection;
- (int64_t)lineBreakMode;
- (int64_t)resolvedWritingDirectionForBaseWritingDirection:(int64_t)a3;
- (int64_t)textAlignment;
- (void)_setDefaults:(id)a3;
- (void)_setShadow:(id)a3;
- (void)setDefaultAttributes:(id)a3;
- (void)setDefaultBaseWritingDirection:(int64_t)a3;
- (void)setFont:(id)a3;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setShadowBlur:(double)a3;
- (void)setShadowColor:(id)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
@end

@implementation _UICascadingTextStorage

- (UIColor)textColor
{
  v3 = [(NSConcreteTextStorage *)self length];
  v4 = *off_1E70EC920;
  if (!v3 || ([(_UICascadingTextStorage *)self attribute:*off_1E70EC920 atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(_UICascadingTextStorage *)self _defaultAttributes];
    v5 = [v6 objectForKey:v4];
  }

  return v5;
}

- (int64_t)textAlignment
{
  v2 = self;
  v3 = [(NSConcreteTextStorage *)v2 length];
  v4 = *off_1E70EC988;
  if (!v3 || ([(_UICascadingTextStorage *)v2 attribute:*off_1E70EC988 atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(_UICascadingTextStorage *)v2 _defaultAttributes];
    v5 = [v6 objectForKey:v4];
  }

  v7 = [v5 alignment];
  return v7;
}

- (id)_defaultAttributes
{
  defaultAttributes = self->_defaultAttributes;
  if (!defaultAttributes)
  {
    v4 = [(_UITextAttributeDefaults *)self->_defaults _attributes];
    v5 = [v4 mutableCopy];
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

  v6 = [(_UICascadingTextStorage *)self _defaultAttributes];
  v5 = [v6 objectForKey:v4];

LABEL_7:

  return v5;
}

- (id)_shadow
{
  v3 = [(NSConcreteTextStorage *)self length];
  v4 = *off_1E70EC9B0;
  if (!v3 || ([(_UICascadingTextStorage *)self attribute:*off_1E70EC9B0 atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(_UICascadingTextStorage *)self _defaultAttributes];
    v5 = [v6 objectForKey:v4];
  }

  return v5;
}

- (double)shadowBlur
{
  v2 = [(_UICascadingTextStorage *)self _shadow];
  [v2 shadowBlurRadius];
  v4 = v3;

  return v4;
}

- (int64_t)_ui_resolvedTextAlignment
{
  v2 = self;
  v3 = [(NSConcreteTextStorage *)v2 length];
  v4 = *off_1E70EC988;
  if (!v3 || ([(_UICascadingTextStorage *)v2 attribute:*off_1E70EC988 atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(_UICascadingTextStorage *)v2 _defaultAttributes];
    v5 = [v6 objectForKey:v4];
  }

  v7 = [v5 alignment];
  if (!v5 || (v8 = [v5 baseWritingDirection], v8 == -1))
  {
    if ([(NSConcreteTextStorage *)v2 length])
    {
      v8 = [(_UICascadingTextStorage *)v2 resolvedWritingDirectionForBaseWritingDirection:-1];
    }

    else
    {
      v8 = [off_1E70ECB88 defaultWritingDirectionForLanguage:0];
    }
  }

  if ((v7 - 3) >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 2 * (v8 == 1);
  }

  return v9;
}

- (int64_t)lineBreakMode
{
  v2 = self;
  v3 = [(NSConcreteTextStorage *)v2 length];
  v4 = *off_1E70EC988;
  if (!v3 || ([(_UICascadingTextStorage *)v2 attribute:*off_1E70EC988 atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(_UICascadingTextStorage *)v2 _defaultAttributes];
    v5 = [v6 objectForKey:v4];
  }

  v7 = [v5 lineBreakMode];
  return v7;
}

- (_UICascadingTextStorage)initWithDefaults:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UICascadingTextStorage;
  v5 = [(NSConcreteTextStorage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UICascadingTextStorage *)v5 _setDefaults:v4];
  }

  return v6;
}

- (void)_setDefaults:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v3 = +[_UITextAttributeDefaults _unspecifiedDefaults];
    v5 = [v3 _textField];
  }

  objc_storeStrong(&self->_defaults, v5);
  v6 = v7;
  if (!v7)
  {

    v6 = 0;
  }
}

- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v9.receiver = self;
  v9.super_class = _UICascadingTextStorage;
  v5 = [(NSConcreteTextStorage *)&v9 attributesAtIndex:a3 effectiveRange:a4];
  v6 = [(_UICascadingTextStorage *)self defaultAttributes];
  v7 = [v6 mutableCopy];

  [v7 addEntriesFromDictionary:v5];

  return v7;
}

- (id)attributesAtIndex:(unint64_t)a3 longestEffectiveRange:(_NSRange *)a4 inRange:(_NSRange)a5
{
  v10.receiver = self;
  v10.super_class = _UICascadingTextStorage;
  v6 = [(NSConcreteTextStorage *)&v10 attributesAtIndex:a3 longestEffectiveRange:a4 inRange:a5.location, a5.length];
  v7 = [(_UICascadingTextStorage *)self defaultAttributes];
  v8 = [v7 mutableCopy];

  [v8 addEntriesFromDictionary:v6];

  return v8;
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = _UICascadingTextStorage;
  v9 = [(NSConcreteTextStorage *)&v14 attribute:v8 atIndex:a4 effectiveRange:a5];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(NSMutableDictionary *)self->_defaultAttributes objectForKey:v8];
  }

  v12 = v11;

  return v12;
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 longestEffectiveRange:(_NSRange *)a5 inRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v11 = a3;
  v17.receiver = self;
  v17.super_class = _UICascadingTextStorage;
  v12 = [(NSConcreteTextStorage *)&v17 attribute:v11 atIndex:a4 longestEffectiveRange:a5 inRange:location, length];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [(NSMutableDictionary *)self->_defaultAttributes objectForKey:v11];
  }

  v15 = v14;

  return v15;
}

- (void)setDefaultAttributes:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___UICascadingTextStorage_setDefaultAttributes___block_invoke;
  v6[3] = &unk_1E70F81A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(_UICascadingTextStorage *)self coordinateEditing:v6];
}

- (void)setDefaultBaseWritingDirection:(int64_t)a3
{
  v5 = *off_1E70EC988;
  v7 = [(NSMutableDictionary *)self->_defaultAttributes objectForKey:*off_1E70EC988];
  if ([v7 baseWritingDirection] != a3)
  {
    v6 = [v7 mutableCopy];
    [v6 setBaseWritingDirection:a3];
    [(NSMutableDictionary *)self->_defaultAttributes setObject:v6 forKeyedSubscript:v5];
  }
}

- (int64_t)defaultBaseWritingDirection
{
  v2 = [(NSMutableDictionary *)self->_defaultAttributes objectForKey:*off_1E70EC988];
  v3 = [v2 baseWritingDirection];

  return v3;
}

+ (id)defaultFont
{
  [off_1E70ECC18 defaultFontSize];

  return [off_1E70ECC18 systemFontOfSize:?];
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (v5 || ([(_UITextAttributeDefaults *)self->_defaults _font], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v20 = 0;
    v21 = 0;
    if ([(NSConcreteTextStorage *)self length])
    {
      v7 = [(_UICascadingTextStorage *)self attribute:*off_1E70EC918 atIndex:0 effectiveRange:&v20];
    }

    else
    {
      v8 = [(_UICascadingTextStorage *)self _defaultAttributes];
      v7 = [v8 objectForKey:*off_1E70EC918];
    }

    if (v7 != v6 || (v9 = v21, v9 < [(NSConcreteTextStorage *)self length]))
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __46___UICascadingTextStorage_Accessors__setFont___block_invoke;
      v16[3] = &unk_1E70F81C8;
      v18 = self;
      v19 = a2;
      v17 = v6;
      [(_UICascadingTextStorage *)self coordinateEditing:v16];
    }
  }

  else
  {
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v15 = [(_UICascadingTextStorage *)self font];
    v12 = [v15 fontName];
    v13 = [(_UICascadingTextStorage *)self font];
    [v13 pointSize];
    NSLog(&cfstr_NilPassedToSet.isa, v10, v11, v12, v14);
  }
}

- (void)_setShadow:(id)a3
{
  v5 = a3;
  v12 = 0;
  v13 = 0;
  if ([(NSConcreteTextStorage *)self length])
  {
    v6 = [(_UICascadingTextStorage *)self attribute:*off_1E70EC9B0 atIndex:0 effectiveRange:&v12];
  }

  else
  {
    v7 = [(_UICascadingTextStorage *)self _defaultAttributes];
    v6 = [v7 objectForKey:*off_1E70EC9B0];
  }

  if (v6 != v5 || (v8 = v13, v8 < [(NSConcreteTextStorage *)self length]))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49___UICascadingTextStorage_Accessors___setShadow___block_invoke;
    v9[3] = &unk_1E70F81C8;
    v9[4] = self;
    v10 = v5;
    v11 = a2;
    [(_UICascadingTextStorage *)self coordinateEditing:v9];
  }
}

- (void)setShadowColor:(id)a3
{
  v7 = a3;
  v4 = [(_UICascadingTextStorage *)self _shadow];
  v5 = [v4 copy];

  v6 = [v5 shadowColor];

  if (v6 != v7)
  {
    [v5 setShadowColor:v7];
    [(_UICascadingTextStorage *)self _setShadow:v5];
  }
}

- (UIColor)shadowColor
{
  v2 = [(_UICascadingTextStorage *)self _shadow];
  v3 = [v2 shadowColor];

  return v3;
}

- (void)setShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UICascadingTextStorage *)self _shadow];
  v10 = [v6 copy];

  [v10 shadowOffset];
  if (v8 != width || v7 != height)
  {
    [v10 setShadowOffset:{width, height}];
    [(_UICascadingTextStorage *)self _setShadow:v10];
  }
}

- (CGSize)shadowOffset
{
  v2 = [(_UICascadingTextStorage *)self _shadow];
  [v2 shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowBlur:(double)a3
{
  v5 = [(_UICascadingTextStorage *)self _shadow];
  v7 = [v5 copy];

  [v7 shadowBlurRadius];
  if (v6 != a3)
  {
    [v7 setShadowBlurRadius:a3];
    [(_UICascadingTextStorage *)self _setShadow:v7];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = [(_UITextAttributeDefaults *)self->_defaults _textColor];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[UIColor labelColor];
    }

    v5 = v8;
  }

  v9 = [(NSConcreteTextStorage *)self length];
  v24 = 0;
  v25 = 0;
  if (v9)
  {
    v10 = v9;
    v11 = *off_1E70EC920;
    v12 = [(_UICascadingTextStorage *)self attribute:*off_1E70EC920 atIndex:0 longestEffectiveRange:&v24 inRange:0, v9];
    if (v12 != v5 || v25 < v10)
    {
      goto LABEL_15;
    }

    v14 = [(_UICascadingTextStorage *)self _defaultAttributes];
    v15 = [v14 objectForKey:v11];

    if (v15 != v5)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51___UICascadingTextStorage_Accessors__setTextColor___block_invoke_2;
      v18[3] = &unk_1E70F81A0;
      v18[4] = self;
      v19 = v5;
      [(_UICascadingTextStorage *)self coordinateEditing:v18];
      v16 = v19;
LABEL_16:
    }
  }

  else
  {
    v17 = [(_UICascadingTextStorage *)self _defaultAttributes];
    v12 = [v17 objectForKey:*off_1E70EC920];

    if (v12 != v5)
    {
LABEL_15:
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __51___UICascadingTextStorage_Accessors__setTextColor___block_invoke;
      v20[3] = &unk_1E70F81C8;
      v22 = self;
      v23 = a2;
      v21 = v5;
      [(_UICascadingTextStorage *)self coordinateEditing:v20];
      v16 = v21;
      goto LABEL_16;
    }
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  v5 = self;
  v6 = [(NSConcreteTextStorage *)v5 length];
  v7 = *off_1E70EC988;
  if (!v6 || ([(_UICascadingTextStorage *)v5 attribute:*off_1E70EC988 atIndex:0 effectiveRange:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(_UICascadingTextStorage *)v5 _defaultAttributes];
    v8 = [v9 objectForKey:v7];
  }

  if ([v8 alignment] != a3)
  {
    v10 = [v8 mutableCopy];
    [v10 setAlignment:a3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55___UICascadingTextStorage_Accessors__setTextAlignment___block_invoke;
    v12[3] = &unk_1E70F81C8;
    v14 = v5;
    v15 = a2;
    v13 = v10;
    v11 = v10;
    [(_UICascadingTextStorage *)v5 coordinateEditing:v12];
  }
}

- (void)setLineBreakMode:(int64_t)a3
{
  v5 = self;
  v6 = [(NSConcreteTextStorage *)v5 length];
  v7 = *off_1E70EC988;
  if (!v6 || ([(_UICascadingTextStorage *)v5 attribute:*off_1E70EC988 atIndex:0 effectiveRange:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(_UICascadingTextStorage *)v5 _defaultAttributes];
    v8 = [v9 objectForKey:v7];
  }

  if ([v8 lineBreakMode] != a3)
  {
    v10 = [v8 mutableCopy];
    [v10 setLineBreakMode:a3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55___UICascadingTextStorage_Accessors__setLineBreakMode___block_invoke;
    v12[3] = &unk_1E70F81C8;
    v14 = v5;
    v15 = a2;
    v13 = v10;
    v11 = v10;
    [(_UICascadingTextStorage *)v5 coordinateEditing:v12];
  }
}

- (int64_t)resolvedWritingDirectionForBaseWritingDirection:(int64_t)a3
{
  v4 = [(NSConcreteTextStorage *)self length];
  if (v4)
  {
    v5 = v4;
    v6 = [off_1E70ECBB8 defaultBaseWritingDirectionResolutionStrategy] == 2 && a3 == -1;
    v7 = [off_1E70ECB88 defaultWritingDirectionForLanguage:0];
    v8 = malloc_type_calloc(v5, 1uLL, 0x100004077774924uLL);
    v9 = 0;
    if (a3 == -1)
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
      return a3;
    }

LABEL_11:
    a3 = *v9;
    goto LABEL_12;
  }

  return a3;
}

@end