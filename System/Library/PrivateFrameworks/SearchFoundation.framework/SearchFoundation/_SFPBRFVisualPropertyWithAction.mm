@interface _SFPBRFVisualPropertyWithAction
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFVisualPropertyWithAction)initWithDictionary:(id)a3;
- (_SFPBRFVisualPropertyWithAction)initWithFacade:(id)a3;
- (_SFPBRFVisualPropertyWithAction)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addVisual_elements:(id)a3;
- (void)setVisual_elements:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFVisualPropertyWithAction

- (_SFPBRFVisualPropertyWithAction)initWithFacade:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFVisualPropertyWithAction *)self init];
  if (v5)
  {
    v6 = [v4 visual_elements];
    if (v6)
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
    v8 = [v4 visual_elements];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBRFVisualElement alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [(_SFPBRFVisualPropertyWithAction *)v5 setVisual_elements:v7];
    if ([v4 hasIs_safe_for_logging])
    {
      -[_SFPBRFVisualPropertyWithAction setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [v4 is_safe_for_logging]);
    }

    v14 = [v4 commandItem];

    if (v14)
    {
      v15 = [_SFPBCommandButtonItem alloc];
      v16 = [v4 commandItem];
      v17 = [(_SFPBCommandButtonItem *)v15 initWithFacade:v16];
      [(_SFPBRFVisualPropertyWithAction *)v5 setCommandItem:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFVisualPropertyWithAction)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = _SFPBRFVisualPropertyWithAction;
  v5 = [(_SFPBRFVisualPropertyWithAction *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"visualElements"];
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

    v15 = [v4 objectForKeyedSubscript:{@"isSafeForLogging", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFVisualPropertyWithAction setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"commandItem"];
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

- (_SFPBRFVisualPropertyWithAction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFVisualPropertyWithAction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFVisualPropertyWithAction *)self dictionaryRepresentation];
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
  if (self->_commandItem)
  {
    v4 = [(_SFPBRFVisualPropertyWithAction *)self commandItem];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"commandItem"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"commandItem"];
    }
  }

  if (self->_is_safe_for_logging)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFVisualPropertyWithAction is_safe_for_logging](self, "is_safe_for_logging")}];
    [v3 setObject:v7 forKeyedSubscript:@"isSafeForLogging"];
  }

  if ([(NSArray *)self->_visual_elements count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
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

          v14 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v14)
          {
            [v8 addObject:v14];
          }

          else
          {
            v15 = [MEMORY[0x1E695DFB0] null];
            [v8 addObject:v15];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"visualElements"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = [(_SFPBRFVisualPropertyWithAction *)self visual_elements];
  v6 = [v4 visual_elements];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_12;
  }

  v7 = [(_SFPBRFVisualPropertyWithAction *)self visual_elements];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFVisualPropertyWithAction *)self visual_elements];
    v10 = [v4 visual_elements];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  is_safe_for_logging = self->_is_safe_for_logging;
  if (is_safe_for_logging != [v4 is_safe_for_logging])
  {
    goto LABEL_13;
  }

  v5 = [(_SFPBRFVisualPropertyWithAction *)self commandItem];
  v6 = [v4 commandItem];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = [(_SFPBRFVisualPropertyWithAction *)self commandItem];
  if (!v13)
  {

LABEL_16:
    v18 = 1;
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [(_SFPBRFVisualPropertyWithAction *)self commandItem];
  v16 = [v4 commandItem];
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
  v5 = [(_SFPBRFVisualPropertyWithAction *)self visual_elements];
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

  if ([(_SFPBRFVisualPropertyWithAction *)self is_safe_for_logging])
  {
    PBDataWriterWriteBOOLField();
  }

  v11 = [(_SFPBRFVisualPropertyWithAction *)self commandItem];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addVisual_elements:(id)a3
{
  v4 = a3;
  visual_elements = self->_visual_elements;
  v8 = v4;
  if (!visual_elements)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_visual_elements;
    self->_visual_elements = v6;

    v4 = v8;
    visual_elements = self->_visual_elements;
  }

  [(NSArray *)visual_elements addObject:v4];
}

- (void)setVisual_elements:(id)a3
{
  v4 = [a3 copy];
  visual_elements = self->_visual_elements;
  self->_visual_elements = v4;

  MEMORY[0x1EEE66BB8]();
}

@end