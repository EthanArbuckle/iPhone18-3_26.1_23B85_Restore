@interface _SFPBShareCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBShareCommand)initWithDictionary:(id)dictionary;
- (_SFPBShareCommand)initWithFacade:(id)facade;
- (_SFPBShareCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addShareItems:(id)items;
- (void)setShareItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation _SFPBShareCommand

- (_SFPBShareCommand)initWithFacade:(id)facade
{
  v26 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBShareCommand *)self init];
  if (v5)
  {
    shareItem = [facadeCopy shareItem];

    if (shareItem)
    {
      v7 = [_SFPBShareItem alloc];
      shareItem2 = [facadeCopy shareItem];
      v9 = [(_SFPBShareItem *)v7 initWithFacade:shareItem2];
      [(_SFPBShareCommand *)v5 setShareItem:v9];
    }

    shareItems = [facadeCopy shareItems];
    if (shareItems)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    shareItems2 = [facadeCopy shareItems];
    v13 = [shareItems2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(shareItems2);
          }

          v17 = [[_SFPBShareItem alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [shareItems2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    [(_SFPBShareCommand *)v5 setShareItems:v11];
    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBShareCommand)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = _SFPBShareCommand;
  v5 = [(_SFPBShareCommand *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"shareItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBShareItem alloc] initWithDictionary:v6];
      [(_SFPBShareCommand *)v5 setShareItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"shareItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBShareItem alloc] initWithDictionary:v14];
              [(_SFPBShareCommand *)v5 addShareItems:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v6 = v19;
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBShareCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBShareCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBShareCommand *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_shareItem)
  {
    shareItem = [(_SFPBShareCommand *)self shareItem];
    dictionaryRepresentation = [shareItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"shareItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"shareItem"];
    }
  }

  if ([(NSArray *)self->_shareItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_shareItems;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

          dictionaryRepresentation2 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"shareItems"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  shareItem = [(_SFPBShareCommand *)self shareItem];
  shareItem2 = [equalCopy shareItem];
  if ((shareItem != 0) == (shareItem2 == 0))
  {
    goto LABEL_11;
  }

  shareItem3 = [(_SFPBShareCommand *)self shareItem];
  if (shareItem3)
  {
    v8 = shareItem3;
    shareItem4 = [(_SFPBShareCommand *)self shareItem];
    shareItem5 = [equalCopy shareItem];
    v11 = [shareItem4 isEqual:shareItem5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  shareItem = [(_SFPBShareCommand *)self shareItems];
  shareItem2 = [equalCopy shareItems];
  if ((shareItem != 0) != (shareItem2 == 0))
  {
    shareItems = [(_SFPBShareCommand *)self shareItems];
    if (!shareItems)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = shareItems;
    shareItems2 = [(_SFPBShareCommand *)self shareItems];
    shareItems3 = [equalCopy shareItems];
    v16 = [shareItems2 isEqual:shareItems3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  shareItem = [(_SFPBShareCommand *)self shareItem];
  if (shareItem)
  {
    PBDataWriterWriteSubmessage();
  }

  shareItems = [(_SFPBShareCommand *)self shareItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [shareItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(shareItems);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [shareItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addShareItems:(id)items
{
  itemsCopy = items;
  shareItems = self->_shareItems;
  v8 = itemsCopy;
  if (!shareItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_shareItems;
    self->_shareItems = array;

    itemsCopy = v8;
    shareItems = self->_shareItems;
  }

  [(NSArray *)shareItems addObject:itemsCopy];
}

- (void)setShareItems:(id)items
{
  v4 = [items copy];
  shareItems = self->_shareItems;
  self->_shareItems = v4;

  MEMORY[0x1EEE66BB8]();
}

@end