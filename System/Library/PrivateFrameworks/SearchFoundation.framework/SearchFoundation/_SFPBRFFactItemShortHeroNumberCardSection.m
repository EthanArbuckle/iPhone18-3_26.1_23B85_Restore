@interface _SFPBRFFactItemShortHeroNumberCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFFactItemShortHeroNumberCardSection)initWithDictionary:(id)a3;
- (_SFPBRFFactItemShortHeroNumberCardSection)initWithFacade:(id)a3;
- (_SFPBRFFactItemShortHeroNumberCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_2:(id)a3;
- (void)addText_3:(id)a3;
- (void)setText_2:(id)a3;
- (void)setText_3:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFFactItemShortHeroNumberCardSection

- (_SFPBRFFactItemShortHeroNumberCardSection)initWithFacade:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self init];
  if (v5)
  {
    v6 = [v4 number];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 number];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setNumber:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_1:v13];
    }

    v14 = [v4 text];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v16 = [v4 text];
    v17 = [v16 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v50;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v49 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v18);
    }

    [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_2s:v15];
    v22 = [v4 text];
    if (v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = [v4 text];
    v25 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v46;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v45 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v26);
    }

    [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_3s:v23];
    v30 = [v4 unit];

    if (v30)
    {
      v31 = [_SFPBRFTextProperty alloc];
      v32 = [v4 unit];
      v33 = [(_SFPBRFTextProperty *)v31 initWithFacade:v32];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setUnit:v33];
    }

    v34 = [v4 text];

    if (v34)
    {
      v35 = [_SFPBRFTextProperty alloc];
      v36 = [v4 text];
      v37 = [(_SFPBRFTextProperty *)v35 initWithFacade:v36];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_4:v37];
    }

    v38 = [v4 thumbnail];

    if (v38)
    {
      v39 = [_SFPBRFVisualProperty alloc];
      v40 = [v4 thumbnail];
      v41 = [(_SFPBRFVisualProperty *)v39 initWithFacade:v40];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setThumbnail:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemShortHeroNumberCardSection)initWithDictionary:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = _SFPBRFFactItemShortHeroNumberCardSection;
  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)&v45 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"number"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setNumber:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v36 = v6;
    v35 = v10;
    if (objc_opt_isKindOfClass())
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v42;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v42 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
              [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 addText_2:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v13);
      }

      v6 = v36;
      v10 = v35;
    }

    v18 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v38;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v37 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
              [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 addText_3:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v21);
      }

      v6 = v36;
      v10 = v35;
    }

    v26 = [v4 objectForKeyedSubscript:@"unit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setUnit:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFTextProperty alloc] initWithDictionary:v28];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_4:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v30];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setThumbnail:v31];
    }

    v32 = v5;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemShortHeroNumberCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemShortHeroNumberCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self dictionaryRepresentation];
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
  v47 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_number)
  {
    v4 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self number];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"number"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"number"];
    }
  }

  if (self->_text_1)
  {
    v7 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"text1"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"text1"];
    }
  }

  if ([(NSArray *)self->_text_2s count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = self->_text_2s;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"text2"];
  }

  if ([(NSArray *)self->_text_3s count])
  {
    v18 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = self->_text_3s;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          if (v24)
          {
            [v18 addObject:v24];
          }

          else
          {
            v25 = [MEMORY[0x1E695DFB0] null];
            [v18 addObject:v25];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    v26 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
    v27 = [v26 dictionaryRepresentation];
    if (v27)
    {
      [v3 setObject:v27 forKeyedSubscript:@"text4"];
    }

    else
    {
      v28 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v28 forKeyedSubscript:@"text4"];
    }
  }

  if (self->_thumbnail)
  {
    v29 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self thumbnail];
    v30 = [v29 dictionaryRepresentation];
    if (v30)
    {
      [v3 setObject:v30 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v31 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v31 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_unit)
  {
    v32 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self unit];
    v33 = [v32 dictionaryRepresentation];
    if (v33)
    {
      [v3 setObject:v33 forKeyedSubscript:@"unit"];
    }

    else
    {
      v34 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v34 forKeyedSubscript:@"unit"];
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_number hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_1 hash]^ v3;
  v5 = [(NSArray *)self->_text_2s hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_text_3s hash];
  v7 = [(_SFPBRFTextProperty *)self->_unit hash];
  v8 = v7 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  return v6 ^ v8 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self number];
  v6 = [v4 number];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self number];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self number];
    v10 = [v4 number];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
    v15 = [v4 text];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_2s];
  v6 = [v4 text_2s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_2s];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_2s];
    v20 = [v4 text_2s];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_3s];
  v6 = [v4 text_3s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v22 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_3s];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_3s];
    v25 = [v4 text_3s];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self unit];
  v6 = [v4 unit];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v27 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self unit];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self unit];
    v30 = [v4 unit];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v32 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
    v35 = [v4 text];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) != (v6 == 0))
  {
    v37 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self thumbnail];
    if (!v37)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = v37;
    v39 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self thumbnail];
    v40 = [v4 thumbnail];
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
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self number];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_2s];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v13 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_3s];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  v19 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self unit];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self thumbnail];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)addText_3:(id)a3
{
  v4 = a3;
  text_3s = self->_text_3s;
  v8 = v4;
  if (!text_3s)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_3s;
    self->_text_3s = v6;

    v4 = v8;
    text_3s = self->_text_3s;
  }

  [(NSArray *)text_3s addObject:v4];
}

- (void)setText_3:(id)a3
{
  v4 = [a3 copy];
  text_3s = self->_text_3s;
  self->_text_3s = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addText_2:(id)a3
{
  v4 = a3;
  text_2s = self->_text_2s;
  v8 = v4;
  if (!text_2s)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_2s;
    self->_text_2s = v6;

    v4 = v8;
    text_2s = self->_text_2s;
  }

  [(NSArray *)text_2s addObject:v4];
}

- (void)setText_2:(id)a3
{
  v4 = [a3 copy];
  text_2s = self->_text_2s;
  self->_text_2s = v4;

  MEMORY[0x1EEE66BB8]();
}

@end