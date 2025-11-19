@interface _SFPBTextColumnSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBTextColumnSection)initWithDictionary:(id)a3;
- (_SFPBTextColumnSection)initWithFacade:(id)a3;
- (_SFPBTextColumnSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTextLines:(id)a3;
- (void)setTextLines:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBTextColumnSection

- (_SFPBTextColumnSection)initWithFacade:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBTextColumnSection *)self init];
  if (v5)
  {
    v6 = [v4 textLines];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v4 textLines];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (*(*(&v16 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(_SFPBTextColumnSection *)v5 setTextLines:v7];
    if ([v4 hasTextNoWrap])
    {
      -[_SFPBTextColumnSection setTextNoWrap:](v5, "setTextNoWrap:", [v4 textNoWrap]);
    }

    if ([v4 hasTextWeight])
    {
      -[_SFPBTextColumnSection setTextWeight:](v5, "setTextWeight:", [v4 textWeight]);
    }

    v13 = v5;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBTextColumnSection)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _SFPBTextColumnSection;
  v5 = [(_SFPBTextColumnSection *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"textLines"];
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
              v13 = [v12 copy];
              [(_SFPBTextColumnSection *)v5 addTextLines:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:{@"textNoWrap", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnSection setTextNoWrap:](v5, "setTextNoWrap:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"textWeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnSection setTextWeight:](v5, "setTextWeight:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBTextColumnSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBTextColumnSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBTextColumnSection *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_textLines)
  {
    v4 = [(_SFPBTextColumnSection *)self textLines];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"textLines"];
  }

  if (self->_textNoWrap)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTextColumnSection textNoWrap](self, "textNoWrap")}];
    [v3 setObject:v6 forKeyedSubscript:@"textNoWrap"];
  }

  if (self->_textWeight)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBTextColumnSection textWeight](self, "textWeight")}];
    [v3 setObject:v7 forKeyedSubscript:@"textWeight"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_textLines hash];
  if (self->_textNoWrap)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ (2654435761 * self->_textWeight);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = [(_SFPBTextColumnSection *)self textLines];
  v6 = [v4 textLines];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_10;
  }

  v8 = [(_SFPBTextColumnSection *)self textLines];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBTextColumnSection *)self textLines];
    v11 = [v4 textLines];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  textNoWrap = self->_textNoWrap;
  if (textNoWrap != [v4 textNoWrap])
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  textWeight = self->_textWeight;
  v15 = textWeight == [v4 textWeight];
LABEL_11:

  return v15;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBTextColumnSection *)self textLines];
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
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([(_SFPBTextColumnSection *)self textNoWrap])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTextColumnSection *)self textWeight])
  {
    PBDataWriterWriteUint32Field();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addTextLines:(id)a3
{
  v4 = a3;
  textLines = self->_textLines;
  v8 = v4;
  if (!textLines)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_textLines;
    self->_textLines = v6;

    v4 = v8;
    textLines = self->_textLines;
  }

  [(NSArray *)textLines addObject:v4];
}

- (void)setTextLines:(id)a3
{
  v4 = [a3 copy];
  textLines = self->_textLines;
  self->_textLines = v4;

  MEMORY[0x1EEE66BB8]();
}

@end