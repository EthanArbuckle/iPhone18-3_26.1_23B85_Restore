@interface _SFPBRFSummaryItemAlignedTextCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSummaryItemAlignedTextCardSection)initWithDictionary:(id)a3;
- (_SFPBRFSummaryItemAlignedTextCardSection)initWithFacade:(id)a3;
- (_SFPBRFSummaryItemAlignedTextCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_3:(id)a3;
- (void)addText_6:(id)a3;
- (void)setText_3:(id)a3;
- (void)setText_6:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSummaryItemAlignedTextCardSection

- (_SFPBRFSummaryItemAlignedTextCardSection)initWithFacade:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_2:v13];
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

    [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_3s:v15];
    v22 = [v4 text];

    if (v22)
    {
      v23 = [_SFPBRFTextProperty alloc];
      v24 = [v4 text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:v24];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_4:v25];
    }

    v26 = [v4 text];

    if (v26)
    {
      v27 = [_SFPBRFTextProperty alloc];
      v28 = [v4 text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:v28];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_5:v29];
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

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = [v4 text];
    v33 = [v32 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v46;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v45 + 1) + 8 * j)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v34);
    }

    [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_6s:v31];
    v38 = [v4 thumbnail];

    if (v38)
    {
      v39 = [_SFPBRFVisualProperty alloc];
      v40 = [v4 thumbnail];
      v41 = [(_SFPBRFVisualProperty *)v39 initWithFacade:v40];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setThumbnail:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemAlignedTextCardSection)initWithDictionary:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v48.receiver = self;
  v48.super_class = _SFPBRFSummaryItemAlignedTextCardSection;
  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)&v48 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_2:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    v38 = v8;
    v39 = v6;
    v37 = v10;
    if (objc_opt_isKindOfClass())
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v45;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v45 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v44 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
              [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 addText_3:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v44 objects:v50 count:16];
        }

        while (v13);
      }

      v8 = v38;
      v10 = v37;
    }

    v18 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBRFTextProperty alloc] initWithDictionary:v18];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_4:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBRFTextProperty alloc] initWithDictionary:v20];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_5:v21];
    }

    v36 = v20;
    v22 = [v4 objectForKeyedSubscript:@"text6"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v18;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v41;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v41 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v40 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [[_SFPBRFTextProperty alloc] initWithDictionary:v28];
              [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 addText_6:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v25);
      }

      v8 = v38;
      v6 = v39;
      v10 = v37;
      v18 = v35;
    }

    v30 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v30];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setThumbnail:v31];
    }

    v32 = v5;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemAlignedTextCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemAlignedTextCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self dictionaryRepresentation];
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
    v4 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
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
    v7 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
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
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = self->_text_3s;
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

    [v3 setObject:v10 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    v18 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
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

  if (self->_text_5)
  {
    v21 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"text5"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"text5"];
    }
  }

  if ([(NSArray *)self->_text_6s count])
  {
    v24 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = self->_text_6s;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          if (v30)
          {
            [v24 addObject:v30];
          }

          else
          {
            v31 = [MEMORY[0x1E695DFB0] null];
            [v24 addObject:v31];
          }
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v27);
    }

    [v3 setObject:v24 forKeyedSubscript:@"text6"];
  }

  if (self->_thumbnail)
  {
    v32 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self thumbnail];
    v33 = [v32 dictionaryRepresentation];
    if (v33)
    {
      [v3 setObject:v33 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v34 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v34 forKeyedSubscript:@"thumbnail"];
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(NSArray *)self->_text_3s hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = [(_SFPBRFTextProperty *)self->_text_5 hash];
  v8 = v7 ^ [(NSArray *)self->_text_6s hash];
  return v6 ^ v8 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
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

  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
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

  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_3s];
  v6 = [v4 text_3s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_3s];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_3s];
    v20 = [v4 text_3s];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v22 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
    v25 = [v4 text];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v27 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
    v30 = [v4 text];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_6s];
  v6 = [v4 text_6s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v32 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_6s];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_6s];
    v35 = [v4 text_6s];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) != (v6 == 0))
  {
    v37 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self thumbnail];
    if (!v37)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = v37;
    v39 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self thumbnail];
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
  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_3s];
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

  v13 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (v13)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_6s];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self thumbnail];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)addText_6:(id)a3
{
  v4 = a3;
  text_6s = self->_text_6s;
  v8 = v4;
  if (!text_6s)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_6s;
    self->_text_6s = v6;

    v4 = v8;
    text_6s = self->_text_6s;
  }

  [(NSArray *)text_6s addObject:v4];
}

- (void)setText_6:(id)a3
{
  v4 = [a3 copy];
  text_6s = self->_text_6s;
  self->_text_6s = v4;

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