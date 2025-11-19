@interface _SFPBRFSummaryItemPairCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSummaryItemPairCardSection)initWithDictionary:(id)a3;
- (_SFPBRFSummaryItemPairCardSection)initWithFacade:(id)a3;
- (_SFPBRFSummaryItemPairCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSummaryItemPairCardSection

- (_SFPBRFSummaryItemPairCardSection)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemPairCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [_SFPBRFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:v16];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_3:v17];
    }

    v18 = [v4 thumbnail];

    if (v18)
    {
      v19 = [_SFPBRFVisualProperty alloc];
      v20 = [v4 thumbnail];
      v21 = [(_SFPBRFVisualProperty *)v19 initWithFacade:v20];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setThumbnail_1:v21];
    }

    v22 = [v4 thumbnail];

    if (v22)
    {
      v23 = [_SFPBRFVisualProperty alloc];
      v24 = [v4 thumbnail];
      v25 = [(_SFPBRFVisualProperty *)v23 initWithFacade:v24];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setThumbnail_2:v25];
    }

    v26 = [v4 text];

    if (v26)
    {
      v27 = [_SFPBRFTextProperty alloc];
      v28 = [v4 text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:v28];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_4:v29];
    }

    v30 = [v4 text];

    if (v30)
    {
      v31 = [_SFPBRFTextProperty alloc];
      v32 = [v4 text];
      v33 = [(_SFPBRFTextProperty *)v31 initWithFacade:v32];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_5:v33];
    }

    v34 = [v4 text];

    if (v34)
    {
      v35 = [_SFPBRFTextProperty alloc];
      v36 = [v4 text];
      v37 = [(_SFPBRFTextProperty *)v35 initWithFacade:v36];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_6:v37];
    }

    v38 = [v4 text];

    if (v38)
    {
      v39 = [_SFPBRFTextProperty alloc];
      v40 = [v4 text];
      v41 = [(_SFPBRFTextProperty *)v39 initWithFacade:v40];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_7:v41];
    }

    v42 = [v4 text];

    if (v42)
    {
      v43 = [_SFPBRFTextProperty alloc];
      v44 = [v4 text];
      v45 = [(_SFPBRFTextProperty *)v43 initWithFacade:v44];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_8:v45];
    }

    v46 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemPairCardSection)initWithDictionary:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = _SFPBRFSummaryItemPairCardSection;
  v5 = [(_SFPBRFSummaryItemPairCardSection *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_2:v9];
    }

    v29 = v8;
    v30 = v6;
    v10 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_3:v11];
    }

    v28 = v10;
    v12 = [v4 objectForKeyedSubscript:@"thumbnail1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v12];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setThumbnail_1:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"thumbnail2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v14];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setThumbnail_2:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_4:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBRFTextProperty alloc] initWithDictionary:v18];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_5:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"text6"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBRFTextProperty alloc] initWithDictionary:v20];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_6:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"text7"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBRFTextProperty alloc] initWithDictionary:v22];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_7:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"text8"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_8:v25];
    }

    v26 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemPairCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemPairCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSummaryItemPairCardSection *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_text_1)
  {
    v4 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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
    v7 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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
    v10 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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

  if (self->_text_4)
  {
    v13 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"text4"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"text4"];
    }
  }

  if (self->_text_5)
  {
    v16 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"text5"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"text5"];
    }
  }

  if (self->_text_6)
  {
    v19 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"text6"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"text6"];
    }
  }

  if (self->_text_7)
  {
    v22 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"text7"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"text7"];
    }
  }

  if (self->_text_8)
  {
    v25 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"text8"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"text8"];
    }
  }

  if (self->_thumbnail_1)
  {
    v28 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"thumbnail1"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"thumbnail1"];
    }
  }

  if (self->_thumbnail_2)
  {
    v31 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"thumbnail2"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"thumbnail2"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFVisualProperty *)self->_thumbnail_1 hash];
  v7 = [(_SFPBRFVisualProperty *)self->_thumbnail_2 hash];
  v8 = v7 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v9 = v6 ^ v8 ^ [(_SFPBRFTextProperty *)self->_text_5 hash];
  v10 = [(_SFPBRFTextProperty *)self->_text_6 hash];
  v11 = v10 ^ [(_SFPBRFTextProperty *)self->_text_7 hash];
  return v9 ^ v11 ^ [(_SFPBRFTextProperty *)self->_text_8 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v7 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v12 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    v15 = [v4 text];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v17 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    v20 = [v4 text];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v22 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
    v25 = [v4 thumbnail];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v27 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
    v30 = [v4 thumbnail];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v32 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v37 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    v40 = [v4 text];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v42 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v47 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    v50 = [v4 text];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) != (v6 == 0))
  {
    v52 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    if (!v52)
    {

LABEL_55:
      v57 = 1;
      goto LABEL_53;
    }

    v53 = v52;
    v54 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    v55 = [v4 text];
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
  v14 = a3;
  v4 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v12)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (v13)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end