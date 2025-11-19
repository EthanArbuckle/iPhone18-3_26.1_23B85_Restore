@interface _SFPBCommandButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCommandButtonItem)initWithDictionary:(id)a3;
- (_SFPBCommandButtonItem)initWithFacade:(id)a3;
- (_SFPBCommandButtonItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPreviewButtonItems:(id)a3;
- (void)setPreviewButtonItems:(id)a3;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCommandButtonItem

- (_SFPBCommandButtonItem)initWithFacade:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCommandButtonItem *)self init];
  if (v5)
  {
    v6 = [v4 image];

    if (v6)
    {
      v7 = [_SFPBImage alloc];
      v8 = [v4 image];
      v9 = [(_SFPBImage *)v7 initWithFacade:v8];
      [(_SFPBCommandButtonItem *)v5 setImage:v9];
    }

    v10 = [v4 title];

    if (v10)
    {
      v11 = [v4 title];
      [(_SFPBCommandButtonItem *)v5 setTitle:v11];
    }

    v12 = [v4 command];

    if (v12)
    {
      v13 = [_SFPBCommand alloc];
      v14 = [v4 command];
      v15 = [(_SFPBCommand *)v13 initWithFacade:v14];
      [(_SFPBCommandButtonItem *)v5 setCommand:v15];
    }

    v16 = [v4 previewButtonItems];
    if (v16)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v17 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = [v4 previewButtonItems];
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v27 + 1) + 8 * i)];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }

    [(_SFPBCommandButtonItem *)v5 setPreviewButtonItems:v17];
    if ([v4 hasIsDestructive])
    {
      -[_SFPBCommandButtonItem setIsDestructive:](v5, "setIsDestructive:", [v4 isDestructive]);
    }

    if ([v4 hasUniqueId])
    {
      -[_SFPBCommandButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCommandButtonItem)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = _SFPBCommandButtonItem;
  v5 = [(_SFPBCommandButtonItem *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBImage alloc] initWithDictionary:v6];
      [(_SFPBCommandButtonItem *)v5 setImage:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBCommandButtonItem *)v5 setTitle:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"command"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBCommand alloc] initWithDictionary:v10];
      [(_SFPBCommandButtonItem *)v5 setCommand:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"previewButtonItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v10;
      v26 = v6;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[_SFPBButtonItem alloc] initWithDictionary:v18];
              [(_SFPBCommandButtonItem *)v5 addPreviewButtonItems:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }

      v6 = v26;
      v10 = v25;
    }

    v20 = [v4 objectForKeyedSubscript:@"isDestructive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandButtonItem setIsDestructive:](v5, "setIsDestructive:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandButtonItem setUniqueId:](v5, "setUniqueId:", [v21 unsignedLongLongValue]);
    }

    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCommandButtonItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCommandButtonItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCommandButtonItem *)self dictionaryRepresentation];
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
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_command)
  {
    v4 = [(_SFPBCommandButtonItem *)self command];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"command"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"command"];
    }
  }

  if (self->_image)
  {
    v7 = [(_SFPBCommandButtonItem *)self image];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"image"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"image"];
    }
  }

  if (self->_isDestructive)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCommandButtonItem isDestructive](self, "isDestructive")}];
    [v3 setObject:v10 forKeyedSubscript:@"isDestructive"];
  }

  if ([(NSArray *)self->_previewButtonItems count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = self->_previewButtonItems;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          if (v17)
          {
            [v11 addObject:v17];
          }

          else
          {
            v18 = [MEMORY[0x1E695DFB0] null];
            [v11 addObject:v18];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"previewButtonItems"];
  }

  if (self->_title)
  {
    v19 = [(_SFPBCommandButtonItem *)self title];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"title"];
  }

  if (self->_uniqueId)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBCommandButtonItem uniqueId](self, "uniqueId")}];
    [v3 setObject:v21 forKeyedSubscript:@"uniqueId"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBImage *)self->_image hash];
  v4 = [(NSString *)self->_title hash];
  v5 = [(_SFPBCommand *)self->_command hash];
  v6 = [(NSArray *)self->_previewButtonItems hash];
  if (self->_isDestructive)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_SFPBCommandButtonItem *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_SFPBCommandButtonItem *)self image];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCommandButtonItem *)self image];
    v10 = [v4 image];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommandButtonItem *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_SFPBCommandButtonItem *)self title];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCommandButtonItem *)self title];
    v15 = [v4 title];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommandButtonItem *)self command];
  v6 = [v4 command];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_SFPBCommandButtonItem *)self command];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBCommandButtonItem *)self command];
    v20 = [v4 command];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommandButtonItem *)self previewButtonItems];
  v6 = [v4 previewButtonItems];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = [(_SFPBCommandButtonItem *)self previewButtonItems];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBCommandButtonItem *)self previewButtonItems];
    v25 = [v4 previewButtonItems];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  isDestructive = self->_isDestructive;
  if (isDestructive == [v4 isDestructive])
  {
    uniqueId = self->_uniqueId;
    v27 = uniqueId == [v4 uniqueId];
    goto LABEL_23;
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCommandButtonItem *)self image];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBCommandButtonItem *)self title];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBCommandButtonItem *)self command];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBCommandButtonItem *)self previewButtonItems];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ([(_SFPBCommandButtonItem *)self isDestructive])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCommandButtonItem *)self uniqueId])
  {
    PBDataWriterWriteUint64Field();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addPreviewButtonItems:(id)a3
{
  v4 = a3;
  previewButtonItems = self->_previewButtonItems;
  v8 = v4;
  if (!previewButtonItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_previewButtonItems;
    self->_previewButtonItems = v6;

    v4 = v8;
    previewButtonItems = self->_previewButtonItems;
  }

  [(NSArray *)previewButtonItems addObject:v4];
}

- (void)setPreviewButtonItems:(id)a3
{
  v4 = [a3 copy];
  previewButtonItems = self->_previewButtonItems;
  self->_previewButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end