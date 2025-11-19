@interface _SFPBRFDisambiguationTitleCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFDisambiguationTitleCardSection)initWithDictionary:(id)a3;
- (_SFPBRFDisambiguationTitleCardSection)initWithFacade:(id)a3;
- (_SFPBRFDisambiguationTitleCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFDisambiguationTitleCardSection

- (_SFPBRFDisambiguationTitleCardSection)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFDisambiguationTitleCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFDisambiguationTitleCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 thumbnail];

    if (v10)
    {
      v11 = [_SFPBRFVisualProperty alloc];
      v12 = [v4 thumbnail];
      v13 = [(_SFPBRFVisualProperty *)v11 initWithFacade:v12];
      [(_SFPBRFDisambiguationTitleCardSection *)v5 setThumbnail:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFDisambiguationTitleCardSection)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBRFDisambiguationTitleCardSection;
  v5 = [(_SFPBRFDisambiguationTitleCardSection *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFDisambiguationTitleCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v8];
      [(_SFPBRFDisambiguationTitleCardSection *)v5 setThumbnail:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFDisambiguationTitleCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFDisambiguationTitleCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFDisambiguationTitleCardSection *)self dictionaryRepresentation];
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
    v4 = [(_SFPBRFDisambiguationTitleCardSection *)self text];
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

  if (self->_thumbnail)
  {
    v7 = [(_SFPBRFDisambiguationTitleCardSection *)self thumbnail];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"thumbnail"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBRFDisambiguationTitleCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBRFDisambiguationTitleCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFDisambiguationTitleCardSection *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFDisambiguationTitleCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBRFDisambiguationTitleCardSection *)self thumbnail];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBRFDisambiguationTitleCardSection *)self thumbnail];
    v15 = [v4 thumbnail];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_SFPBRFDisambiguationTitleCardSection *)self text];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFDisambiguationTitleCardSection *)self thumbnail];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end