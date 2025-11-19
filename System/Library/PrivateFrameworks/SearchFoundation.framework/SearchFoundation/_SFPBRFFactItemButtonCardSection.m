@interface _SFPBRFFactItemButtonCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFFactItemButtonCardSection)initWithDictionary:(id)a3;
- (_SFPBRFFactItemButtonCardSection)initWithFacade:(id)a3;
- (_SFPBRFFactItemButtonCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_4:(id)a3;
- (void)setText_4:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFFactItemButtonCardSection

- (_SFPBRFFactItemButtonCardSection)initWithFacade:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFFactItemButtonCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 button];

    if (v10)
    {
      v11 = [_SFPBButtonItem alloc];
      v12 = [v4 button];
      v13 = [(_SFPBButtonItem *)v11 initWithFacade:v12];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_1:v13];
    }

    v14 = [v4 button];

    if (v14)
    {
      v15 = [_SFPBButtonItem alloc];
      v16 = [v4 button];
      v17 = [(_SFPBButtonItem *)v15 initWithFacade:v16];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_2:v17];
    }

    v18 = [v4 button];

    if (v18)
    {
      v19 = [_SFPBButtonItem alloc];
      v20 = [v4 button];
      v21 = [(_SFPBButtonItem *)v19 initWithFacade:v20];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_3:v21];
    }

    v22 = [v4 text];

    if (v22)
    {
      v23 = [_SFPBRFTextProperty alloc];
      v24 = [v4 text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:v24];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_2:v25];
    }

    v26 = [v4 text];

    if (v26)
    {
      v27 = [_SFPBRFTextProperty alloc];
      v28 = [v4 text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:v28];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_3:v29];
    }

    v30 = [v4 text];
    if (v30)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v32 = [v4 text];
    v33 = [v32 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v54;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v54 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v53 + 1) + 8 * i)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v34);
    }

    [(_SFPBRFFactItemButtonCardSection *)v5 setText_4s:v31];
    v38 = [v4 text];

    if (v38)
    {
      v39 = [_SFPBRFTextProperty alloc];
      v40 = [v4 text];
      v41 = [(_SFPBRFTextProperty *)v39 initWithFacade:v40];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_5:v41];
    }

    v42 = [v4 thumbnail];

    if (v42)
    {
      v43 = [_SFPBRFVisualProperty alloc];
      v44 = [v4 thumbnail];
      v45 = [(_SFPBRFVisualProperty *)v43 initWithFacade:v44];
      [(_SFPBRFFactItemButtonCardSection *)v5 setThumbnail:v45];
    }

    v46 = [v4 thumbnail2];

    if (v46)
    {
      v47 = [_SFPBRFVisualProperty alloc];
      v48 = [v4 thumbnail2];
      v49 = [(_SFPBRFVisualProperty *)v47 initWithFacade:v48];
      [(_SFPBRFFactItemButtonCardSection *)v5 setThumbnail2:v49];
    }

    if ([v4 hasButtonItemsAreBottom])
    {
      -[_SFPBRFFactItemButtonCardSection setButtonItemsAreBottom:](v5, "setButtonItemsAreBottom:", [v4 buttonItemsAreBottom]);
    }

    v50 = v5;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemButtonCardSection)initWithDictionary:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46.receiver = self;
  v46.super_class = _SFPBRFFactItemButtonCardSection;
  v5 = [(_SFPBRFFactItemButtonCardSection *)&v46 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"button1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBButtonItem alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_1:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"button2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBButtonItem alloc] initWithDictionary:v10];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_2:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"button3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBButtonItem alloc] initWithDictionary:v12];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_3:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFTextProperty alloc] initWithDictionary:v14];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_2:v15];
    }

    v39 = v14;
    v40 = v12;
    v16 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_3:v17];
    }

    v38 = v16;
    v41 = v10;
    v18 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v8;
      v37 = v6;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v43;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v42 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
              [(_SFPBRFFactItemButtonCardSection *)v5 addText_4:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v21);
      }

      v8 = v36;
    }

    v26 = [v4 objectForKeyedSubscript:{@"text5", v36, v37}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_5:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v28];
      [(_SFPBRFFactItemButtonCardSection *)v5 setThumbnail:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"thumbnail2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v30];
      [(_SFPBRFFactItemButtonCardSection *)v5 setThumbnail2:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"buttonItemsAreBottom"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFactItemButtonCardSection setButtonItemsAreBottom:](v5, "setButtonItemsAreBottom:", [v32 BOOLValue]);
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemButtonCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemButtonCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFFactItemButtonCardSection *)self dictionaryRepresentation];
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
  if (self->_buttonItemsAreBottom)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFFactItemButtonCardSection buttonItemsAreBottom](self, "buttonItemsAreBottom")}];
    [v3 setObject:v4 forKeyedSubscript:@"buttonItemsAreBottom"];
  }

  if (self->_button_1)
  {
    v5 = [(_SFPBRFFactItemButtonCardSection *)self button];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"button1"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"button1"];
    }
  }

  if (self->_button_2)
  {
    v8 = [(_SFPBRFFactItemButtonCardSection *)self button];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"button2"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"button2"];
    }
  }

  if (self->_button_3)
  {
    v11 = [(_SFPBRFFactItemButtonCardSection *)self button];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"button3"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"button3"];
    }
  }

  if (self->_text_1)
  {
    v14 = [(_SFPBRFFactItemButtonCardSection *)self text];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"text1"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    v17 = [(_SFPBRFFactItemButtonCardSection *)self text];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"text2"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"text2"];
    }
  }

  if (self->_text_3)
  {
    v20 = [(_SFPBRFFactItemButtonCardSection *)self text];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"text3"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"text3"];
    }
  }

  if ([(NSArray *)self->_text_4s count])
  {
    v23 = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = self->_text_4s;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v43;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
          if (v29)
          {
            [v23 addObject:v29];
          }

          else
          {
            v30 = [MEMORY[0x1E695DFB0] null];
            [v23 addObject:v30];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"text4"];
  }

  if (self->_text_5)
  {
    v31 = [(_SFPBRFFactItemButtonCardSection *)self text];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"text5"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"text5"];
    }
  }

  if (self->_thumbnail)
  {
    v34 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_thumbnail2)
  {
    v37 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail2];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"thumbnail2"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"thumbnail2"];
    }
  }

  v40 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBButtonItem *)self->_button_1 hash];
  v5 = [(_SFPBButtonItem *)self->_button_2 hash];
  v6 = [(_SFPBButtonItem *)self->_button_3 hash];
  v7 = [(_SFPBRFTextProperty *)self->_text_2 hash];
  v8 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v9 = [(NSArray *)self->_text_4s hash];
  v10 = [(_SFPBRFTextProperty *)self->_text_5 hash];
  v11 = [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  v12 = [(_SFPBRFVisualProperty *)self->_thumbnail2 hash];
  v13 = 2654435761;
  if (!self->_buttonItemsAreBottom)
  {
    v13 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBRFFactItemButtonCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v7 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFFactItemButtonCardSection *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemButtonCardSection *)self button];
  v6 = [v4 button];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v12 = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFFactItemButtonCardSection *)self button];
    v15 = [v4 button];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemButtonCardSection *)self button];
  v6 = [v4 button];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v17 = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFFactItemButtonCardSection *)self button];
    v20 = [v4 button];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemButtonCardSection *)self button];
  v6 = [v4 button];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v22 = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFFactItemButtonCardSection *)self button];
    v25 = [v4 button];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemButtonCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v27 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFFactItemButtonCardSection *)self text];
    v30 = [v4 text];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemButtonCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v32 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBRFFactItemButtonCardSection *)self text];
    v35 = [v4 text];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemButtonCardSection *)self text_4s];
  v6 = [v4 text_4s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v37 = [(_SFPBRFFactItemButtonCardSection *)self text_4s];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBRFFactItemButtonCardSection *)self text_4s];
    v40 = [v4 text_4s];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemButtonCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v42 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBRFFactItemButtonCardSection *)self text];
    v45 = [v4 text];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v47 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail];
    v50 = [v4 thumbnail];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail2];
  v6 = [v4 thumbnail2];
  if ((v5 != 0) != (v6 == 0))
  {
    v52 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail2];
    if (!v52)
    {

LABEL_55:
      buttonItemsAreBottom = self->_buttonItemsAreBottom;
      v57 = buttonItemsAreBottom == [v4 buttonItemsAreBottom];
      goto LABEL_53;
    }

    v53 = v52;
    v54 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail2];
    v55 = [v4 thumbnail2];
    v56 = [v54 isEqual:v55];

    if (v56)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_51:
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBRFFactItemButtonCardSection *)self text_4s];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v17 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail2];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFFactItemButtonCardSection *)self buttonItemsAreBottom])
  {
    PBDataWriterWriteBOOLField();
  }

  v20 = *MEMORY[0x1E69E9840];
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