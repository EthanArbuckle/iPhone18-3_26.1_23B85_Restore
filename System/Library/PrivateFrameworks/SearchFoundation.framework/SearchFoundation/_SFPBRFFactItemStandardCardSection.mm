@interface _SFPBRFFactItemStandardCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFFactItemStandardCardSection)initWithDictionary:(id)a3;
- (_SFPBRFFactItemStandardCardSection)initWithFacade:(id)a3;
- (_SFPBRFFactItemStandardCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_4:(id)a3;
- (void)addText_5:(id)a3;
- (void)setText_4:(id)a3;
- (void)setText_5:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFFactItemStandardCardSection

- (_SFPBRFFactItemStandardCardSection)initWithFacade:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFFactItemStandardCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [_SFPBRFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:v16];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_3:v17];
    }

    v18 = [v4 text];
    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = [v4 text];
    v21 = [v20 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v49 + 1) + 8 * i)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v22);
    }

    [(_SFPBRFFactItemStandardCardSection *)v5 setText_4s:v19];
    v26 = [v4 text];
    if (v26)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = [v4 text];
    v29 = [v28 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v45 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v30);
    }

    [(_SFPBRFFactItemStandardCardSection *)v5 setText_5s:v27];
    v34 = [v4 thumbnail];

    if (v34)
    {
      v35 = [_SFPBRFVisualProperty alloc];
      v36 = [v4 thumbnail];
      v37 = [(_SFPBRFVisualProperty *)v35 initWithFacade:v36];
      [(_SFPBRFFactItemStandardCardSection *)v5 setThumbnail:v37];
    }

    v38 = [v4 thumbnail2];

    if (v38)
    {
      v39 = [_SFPBRFVisualProperty alloc];
      v40 = [v4 thumbnail2];
      v41 = [(_SFPBRFVisualProperty *)v39 initWithFacade:v40];
      [(_SFPBRFFactItemStandardCardSection *)v5 setThumbnail2:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemStandardCardSection)initWithDictionary:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = _SFPBRFFactItemStandardCardSection;
  v5 = [(_SFPBRFFactItemStandardCardSection *)&v49 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_2:v9];
    }

    v40 = v6;
    v10 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_3:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    v38 = v8;
    v35 = v12;
    if (objc_opt_isKindOfClass())
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v46;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v46 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v45 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[_SFPBRFTextProperty alloc] initWithDictionary:v18];
              [(_SFPBRFFactItemStandardCardSection *)v5 addText_4:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v15);
      }

      v8 = v38;
      v12 = v35;
    }

    v20 = [v4 objectForKeyedSubscript:{@"text5", v35, v10, v38}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v42;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v41 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
              [(_SFPBRFFactItemStandardCardSection *)v5 addText_5:v27];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v23);
      }

      v10 = v37;
      v8 = v39;
      v12 = v36;
    }

    v28 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v28];
      [(_SFPBRFFactItemStandardCardSection *)v5 setThumbnail:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"thumbnail2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v30];
      [(_SFPBRFFactItemStandardCardSection *)v5 setThumbnail2:v31];
    }

    v32 = v5;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemStandardCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemStandardCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFFactItemStandardCardSection *)self dictionaryRepresentation];
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
  if (self->_text_1)
  {
    v4 = [(_SFPBRFFactItemStandardCardSection *)self text];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"text1"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    v7 = [(_SFPBRFFactItemStandardCardSection *)self text];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"text2"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"text2"];
    }
  }

  if (self->_text_3)
  {
    v10 = [(_SFPBRFFactItemStandardCardSection *)self text];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"text3"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"text3"];
    }
  }

  if ([(NSArray *)self->_text_4s count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = self->_text_4s;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          if (v19)
          {
            [v13 addObject:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E695DFB0] null];
            [v13 addObject:v20];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"text4"];
  }

  if ([(NSArray *)self->_text_5s count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = self->_text_5s;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v38;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          if (v27)
          {
            [v21 addObject:v27];
          }

          else
          {
            v28 = [MEMORY[0x1E695DFB0] null];
            [v21 addObject:v28];
          }
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"text5"];
  }

  if (self->_thumbnail)
  {
    v29 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail];
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

  if (self->_thumbnail2)
  {
    v32 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail2];
    v33 = [v32 dictionaryRepresentation];
    if (v33)
    {
      [v3 setObject:v33 forKeyedSubscript:@"thumbnail2"];
    }

    else
    {
      v34 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v34 forKeyedSubscript:@"thumbnail2"];
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_text_4s hash];
  v7 = [(NSArray *)self->_text_5s hash];
  v8 = v7 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  return v6 ^ v8 ^ [(_SFPBRFVisualProperty *)self->_thumbnail2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(_SFPBRFFactItemStandardCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFFactItemStandardCardSection *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemStandardCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFFactItemStandardCardSection *)self text];
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

  v5 = [(_SFPBRFFactItemStandardCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFFactItemStandardCardSection *)self text];
    v20 = [v4 text];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemStandardCardSection *)self text_4s];
  v6 = [v4 text_4s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v22 = [(_SFPBRFFactItemStandardCardSection *)self text_4s];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFFactItemStandardCardSection *)self text_4s];
    v25 = [v4 text_4s];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemStandardCardSection *)self text_5s];
  v6 = [v4 text_5s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v27 = [(_SFPBRFFactItemStandardCardSection *)self text_5s];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFFactItemStandardCardSection *)self text_5s];
    v30 = [v4 text_5s];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v32 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail];
    v35 = [v4 thumbnail];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail2];
  v6 = [v4 thumbnail2];
  if ((v5 != 0) != (v6 == 0))
  {
    v37 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail2];
    if (!v37)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = v37;
    v39 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail2];
    v40 = [v4 thumbnail2];
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
  v5 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBRFFactItemStandardCardSection *)self text_4s];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v14 = [(_SFPBRFFactItemStandardCardSection *)self text_5s];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail2];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)addText_5:(id)a3
{
  v4 = a3;
  text_5s = self->_text_5s;
  v8 = v4;
  if (!text_5s)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_5s;
    self->_text_5s = v6;

    v4 = v8;
    text_5s = self->_text_5s;
  }

  [(NSArray *)text_5s addObject:v4];
}

- (void)setText_5:(id)a3
{
  v4 = [a3 copy];
  text_5s = self->_text_5s;
  self->_text_5s = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addText_4:(id)a3
{
  v4 = a3;
  text_4s = self->_text_4s;
  v8 = v4;
  if (!text_4s)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_4s;
    self->_text_4s = v6;

    v4 = v8;
    text_4s = self->_text_4s;
  }

  [(NSArray *)text_4s addObject:v4];
}

- (void)setText_4:(id)a3
{
  v4 = [a3 copy];
  text_4s = self->_text_4s;
  self->_text_4s = v4;

  MEMORY[0x1EEE66BB8]();
}

@end