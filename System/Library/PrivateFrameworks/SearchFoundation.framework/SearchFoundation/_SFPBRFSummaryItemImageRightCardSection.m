@interface _SFPBRFSummaryItemImageRightCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSummaryItemImageRightCardSection)initWithDictionary:(id)a3;
- (_SFPBRFSummaryItemImageRightCardSection)initWithFacade:(id)a3;
- (_SFPBRFSummaryItemImageRightCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_2:(id)a3;
- (void)addText_3:(id)a3;
- (void)setText_2:(id)a3;
- (void)setText_3:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSummaryItemImageRightCardSection

- (_SFPBRFSummaryItemImageRightCardSection)initWithFacade:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];
    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = [v4 text];
    v13 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v46;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v45 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v14);
    }

    [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_2s:v11];
    v18 = [v4 text];
    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v20 = [v4 text];
    v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v41 + 1) + 8 * j)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v22);
    }

    [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_3s:v19];
    v26 = [v4 text];

    if (v26)
    {
      v27 = [_SFPBRFTextProperty alloc];
      v28 = [v4 text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:v28];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_4:v29];
    }

    v30 = [v4 thumbnail];

    if (v30)
    {
      v31 = [_SFPBRFVisualProperty alloc];
      v32 = [v4 thumbnail];
      v33 = [(_SFPBRFVisualProperty *)v31 initWithFacade:v32];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setThumbnail_1:v33];
    }

    v34 = [v4 thumbnail];

    if (v34)
    {
      v35 = [_SFPBRFVisualProperty alloc];
      v36 = [v4 thumbnail];
      v37 = [(_SFPBRFVisualProperty *)v35 initWithFacade:v36];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setThumbnail_2:v37];
    }

    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemImageRightCardSection)initWithDictionary:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = _SFPBRFSummaryItemImageRightCardSection;
  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)&v44 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v33 = v8;
    if (objc_opt_isKindOfClass())
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v41;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v40 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBRFTextProperty alloc] initWithDictionary:v14];
              [(_SFPBRFSummaryItemImageRightCardSection *)v5 addText_2:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v11);
      }

      v8 = v33;
    }

    v16 = [v4 objectForKeyedSubscript:{@"text3", v33, v6}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v37;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v37 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v36 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[_SFPBRFTextProperty alloc] initWithDictionary:v22];
              [(_SFPBRFSummaryItemImageRightCardSection *)v5 addText_3:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v19);
      }

      v8 = v34;
      v6 = v35;
    }

    v24 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_4:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"thumbnail1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v26];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setThumbnail_1:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"thumbnail2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v28];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setThumbnail_2:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemImageRightCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemImageRightCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSummaryItemImageRightCardSection *)self dictionaryRepresentation];
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
  if (self->_text_1)
  {
    v4 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
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
    v23 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
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

  if (self->_thumbnail_1)
  {
    v26 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
    v27 = [v26 dictionaryRepresentation];
    if (v27)
    {
      [v3 setObject:v27 forKeyedSubscript:@"thumbnail1"];
    }

    else
    {
      v28 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v28 forKeyedSubscript:@"thumbnail1"];
    }
  }

  if (self->_thumbnail_2)
  {
    v29 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
    v30 = [v29 dictionaryRepresentation];
    if (v30)
    {
      [v3 setObject:v30 forKeyedSubscript:@"thumbnail2"];
    }

    else
    {
      v31 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v31 forKeyedSubscript:@"thumbnail2"];
    }
  }

  v32 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(NSArray *)self->_text_2s hash]^ v3;
  v5 = [(NSArray *)self->_text_3s hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = [(_SFPBRFVisualProperty *)self->_thumbnail_1 hash];
  return v6 ^ v7 ^ [(_SFPBRFVisualProperty *)self->_thumbnail_2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)self text_2s];
  v6 = [v4 text_2s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_SFPBRFSummaryItemImageRightCardSection *)self text_2s];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFSummaryItemImageRightCardSection *)self text_2s];
    v15 = [v4 text_2s];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)self text_3s];
  v6 = [v4 text_3s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_SFPBRFSummaryItemImageRightCardSection *)self text_3s];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFSummaryItemImageRightCardSection *)self text_3s];
    v20 = [v4 text_3s];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
    v25 = [v4 text];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
    v30 = [v4 thumbnail];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
    v35 = [v4 thumbnail];
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
  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFSummaryItemImageRightCardSection *)self text_2s];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v12 = [(_SFPBRFSummaryItemImageRightCardSection *)self text_3s];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
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