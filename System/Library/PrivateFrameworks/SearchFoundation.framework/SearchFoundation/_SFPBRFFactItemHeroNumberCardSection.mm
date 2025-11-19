@interface _SFPBRFFactItemHeroNumberCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFFactItemHeroNumberCardSection)initWithDictionary:(id)a3;
- (_SFPBRFFactItemHeroNumberCardSection)initWithFacade:(id)a3;
- (_SFPBRFFactItemHeroNumberCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_2:(id)a3;
- (void)addText_3:(id)a3;
- (void)setText_2:(id)a3;
- (void)setText_3:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFFactItemHeroNumberCardSection

- (_SFPBRFFactItemHeroNumberCardSection)initWithFacade:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)self init];
  if (v5)
  {
    v6 = [v4 number];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 number];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setNumber:v9];
    }

    v10 = [v4 unit];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 unit];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setUnit:v13];
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

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = [v4 text];
    v17 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v45 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v18);
    }

    [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_2s:v15];
    v22 = [v4 text];
    if (v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v24 = [v4 text];
    v25 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v41 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v26);
    }

    [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_3s:v23];
    v30 = [v4 text];

    if (v30)
    {
      v31 = [_SFPBRFTextProperty alloc];
      v32 = [v4 text];
      v33 = [(_SFPBRFTextProperty *)v31 initWithFacade:v32];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_4:v33];
    }

    v34 = [v4 text];

    if (v34)
    {
      v35 = [_SFPBRFTextProperty alloc];
      v36 = [v4 text];
      v37 = [(_SFPBRFTextProperty *)v35 initWithFacade:v36];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_5:v37];
    }

    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemHeroNumberCardSection)initWithDictionary:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = _SFPBRFFactItemHeroNumberCardSection;
  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)&v43 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"number"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setNumber:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"unit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setUnit:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v34 = v6;
    v33 = v10;
    if (objc_opt_isKindOfClass())
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v40;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v40 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v39 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
              [(_SFPBRFFactItemHeroNumberCardSection *)v5 addText_2:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v13);
      }

      v6 = v34;
      v10 = v33;
    }

    v18 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v35 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
              [(_SFPBRFFactItemHeroNumberCardSection *)v5 addText_3:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v21);
      }

      v6 = v34;
      v10 = v33;
    }

    v26 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_4:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFTextProperty alloc] initWithDictionary:v28];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_5:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemHeroNumberCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemHeroNumberCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFFactItemHeroNumberCardSection *)self dictionaryRepresentation];
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
  v44 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_number)
  {
    v4 = [(_SFPBRFFactItemHeroNumberCardSection *)self number];
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

  if ([(NSArray *)self->_text_2s count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = self->_text_2s;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"text2"];
  }

  if ([(NSArray *)self->_text_3s count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = self->_text_3s;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v34 + 1) + 8 * j) dictionaryRepresentation];
          if (v21)
          {
            [v15 addObject:v21];
          }

          else
          {
            v22 = [MEMORY[0x1E695DFB0] null];
            [v15 addObject:v22];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    v23 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"text4"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"text4"];
    }
  }

  if (self->_text_5)
  {
    v26 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
    v27 = [v26 dictionaryRepresentation];
    if (v27)
    {
      [v3 setObject:v27 forKeyedSubscript:@"text5"];
    }

    else
    {
      v28 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v28 forKeyedSubscript:@"text5"];
    }
  }

  if (self->_unit)
  {
    v29 = [(_SFPBRFFactItemHeroNumberCardSection *)self unit];
    v30 = [v29 dictionaryRepresentation];
    if (v30)
    {
      [v3 setObject:v30 forKeyedSubscript:@"unit"];
    }

    else
    {
      v31 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v31 forKeyedSubscript:@"unit"];
    }
  }

  v32 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_number hash];
  v4 = [(_SFPBRFTextProperty *)self->_unit hash]^ v3;
  v5 = [(NSArray *)self->_text_2s hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_text_3s hash];
  v7 = [(_SFPBRFTextProperty *)self->_text_4 hash];
  return v6 ^ v7 ^ [(_SFPBRFTextProperty *)self->_text_5 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)self number];
  v6 = [v4 number];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_SFPBRFFactItemHeroNumberCardSection *)self number];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFFactItemHeroNumberCardSection *)self number];
    v10 = [v4 number];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)self unit];
  v6 = [v4 unit];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_SFPBRFFactItemHeroNumberCardSection *)self unit];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFFactItemHeroNumberCardSection *)self unit];
    v15 = [v4 unit];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)self text_2s];
  v6 = [v4 text_2s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_SFPBRFFactItemHeroNumberCardSection *)self text_2s];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFFactItemHeroNumberCardSection *)self text_2s];
    v20 = [v4 text_2s];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)self text_3s];
  v6 = [v4 text_3s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_SFPBRFFactItemHeroNumberCardSection *)self text_3s];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFFactItemHeroNumberCardSection *)self text_3s];
    v25 = [v4 text_3s];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
    v30 = [v4 text];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
    v35 = [v4 text];
    v36 = [v34 isEqual:v35];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)self number];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFFactItemHeroNumberCardSection *)self unit];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFFactItemHeroNumberCardSection *)self text_2s];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v13 = [(_SFPBRFFactItemHeroNumberCardSection *)self text_3s];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
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