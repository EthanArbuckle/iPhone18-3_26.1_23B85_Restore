@interface _SFPBSplitCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSplitCardSection)initWithDictionary:(id)a3;
- (_SFPBSplitCardSection)initWithFacade:(id)a3;
- (_SFPBSplitCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addListItems:(id)a3;
- (void)setListItems:(id)a3;
- (void)setListMoreString:(id)a3;
- (void)setListPrefix:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSplitCardSection

- (_SFPBSplitCardSection)initWithFacade:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBSplitCardSection *)self init];
  if (v5)
  {
    v6 = [v4 topTitle];

    if (v6)
    {
      v7 = [_SFPBRichText alloc];
      v8 = [v4 topTitle];
      v9 = [(_SFPBRichText *)v7 initWithFacade:v8];
      [(_SFPBSplitCardSection *)v5 setTopTitle:v9];
    }

    v10 = [v4 secondaryTopTitle];

    if (v10)
    {
      v11 = [_SFPBRichText alloc];
      v12 = [v4 secondaryTopTitle];
      v13 = [(_SFPBRichText *)v11 initWithFacade:v12];
      [(_SFPBSplitCardSection *)v5 setSecondaryTopTitle:v13];
    }

    v14 = [v4 listPrefix];

    if (v14)
    {
      v15 = [v4 listPrefix];
      [(_SFPBSplitCardSection *)v5 setListPrefix:v15];
    }

    v16 = [v4 listItems];
    if (v16)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v17 = 0;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = [v4 listItems];
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if (*(*(&v36 + 1) + 8 * i))
          {
            [v17 addObject:?];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v20);
    }

    [(_SFPBSplitCardSection *)v5 setListItems:v17];
    v23 = [v4 listMoreString];

    if (v23)
    {
      v24 = [v4 listMoreString];
      [(_SFPBSplitCardSection *)v5 setListMoreString:v24];
    }

    v25 = [v4 bottomTitle];

    if (v25)
    {
      v26 = [_SFPBRichText alloc];
      v27 = [v4 bottomTitle];
      v28 = [(_SFPBRichText *)v26 initWithFacade:v27];
      [(_SFPBSplitCardSection *)v5 setBottomTitle:v28];
    }

    v29 = [v4 body];

    if (v29)
    {
      v30 = [_SFPBRichText alloc];
      v31 = [v4 body];
      v32 = [(_SFPBRichText *)v30 initWithFacade:v31];
      [(_SFPBSplitCardSection *)v5 setBody:v32];
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSplitCardSection)initWithDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = _SFPBSplitCardSection;
  v5 = [(_SFPBSplitCardSection *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"topTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRichText alloc] initWithDictionary:v6];
      [(_SFPBSplitCardSection *)v5 setTopTitle:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"secondaryTopTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRichText alloc] initWithDictionary:v8];
      [(_SFPBSplitCardSection *)v5 setSecondaryTopTitle:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"listPrefix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBSplitCardSection *)v5 setListPrefix:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"listItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v8;
      v30 = v6;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v32;
        do
        {
          v17 = 0;
          do
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * v17);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v18 copy];
              [(_SFPBSplitCardSection *)v5 addListItems:v19];
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v15);
      }

      v8 = v29;
      v6 = v30;
    }

    v20 = [v4 objectForKeyedSubscript:{@"listMoreString", v29, v30, v31}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(_SFPBSplitCardSection *)v5 setListMoreString:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"bottomTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBRichText alloc] initWithDictionary:v22];
      [(_SFPBSplitCardSection *)v5 setBottomTitle:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"body"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBRichText alloc] initWithDictionary:v24];
      [(_SFPBSplitCardSection *)v5 setBody:v25];
    }

    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSplitCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSplitCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSplitCardSection *)self dictionaryRepresentation];
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
  if (self->_body)
  {
    v4 = [(_SFPBSplitCardSection *)self body];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"body"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"body"];
    }
  }

  if (self->_bottomTitle)
  {
    v7 = [(_SFPBSplitCardSection *)self bottomTitle];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"bottomTitle"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"bottomTitle"];
    }
  }

  if (self->_listItems)
  {
    v10 = [(_SFPBSplitCardSection *)self listItems];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"listItems"];
  }

  if (self->_listMoreString)
  {
    v12 = [(_SFPBSplitCardSection *)self listMoreString];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"listMoreString"];
  }

  if (self->_listPrefix)
  {
    v14 = [(_SFPBSplitCardSection *)self listPrefix];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"listPrefix"];
  }

  if (self->_secondaryTopTitle)
  {
    v16 = [(_SFPBSplitCardSection *)self secondaryTopTitle];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"secondaryTopTitle"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"secondaryTopTitle"];
    }
  }

  if (self->_topTitle)
  {
    v19 = [(_SFPBSplitCardSection *)self topTitle];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"topTitle"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"topTitle"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRichText *)self->_topTitle hash];
  v4 = [(_SFPBRichText *)self->_secondaryTopTitle hash]^ v3;
  v5 = [(NSString *)self->_listPrefix hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_listItems hash];
  v7 = [(NSString *)self->_listMoreString hash];
  v8 = v7 ^ [(_SFPBRichText *)self->_bottomTitle hash];
  return v6 ^ v8 ^ [(_SFPBRichText *)self->_body hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(_SFPBSplitCardSection *)self topTitle];
  v6 = [v4 topTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(_SFPBSplitCardSection *)self topTitle];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBSplitCardSection *)self topTitle];
    v10 = [v4 topTitle];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSplitCardSection *)self secondaryTopTitle];
  v6 = [v4 secondaryTopTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(_SFPBSplitCardSection *)self secondaryTopTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBSplitCardSection *)self secondaryTopTitle];
    v15 = [v4 secondaryTopTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSplitCardSection *)self listPrefix];
  v6 = [v4 listPrefix];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(_SFPBSplitCardSection *)self listPrefix];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBSplitCardSection *)self listPrefix];
    v20 = [v4 listPrefix];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSplitCardSection *)self listItems];
  v6 = [v4 listItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v22 = [(_SFPBSplitCardSection *)self listItems];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBSplitCardSection *)self listItems];
    v25 = [v4 listItems];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSplitCardSection *)self listMoreString];
  v6 = [v4 listMoreString];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v27 = [(_SFPBSplitCardSection *)self listMoreString];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBSplitCardSection *)self listMoreString];
    v30 = [v4 listMoreString];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSplitCardSection *)self bottomTitle];
  v6 = [v4 bottomTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v32 = [(_SFPBSplitCardSection *)self bottomTitle];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBSplitCardSection *)self bottomTitle];
    v35 = [v4 bottomTitle];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSplitCardSection *)self body];
  v6 = [v4 body];
  if ((v5 != 0) != (v6 == 0))
  {
    v37 = [(_SFPBSplitCardSection *)self body];
    if (!v37)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = v37;
    v39 = [(_SFPBSplitCardSection *)self body];
    v40 = [v4 body];
    v41 = [v39 isEqual:v40];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBSplitCardSection *)self topTitle];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBSplitCardSection *)self secondaryTopTitle];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBSplitCardSection *)self listPrefix];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBSplitCardSection *)self listItems];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        PBDataWriterWriteStringField();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [(_SFPBSplitCardSection *)self listMoreString];
  if (v14)
  {
    PBDataWriterWriteStringField();
  }

  v15 = [(_SFPBSplitCardSection *)self bottomTitle];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBSplitCardSection *)self body];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setListMoreString:(id)a3
{
  v4 = [a3 copy];
  listMoreString = self->_listMoreString;
  self->_listMoreString = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addListItems:(id)a3
{
  v4 = a3;
  listItems = self->_listItems;
  v8 = v4;
  if (!listItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_listItems;
    self->_listItems = v6;

    v4 = v8;
    listItems = self->_listItems;
  }

  [(NSArray *)listItems addObject:v4];
}

- (void)setListItems:(id)a3
{
  v4 = [a3 copy];
  listItems = self->_listItems;
  self->_listItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setListPrefix:(id)a3
{
  v4 = [a3 copy];
  listPrefix = self->_listPrefix;
  self->_listPrefix = v4;

  MEMORY[0x1EEE66BB8]();
}

@end