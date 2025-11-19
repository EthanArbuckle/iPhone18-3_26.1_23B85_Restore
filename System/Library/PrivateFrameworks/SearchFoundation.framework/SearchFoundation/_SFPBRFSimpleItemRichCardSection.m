@interface _SFPBRFSimpleItemRichCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSimpleItemRichCardSection)initWithDictionary:(id)a3;
- (_SFPBRFSimpleItemRichCardSection)initWithFacade:(id)a3;
- (_SFPBRFSimpleItemRichCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_3:(id)a3;
- (void)addText_5:(id)a3;
- (void)setText_3:(id)a3;
- (void)setText_5:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSimpleItemRichCardSection

- (_SFPBRFSimpleItemRichCardSection)initWithFacade:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSimpleItemRichCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_2:v13];
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

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v16 = [v4 text];
    v17 = [v16 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v58;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v58 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v57 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v18);
    }

    [(_SFPBRFSimpleItemRichCardSection *)v5 setText_3s:v15];
    v22 = [v4 text];

    if (v22)
    {
      v23 = [_SFPBRFTextProperty alloc];
      v24 = [v4 text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:v24];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_4:v25];
    }

    v26 = [v4 text];
    if (v26)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v28 = [v4 text];
    v29 = [v28 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v54;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v54 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v53 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v30);
    }

    [(_SFPBRFSimpleItemRichCardSection *)v5 setText_5s:v27];
    v34 = [v4 text];

    if (v34)
    {
      v35 = [_SFPBRFTextProperty alloc];
      v36 = [v4 text];
      v37 = [(_SFPBRFTextProperty *)v35 initWithFacade:v36];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_6:v37];
    }

    v38 = [v4 text];

    if (v38)
    {
      v39 = [_SFPBRFTextProperty alloc];
      v40 = [v4 text];
      v41 = [(_SFPBRFTextProperty *)v39 initWithFacade:v40];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_7:v41];
    }

    v42 = [v4 text];

    if (v42)
    {
      v43 = [_SFPBRFTextProperty alloc];
      v44 = [v4 text];
      v45 = [(_SFPBRFTextProperty *)v43 initWithFacade:v44];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_8:v45];
    }

    v46 = [v4 thumbnail];

    if (v46)
    {
      v47 = [_SFPBRFVisualProperty alloc];
      v48 = [v4 thumbnail];
      v49 = [(_SFPBRFVisualProperty *)v47 initWithFacade:v48];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setThumbnail:v49];
    }

    v50 = v5;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSimpleItemRichCardSection)initWithDictionary:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v52.receiver = self;
  v52.super_class = _SFPBRFSimpleItemRichCardSection;
  v5 = [(_SFPBRFSimpleItemRichCardSection *)&v52 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_2:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    v43 = v10;
    v42 = v8;
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v49;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v49 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v48 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[_SFPBRFTextProperty alloc] initWithDictionary:v17];
              [(_SFPBRFSimpleItemRichCardSection *)v5 addText_3:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v14);
      }

      v6 = v11;
      v8 = v42;
    }

    v19 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBRFTextProperty alloc] initWithDictionary:v19];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_4:v20];
    }

    v41 = v19;
    v21 = [v4 objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v6;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v45;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v45 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v44 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [[_SFPBRFTextProperty alloc] initWithDictionary:v27];
              [(_SFPBRFSimpleItemRichCardSection *)v5 addText_5:v28];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v44 objects:v53 count:16];
        }

        while (v24);
      }

      v8 = v42;
    }

    v29 = [v4 objectForKeyedSubscript:{@"text6", v40}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBRFTextProperty alloc] initWithDictionary:v29];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_6:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"text7"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBRFTextProperty alloc] initWithDictionary:v31];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_7:v32];
    }

    v33 = [v4 objectForKeyedSubscript:@"text8"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBRFTextProperty alloc] initWithDictionary:v33];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setText_8:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v35];
      [(_SFPBRFSimpleItemRichCardSection *)v5 setThumbnail:v36];
    }

    v37 = v5;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSimpleItemRichCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSimpleItemRichCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSimpleItemRichCardSection *)self dictionaryRepresentation];
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
  v53 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_text_1)
  {
    v4 = [(_SFPBRFSimpleItemRichCardSection *)self text];
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
    v7 = [(_SFPBRFSimpleItemRichCardSection *)self text];
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

  if ([(NSArray *)self->_text_3s count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v11 = self->_text_3s;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v48;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    v18 = [(_SFPBRFSimpleItemRichCardSection *)self text];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"text4"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"text4"];
    }
  }

  if ([(NSArray *)self->_text_5s count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v22 = self->_text_5s;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
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

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"text5"];
  }

  if (self->_text_6)
  {
    v29 = [(_SFPBRFSimpleItemRichCardSection *)self text];
    v30 = [v29 dictionaryRepresentation];
    if (v30)
    {
      [v3 setObject:v30 forKeyedSubscript:@"text6"];
    }

    else
    {
      v31 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v31 forKeyedSubscript:@"text6"];
    }
  }

  if (self->_text_7)
  {
    v32 = [(_SFPBRFSimpleItemRichCardSection *)self text];
    v33 = [v32 dictionaryRepresentation];
    if (v33)
    {
      [v3 setObject:v33 forKeyedSubscript:@"text7"];
    }

    else
    {
      v34 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v34 forKeyedSubscript:@"text7"];
    }
  }

  if (self->_text_8)
  {
    v35 = [(_SFPBRFSimpleItemRichCardSection *)self text];
    v36 = [v35 dictionaryRepresentation];
    if (v36)
    {
      [v3 setObject:v36 forKeyedSubscript:@"text8"];
    }

    else
    {
      v37 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v37 forKeyedSubscript:@"text8"];
    }
  }

  if (self->_thumbnail)
  {
    v38 = [(_SFPBRFSimpleItemRichCardSection *)self thumbnail];
    v39 = [v38 dictionaryRepresentation];
    if (v39)
    {
      [v3 setObject:v39 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v40 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v40 forKeyedSubscript:@"thumbnail"];
    }
  }

  v41 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(NSArray *)self->_text_3s hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = [(NSArray *)self->_text_5s hash];
  v8 = v7 ^ [(_SFPBRFTextProperty *)self->_text_6 hash];
  v9 = v6 ^ v8 ^ [(_SFPBRFTextProperty *)self->_text_7 hash];
  v10 = [(_SFPBRFTextProperty *)self->_text_8 hash];
  return v9 ^ v10 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v7 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFSimpleItemRichCardSection *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v12 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFSimpleItemRichCardSection *)self text];
    v15 = [v4 text];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemRichCardSection *)self text_3s];
  v6 = [v4 text_3s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v17 = [(_SFPBRFSimpleItemRichCardSection *)self text_3s];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFSimpleItemRichCardSection *)self text_3s];
    v20 = [v4 text_3s];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v22 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFSimpleItemRichCardSection *)self text];
    v25 = [v4 text];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemRichCardSection *)self text_5s];
  v6 = [v4 text_5s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v27 = [(_SFPBRFSimpleItemRichCardSection *)self text_5s];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFSimpleItemRichCardSection *)self text_5s];
    v30 = [v4 text_5s];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v32 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBRFSimpleItemRichCardSection *)self text];
    v35 = [v4 text];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v37 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBRFSimpleItemRichCardSection *)self text];
    v40 = [v4 text];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v42 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBRFSimpleItemRichCardSection *)self text];
    v45 = [v4 text];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemRichCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) != (v6 == 0))
  {
    v47 = [(_SFPBRFSimpleItemRichCardSection *)self thumbnail];
    if (!v47)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = v47;
    v49 = [(_SFPBRFSimpleItemRichCardSection *)self thumbnail];
    v50 = [v4 thumbnail];
    v51 = [v49 isEqual:v50];

    if (v51)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_46:
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFSimpleItemRichCardSection *)self text_3s];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v13 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v13)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_SFPBRFSimpleItemRichCardSection *)self text_5s];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  v20 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBRFSimpleItemRichCardSection *)self text];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBRFSimpleItemRichCardSection *)self thumbnail];
  if (v23)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = *MEMORY[0x1E69E9840];
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

@end