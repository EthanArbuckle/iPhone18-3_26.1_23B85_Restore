@interface _SFPBRFSummaryItemSwitchV2CardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSummaryItemSwitchV2CardSection)initWithDictionary:(id)a3;
- (_SFPBRFSummaryItemSwitchV2CardSection)initWithFacade:(id)a3;
- (_SFPBRFSummaryItemSwitchV2CardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSummaryItemSwitchV2CardSection

- (_SFPBRFSummaryItemSwitchV2CardSection)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self init];
  if (v5)
  {
    if ([v4 hasIs_on])
    {
      -[_SFPBRFSummaryItemSwitchV2CardSection setIs_on:](v5, "setIs_on:", [v4 is_on]);
    }

    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [_SFPBRFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:v16];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_3:v17];
    }

    v18 = [v4 text];

    if (v18)
    {
      v19 = [_SFPBRFTextProperty alloc];
      v20 = [v4 text];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:v20];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_4:v21];
    }

    v22 = [v4 thumbnail];

    if (v22)
    {
      v23 = [_SFPBRFVisualProperty alloc];
      v24 = [v4 thumbnail];
      v25 = [(_SFPBRFVisualProperty *)v23 initWithFacade:v24];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setThumbnail:v25];
    }

    v26 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemSwitchV2CardSection)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _SFPBRFSummaryItemSwitchV2CardSection;
  v5 = [(_SFPBRFSummaryItemSwitchV2CardSection *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isOn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSummaryItemSwitchV2CardSection setIs_on:](v5, "setIs_on:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBRFTextProperty alloc] initWithDictionary:v7];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_1:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[_SFPBRFTextProperty alloc] initWithDictionary:v9];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_2:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[_SFPBRFTextProperty alloc] initWithDictionary:v11];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_3:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBRFTextProperty alloc] initWithDictionary:v13];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_4:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v15];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setThumbnail:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemSwitchV2CardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemSwitchV2CardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self dictionaryRepresentation];
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
  if (self->_is_on)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFSummaryItemSwitchV2CardSection is_on](self, "is_on")}];
    [v3 setObject:v4 forKeyedSubscript:@"isOn"];
  }

  if (self->_text_1)
  {
    v5 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"text1"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    v8 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"text2"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"text2"];
    }
  }

  if (self->_text_3)
  {
    v11 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"text3"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"text3"];
    }
  }

  if (self->_text_4)
  {
    v14 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"text4"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"text4"];
    }
  }

  if (self->_thumbnail)
  {
    v17 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self thumbnail];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"thumbnail"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  if (self->_is_on)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v5 = v4 ^ [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v6 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v7 = v6 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  return v5 ^ v7 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  is_on = self->_is_on;
  if (is_on != [v4 is_on])
  {
    goto LABEL_28;
  }

  v6 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  v7 = [v4 text];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v8 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    v11 = [v4 text];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  v7 = [v4 text];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v13 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (v13)
  {
    v14 = v13;
    v15 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    v16 = [v4 text];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  v7 = [v4 text];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v18 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (v18)
  {
    v19 = v18;
    v20 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    v21 = [v4 text];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  v7 = [v4 text];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    v26 = [v4 text];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self thumbnail];
  v7 = [v4 thumbnail];
  if ((v6 != 0) != (v7 == 0))
  {
    v28 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self thumbnail];
    if (!v28)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = v28;
    v30 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self thumbnail];
    v31 = [v4 thumbnail];
    v32 = [v30 isEqual:v31];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if ([(_SFPBRFSummaryItemSwitchV2CardSection *)self is_on])
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self thumbnail];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end