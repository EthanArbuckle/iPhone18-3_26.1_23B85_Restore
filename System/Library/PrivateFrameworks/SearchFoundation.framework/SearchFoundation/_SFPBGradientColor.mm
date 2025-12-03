@interface _SFPBGradientColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBGradientColor)initWithDictionary:(id)dictionary;
- (_SFPBGradientColor)initWithFacade:(id)facade;
- (_SFPBGradientColor)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addColors:(id)colors;
- (void)setColors:(id)colors;
- (void)writeTo:(id)to;
@end

@implementation _SFPBGradientColor

- (_SFPBGradientColor)initWithFacade:(id)facade
{
  v22 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBGradientColor *)self init];
  if (v5)
  {
    colors = [facadeCopy colors];
    if (colors)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    colors2 = [facadeCopy colors];
    v9 = [colors2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(colors2);
          }

          v13 = [[_SFPBColor alloc] initWithFacade:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [colors2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(_SFPBGradientColor *)v5 setColors:v7];
    if ([facadeCopy hasGradientType])
    {
      -[_SFPBGradientColor setGradientType:](v5, "setGradientType:", [facadeCopy gradientType]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBGradientColor)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = _SFPBGradientColor;
  v5 = [(_SFPBGradientColor *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"colors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [_SFPBColor alloc];
              v14 = [(_SFPBColor *)v13 initWithDictionary:v12, v19];
              [(_SFPBGradientColor *)v5 addColors:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"gradientType", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBGradientColor setGradientType:](v5, "setGradientType:", [v15 intValue]);
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBGradientColor)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBGradientColor *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBGradientColor *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_colors count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_colors;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"colors"];
  }

  if (self->_gradientType)
  {
    gradientType = [(_SFPBGradientColor *)self gradientType];
    if (gradientType)
    {
      if (gradientType == 1)
      {
        v13 = @"1";
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", gradientType];
      }
    }

    else
    {
      v13 = @"0";
    }

    [dictionary setObject:v13 forKeyedSubscript:@"gradientType"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    colors = [(_SFPBGradientColor *)self colors];
    colors2 = [equalCopy colors];
    v7 = colors2;
    if ((colors != 0) != (colors2 == 0))
    {
      colors3 = [(_SFPBGradientColor *)self colors];
      if (!colors3)
      {

LABEL_10:
        gradientType = self->_gradientType;
        v13 = gradientType == [equalCopy gradientType];
        goto LABEL_8;
      }

      v9 = colors3;
      colors4 = [(_SFPBGradientColor *)self colors];
      colors5 = [equalCopy colors];
      v12 = [colors4 isEqual:colors5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  colors = [(_SFPBGradientColor *)self colors];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [colors countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(colors);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [colors countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([(_SFPBGradientColor *)self gradientType])
  {
    PBDataWriterWriteInt32Field();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addColors:(id)colors
{
  colorsCopy = colors;
  colors = self->_colors;
  v8 = colorsCopy;
  if (!colors)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_colors;
    self->_colors = array;

    colorsCopy = v8;
    colors = self->_colors;
  }

  [(NSArray *)colors addObject:colorsCopy];
}

- (void)setColors:(id)colors
{
  v4 = [colors copy];
  colors = self->_colors;
  self->_colors = v4;

  MEMORY[0x1EEE66BB8]();
}

@end