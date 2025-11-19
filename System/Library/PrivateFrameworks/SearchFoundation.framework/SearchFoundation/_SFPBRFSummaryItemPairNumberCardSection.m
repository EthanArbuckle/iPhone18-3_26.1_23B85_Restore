@interface _SFPBRFSummaryItemPairNumberCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSummaryItemPairNumberCardSection)initWithDictionary:(id)a3;
- (_SFPBRFSummaryItemPairNumberCardSection)initWithFacade:(id)a3;
- (_SFPBRFSummaryItemPairNumberCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_5:(id)a3;
- (void)setText_5:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSummaryItemPairNumberCardSection

- (_SFPBRFSummaryItemPairNumberCardSection)initWithFacade:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self init];
  if (v5)
  {
    v6 = [v4 number];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 number];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setNumber_1:v9];
    }

    v10 = [v4 number];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 number];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setNumber_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [_SFPBRFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:v16];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_1:v17];
    }

    v18 = [v4 text];

    if (v18)
    {
      v19 = [_SFPBRFTextProperty alloc];
      v20 = [v4 text];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:v20];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_2:v21];
    }

    v22 = [v4 text];

    if (v22)
    {
      v23 = [_SFPBRFTextProperty alloc];
      v24 = [v4 text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:v24];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_3:v25];
    }

    v26 = [v4 text];

    if (v26)
    {
      v27 = [_SFPBRFTextProperty alloc];
      v28 = [v4 text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:v28];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_4:v29];
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

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v32 = [v4 text];
    v33 = [v32 countByEnumeratingWithState:&v73 objects:v77 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v74;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v74 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v73 + 1) + 8 * i)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v73 objects:v77 count:16];
      }

      while (v34);
    }

    [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_5s:v31];
    v38 = [v4 thumbnail];

    if (v38)
    {
      v39 = [_SFPBRFVisualProperty alloc];
      v40 = [v4 thumbnail];
      v41 = [(_SFPBRFVisualProperty *)v39 initWithFacade:v40];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setThumbnail_1:v41];
    }

    v42 = [v4 thumbnail];

    if (v42)
    {
      v43 = [_SFPBRFVisualProperty alloc];
      v44 = [v4 thumbnail];
      v45 = [(_SFPBRFVisualProperty *)v43 initWithFacade:v44];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setThumbnail_2:v45];
    }

    v46 = [v4 text];

    if (v46)
    {
      v47 = [_SFPBRFTextProperty alloc];
      v48 = [v4 text];
      v49 = [(_SFPBRFTextProperty *)v47 initWithFacade:v48];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_6:v49];
    }

    v50 = [v4 text];

    if (v50)
    {
      v51 = [_SFPBRFTextProperty alloc];
      v52 = [v4 text];
      v53 = [(_SFPBRFTextProperty *)v51 initWithFacade:v52];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_7:v53];
    }

    v54 = [v4 button];

    if (v54)
    {
      v55 = [_SFPBButtonItem alloc];
      v56 = [v4 button];
      v57 = [(_SFPBButtonItem *)v55 initWithFacade:v56];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setButton_1:v57];
    }

    v58 = [v4 text];

    if (v58)
    {
      v59 = [_SFPBRFTextProperty alloc];
      v60 = [v4 text];
      v61 = [(_SFPBRFTextProperty *)v59 initWithFacade:v60];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_8:v61];
    }

    v62 = [v4 text];

    if (v62)
    {
      v63 = [_SFPBRFTextProperty alloc];
      v64 = [v4 text];
      v65 = [(_SFPBRFTextProperty *)v63 initWithFacade:v64];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_9:v65];
    }

    v66 = [v4 text];

    if (v66)
    {
      v67 = [_SFPBRFTextProperty alloc];
      v68 = [v4 text];
      v69 = [(_SFPBRFTextProperty *)v67 initWithFacade:v68];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_10:v69];
    }

    v70 = v5;
  }

  v71 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemPairNumberCardSection)initWithDictionary:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57.receiver = self;
  v57.super_class = _SFPBRFSummaryItemPairNumberCardSection;
  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)&v57 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"number1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setNumber_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"number2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setNumber_2:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    v52 = v10;
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_1:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v51 = v12;
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFTextProperty alloc] initWithDictionary:v12];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    v50 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFTextProperty alloc] initWithDictionary:v14];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_3:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    v49 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_4:v17];
    }

    v47 = v6;
    v18 = [v4 objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    v48 = v18;
    if (objc_opt_isKindOfClass())
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v54;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v54 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v53 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
              [(_SFPBRFSummaryItemPairNumberCardSection *)v5 addText_5:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v21);
      }
    }

    v26 = [v4 objectForKeyedSubscript:@"thumbnail1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v26];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setThumbnail_1:v27];
    }

    v28 = [v4 objectForKeyedSubscript:{@"thumbnail2", v26}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v28];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setThumbnail_2:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"text6"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFTextProperty alloc] initWithDictionary:v30];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_6:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"text7"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRFTextProperty alloc] initWithDictionary:v32];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_7:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"button1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBButtonItem alloc] initWithDictionary:v34];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setButton_1:v35];
    }

    v46 = v8;
    v36 = [v4 objectForKeyedSubscript:@"text8"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBRFTextProperty alloc] initWithDictionary:v36];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_8:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"text9"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBRFTextProperty alloc] initWithDictionary:v38];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_9:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"text10"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBRFTextProperty alloc] initWithDictionary:v40];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_10:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemPairNumberCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemPairNumberCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self dictionaryRepresentation];
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
  v61 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_button_1)
  {
    v4 = [(_SFPBRFSummaryItemPairNumberCardSection *)self button];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"button1"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"button1"];
    }
  }

  if (self->_number_1)
  {
    v7 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"number1"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"number1"];
    }
  }

  if (self->_number_2)
  {
    v10 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"number2"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"number2"];
    }
  }

  if (self->_text_1)
  {
    v13 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"text1"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_10)
  {
    v16 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"text10"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"text10"];
    }
  }

  if (self->_text_2)
  {
    v19 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"text2"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"text2"];
    }
  }

  if (self->_text_3)
  {
    v22 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"text3"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"text3"];
    }
  }

  if (self->_text_4)
  {
    v25 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"text4"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"text4"];
    }
  }

  if ([(NSArray *)self->_text_5s count])
  {
    v28 = [MEMORY[0x1E695DF70] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v29 = self->_text_5s;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v57;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v57 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v56 + 1) + 8 * i) dictionaryRepresentation];
          if (v34)
          {
            [v28 addObject:v34];
          }

          else
          {
            v35 = [MEMORY[0x1E695DFB0] null];
            [v28 addObject:v35];
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v31);
    }

    [v3 setObject:v28 forKeyedSubscript:@"text5"];
  }

  if (self->_text_6)
  {
    v36 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"text6"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"text6"];
    }
  }

  if (self->_text_7)
  {
    v39 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v40 = [v39 dictionaryRepresentation];
    if (v40)
    {
      [v3 setObject:v40 forKeyedSubscript:@"text7"];
    }

    else
    {
      v41 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v41 forKeyedSubscript:@"text7"];
    }
  }

  if (self->_text_8)
  {
    v42 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v43 = [v42 dictionaryRepresentation];
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"text8"];
    }

    else
    {
      v44 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v44 forKeyedSubscript:@"text8"];
    }
  }

  if (self->_text_9)
  {
    v45 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v46 = [v45 dictionaryRepresentation];
    if (v46)
    {
      [v3 setObject:v46 forKeyedSubscript:@"text9"];
    }

    else
    {
      v47 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v47 forKeyedSubscript:@"text9"];
    }
  }

  if (self->_thumbnail_1)
  {
    v48 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
    v49 = [v48 dictionaryRepresentation];
    if (v49)
    {
      [v3 setObject:v49 forKeyedSubscript:@"thumbnail1"];
    }

    else
    {
      v50 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v50 forKeyedSubscript:@"thumbnail1"];
    }
  }

  if (self->_thumbnail_2)
  {
    v51 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
    v52 = [v51 dictionaryRepresentation];
    if (v52)
    {
      [v3 setObject:v52 forKeyedSubscript:@"thumbnail2"];
    }

    else
    {
      v53 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v53 forKeyedSubscript:@"thumbnail2"];
    }
  }

  v54 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_number_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_number_2 hash]^ v3;
  v5 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_2 hash];
  v7 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v8 = v7 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v9 = v6 ^ v8 ^ [(NSArray *)self->_text_5s hash];
  v10 = [(_SFPBRFVisualProperty *)self->_thumbnail_1 hash];
  v11 = v10 ^ [(_SFPBRFVisualProperty *)self->_thumbnail_2 hash];
  v12 = v11 ^ [(_SFPBRFTextProperty *)self->_text_6 hash];
  v13 = v9 ^ v12 ^ [(_SFPBRFTextProperty *)self->_text_7 hash];
  v14 = [(_SFPBButtonItem *)self->_button_1 hash];
  v15 = v14 ^ [(_SFPBRFTextProperty *)self->_text_8 hash];
  v16 = v15 ^ [(_SFPBRFTextProperty *)self->_text_9 hash];
  return v13 ^ v16 ^ [(_SFPBRFTextProperty *)self->_text_10 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  v6 = [v4 number];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v7 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
    v10 = [v4 number];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  v6 = [v4 number];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v12 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
    v15 = [v4 number];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v17 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v20 = [v4 text];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v22 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v25 = [v4 text];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v27 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v30 = [v4 text];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v32 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v35 = [v4 text];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text_5s];
  v6 = [v4 text_5s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v37 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text_5s];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text_5s];
    v40 = [v4 text_5s];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v42 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
    v45 = [v4 thumbnail];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v47 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
    v50 = [v4 thumbnail];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v52 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v55 = [v4 text];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v57 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v57)
  {
    v58 = v57;
    v59 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v60 = [v4 text];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self button];
  v6 = [v4 button];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v62 = [(_SFPBRFSummaryItemPairNumberCardSection *)self button];
  if (v62)
  {
    v63 = v62;
    v64 = [(_SFPBRFSummaryItemPairNumberCardSection *)self button];
    v65 = [v4 button];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v67 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v67)
  {
    v68 = v67;
    v69 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v70 = [v4 text];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v72 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v72)
  {
    v73 = v72;
    v74 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v75 = [v4 text];
    v76 = [v74 isEqual:v75];

    if (!v76)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) != (v6 == 0))
  {
    v77 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    if (!v77)
    {

LABEL_80:
      v82 = 1;
      goto LABEL_78;
    }

    v78 = v77;
    v79 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    v80 = [v4 text];
    v81 = [v79 isEqual:v80];

    if (v81)
    {
      goto LABEL_80;
    }
  }

  else
  {
LABEL_76:
  }

LABEL_77:
  v82 = 0;
LABEL_78:

  return v82;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text_5s];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  v17 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBRFSummaryItemPairNumberCardSection *)self button];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v23)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (v24)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = *MEMORY[0x1E69E9840];
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

@end