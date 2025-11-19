@interface _SFPBRichText
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRichText)initWithDictionary:(id)a3;
- (_SFPBRichText)initWithFacade:(id)a3;
- (_SFPBRichText)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFormattedTextPieces:(id)a3;
- (void)addIcons:(id)a3;
- (void)setContentAdvisory:(id)a3;
- (void)setFormattedTextPieces:(id)a3;
- (void)setIcons:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRichText

- (_SFPBRichText)initWithFacade:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRichText *)self init];
  if (v5)
  {
    v6 = [[_SFPBText alloc] initWithFacade:v4];
    [(_SFPBRichText *)v5 setText:v6];

    if ([v4 hasStarRating])
    {
      v7 = [_SFPBGraphicalFloat alloc];
      [v4 starRating];
      v8 = [(_SFPBGraphicalFloat *)v7 initWithCGFloat:?];
      [(_SFPBRichText *)v5 setStarRating:v8];
    }

    v9 = [v4 contentAdvisory];

    if (v9)
    {
      v10 = [v4 contentAdvisory];
      [(_SFPBRichText *)v5 setContentAdvisory:v10];
    }

    v11 = [v4 icons];
    if (v11)
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
    v13 = [v4 icons];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = [[_SFPBImage alloc] initWithFacade:*(*(&v34 + 1) + 8 * i)];
          if (v18)
          {
            [v12 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    [(_SFPBRichText *)v5 setIcons:v12];
    v19 = [v4 formattedTextPieces];
    if (v19)
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
    v21 = [v4 formattedTextPieces];
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
            objc_enumerationMutation(v21);
          }

          v26 = [[_SFPBFormattedText alloc] initWithFacade:*(*(&v30 + 1) + 8 * j)];
          if (v26)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v23);
    }

    [(_SFPBRichText *)v5 setFormattedTextPieces:v20];
    v27 = v5;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRichText)initWithDictionary:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = _SFPBRichText;
  v5 = [(_SFPBRichText *)&v44 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBText alloc] initWithDictionary:v6];
      [(_SFPBRichText *)v5 setText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"starRating"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v8];
      [(_SFPBRichText *)v5 setStarRating:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"contentAdvisory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      v12 = [v10 copy];
      [(_SFPBRichText *)v5 setContentAdvisory:v12];

      v6 = v11;
    }

    v13 = [v4 objectForKeyedSubscript:@"icons"];
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

    v21 = [v4 objectForKeyedSubscript:@"formattedTextPieces"];
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

- (_SFPBRichText)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRichText *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRichText *)self dictionaryRepresentation];
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
  v40 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contentAdvisory)
  {
    v4 = [(_SFPBRichText *)self contentAdvisory];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"contentAdvisory"];
  }

  if ([(NSArray *)self->_formattedTextPieces count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"formattedTextPieces"];
  }

  if ([(NSArray *)self->_icons count])
  {
    v14 = [MEMORY[0x1E695DF70] array];
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

          v20 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          if (v20)
          {
            [v14 addObject:v20];
          }

          else
          {
            v21 = [MEMORY[0x1E695DFB0] null];
            [v14 addObject:v21];
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"icons"];
  }

  if (self->_starRating)
  {
    v22 = [(_SFPBRichText *)self starRating];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"starRating"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"starRating"];
    }
  }

  if (self->_text)
  {
    v25 = [(_SFPBRichText *)self text];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"text"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"text"];
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBText *)self->_text hash];
  v4 = [(_SFPBGraphicalFloat *)self->_starRating hash]^ v3;
  v5 = [(NSString *)self->_contentAdvisory hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_icons hash];
  return v6 ^ [(NSArray *)self->_formattedTextPieces hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_SFPBRichText *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_SFPBRichText *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRichText *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichText *)self starRating];
  v6 = [v4 starRating];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_SFPBRichText *)self starRating];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRichText *)self starRating];
    v15 = [v4 starRating];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichText *)self contentAdvisory];
  v6 = [v4 contentAdvisory];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_SFPBRichText *)self contentAdvisory];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRichText *)self contentAdvisory];
    v20 = [v4 contentAdvisory];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichText *)self icons];
  v6 = [v4 icons];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_SFPBRichText *)self icons];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRichText *)self icons];
    v25 = [v4 icons];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichText *)self formattedTextPieces];
  v6 = [v4 formattedTextPieces];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_SFPBRichText *)self formattedTextPieces];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_SFPBRichText *)self formattedTextPieces];
    v30 = [v4 formattedTextPieces];
    v31 = [v29 isEqual:v30];

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

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRichText *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRichText *)self starRating];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRichText *)self contentAdvisory];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBRichText *)self icons];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v14 = [(_SFPBRichText *)self formattedTextPieces];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addFormattedTextPieces:(id)a3
{
  v4 = a3;
  formattedTextPieces = self->_formattedTextPieces;
  v8 = v4;
  if (!formattedTextPieces)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_formattedTextPieces;
    self->_formattedTextPieces = v6;

    v4 = v8;
    formattedTextPieces = self->_formattedTextPieces;
  }

  [(NSArray *)formattedTextPieces addObject:v4];
}

- (void)setFormattedTextPieces:(id)a3
{
  v4 = [a3 copy];
  formattedTextPieces = self->_formattedTextPieces;
  self->_formattedTextPieces = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addIcons:(id)a3
{
  v4 = a3;
  icons = self->_icons;
  v8 = v4;
  if (!icons)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_icons;
    self->_icons = v6;

    v4 = v8;
    icons = self->_icons;
  }

  [(NSArray *)icons addObject:v4];
}

- (void)setIcons:(id)a3
{
  v4 = [a3 copy];
  icons = self->_icons;
  self->_icons = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContentAdvisory:(id)a3
{
  v4 = [a3 copy];
  contentAdvisory = self->_contentAdvisory;
  self->_contentAdvisory = v4;

  MEMORY[0x1EEE66BB8]();
}

@end