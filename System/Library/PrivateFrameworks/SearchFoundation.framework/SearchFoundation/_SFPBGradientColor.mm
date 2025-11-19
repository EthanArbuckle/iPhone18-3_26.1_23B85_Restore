@interface _SFPBGradientColor
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBGradientColor)initWithDictionary:(id)a3;
- (_SFPBGradientColor)initWithFacade:(id)a3;
- (_SFPBGradientColor)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)addColors:(id)a3;
- (void)setColors:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBGradientColor

- (_SFPBGradientColor)initWithFacade:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBGradientColor *)self init];
  if (v5)
  {
    v6 = [v4 colors];
    if (v6)
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
    v8 = [v4 colors];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBColor alloc] initWithFacade:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(_SFPBGradientColor *)v5 setColors:v7];
    if ([v4 hasGradientType])
    {
      -[_SFPBGradientColor setGradientType:](v5, "setGradientType:", [v4 gradientType]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBGradientColor)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _SFPBGradientColor;
  v5 = [(_SFPBGradientColor *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"colors"];
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

    v15 = [v4 objectForKeyedSubscript:{@"gradientType", v19}];
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

- (_SFPBGradientColor)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBGradientColor *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBGradientColor *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_colors count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"colors"];
  }

  if (self->_gradientType)
  {
    v12 = [(_SFPBGradientColor *)self gradientType];
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = @"1";
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
      }
    }

    else
    {
      v13 = @"0";
    }

    [v3 setObject:v13 forKeyedSubscript:@"gradientType"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBGradientColor *)self colors];
    v6 = [v4 colors];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBGradientColor *)self colors];
      if (!v8)
      {

LABEL_10:
        gradientType = self->_gradientType;
        v13 = gradientType == [v4 gradientType];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBGradientColor *)self colors];
      v11 = [v4 colors];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBGradientColor *)self colors];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([(_SFPBGradientColor *)self gradientType])
  {
    PBDataWriterWriteInt32Field();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addColors:(id)a3
{
  v4 = a3;
  colors = self->_colors;
  v8 = v4;
  if (!colors)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_colors;
    self->_colors = v6;

    v4 = v8;
    colors = self->_colors;
  }

  [(NSArray *)colors addObject:v4];
}

- (void)setColors:(id)a3
{
  v4 = [a3 copy];
  colors = self->_colors;
  self->_colors = v4;

  MEMORY[0x1EEE66BB8]();
}

@end