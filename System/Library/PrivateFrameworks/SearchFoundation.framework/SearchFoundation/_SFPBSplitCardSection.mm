@interface _SFPBSplitCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSplitCardSection)initWithDictionary:(id)dictionary;
- (_SFPBSplitCardSection)initWithFacade:(id)facade;
- (_SFPBSplitCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addListItems:(id)items;
- (void)setListItems:(id)items;
- (void)setListMoreString:(id)string;
- (void)setListPrefix:(id)prefix;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSplitCardSection

- (_SFPBSplitCardSection)initWithFacade:(id)facade
{
  v41 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBSplitCardSection *)self init];
  if (v5)
  {
    topTitle = [facadeCopy topTitle];

    if (topTitle)
    {
      v7 = [_SFPBRichText alloc];
      topTitle2 = [facadeCopy topTitle];
      v9 = [(_SFPBRichText *)v7 initWithFacade:topTitle2];
      [(_SFPBSplitCardSection *)v5 setTopTitle:v9];
    }

    secondaryTopTitle = [facadeCopy secondaryTopTitle];

    if (secondaryTopTitle)
    {
      v11 = [_SFPBRichText alloc];
      secondaryTopTitle2 = [facadeCopy secondaryTopTitle];
      v13 = [(_SFPBRichText *)v11 initWithFacade:secondaryTopTitle2];
      [(_SFPBSplitCardSection *)v5 setSecondaryTopTitle:v13];
    }

    listPrefix = [facadeCopy listPrefix];

    if (listPrefix)
    {
      listPrefix2 = [facadeCopy listPrefix];
      [(_SFPBSplitCardSection *)v5 setListPrefix:listPrefix2];
    }

    listItems = [facadeCopy listItems];
    if (listItems)
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
    listItems2 = [facadeCopy listItems];
    v19 = [listItems2 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(listItems2);
          }

          if (*(*(&v36 + 1) + 8 * i))
          {
            [v17 addObject:?];
          }
        }

        v20 = [listItems2 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v20);
    }

    [(_SFPBSplitCardSection *)v5 setListItems:v17];
    listMoreString = [facadeCopy listMoreString];

    if (listMoreString)
    {
      listMoreString2 = [facadeCopy listMoreString];
      [(_SFPBSplitCardSection *)v5 setListMoreString:listMoreString2];
    }

    bottomTitle = [facadeCopy bottomTitle];

    if (bottomTitle)
    {
      v26 = [_SFPBRichText alloc];
      bottomTitle2 = [facadeCopy bottomTitle];
      v28 = [(_SFPBRichText *)v26 initWithFacade:bottomTitle2];
      [(_SFPBSplitCardSection *)v5 setBottomTitle:v28];
    }

    body = [facadeCopy body];

    if (body)
    {
      v30 = [_SFPBRichText alloc];
      body2 = [facadeCopy body];
      v32 = [(_SFPBRichText *)v30 initWithFacade:body2];
      [(_SFPBSplitCardSection *)v5 setBody:v32];
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSplitCardSection)initWithDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = _SFPBSplitCardSection;
  v5 = [(_SFPBSplitCardSection *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"topTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRichText alloc] initWithDictionary:v6];
      [(_SFPBSplitCardSection *)v5 setTopTitle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"secondaryTopTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRichText alloc] initWithDictionary:v8];
      [(_SFPBSplitCardSection *)v5 setSecondaryTopTitle:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"listPrefix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBSplitCardSection *)v5 setListPrefix:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"listItems"];
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

    v20 = [dictionaryCopy objectForKeyedSubscript:{@"listMoreString", v29, v30, v31}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(_SFPBSplitCardSection *)v5 setListMoreString:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"bottomTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBRichText alloc] initWithDictionary:v22];
      [(_SFPBSplitCardSection *)v5 setBottomTitle:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"body"];
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

- (_SFPBSplitCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSplitCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSplitCardSection *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_body)
  {
    body = [(_SFPBSplitCardSection *)self body];
    dictionaryRepresentation = [body dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"body"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"body"];
    }
  }

  if (self->_bottomTitle)
  {
    bottomTitle = [(_SFPBSplitCardSection *)self bottomTitle];
    dictionaryRepresentation2 = [bottomTitle dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"bottomTitle"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"bottomTitle"];
    }
  }

  if (self->_listItems)
  {
    listItems = [(_SFPBSplitCardSection *)self listItems];
    v11 = [listItems copy];
    [dictionary setObject:v11 forKeyedSubscript:@"listItems"];
  }

  if (self->_listMoreString)
  {
    listMoreString = [(_SFPBSplitCardSection *)self listMoreString];
    v13 = [listMoreString copy];
    [dictionary setObject:v13 forKeyedSubscript:@"listMoreString"];
  }

  if (self->_listPrefix)
  {
    listPrefix = [(_SFPBSplitCardSection *)self listPrefix];
    v15 = [listPrefix copy];
    [dictionary setObject:v15 forKeyedSubscript:@"listPrefix"];
  }

  if (self->_secondaryTopTitle)
  {
    secondaryTopTitle = [(_SFPBSplitCardSection *)self secondaryTopTitle];
    dictionaryRepresentation3 = [secondaryTopTitle dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"secondaryTopTitle"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"secondaryTopTitle"];
    }
  }

  if (self->_topTitle)
  {
    topTitle = [(_SFPBSplitCardSection *)self topTitle];
    dictionaryRepresentation4 = [topTitle dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"topTitle"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"topTitle"];
    }
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  topTitle = [(_SFPBSplitCardSection *)self topTitle];
  topTitle2 = [equalCopy topTitle];
  if ((topTitle != 0) == (topTitle2 == 0))
  {
    goto LABEL_36;
  }

  topTitle3 = [(_SFPBSplitCardSection *)self topTitle];
  if (topTitle3)
  {
    v8 = topTitle3;
    topTitle4 = [(_SFPBSplitCardSection *)self topTitle];
    topTitle5 = [equalCopy topTitle];
    v11 = [topTitle4 isEqual:topTitle5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  topTitle = [(_SFPBSplitCardSection *)self secondaryTopTitle];
  topTitle2 = [equalCopy secondaryTopTitle];
  if ((topTitle != 0) == (topTitle2 == 0))
  {
    goto LABEL_36;
  }

  secondaryTopTitle = [(_SFPBSplitCardSection *)self secondaryTopTitle];
  if (secondaryTopTitle)
  {
    v13 = secondaryTopTitle;
    secondaryTopTitle2 = [(_SFPBSplitCardSection *)self secondaryTopTitle];
    secondaryTopTitle3 = [equalCopy secondaryTopTitle];
    v16 = [secondaryTopTitle2 isEqual:secondaryTopTitle3];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  topTitle = [(_SFPBSplitCardSection *)self listPrefix];
  topTitle2 = [equalCopy listPrefix];
  if ((topTitle != 0) == (topTitle2 == 0))
  {
    goto LABEL_36;
  }

  listPrefix = [(_SFPBSplitCardSection *)self listPrefix];
  if (listPrefix)
  {
    v18 = listPrefix;
    listPrefix2 = [(_SFPBSplitCardSection *)self listPrefix];
    listPrefix3 = [equalCopy listPrefix];
    v21 = [listPrefix2 isEqual:listPrefix3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  topTitle = [(_SFPBSplitCardSection *)self listItems];
  topTitle2 = [equalCopy listItems];
  if ((topTitle != 0) == (topTitle2 == 0))
  {
    goto LABEL_36;
  }

  listItems = [(_SFPBSplitCardSection *)self listItems];
  if (listItems)
  {
    v23 = listItems;
    listItems2 = [(_SFPBSplitCardSection *)self listItems];
    listItems3 = [equalCopy listItems];
    v26 = [listItems2 isEqual:listItems3];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  topTitle = [(_SFPBSplitCardSection *)self listMoreString];
  topTitle2 = [equalCopy listMoreString];
  if ((topTitle != 0) == (topTitle2 == 0))
  {
    goto LABEL_36;
  }

  listMoreString = [(_SFPBSplitCardSection *)self listMoreString];
  if (listMoreString)
  {
    v28 = listMoreString;
    listMoreString2 = [(_SFPBSplitCardSection *)self listMoreString];
    listMoreString3 = [equalCopy listMoreString];
    v31 = [listMoreString2 isEqual:listMoreString3];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  topTitle = [(_SFPBSplitCardSection *)self bottomTitle];
  topTitle2 = [equalCopy bottomTitle];
  if ((topTitle != 0) == (topTitle2 == 0))
  {
    goto LABEL_36;
  }

  bottomTitle = [(_SFPBSplitCardSection *)self bottomTitle];
  if (bottomTitle)
  {
    v33 = bottomTitle;
    bottomTitle2 = [(_SFPBSplitCardSection *)self bottomTitle];
    bottomTitle3 = [equalCopy bottomTitle];
    v36 = [bottomTitle2 isEqual:bottomTitle3];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  topTitle = [(_SFPBSplitCardSection *)self body];
  topTitle2 = [equalCopy body];
  if ((topTitle != 0) != (topTitle2 == 0))
  {
    body = [(_SFPBSplitCardSection *)self body];
    if (!body)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = body;
    body2 = [(_SFPBSplitCardSection *)self body];
    body3 = [equalCopy body];
    v41 = [body2 isEqual:body3];

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

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  topTitle = [(_SFPBSplitCardSection *)self topTitle];
  if (topTitle)
  {
    PBDataWriterWriteSubmessage();
  }

  secondaryTopTitle = [(_SFPBSplitCardSection *)self secondaryTopTitle];
  if (secondaryTopTitle)
  {
    PBDataWriterWriteSubmessage();
  }

  listPrefix = [(_SFPBSplitCardSection *)self listPrefix];
  if (listPrefix)
  {
    PBDataWriterWriteStringField();
  }

  listItems = [(_SFPBSplitCardSection *)self listItems];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [listItems countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(listItems);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        PBDataWriterWriteStringField();
        ++v12;
      }

      while (v10 != v12);
      v10 = [listItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  listMoreString = [(_SFPBSplitCardSection *)self listMoreString];
  if (listMoreString)
  {
    PBDataWriterWriteStringField();
  }

  bottomTitle = [(_SFPBSplitCardSection *)self bottomTitle];
  if (bottomTitle)
  {
    PBDataWriterWriteSubmessage();
  }

  body = [(_SFPBSplitCardSection *)self body];
  if (body)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setListMoreString:(id)string
{
  v4 = [string copy];
  listMoreString = self->_listMoreString;
  self->_listMoreString = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addListItems:(id)items
{
  itemsCopy = items;
  listItems = self->_listItems;
  v8 = itemsCopy;
  if (!listItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_listItems;
    self->_listItems = array;

    itemsCopy = v8;
    listItems = self->_listItems;
  }

  [(NSArray *)listItems addObject:itemsCopy];
}

- (void)setListItems:(id)items
{
  v4 = [items copy];
  listItems = self->_listItems;
  self->_listItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setListPrefix:(id)prefix
{
  v4 = [prefix copy];
  listPrefix = self->_listPrefix;
  self->_listPrefix = v4;

  MEMORY[0x1EEE66BB8]();
}

@end