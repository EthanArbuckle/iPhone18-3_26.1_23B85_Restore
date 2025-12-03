@interface _SFPBCommandButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCommandButtonItem)initWithDictionary:(id)dictionary;
- (_SFPBCommandButtonItem)initWithFacade:(id)facade;
- (_SFPBCommandButtonItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPreviewButtonItems:(id)items;
- (void)setPreviewButtonItems:(id)items;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCommandButtonItem

- (_SFPBCommandButtonItem)initWithFacade:(id)facade
{
  v32 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBCommandButtonItem *)self init];
  if (v5)
  {
    image = [facadeCopy image];

    if (image)
    {
      v7 = [_SFPBImage alloc];
      image2 = [facadeCopy image];
      v9 = [(_SFPBImage *)v7 initWithFacade:image2];
      [(_SFPBCommandButtonItem *)v5 setImage:v9];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBCommandButtonItem *)v5 setTitle:title2];
    }

    command = [facadeCopy command];

    if (command)
    {
      v13 = [_SFPBCommand alloc];
      command2 = [facadeCopy command];
      v15 = [(_SFPBCommand *)v13 initWithFacade:command2];
      [(_SFPBCommandButtonItem *)v5 setCommand:v15];
    }

    previewButtonItems = [facadeCopy previewButtonItems];
    if (previewButtonItems)
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
    previewButtonItems2 = [facadeCopy previewButtonItems];
    v19 = [previewButtonItems2 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(previewButtonItems2);
          }

          v23 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v27 + 1) + 8 * i)];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [previewButtonItems2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }

    [(_SFPBCommandButtonItem *)v5 setPreviewButtonItems:v17];
    if ([facadeCopy hasIsDestructive])
    {
      -[_SFPBCommandButtonItem setIsDestructive:](v5, "setIsDestructive:", [facadeCopy isDestructive]);
    }

    if ([facadeCopy hasUniqueId])
    {
      -[_SFPBCommandButtonItem setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    }

    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCommandButtonItem)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = _SFPBCommandButtonItem;
  v5 = [(_SFPBCommandButtonItem *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBImage alloc] initWithDictionary:v6];
      [(_SFPBCommandButtonItem *)v5 setImage:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBCommandButtonItem *)v5 setTitle:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"command"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBCommand alloc] initWithDictionary:v10];
      [(_SFPBCommandButtonItem *)v5 setCommand:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"previewButtonItems"];
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

    v20 = [dictionaryCopy objectForKeyedSubscript:@"isDestructive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandButtonItem setIsDestructive:](v5, "setIsDestructive:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
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

- (_SFPBCommandButtonItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCommandButtonItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCommandButtonItem *)self dictionaryRepresentation];
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
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_command)
  {
    command = [(_SFPBCommandButtonItem *)self command];
    dictionaryRepresentation = [command dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"command"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"command"];
    }
  }

  if (self->_image)
  {
    image = [(_SFPBCommandButtonItem *)self image];
    dictionaryRepresentation2 = [image dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"image"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"image"];
    }
  }

  if (self->_isDestructive)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCommandButtonItem isDestructive](self, "isDestructive")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isDestructive"];
  }

  if ([(NSArray *)self->_previewButtonItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"previewButtonItems"];
  }

  if (self->_title)
  {
    title = [(_SFPBCommandButtonItem *)self title];
    v20 = [title copy];
    [dictionary setObject:v20 forKeyedSubscript:@"title"];
  }

  if (self->_uniqueId)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBCommandButtonItem uniqueId](self, "uniqueId")}];
    [dictionary setObject:v21 forKeyedSubscript:@"uniqueId"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  image = [(_SFPBCommandButtonItem *)self image];
  image2 = [equalCopy image];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_21;
  }

  image3 = [(_SFPBCommandButtonItem *)self image];
  if (image3)
  {
    v8 = image3;
    image4 = [(_SFPBCommandButtonItem *)self image];
    image5 = [equalCopy image];
    v11 = [image4 isEqual:image5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  image = [(_SFPBCommandButtonItem *)self title];
  image2 = [equalCopy title];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_21;
  }

  title = [(_SFPBCommandButtonItem *)self title];
  if (title)
  {
    v13 = title;
    title2 = [(_SFPBCommandButtonItem *)self title];
    title3 = [equalCopy title];
    v16 = [title2 isEqual:title3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  image = [(_SFPBCommandButtonItem *)self command];
  image2 = [equalCopy command];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_21;
  }

  command = [(_SFPBCommandButtonItem *)self command];
  if (command)
  {
    v18 = command;
    command2 = [(_SFPBCommandButtonItem *)self command];
    command3 = [equalCopy command];
    v21 = [command2 isEqual:command3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  image = [(_SFPBCommandButtonItem *)self previewButtonItems];
  image2 = [equalCopy previewButtonItems];
  if ((image != 0) == (image2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  previewButtonItems = [(_SFPBCommandButtonItem *)self previewButtonItems];
  if (previewButtonItems)
  {
    v23 = previewButtonItems;
    previewButtonItems2 = [(_SFPBCommandButtonItem *)self previewButtonItems];
    previewButtonItems3 = [equalCopy previewButtonItems];
    v26 = [previewButtonItems2 isEqual:previewButtonItems3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  isDestructive = self->_isDestructive;
  if (isDestructive == [equalCopy isDestructive])
  {
    uniqueId = self->_uniqueId;
    v27 = uniqueId == [equalCopy uniqueId];
    goto LABEL_23;
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  image = [(_SFPBCommandButtonItem *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBCommandButtonItem *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  command = [(_SFPBCommandButtonItem *)self command];
  if (command)
  {
    PBDataWriterWriteSubmessage();
  }

  previewButtonItems = [(_SFPBCommandButtonItem *)self previewButtonItems];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [previewButtonItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(previewButtonItems);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [previewButtonItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)addPreviewButtonItems:(id)items
{
  itemsCopy = items;
  previewButtonItems = self->_previewButtonItems;
  v8 = itemsCopy;
  if (!previewButtonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_previewButtonItems;
    self->_previewButtonItems = array;

    itemsCopy = v8;
    previewButtonItems = self->_previewButtonItems;
  }

  [(NSArray *)previewButtonItems addObject:itemsCopy];
}

- (void)setPreviewButtonItems:(id)items
{
  v4 = [items copy];
  previewButtonItems = self->_previewButtonItems;
  self->_previewButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end