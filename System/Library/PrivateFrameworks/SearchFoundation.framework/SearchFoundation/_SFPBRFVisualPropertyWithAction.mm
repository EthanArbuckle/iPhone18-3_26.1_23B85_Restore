@interface _SFPBRFVisualPropertyWithAction
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFVisualPropertyWithAction)initWithDictionary:(id)dictionary;
- (_SFPBRFVisualPropertyWithAction)initWithFacade:(id)facade;
- (_SFPBRFVisualPropertyWithAction)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addVisual_elements:(id)visual_elements;
- (void)setVisual_elements:(id)visual_elements;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFVisualPropertyWithAction

- (_SFPBRFVisualPropertyWithAction)initWithFacade:(id)facade
{
  v26 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFVisualPropertyWithAction *)self init];
  if (v5)
  {
    visual_elements = [facadeCopy visual_elements];
    if (visual_elements)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    visual_elements2 = [facadeCopy visual_elements];
    v9 = [visual_elements2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(visual_elements2);
          }

          v13 = [[_SFPBRFVisualElement alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [visual_elements2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [(_SFPBRFVisualPropertyWithAction *)v5 setVisual_elements:v7];
    if ([facadeCopy hasIs_safe_for_logging])
    {
      -[_SFPBRFVisualPropertyWithAction setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [facadeCopy is_safe_for_logging]);
    }

    commandItem = [facadeCopy commandItem];

    if (commandItem)
    {
      v15 = [_SFPBCommandButtonItem alloc];
      commandItem2 = [facadeCopy commandItem];
      v17 = [(_SFPBCommandButtonItem *)v15 initWithFacade:commandItem2];
      [(_SFPBRFVisualPropertyWithAction *)v5 setCommandItem:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFVisualPropertyWithAction)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = _SFPBRFVisualPropertyWithAction;
  v5 = [(_SFPBRFVisualPropertyWithAction *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"visualElements"];
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
              v13 = [_SFPBRFVisualElement alloc];
              v14 = [(_SFPBRFVisualElement *)v13 initWithDictionary:v12, v21];
              [(_SFPBRFVisualPropertyWithAction *)v5 addVisual_elements:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"isSafeForLogging", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFVisualPropertyWithAction setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"commandItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBCommandButtonItem alloc] initWithDictionary:v16];
      [(_SFPBRFVisualPropertyWithAction *)v5 setCommandItem:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFVisualPropertyWithAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFVisualPropertyWithAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFVisualPropertyWithAction *)self dictionaryRepresentation];
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
  if (self->_commandItem)
  {
    commandItem = [(_SFPBRFVisualPropertyWithAction *)self commandItem];
    dictionaryRepresentation = [commandItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"commandItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"commandItem"];
    }
  }

  if (self->_is_safe_for_logging)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFVisualPropertyWithAction is_safe_for_logging](self, "is_safe_for_logging")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isSafeForLogging"];
  }

  if ([(NSArray *)self->_visual_elements count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_visual_elements;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"visualElements"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_visual_elements hash];
  if (self->_is_safe_for_logging)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(_SFPBCommandButtonItem *)self->_commandItem hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  visual_elements = [(_SFPBRFVisualPropertyWithAction *)self visual_elements];
  visual_elements2 = [equalCopy visual_elements];
  if ((visual_elements != 0) == (visual_elements2 == 0))
  {
    goto LABEL_12;
  }

  visual_elements3 = [(_SFPBRFVisualPropertyWithAction *)self visual_elements];
  if (visual_elements3)
  {
    v8 = visual_elements3;
    visual_elements4 = [(_SFPBRFVisualPropertyWithAction *)self visual_elements];
    visual_elements5 = [equalCopy visual_elements];
    v11 = [visual_elements4 isEqual:visual_elements5];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  is_safe_for_logging = self->_is_safe_for_logging;
  if (is_safe_for_logging != [equalCopy is_safe_for_logging])
  {
    goto LABEL_13;
  }

  visual_elements = [(_SFPBRFVisualPropertyWithAction *)self commandItem];
  visual_elements2 = [equalCopy commandItem];
  if ((visual_elements != 0) == (visual_elements2 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  commandItem = [(_SFPBRFVisualPropertyWithAction *)self commandItem];
  if (!commandItem)
  {

LABEL_16:
    v18 = 1;
    goto LABEL_14;
  }

  v14 = commandItem;
  commandItem2 = [(_SFPBRFVisualPropertyWithAction *)self commandItem];
  commandItem3 = [equalCopy commandItem];
  v17 = [commandItem2 isEqual:commandItem3];

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
  visual_elements = [(_SFPBRFVisualPropertyWithAction *)self visual_elements];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [visual_elements countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(visual_elements);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [visual_elements countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([(_SFPBRFVisualPropertyWithAction *)self is_safe_for_logging])
  {
    PBDataWriterWriteBOOLField();
  }

  commandItem = [(_SFPBRFVisualPropertyWithAction *)self commandItem];
  if (commandItem)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addVisual_elements:(id)visual_elements
{
  visual_elementsCopy = visual_elements;
  visual_elements = self->_visual_elements;
  v8 = visual_elementsCopy;
  if (!visual_elements)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_visual_elements;
    self->_visual_elements = array;

    visual_elementsCopy = v8;
    visual_elements = self->_visual_elements;
  }

  [(NSArray *)visual_elements addObject:visual_elementsCopy];
}

- (void)setVisual_elements:(id)visual_elements
{
  v4 = [visual_elements copy];
  visual_elements = self->_visual_elements;
  self->_visual_elements = v4;

  MEMORY[0x1EEE66BB8]();
}

@end