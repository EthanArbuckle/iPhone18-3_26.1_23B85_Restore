@interface _SFPBRFReferenceCenteredCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFReferenceCenteredCardSection)initWithDictionary:(id)a3;
- (_SFPBRFReferenceCenteredCardSection)initWithFacade:(id)a3;
- (_SFPBRFReferenceCenteredCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFReferenceCenteredCardSection

- (_SFPBRFReferenceCenteredCardSection)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFReferenceCenteredCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [_SFPBRFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:v16];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_3:v17];
    }

    v18 = [v4 text];

    if (v18)
    {
      v19 = [_SFPBRFTextProperty alloc];
      v20 = [v4 text];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:v20];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_4:v21];
    }

    if ([v4 hasAdd_tint])
    {
      -[_SFPBRFReferenceCenteredCardSection setAdd_tint:](v5, "setAdd_tint:", [v4 add_tint]);
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBRFReferenceCenteredCardSection)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _SFPBRFReferenceCenteredCardSection;
  v5 = [(_SFPBRFReferenceCenteredCardSection *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_2:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_3:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFTextProperty alloc] initWithDictionary:v12];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_4:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"addTint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFReferenceCenteredCardSection setAdd_tint:](v5, "setAdd_tint:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (_SFPBRFReferenceCenteredCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFReferenceCenteredCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFReferenceCenteredCardSection *)self dictionaryRepresentation];
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
  if (self->_add_tint)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFReferenceCenteredCardSection add_tint](self, "add_tint")}];
    [v3 setObject:v4 forKeyedSubscript:@"addTint"];
  }

  if (self->_text_1)
  {
    v5 = [(_SFPBRFReferenceCenteredCardSection *)self text];
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
    v8 = [(_SFPBRFReferenceCenteredCardSection *)self text];
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
    v11 = [(_SFPBRFReferenceCenteredCardSection *)self text];
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
    v14 = [(_SFPBRFReferenceCenteredCardSection *)self text];
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

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash];
  v5 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v6 = [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = 2654435761;
  if (!self->_add_tint)
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    v15 = [v4 text];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    v20 = [v4 text];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    if (!v22)
    {

LABEL_25:
      add_tint = self->_add_tint;
      v27 = add_tint == [v4 add_tint];
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    v25 = [v4 text];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFReferenceCenteredCardSection *)self add_tint])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end