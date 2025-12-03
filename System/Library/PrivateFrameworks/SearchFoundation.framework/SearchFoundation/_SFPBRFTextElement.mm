@interface _SFPBRFTextElement
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFTextElement)initWithDictionary:(id)dictionary;
- (_SFPBRFTextElement)initWithFacade:(id)facade;
- (_SFPBRFTextElement)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFormatted_text:(id)formatted_text;
- (void)setFormatted_text:(id)formatted_text;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFTextElement

- (_SFPBRFTextElement)initWithFacade:(id)facade
{
  v28 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFTextElement *)self init];
  if (v5)
  {
    formatted_text = [facadeCopy formatted_text];
    if (formatted_text)
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
    formatted_text2 = [facadeCopy formatted_text];
    v9 = [formatted_text2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(formatted_text2);
          }

          v13 = [[_SFPBRFFormattedText alloc] initWithFacade:*(*(&v23 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [formatted_text2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [(_SFPBRFTextElement *)v5 setFormatted_texts:v7];
    line_limit = [facadeCopy line_limit];

    if (line_limit)
    {
      line_limit2 = [facadeCopy line_limit];
      -[_SFPBRFTextElement setLine_limit:](v5, "setLine_limit:", [line_limit2 intValue]);
    }

    show_more_on_tap = [facadeCopy show_more_on_tap];

    if (show_more_on_tap)
    {
      v17 = [_SFPBRFShowMoreOnTap alloc];
      show_more_on_tap2 = [facadeCopy show_more_on_tap];
      v19 = [(_SFPBRFShowMoreOnTap *)v17 initWithFacade:show_more_on_tap2];
      [(_SFPBRFTextElement *)v5 setShow_more_on_tap:v19];
    }

    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFTextElement)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = _SFPBRFTextElement;
  v5 = [(_SFPBRFTextElement *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"formattedText"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"lineLimit", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTextElement setLine_limit:](v5, "setLine_limit:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"showMoreOnTap"];
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

- (_SFPBRFTextElement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFTextElement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFTextElement *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_formatted_texts count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"formattedText"];
  }

  if (self->_line_limit)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRFTextElement line_limit](self, "line_limit")}];
    [dictionary setObject:v12 forKeyedSubscript:@"lineLimit"];
  }

  if (self->_show_more_on_tap)
  {
    show_more_on_tap = [(_SFPBRFTextElement *)self show_more_on_tap];
    dictionaryRepresentation2 = [show_more_on_tap dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"showMoreOnTap"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"showMoreOnTap"];
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_formatted_texts hash];
  v4 = 2654435761 * self->_line_limit;
  return v4 ^ v3 ^ [(_SFPBRFShowMoreOnTap *)self->_show_more_on_tap hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  formatted_texts = [(_SFPBRFTextElement *)self formatted_texts];
  formatted_texts2 = [equalCopy formatted_texts];
  if ((formatted_texts != 0) == (formatted_texts2 == 0))
  {
    goto LABEL_12;
  }

  formatted_texts3 = [(_SFPBRFTextElement *)self formatted_texts];
  if (formatted_texts3)
  {
    v8 = formatted_texts3;
    formatted_texts4 = [(_SFPBRFTextElement *)self formatted_texts];
    formatted_texts5 = [equalCopy formatted_texts];
    v11 = [formatted_texts4 isEqual:formatted_texts5];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  line_limit = self->_line_limit;
  if (line_limit != [equalCopy line_limit])
  {
    goto LABEL_13;
  }

  formatted_texts = [(_SFPBRFTextElement *)self show_more_on_tap];
  formatted_texts2 = [equalCopy show_more_on_tap];
  if ((formatted_texts != 0) == (formatted_texts2 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  show_more_on_tap = [(_SFPBRFTextElement *)self show_more_on_tap];
  if (!show_more_on_tap)
  {

LABEL_16:
    v18 = 1;
    goto LABEL_14;
  }

  v14 = show_more_on_tap;
  show_more_on_tap2 = [(_SFPBRFTextElement *)self show_more_on_tap];
  show_more_on_tap3 = [equalCopy show_more_on_tap];
  v17 = [show_more_on_tap2 isEqual:show_more_on_tap3];

  if (v17)
  {
    goto LABEL_16;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  formatted_texts = [(_SFPBRFTextElement *)self formatted_texts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [formatted_texts countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(formatted_texts);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [formatted_texts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([(_SFPBRFTextElement *)self line_limit])
  {
    PBDataWriterWriteInt32Field();
  }

  show_more_on_tap = [(_SFPBRFTextElement *)self show_more_on_tap];
  if (show_more_on_tap)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addFormatted_text:(id)formatted_text
{
  formatted_textCopy = formatted_text;
  formatted_texts = self->_formatted_texts;
  v8 = formatted_textCopy;
  if (!formatted_texts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_formatted_texts;
    self->_formatted_texts = array;

    formatted_textCopy = v8;
    formatted_texts = self->_formatted_texts;
  }

  [(NSArray *)formatted_texts addObject:formatted_textCopy];
}

- (void)setFormatted_text:(id)formatted_text
{
  v4 = [formatted_text copy];
  formatted_texts = self->_formatted_texts;
  self->_formatted_texts = v4;

  MEMORY[0x1EEE66BB8]();
}

@end