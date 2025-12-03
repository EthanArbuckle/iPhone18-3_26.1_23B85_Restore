@interface _SFPBRFMultiButtonCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFMultiButtonCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFMultiButtonCardSection)initWithFacade:(id)facade;
- (_SFPBRFMultiButtonCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addButtons:(id)buttons;
- (void)setButtons:(id)buttons;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFMultiButtonCardSection

- (_SFPBRFMultiButtonCardSection)initWithFacade:(id)facade
{
  v22 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFMultiButtonCardSection *)self init];
  if (v5)
  {
    buttons = [facadeCopy buttons];
    if (buttons)
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
    buttons2 = [facadeCopy buttons];
    v9 = [buttons2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(buttons2);
          }

          v13 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [buttons2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(_SFPBRFMultiButtonCardSection *)v5 setButtons:v7];
    if ([facadeCopy hasLayoutType])
    {
      -[_SFPBRFMultiButtonCardSection setLayoutType:](v5, "setLayoutType:", [facadeCopy layoutType]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFMultiButtonCardSection)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = _SFPBRFMultiButtonCardSection;
  v5 = [(_SFPBRFMultiButtonCardSection *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"buttons"];
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
              v13 = [_SFPBButtonItem alloc];
              v14 = [(_SFPBButtonItem *)v13 initWithDictionary:v12, v19];
              [(_SFPBRFMultiButtonCardSection *)v5 addButtons:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"layoutType", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFMultiButtonCardSection setLayoutType:](v5, "setLayoutType:", [v15 intValue]);
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFMultiButtonCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFMultiButtonCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFMultiButtonCardSection *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_buttons count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_buttons;
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

    [dictionary setObject:array forKeyedSubscript:@"buttons"];
  }

  if (self->_layoutType)
  {
    layoutType = [(_SFPBRFMultiButtonCardSection *)self layoutType];
    if (layoutType >= 5)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", layoutType];
    }

    else
    {
      v13 = off_1E7ACE448[layoutType];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"layoutType"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    buttons = [(_SFPBRFMultiButtonCardSection *)self buttons];
    buttons2 = [equalCopy buttons];
    v7 = buttons2;
    if ((buttons != 0) != (buttons2 == 0))
    {
      buttons3 = [(_SFPBRFMultiButtonCardSection *)self buttons];
      if (!buttons3)
      {

LABEL_10:
        layoutType = self->_layoutType;
        v13 = layoutType == [equalCopy layoutType];
        goto LABEL_8;
      }

      v9 = buttons3;
      buttons4 = [(_SFPBRFMultiButtonCardSection *)self buttons];
      buttons5 = [equalCopy buttons];
      v12 = [buttons4 isEqual:buttons5];

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
  buttons = [(_SFPBRFMultiButtonCardSection *)self buttons];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [buttons countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(buttons);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [buttons countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([(_SFPBRFMultiButtonCardSection *)self layoutType])
  {
    PBDataWriterWriteInt32Field();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addButtons:(id)buttons
{
  buttonsCopy = buttons;
  buttons = self->_buttons;
  v8 = buttonsCopy;
  if (!buttons)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_buttons;
    self->_buttons = array;

    buttonsCopy = v8;
    buttons = self->_buttons;
  }

  [(NSArray *)buttons addObject:buttonsCopy];
}

- (void)setButtons:(id)buttons
{
  v4 = [buttons copy];
  buttons = self->_buttons;
  self->_buttons = v4;

  MEMORY[0x1EEE66BB8]();
}

@end