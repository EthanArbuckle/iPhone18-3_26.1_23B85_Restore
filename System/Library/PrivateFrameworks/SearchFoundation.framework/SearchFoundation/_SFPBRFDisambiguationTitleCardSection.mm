@interface _SFPBRFDisambiguationTitleCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFDisambiguationTitleCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFDisambiguationTitleCardSection)initWithFacade:(id)facade;
- (_SFPBRFDisambiguationTitleCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFDisambiguationTitleCardSection

- (_SFPBRFDisambiguationTitleCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFDisambiguationTitleCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFDisambiguationTitleCardSection *)v5 setText_1:v9];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v11 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v13 = [(_SFPBRFVisualProperty *)v11 initWithFacade:thumbnail2];
      [(_SFPBRFDisambiguationTitleCardSection *)v5 setThumbnail:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFDisambiguationTitleCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRFDisambiguationTitleCardSection;
  v5 = [(_SFPBRFDisambiguationTitleCardSection *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFDisambiguationTitleCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
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

- (_SFPBRFDisambiguationTitleCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFDisambiguationTitleCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFDisambiguationTitleCardSection *)self dictionaryRepresentation];
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
  if (self->_text_1)
  {
    text = [(_SFPBRFDisambiguationTitleCardSection *)self text];
    dictionaryRepresentation = [text dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"text1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"text1"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFDisambiguationTitleCardSection *)self thumbnail];
    dictionaryRepresentation2 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"thumbnail"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  text = [(_SFPBRFDisambiguationTitleCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_11;
  }

  text3 = [(_SFPBRFDisambiguationTitleCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFDisambiguationTitleCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  text = [(_SFPBRFDisambiguationTitleCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail = [(_SFPBRFDisambiguationTitleCardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = thumbnail;
    thumbnail2 = [(_SFPBRFDisambiguationTitleCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v16 = [thumbnail2 isEqual:thumbnail3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_SFPBRFDisambiguationTitleCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFDisambiguationTitleCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end