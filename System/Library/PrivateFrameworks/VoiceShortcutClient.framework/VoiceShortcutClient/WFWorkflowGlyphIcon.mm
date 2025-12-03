@interface WFWorkflowGlyphIcon
- (BOOL)hasClearBackground;
- (BOOL)hasTransparentBackground;
- (BOOL)isEqual:(id)equal;
- (WFWorkflowGlyphIcon)initWithCoder:(id)coder;
- (WFWorkflowGlyphIcon)initWithGlyph:(unsigned __int16)glyph background:(id)background;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowGlyphIcon

- (BOOL)hasTransparentBackground
{
  background = [(WFWorkflowGlyphIcon *)self background];
  if (background && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    color = [background color];
    [color alpha];
    v5 = v4 < 1.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasClearBackground
{
  background = [(WFWorkflowGlyphIcon *)self background];
  if (background && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    color = [background color];
    [color alpha];
    v5 = v4 == 0.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  glyph = self->_glyph;
  coderCopy = coder;
  [coderCopy encodeInteger:glyph forKey:@"glyph"];
  [coderCopy encodeObject:self->_background forKey:@"background"];
}

- (WFWorkflowGlyphIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"glyph"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"background"];

  v7 = [(WFWorkflowGlyphIcon *)self initWithGlyph:v5 background:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy)
  {
    v8 = 0;
    v12 = 0;
    v11 = 0;
LABEL_13:

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    v11 = 0;
    v8 = equalCopy;
    goto LABEL_13;
  }

  glyph = [(WFWorkflowGlyphIcon *)self glyph];
  if (glyph == [equalCopy glyph])
  {
    background = [(WFWorkflowGlyphIcon *)self background];
    background2 = [equalCopy background];
    v8 = background;
    v9 = background2;
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
        v11 = [v8 isEqual:v9];
      }
    }

    v12 = equalCopy;
    goto LABEL_13;
  }

  v11 = 0;
  v12 = equalCopy;
LABEL_14:

  return v11;
}

- (WFWorkflowGlyphIcon)initWithGlyph:(unsigned __int16)glyph background:(id)background
{
  backgroundCopy = background;
  if (!backgroundCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"background"}];
  }

  v14.receiver = self;
  v14.super_class = WFWorkflowGlyphIcon;
  _init = [(WFIcon *)&v14 _init];
  v10 = _init;
  if (_init)
  {
    _init->_glyph = glyph;
    objc_storeStrong(&_init->_background, background);
    v11 = v10;
  }

  return v10;
}

@end