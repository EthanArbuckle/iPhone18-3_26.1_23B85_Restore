@interface _SFPBRichText
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRichText)initWithDictionary:(id)dictionary;
- (_SFPBRichText)initWithFacade:(id)facade;
- (_SFPBRichText)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFormattedTextPieces:(id)pieces;
- (void)addIcons:(id)icons;
- (void)setContentAdvisory:(id)advisory;
- (void)setFormattedTextPieces:(id)pieces;
- (void)setIcons:(id)icons;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRichText

- (_SFPBRichText)initWithFacade:(id)facade
{
  v40 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRichText *)self init];
  if (v5)
  {
    v6 = [[_SFPBText alloc] initWithFacade:facadeCopy];
    [(_SFPBRichText *)v5 setText:v6];

    if ([facadeCopy hasStarRating])
    {
      v7 = [_SFPBGraphicalFloat alloc];
      [facadeCopy starRating];
      v8 = [(_SFPBGraphicalFloat *)v7 initWithCGFloat:?];
      [(_SFPBRichText *)v5 setStarRating:v8];
    }

    contentAdvisory = [facadeCopy contentAdvisory];

    if (contentAdvisory)
    {
      contentAdvisory2 = [facadeCopy contentAdvisory];
      [(_SFPBRichText *)v5 setContentAdvisory:contentAdvisory2];
    }

    icons = [facadeCopy icons];
    if (icons)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v12 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    icons2 = [facadeCopy icons];
    v14 = [icons2 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(icons2);
          }

          v18 = [[_SFPBImage alloc] initWithFacade:*(*(&v34 + 1) + 8 * i)];
          if (v18)
          {
            [v12 addObject:v18];
          }
        }

        v15 = [icons2 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    [(_SFPBRichText *)v5 setIcons:v12];
    formattedTextPieces = [facadeCopy formattedTextPieces];
    if (formattedTextPieces)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v20 = 0;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    formattedTextPieces2 = [facadeCopy formattedTextPieces];
    v22 = [formattedTextPieces2 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(formattedTextPieces2);
          }

          v26 = [[_SFPBFormattedText alloc] initWithFacade:*(*(&v30 + 1) + 8 * j)];
          if (v26)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [formattedTextPieces2 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v23);
    }

    [(_SFPBRichText *)v5 setFormattedTextPieces:v20];
    v27 = v5;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRichText)initWithDictionary:(id)dictionary
{
  v47 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = _SFPBRichText;
  v5 = [(_SFPBRichText *)&v44 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBText alloc] initWithDictionary:v6];
      [(_SFPBRichText *)v5 setText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"starRating"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v8];
      [(_SFPBRichText *)v5 setStarRating:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contentAdvisory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      v12 = [v10 copy];
      [(_SFPBRichText *)v5 setContentAdvisory:v12];

      v6 = v11;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"icons"];
    objc_opt_class();
    v34 = v10;
    v35 = v8;
    v33 = v13;
    if (objc_opt_isKindOfClass())
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v41;
        do
        {
          v18 = 0;
          do
          {
            if (*v41 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v40 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[_SFPBImage alloc] initWithDictionary:v19];
              [(_SFPBRichText *)v5 addIcons:v20];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v16);
      }

      v10 = v34;
      v8 = v35;
      v13 = v33;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"formattedTextPieces"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v6;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v37;
        do
        {
          v26 = 0;
          do
          {
            if (*v37 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v36 + 1) + 8 * v26);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [[_SFPBFormattedText alloc] initWithDictionary:v27];
              [(_SFPBRichText *)v5 addFormattedTextPieces:v28];
            }

            ++v26;
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v24);
      }

      v6 = v32;
      v13 = v33;
      v10 = v34;
      v8 = v35;
    }

    v29 = v5;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRichText)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRichText *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRichText *)self dictionaryRepresentation];
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
  v40 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contentAdvisory)
  {
    contentAdvisory = [(_SFPBRichText *)self contentAdvisory];
    v5 = [contentAdvisory copy];
    [dictionary setObject:v5 forKeyedSubscript:@"contentAdvisory"];
  }

  if ([(NSArray *)self->_formattedTextPieces count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = self->_formattedTextPieces;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"formattedTextPieces"];
  }

  if ([(NSArray *)self->_icons count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = self->_icons;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v17);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"icons"];
  }

  if (self->_starRating)
  {
    starRating = [(_SFPBRichText *)self starRating];
    dictionaryRepresentation3 = [starRating dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"starRating"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"starRating"];
    }
  }

  if (self->_text)
  {
    text = [(_SFPBRichText *)self text];
    dictionaryRepresentation4 = [text dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"text"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"text"];
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBText *)self->_text hash];
  v4 = [(_SFPBGraphicalFloat *)self->_starRating hash]^ v3;
  v5 = [(NSString *)self->_contentAdvisory hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_icons hash];
  return v6 ^ [(NSArray *)self->_formattedTextPieces hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  text = [(_SFPBRichText *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text3 = [(_SFPBRichText *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRichText *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRichText *)self starRating];
  text2 = [equalCopy starRating];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  starRating = [(_SFPBRichText *)self starRating];
  if (starRating)
  {
    v13 = starRating;
    starRating2 = [(_SFPBRichText *)self starRating];
    starRating3 = [equalCopy starRating];
    v16 = [starRating2 isEqual:starRating3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRichText *)self contentAdvisory];
  text2 = [equalCopy contentAdvisory];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  contentAdvisory = [(_SFPBRichText *)self contentAdvisory];
  if (contentAdvisory)
  {
    v18 = contentAdvisory;
    contentAdvisory2 = [(_SFPBRichText *)self contentAdvisory];
    contentAdvisory3 = [equalCopy contentAdvisory];
    v21 = [contentAdvisory2 isEqual:contentAdvisory3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRichText *)self icons];
  text2 = [equalCopy icons];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  icons = [(_SFPBRichText *)self icons];
  if (icons)
  {
    v23 = icons;
    icons2 = [(_SFPBRichText *)self icons];
    icons3 = [equalCopy icons];
    v26 = [icons2 isEqual:icons3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRichText *)self formattedTextPieces];
  text2 = [equalCopy formattedTextPieces];
  if ((text != 0) != (text2 == 0))
  {
    formattedTextPieces = [(_SFPBRichText *)self formattedTextPieces];
    if (!formattedTextPieces)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = formattedTextPieces;
    formattedTextPieces2 = [(_SFPBRichText *)self formattedTextPieces];
    formattedTextPieces3 = [equalCopy formattedTextPieces];
    v31 = [formattedTextPieces2 isEqual:formattedTextPieces3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRichText *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  starRating = [(_SFPBRichText *)self starRating];
  if (starRating)
  {
    PBDataWriterWriteSubmessage();
  }

  contentAdvisory = [(_SFPBRichText *)self contentAdvisory];
  if (contentAdvisory)
  {
    PBDataWriterWriteStringField();
  }

  icons = [(_SFPBRichText *)self icons];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [icons countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(icons);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [icons countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  formattedTextPieces = [(_SFPBRichText *)self formattedTextPieces];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [formattedTextPieces countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(formattedTextPieces);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [formattedTextPieces countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addFormattedTextPieces:(id)pieces
{
  piecesCopy = pieces;
  formattedTextPieces = self->_formattedTextPieces;
  v8 = piecesCopy;
  if (!formattedTextPieces)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_formattedTextPieces;
    self->_formattedTextPieces = array;

    piecesCopy = v8;
    formattedTextPieces = self->_formattedTextPieces;
  }

  [(NSArray *)formattedTextPieces addObject:piecesCopy];
}

- (void)setFormattedTextPieces:(id)pieces
{
  v4 = [pieces copy];
  formattedTextPieces = self->_formattedTextPieces;
  self->_formattedTextPieces = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addIcons:(id)icons
{
  iconsCopy = icons;
  icons = self->_icons;
  v8 = iconsCopy;
  if (!icons)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_icons;
    self->_icons = array;

    iconsCopy = v8;
    icons = self->_icons;
  }

  [(NSArray *)icons addObject:iconsCopy];
}

- (void)setIcons:(id)icons
{
  v4 = [icons copy];
  icons = self->_icons;
  self->_icons = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContentAdvisory:(id)advisory
{
  v4 = [advisory copy];
  contentAdvisory = self->_contentAdvisory;
  self->_contentAdvisory = v4;

  MEMORY[0x1EEE66BB8]();
}

@end