@interface _SFPBRFSummaryItemAttribution
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemAttribution)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemAttribution)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemAttribution)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemAttribution

- (_SFPBRFSummaryItemAttribution)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemAttribution *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSummaryItemAttribution *)v5 setText:v9];
    }

    text_compact = [facadeCopy text_compact];

    if (text_compact)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text_compact2 = [facadeCopy text_compact];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text_compact2];
      [(_SFPBRFSummaryItemAttribution *)v5 setText_compact:v13];
    }

    text_minimal = [facadeCopy text_minimal];

    if (text_minimal)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text_minimal2 = [facadeCopy text_minimal];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text_minimal2];
      [(_SFPBRFSummaryItemAttribution *)v5 setText_minimal:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemAttribution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBRFSummaryItemAttribution;
  v5 = [(_SFPBRFSummaryItemAttribution *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemAttribution *)v5 setText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"textCompact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemAttribution *)v5 setText_compact:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"textMinimal"];
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

- (_SFPBRFSummaryItemAttribution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemAttribution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemAttribution *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_text)
  {
    text = [(_SFPBRFSummaryItemAttribution *)self text];
    dictionaryRepresentation = [text dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"text"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"text"];
    }
  }

  if (self->_text_compact)
  {
    text_compact = [(_SFPBRFSummaryItemAttribution *)self text_compact];
    dictionaryRepresentation2 = [text_compact dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"textCompact"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"textCompact"];
    }
  }

  if (self->_text_minimal)
  {
    text_minimal = [(_SFPBRFSummaryItemAttribution *)self text_minimal];
    dictionaryRepresentation3 = [text_minimal dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"textMinimal"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"textMinimal"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_compact hash]^ v3;
  return v4 ^ [(_SFPBRFTextProperty *)self->_text_minimal hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  text = [(_SFPBRFSummaryItemAttribution *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_16;
  }

  text3 = [(_SFPBRFSummaryItemAttribution *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSummaryItemAttribution *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemAttribution *)self text_compact];
  text2 = [equalCopy text_compact];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_16;
  }

  text_compact = [(_SFPBRFSummaryItemAttribution *)self text_compact];
  if (text_compact)
  {
    v13 = text_compact;
    text_compact2 = [(_SFPBRFSummaryItemAttribution *)self text_compact];
    text_compact3 = [equalCopy text_compact];
    v16 = [text_compact2 isEqual:text_compact3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemAttribution *)self text_minimal];
  text2 = [equalCopy text_minimal];
  if ((text != 0) != (text2 == 0))
  {
    text_minimal = [(_SFPBRFSummaryItemAttribution *)self text_minimal];
    if (!text_minimal)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = text_minimal;
    text_minimal2 = [(_SFPBRFSummaryItemAttribution *)self text_minimal];
    text_minimal3 = [equalCopy text_minimal];
    v21 = [text_minimal2 isEqual:text_minimal3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_SFPBRFSummaryItemAttribution *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text_compact = [(_SFPBRFSummaryItemAttribution *)self text_compact];
  if (text_compact)
  {
    PBDataWriterWriteSubmessage();
  }

  text_minimal = [(_SFPBRFSummaryItemAttribution *)self text_minimal];
  if (text_minimal)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end