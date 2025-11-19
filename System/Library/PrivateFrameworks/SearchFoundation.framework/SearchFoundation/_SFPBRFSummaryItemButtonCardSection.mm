@interface _SFPBRFSummaryItemButtonCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSummaryItemButtonCardSection)initWithDictionary:(id)a3;
- (_SFPBRFSummaryItemButtonCardSection)initWithFacade:(id)a3;
- (_SFPBRFSummaryItemButtonCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_2:(id)a3;
- (void)addText_3:(id)a3;
- (void)setText_2:(id)a3;
- (void)setText_3:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSummaryItemButtonCardSection

- (_SFPBRFSummaryItemButtonCardSection)initWithFacade:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 button];

    if (v10)
    {
      v11 = [_SFPBButtonItem alloc];
      v12 = [v4 button];
      v13 = [(_SFPBButtonItem *)v11 initWithFacade:v12];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_1:v13];
    }

    v14 = [v4 button];

    if (v14)
    {
      v15 = [_SFPBButtonItem alloc];
      v16 = [v4 button];
      v17 = [(_SFPBButtonItem *)v15 initWithFacade:v16];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_2:v17];
    }

    v18 = [v4 button];

    if (v18)
    {
      v19 = [_SFPBButtonItem alloc];
      v20 = [v4 button];
      v21 = [(_SFPBButtonItem *)v19 initWithFacade:v20];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_3:v21];
    }

    v22 = [v4 text];
    if (v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v24 = [v4 text];
    v25 = [v24 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v54;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v53 + 1) + 8 * i)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v26);
    }

    [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_2s:v23];
    v30 = [v4 text];
    if (v30)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v32 = [v4 text];
    v33 = [v32 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v50;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v50 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v49 + 1) + 8 * j)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v34);
    }

    [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_3s:v31];
    v38 = [v4 text];

    if (v38)
    {
      v39 = [_SFPBRFTextProperty alloc];
      v40 = [v4 text];
      v41 = [(_SFPBRFTextProperty *)v39 initWithFacade:v40];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_4:v41];
    }

    v42 = [v4 thumbnail];

    if (v42)
    {
      v43 = [_SFPBRFVisualProperty alloc];
      v44 = [v4 thumbnail];
      v45 = [(_SFPBRFVisualProperty *)v43 initWithFacade:v44];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setThumbnail:v45];
    }

    if ([v4 hasButtonItemsAreTrailing])
    {
      -[_SFPBRFSummaryItemButtonCardSection setButtonItemsAreTrailing:](v5, "setButtonItemsAreTrailing:", [v4 buttonItemsAreTrailing]);
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemButtonCardSection)initWithDictionary:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = _SFPBRFSummaryItemButtonCardSection;
  v5 = [(_SFPBRFSummaryItemButtonCardSection *)&v50 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"button1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBButtonItem alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_1:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"button2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBButtonItem alloc] initWithDictionary:v10];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_2:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"button3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBButtonItem alloc] initWithDictionary:v12];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_3:v13];
    }

    v38 = v12;
    v14 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v41 = v14;
    v40 = v6;
    v39 = v10;
    if (objc_opt_isKindOfClass())
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v47;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v47 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[_SFPBRFTextProperty alloc] initWithDictionary:v20];
              [(_SFPBRFSummaryItemButtonCardSection *)v5 addText_2:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v17);
      }

      v6 = v40;
      v10 = v39;
    }

    v22 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v43;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v43 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v42 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [[_SFPBRFTextProperty alloc] initWithDictionary:v28];
              [(_SFPBRFSummaryItemButtonCardSection *)v5 addText_3:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v25);
      }

      v6 = v40;
      v10 = v39;
    }

    v30 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFTextProperty alloc] initWithDictionary:v30];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_4:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v32];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setThumbnail:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"buttonItemsAreTrailing"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSummaryItemButtonCardSection setButtonItemsAreTrailing:](v5, "setButtonItemsAreTrailing:", [v34 BOOLValue]);
    }

    v35 = v5;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemButtonCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemButtonCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSummaryItemButtonCardSection *)self dictionaryRepresentation];
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
  v51 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_buttonItemsAreTrailing)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFSummaryItemButtonCardSection buttonItemsAreTrailing](self, "buttonItemsAreTrailing")}];
    [v3 setObject:v4 forKeyedSubscript:@"buttonItemsAreTrailing"];
  }

  if (self->_button_1)
  {
    v5 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
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
    v8 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
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
    v11 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
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
    v14 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
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

  if ([(NSArray *)self->_text_2s count])
  {
    v17 = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v18 = self->_text_2s;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v45 + 1) + 8 * i) dictionaryRepresentation];
          if (v23)
          {
            [v17 addObject:v23];
          }

          else
          {
            v24 = [MEMORY[0x1E695DFB0] null];
            [v17 addObject:v24];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"text2"];
  }

  if ([(NSArray *)self->_text_3s count])
  {
    v25 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = self->_text_3s;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v41 + 1) + 8 * j) dictionaryRepresentation];
          if (v31)
          {
            [v25 addObject:v31];
          }

          else
          {
            v32 = [MEMORY[0x1E695DFB0] null];
            [v25 addObject:v32];
          }
        }

        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    v33 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"text4"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"text4"];
    }
  }

  if (self->_thumbnail)
  {
    v36 = [(_SFPBRFSummaryItemButtonCardSection *)self thumbnail];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"thumbnail"];
    }
  }

  v39 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBButtonItem *)self->_button_1 hash];
  v5 = [(_SFPBButtonItem *)self->_button_2 hash];
  v6 = [(_SFPBButtonItem *)self->_button_3 hash];
  v7 = [(NSArray *)self->_text_2s hash];
  v8 = [(NSArray *)self->_text_3s hash];
  v9 = [(_SFPBRFTextProperty *)self->_text_4 hash];
  v10 = [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  v11 = 2654435761;
  if (!self->_buttonItemsAreTrailing)
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v7 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  v6 = [v4 button];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v12 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
    v15 = [v4 button];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  v6 = [v4 button];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v17 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
    v20 = [v4 button];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  v6 = [v4 button];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v22 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
    v25 = [v4 button];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self text_2s];
  v6 = [v4 text_2s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v27 = [(_SFPBRFSummaryItemButtonCardSection *)self text_2s];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFSummaryItemButtonCardSection *)self text_2s];
    v30 = [v4 text_2s];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self text_3s];
  v6 = [v4 text_3s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v32 = [(_SFPBRFSummaryItemButtonCardSection *)self text_3s];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBRFSummaryItemButtonCardSection *)self text_3s];
    v35 = [v4 text_3s];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v37 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
    v40 = [v4 text];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) != (v6 == 0))
  {
    v42 = [(_SFPBRFSummaryItemButtonCardSection *)self thumbnail];
    if (!v42)
    {

LABEL_45:
      buttonItemsAreTrailing = self->_buttonItemsAreTrailing;
      v47 = buttonItemsAreTrailing == [v4 buttonItemsAreTrailing];
      goto LABEL_43;
    }

    v43 = v42;
    v44 = [(_SFPBRFSummaryItemButtonCardSection *)self thumbnail];
    v45 = [v4 thumbnail];
    v46 = [v44 isEqual:v45];

    if (v46)
    {
      goto LABEL_45;
    }
  }

  else
  {
LABEL_41:
  }

LABEL_42:
  v47 = 0;
LABEL_43:

  return v47;
}

- (void)writeTo:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBRFSummaryItemButtonCardSection *)self text_2s];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v15 = [(_SFPBRFSummaryItemButtonCardSection *)self text_3s];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBRFSummaryItemButtonCardSection *)self thumbnail];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFSummaryItemButtonCardSection *)self buttonItemsAreTrailing])
  {
    PBDataWriterWriteBOOLField();
  }

  v23 = *MEMORY[0x1E69E9840];
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