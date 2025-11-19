@interface _SFPBRFTextElement
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFTextElement)initWithDictionary:(id)a3;
- (_SFPBRFTextElement)initWithFacade:(id)a3;
- (_SFPBRFTextElement)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFormatted_text:(id)a3;
- (void)setFormatted_text:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFTextElement

- (_SFPBRFTextElement)initWithFacade:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFTextElement *)self init];
  if (v5)
  {
    v6 = [v4 formatted_text];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v4 formatted_text];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBRFFormattedText alloc] initWithFacade:*(*(&v23 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [(_SFPBRFTextElement *)v5 setFormatted_texts:v7];
    v14 = [v4 line_limit];

    if (v14)
    {
      v15 = [v4 line_limit];
      -[_SFPBRFTextElement setLine_limit:](v5, "setLine_limit:", [v15 intValue]);
    }

    v16 = [v4 show_more_on_tap];

    if (v16)
    {
      v17 = [_SFPBRFShowMoreOnTap alloc];
      v18 = [v4 show_more_on_tap];
      v19 = [(_SFPBRFShowMoreOnTap *)v17 initWithFacade:v18];
      [(_SFPBRFTextElement *)v5 setShow_more_on_tap:v19];
    }

    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFTextElement)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = _SFPBRFTextElement;
  v5 = [(_SFPBRFTextElement *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"formattedText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          v11 = 0;
          do
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [_SFPBRFFormattedText alloc];
              v14 = [(_SFPBRFFormattedText *)v13 initWithDictionary:v12, v21];
              [(_SFPBRFTextElement *)v5 addFormatted_text:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"lineLimit", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTextElement setLine_limit:](v5, "setLine_limit:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"showMoreOnTap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFShowMoreOnTap alloc] initWithDictionary:v16];
      [(_SFPBRFTextElement *)v5 setShow_more_on_tap:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFTextElement)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFTextElement *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFTextElement *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_formatted_texts count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_formatted_texts;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"formattedText"];
  }

  if (self->_line_limit)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRFTextElement line_limit](self, "line_limit")}];
    [v3 setObject:v12 forKeyedSubscript:@"lineLimit"];
  }

  if (self->_show_more_on_tap)
  {
    v13 = [(_SFPBRFTextElement *)self show_more_on_tap];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"showMoreOnTap"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"showMoreOnTap"];
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_formatted_texts hash];
  v4 = 2654435761 * self->_line_limit;
  return v4 ^ v3 ^ [(_SFPBRFShowMoreOnTap *)self->_show_more_on_tap hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = [(_SFPBRFTextElement *)self formatted_texts];
  v6 = [v4 formatted_texts];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_12;
  }

  v7 = [(_SFPBRFTextElement *)self formatted_texts];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFTextElement *)self formatted_texts];
    v10 = [v4 formatted_texts];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  line_limit = self->_line_limit;
  if (line_limit != [v4 line_limit])
  {
    goto LABEL_13;
  }

  v5 = [(_SFPBRFTextElement *)self show_more_on_tap];
  v6 = [v4 show_more_on_tap];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = [(_SFPBRFTextElement *)self show_more_on_tap];
  if (!v13)
  {

LABEL_16:
    v18 = 1;
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [(_SFPBRFTextElement *)self show_more_on_tap];
  v16 = [v4 show_more_on_tap];
  v17 = [v15 isEqual:v16];

  if (v17)
  {
    goto LABEL_16;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFTextElement *)self formatted_texts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([(_SFPBRFTextElement *)self line_limit])
  {
    PBDataWriterWriteInt32Field();
  }

  v11 = [(_SFPBRFTextElement *)self show_more_on_tap];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addFormatted_text:(id)a3
{
  v4 = a3;
  formatted_texts = self->_formatted_texts;
  v8 = v4;
  if (!formatted_texts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_formatted_texts;
    self->_formatted_texts = v6;

    v4 = v8;
    formatted_texts = self->_formatted_texts;
  }

  [(NSArray *)formatted_texts addObject:v4];
}

- (void)setFormatted_text:(id)a3
{
  v4 = [a3 copy];
  formatted_texts = self->_formatted_texts;
  self->_formatted_texts = v4;

  MEMORY[0x1EEE66BB8]();
}

@end