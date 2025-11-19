@interface WFWorkflowGlyphIcon
- (BOOL)hasClearBackground;
- (BOOL)hasTransparentBackground;
- (BOOL)isEqual:(id)a3;
- (WFWorkflowGlyphIcon)initWithCoder:(id)a3;
- (WFWorkflowGlyphIcon)initWithGlyph:(unsigned __int16)a3 background:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowGlyphIcon

- (BOOL)hasTransparentBackground
{
  v2 = [(WFWorkflowGlyphIcon *)self background];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 color];
    [v3 alpha];
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
  v2 = [(WFWorkflowGlyphIcon *)self background];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 color];
    [v3 alpha];
    v5 = v4 == 0.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  glyph = self->_glyph;
  v5 = a3;
  [v5 encodeInteger:glyph forKey:@"glyph"];
  [v5 encodeObject:self->_background forKey:@"background"];
}

- (WFWorkflowGlyphIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"glyph"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"background"];

  v7 = [(WFWorkflowGlyphIcon *)self initWithGlyph:v5 background:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (!v4)
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
    v8 = v4;
    goto LABEL_13;
  }

  v5 = [(WFWorkflowGlyphIcon *)self glyph];
  if (v5 == [v4 glyph])
  {
    v6 = [(WFWorkflowGlyphIcon *)self background];
    v7 = [v4 background];
    v8 = v6;
    v9 = v7;
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

    v12 = v4;
    goto LABEL_13;
  }

  v11 = 0;
  v12 = v4;
LABEL_14:

  return v11;
}

- (WFWorkflowGlyphIcon)initWithGlyph:(unsigned __int16)a3 background:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"background"}];
  }

  v14.receiver = self;
  v14.super_class = WFWorkflowGlyphIcon;
  v9 = [(WFIcon *)&v14 _init];
  v10 = v9;
  if (v9)
  {
    v9->_glyph = a3;
    objc_storeStrong(&v9->_background, a4);
    v11 = v10;
  }

  return v10;
}

@end