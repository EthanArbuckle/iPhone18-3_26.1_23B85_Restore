@interface _SFPBRFSummaryItemAttribution
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSummaryItemAttribution)initWithDictionary:(id)a3;
- (_SFPBRFSummaryItemAttribution)initWithFacade:(id)a3;
- (_SFPBRFSummaryItemAttribution)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSummaryItemAttribution

- (_SFPBRFSummaryItemAttribution)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemAttribution *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFSummaryItemAttribution *)v5 setText:v9];
    }

    v10 = [v4 text_compact];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text_compact];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFSummaryItemAttribution *)v5 setText_compact:v13];
    }

    v14 = [v4 text_minimal];

    if (v14)
    {
      v15 = [_SFPBRFTextProperty alloc];
      v16 = [v4 text_minimal];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:v16];
      [(_SFPBRFSummaryItemAttribution *)v5 setText_minimal:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemAttribution)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBRFSummaryItemAttribution;
  v5 = [(_SFPBRFSummaryItemAttribution *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemAttribution *)v5 setText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"textCompact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemAttribution *)v5 setText_compact:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"textMinimal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFSummaryItemAttribution *)v5 setText_minimal:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemAttribution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemAttribution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSummaryItemAttribution *)self dictionaryRepresentation];
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
  if (self->_text)
  {
    v4 = [(_SFPBRFSummaryItemAttribution *)self text];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"text"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"text"];
    }
  }

  if (self->_text_compact)
  {
    v7 = [(_SFPBRFSummaryItemAttribution *)self text_compact];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"textCompact"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"textCompact"];
    }
  }

  if (self->_text_minimal)
  {
    v10 = [(_SFPBRFSummaryItemAttribution *)self text_minimal];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"textMinimal"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"textMinimal"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_compact hash]^ v3;
  return v4 ^ [(_SFPBRFTextProperty *)self->_text_minimal hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBRFSummaryItemAttribution *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBRFSummaryItemAttribution *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFSummaryItemAttribution *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemAttribution *)self text_compact];
  v6 = [v4 text_compact];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBRFSummaryItemAttribution *)self text_compact];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFSummaryItemAttribution *)self text_compact];
    v15 = [v4 text_compact];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemAttribution *)self text_minimal];
  v6 = [v4 text_minimal];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBRFSummaryItemAttribution *)self text_minimal];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBRFSummaryItemAttribution *)self text_minimal];
    v20 = [v4 text_minimal];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBRFSummaryItemAttribution *)self text];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFSummaryItemAttribution *)self text_compact];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFSummaryItemAttribution *)self text_minimal];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end