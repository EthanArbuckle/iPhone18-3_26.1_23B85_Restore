@interface _SFPBContactButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBContactButtonItem)initWithDictionary:(id)a3;
- (_SFPBContactButtonItem)initWithFacade:(id)a3;
- (_SFPBContactButtonItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (int)actionTypesToShowAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)setActionTypesToShow:(id)a3;
- (void)setContactIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBContactButtonItem

- (_SFPBContactButtonItem)initWithFacade:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBContactButtonItem *)self init];
  if (v5)
  {
    v6 = [v4 contactIdentifier];

    if (v6)
    {
      v7 = [v4 contactIdentifier];
      [(_SFPBContactButtonItem *)v5 setContactIdentifier:v7];
    }

    v8 = [v4 person];

    if (v8)
    {
      v9 = [_SFPBPerson alloc];
      v10 = [v4 person];
      v11 = [(_SFPBPerson *)v9 initWithFacade:v10];
      [(_SFPBContactButtonItem *)v5 setPerson:v11];
    }

    v12 = [v4 actionTypesToShow];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [v4 actionTypesToShow];
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if (*(*(&v22 + 1) + 8 * i))
          {
            [v13 addObject:?];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [(_SFPBContactButtonItem *)v5 setActionTypesToShows:v13];
    if ([v4 hasUniqueId])
    {
      -[_SFPBContactButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBContactButtonItem)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _SFPBContactButtonItem;
  v5 = [(_SFPBContactButtonItem *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contactIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBContactButtonItem *)v5 setContactIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"person"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBPerson alloc] initWithDictionary:v8];
      [(_SFPBContactButtonItem *)v5 setPerson:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"actionTypesToShow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[_SFPBContactButtonItem addActionTypesToShow:](v5, "addActionTypesToShow:", [v16 intValue]);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v6 = v21;
    }

    v17 = [v4 objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBContactButtonItem setUniqueId:](v5, "setUniqueId:", [v17 unsignedLongLongValue]);
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBContactButtonItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBContactButtonItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBContactButtonItem *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_actionTypesToShows count])
  {
    v4 = [(_SFPBContactButtonItem *)self actionTypesToShows];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"actionTypesToShow"];
  }

  if (self->_contactIdentifier)
  {
    v6 = [(_SFPBContactButtonItem *)self contactIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"contactIdentifier"];
  }

  if (self->_person)
  {
    v8 = [(_SFPBContactButtonItem *)self person];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"person"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"person"];
    }
  }

  if (self->_uniqueId)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBContactButtonItem uniqueId](self, "uniqueId")}];
    [v3 setObject:v11 forKeyedSubscript:@"uniqueId"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contactIdentifier hash];
  v4 = [(_SFPBPerson *)self->_person hash];
  return v4 ^ v3 ^ [(NSArray *)self->_actionTypesToShows hash]^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBContactButtonItem *)self contactIdentifier];
  v6 = [v4 contactIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBContactButtonItem *)self contactIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBContactButtonItem *)self contactIdentifier];
    v10 = [v4 contactIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBContactButtonItem *)self person];
  v6 = [v4 person];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBContactButtonItem *)self person];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBContactButtonItem *)self person];
    v15 = [v4 person];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBContactButtonItem *)self actionTypesToShows];
  v6 = [v4 actionTypesToShows];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBContactButtonItem *)self actionTypesToShows];
    if (!v17)
    {

LABEL_20:
      uniqueId = self->_uniqueId;
      v22 = uniqueId == [v4 uniqueId];
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBContactButtonItem *)self actionTypesToShows];
    v20 = [v4 actionTypesToShows];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBContactButtonItem *)self contactIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBContactButtonItem *)self person];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBContactButtonItem *)self actionTypesToShows];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11) intValue];
        PBDataWriterWriteInt32Field();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if ([(_SFPBContactButtonItem *)self uniqueId])
  {
    PBDataWriterWriteUint64Field();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int)actionTypesToShowAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_actionTypesToShows objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)setActionTypesToShow:(id)a3
{
  v4 = [a3 copy];
  actionTypesToShows = self->_actionTypesToShows;
  self->_actionTypesToShows = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContactIdentifier:(id)a3
{
  v4 = [a3 copy];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end