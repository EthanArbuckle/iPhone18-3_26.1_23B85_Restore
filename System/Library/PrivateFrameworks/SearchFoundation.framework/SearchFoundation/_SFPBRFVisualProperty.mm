@interface _SFPBRFVisualProperty
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFVisualProperty)initWithDictionary:(id)dictionary;
- (_SFPBRFVisualProperty)initWithFacade:(id)facade;
- (_SFPBRFVisualProperty)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addVisual_elements:(id)visual_elements;
- (void)setVisual_elements:(id)visual_elements;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFVisualProperty

- (_SFPBRFVisualProperty)initWithFacade:(id)facade
{
  v22 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFVisualProperty *)self init];
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

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    visual_elements2 = [facadeCopy visual_elements];
    v9 = [visual_elements2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(visual_elements2);
          }

          v13 = [[_SFPBRFVisualElement alloc] initWithFacade:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [visual_elements2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(_SFPBRFVisualProperty *)v5 setVisual_elements:v7];
    if ([facadeCopy hasIs_safe_for_logging])
    {
      -[_SFPBRFVisualProperty setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [facadeCopy is_safe_for_logging]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFVisualProperty)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = _SFPBRFVisualProperty;
  v5 = [(_SFPBRFVisualProperty *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"visualElements"];
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
              v13 = [_SFPBRFVisualElement alloc];
              v14 = [(_SFPBRFVisualElement *)v13 initWithDictionary:v12, v19];
              [(_SFPBRFVisualProperty *)v5 addVisual_elements:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"isSafeForLogging", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFVisualProperty setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFVisualProperty)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFVisualProperty *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFVisualProperty *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_is_safe_for_logging)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFVisualProperty is_safe_for_logging](self, "is_safe_for_logging")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isSafeForLogging"];
  }

  if ([(NSArray *)self->_visual_elements count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_visual_elements;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
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

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"visualElements"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_visual_elements hash];
  v4 = 2654435761;
  if (!self->_is_safe_for_logging)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    visual_elements = [(_SFPBRFVisualProperty *)self visual_elements];
    visual_elements2 = [equalCopy visual_elements];
    v7 = visual_elements2;
    if ((visual_elements != 0) != (visual_elements2 == 0))
    {
      visual_elements3 = [(_SFPBRFVisualProperty *)self visual_elements];
      if (!visual_elements3)
      {

LABEL_10:
        is_safe_for_logging = self->_is_safe_for_logging;
        v13 = is_safe_for_logging == [equalCopy is_safe_for_logging];
        goto LABEL_8;
      }

      v9 = visual_elements3;
      visual_elements4 = [(_SFPBRFVisualProperty *)self visual_elements];
      visual_elements5 = [equalCopy visual_elements];
      v12 = [visual_elements4 isEqual:visual_elements5];

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
  visual_elements = [(_SFPBRFVisualProperty *)self visual_elements];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [visual_elements countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(visual_elements);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [visual_elements countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([(_SFPBRFVisualProperty *)self is_safe_for_logging])
  {
    PBDataWriterWriteBOOLField();
  }

  v11 = *MEMORY[0x1E69E9840];
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