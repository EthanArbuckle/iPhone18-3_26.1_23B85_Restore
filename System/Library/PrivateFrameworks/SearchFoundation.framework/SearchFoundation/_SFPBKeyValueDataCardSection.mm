@interface _SFPBKeyValueDataCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBKeyValueDataCardSection)initWithDictionary:(id)dictionary;
- (_SFPBKeyValueDataCardSection)initWithFacade:(id)facade;
- (_SFPBKeyValueDataCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addData:(id)data;
- (void)addPunchoutOptions:(id)options;
- (void)setData:(id)data;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBKeyValueDataCardSection

- (_SFPBKeyValueDataCardSection)initWithFacade:(id)facade
{
  v49 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBKeyValueDataCardSection *)self init];
  if (v5)
  {
    punchoutOptions = [facadeCopy punchoutOptions];
    if (punchoutOptions)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v10);
    }

    [(_SFPBKeyValueDataCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBKeyValueDataCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBKeyValueDataCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBKeyValueDataCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBKeyValueDataCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBKeyValueDataCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBKeyValueDataCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBKeyValueDataCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBKeyValueDataCardSection *)v5 setBackgroundColor:v23];
    }

    data = [facadeCopy data];
    if (data)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    data2 = [facadeCopy data];
    v27 = [data2 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(data2);
          }

          v31 = [[_SFPBKeyValueTuple alloc] initWithFacade:*(*(&v39 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [data2 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v28);
    }

    [(_SFPBKeyValueDataCardSection *)v5 setDatas:v25];
    accessoryImage = [facadeCopy accessoryImage];

    if (accessoryImage)
    {
      v33 = [_SFPBImage alloc];
      accessoryImage2 = [facadeCopy accessoryImage];
      v35 = [(_SFPBImage *)v33 initWithFacade:accessoryImage2];
      [(_SFPBKeyValueDataCardSection *)v5 setAccessoryImage:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBKeyValueDataCardSection)initWithDictionary:(id)dictionary
{
  v60 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v57.receiver = self;
  v57.super_class = _SFPBKeyValueDataCardSection;
  v5 = [(_SFPBKeyValueDataCardSection *)&v57 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v54;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v54 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v53 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBKeyValueDataCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBKeyValueDataCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBKeyValueDataCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBKeyValueDataCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v48 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBKeyValueDataCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBKeyValueDataCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v46 = v21;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v47 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v19;
      v24 = [v47 copy];
      [(_SFPBKeyValueDataCardSection *)v5 setType:v24];

      v19 = v23;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBKeyValueDataCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v25 intValue]);
    }

    v45 = v25;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBColor alloc] initWithDictionary:v26];
      [(_SFPBKeyValueDataCardSection *)v5 setBackgroundColor:v27];
    }

    v44 = v26;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v19;
      v42 = v15;
      v43 = v6;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v50;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v50 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v49 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [[_SFPBKeyValueTuple alloc] initWithDictionary:v34];
              [(_SFPBKeyValueDataCardSection *)v5 addData:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v31);
      }

      v15 = v42;
      v6 = v43;
      v19 = v41;
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"accessoryImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBImage alloc] initWithDictionary:v36];
      [(_SFPBKeyValueDataCardSection *)v5 setAccessoryImage:v37];
    }

    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBKeyValueDataCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBKeyValueDataCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBKeyValueDataCardSection *)self dictionaryRepresentation];
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
  v49 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accessoryImage)
  {
    accessoryImage = [(_SFPBKeyValueDataCardSection *)self accessoryImage];
    dictionaryRepresentation = [accessoryImage dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"accessoryImage"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"accessoryImage"];
    }
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBKeyValueDataCardSection *)self backgroundColor];
    dictionaryRepresentation2 = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBKeyValueDataCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_datas count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = self->_datas;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v44;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v44 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation3 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
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

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"data"];
  }

  if (self->_hasBottomPadding)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBKeyValueDataCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v19 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBKeyValueDataCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v20 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = self->_punchoutOptions;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation4 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array2 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null4];
          }
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBKeyValueDataCardSection *)self punchoutPickerDismissText];
    v30 = [punchoutPickerDismissText copy];
    [dictionary setObject:v30 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBKeyValueDataCardSection *)self punchoutPickerTitle];
    v32 = [punchoutPickerTitle copy];
    [dictionary setObject:v32 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBKeyValueDataCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v34 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v34 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_type)
  {
    type = [(_SFPBKeyValueDataCardSection *)self type];
    v36 = [type copy];
    [dictionary setObject:v36 forKeyedSubscript:@"type"];
  }

  v37 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_punchoutOptions hash];
  v4 = [(NSString *)self->_punchoutPickerTitle hash];
  v5 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasTopPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v8 = 2654435761;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_type hash]^ (2654435761 * self->_separatorStyle);
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  v11 = v10 ^ [(NSArray *)self->_datas hash];
  return v9 ^ v11 ^ [(_SFPBImage *)self->_accessoryImage hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  punchoutOptions = [(_SFPBKeyValueDataCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  punchoutOptions3 = [(_SFPBKeyValueDataCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBKeyValueDataCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBKeyValueDataCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  punchoutPickerTitle = [(_SFPBKeyValueDataCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBKeyValueDataCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  punchoutPickerDismissText = [(_SFPBKeyValueDataCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_41;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_41;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_41;
  }

  punchoutOptions = [(_SFPBKeyValueDataCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  type = [(_SFPBKeyValueDataCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBKeyValueDataCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_41;
  }

  punchoutOptions = [(_SFPBKeyValueDataCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  backgroundColor = [(_SFPBKeyValueDataCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBKeyValueDataCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBKeyValueDataCardSection *)self datas];
  punchoutOptions2 = [equalCopy datas];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  datas = [(_SFPBKeyValueDataCardSection *)self datas];
  if (datas)
  {
    v37 = datas;
    datas2 = [(_SFPBKeyValueDataCardSection *)self datas];
    datas3 = [equalCopy datas];
    v40 = [datas2 isEqual:datas3];

    if (!v40)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBKeyValueDataCardSection *)self accessoryImage];
  punchoutOptions2 = [equalCopy accessoryImage];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_40:

    goto LABEL_41;
  }

  accessoryImage = [(_SFPBKeyValueDataCardSection *)self accessoryImage];
  if (!accessoryImage)
  {

LABEL_44:
    v46 = 1;
    goto LABEL_42;
  }

  v42 = accessoryImage;
  accessoryImage2 = [(_SFPBKeyValueDataCardSection *)self accessoryImage];
  accessoryImage3 = [equalCopy accessoryImage];
  v45 = [accessoryImage2 isEqual:accessoryImage3];

  if (v45)
  {
    goto LABEL_44;
  }

LABEL_41:
  v46 = 0;
LABEL_42:

  return v46;
}

- (void)writeTo:(id)to
{
  v33 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBKeyValueDataCardSection *)self punchoutOptions];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBKeyValueDataCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBKeyValueDataCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBKeyValueDataCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBKeyValueDataCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBKeyValueDataCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBKeyValueDataCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBKeyValueDataCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBKeyValueDataCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  datas = [(_SFPBKeyValueDataCardSection *)self datas];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [datas countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(datas);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [datas countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  accessoryImage = [(_SFPBKeyValueDataCardSection *)self accessoryImage];
  if (accessoryImage)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)addData:(id)data
{
  dataCopy = data;
  datas = self->_datas;
  v8 = dataCopy;
  if (!datas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_datas;
    self->_datas = array;

    dataCopy = v8;
    datas = self->_datas;
  }

  [(NSArray *)datas addObject:dataCopy];
}

- (void)setData:(id)data
{
  v4 = [data copy];
  datas = self->_datas;
  self->_datas = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)type
{
  v4 = [type copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)text
{
  v4 = [text copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)title
{
  v4 = [title copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)options
{
  optionsCopy = options;
  punchoutOptions = self->_punchoutOptions;
  v8 = optionsCopy;
  if (!punchoutOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = array;

    optionsCopy = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:optionsCopy];
}

- (void)setPunchoutOptions:(id)options
{
  v4 = [options copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end