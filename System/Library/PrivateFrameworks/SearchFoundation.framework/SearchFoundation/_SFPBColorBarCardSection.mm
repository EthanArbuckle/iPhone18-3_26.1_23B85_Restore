@interface _SFPBColorBarCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBColorBarCardSection)initWithDictionary:(id)a3;
- (_SFPBColorBarCardSection)initWithFacade:(id)a3;
- (_SFPBColorBarCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBColorBarCardSection

- (_SFPBColorBarCardSection)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBColorBarCardSection *)self init];
  if (v5)
  {
    v6 = [v4 barColor];

    if (v6)
    {
      v7 = [_SFPBColor alloc];
      v8 = [v4 barColor];
      v9 = [(_SFPBColor *)v7 initWithFacade:v8];
      [(_SFPBColorBarCardSection *)v5 setBarColor:v9];
    }

    v10 = [v4 topText];

    if (v10)
    {
      v11 = [_SFPBRichText alloc];
      v12 = [v4 topText];
      v13 = [(_SFPBRichText *)v11 initWithFacade:v12];
      [(_SFPBColorBarCardSection *)v5 setTopText:v13];
    }

    v14 = [v4 title];

    if (v14)
    {
      v15 = [_SFPBRichText alloc];
      v16 = [v4 title];
      v17 = [(_SFPBRichText *)v15 initWithFacade:v16];
      [(_SFPBColorBarCardSection *)v5 setTitle:v17];
    }

    v18 = [v4 subtitle];

    if (v18)
    {
      v19 = [_SFPBRichText alloc];
      v20 = [v4 subtitle];
      v21 = [(_SFPBRichText *)v19 initWithFacade:v20];
      [(_SFPBColorBarCardSection *)v5 setSubtitle:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBColorBarCardSection)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _SFPBColorBarCardSection;
  v5 = [(_SFPBColorBarCardSection *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"barColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBColor alloc] initWithDictionary:v6];
      [(_SFPBColorBarCardSection *)v5 setBarColor:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"topText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRichText alloc] initWithDictionary:v8];
      [(_SFPBColorBarCardSection *)v5 setTopText:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRichText alloc] initWithDictionary:v10];
      [(_SFPBColorBarCardSection *)v5 setTitle:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRichText alloc] initWithDictionary:v12];
      [(_SFPBColorBarCardSection *)v5 setSubtitle:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBColorBarCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBColorBarCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBColorBarCardSection *)self dictionaryRepresentation];
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
  if (self->_barColor)
  {
    v4 = [(_SFPBColorBarCardSection *)self barColor];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"barColor"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"barColor"];
    }
  }

  if (self->_subtitle)
  {
    v7 = [(_SFPBColorBarCardSection *)self subtitle];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    v10 = [(_SFPBColorBarCardSection *)self title];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"title"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"title"];
    }
  }

  if (self->_topText)
  {
    v13 = [(_SFPBColorBarCardSection *)self topText];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"topText"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"topText"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBColor *)self->_barColor hash];
  v4 = [(_SFPBRichText *)self->_topText hash]^ v3;
  v5 = [(_SFPBRichText *)self->_title hash];
  return v4 ^ v5 ^ [(_SFPBRichText *)self->_subtitle hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_SFPBColorBarCardSection *)self barColor];
  v6 = [v4 barColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_SFPBColorBarCardSection *)self barColor];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBColorBarCardSection *)self barColor];
    v10 = [v4 barColor];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColorBarCardSection *)self topText];
  v6 = [v4 topText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_SFPBColorBarCardSection *)self topText];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBColorBarCardSection *)self topText];
    v15 = [v4 topText];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColorBarCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_SFPBColorBarCardSection *)self title];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBColorBarCardSection *)self title];
    v20 = [v4 title];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBColorBarCardSection *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_SFPBColorBarCardSection *)self subtitle];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_SFPBColorBarCardSection *)self subtitle];
    v25 = [v4 subtitle];
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
  v4 = [(_SFPBColorBarCardSection *)self barColor];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBColorBarCardSection *)self topText];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBColorBarCardSection *)self title];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBColorBarCardSection *)self subtitle];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end