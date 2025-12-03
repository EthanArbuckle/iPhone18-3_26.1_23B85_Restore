@interface _SFPBRFReferenceItemLogoCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFReferenceItemLogoCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFReferenceItemLogoCardSection)initWithFacade:(id)facade;
- (_SFPBRFReferenceItemLogoCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFReferenceItemLogoCardSection

- (_SFPBRFReferenceItemLogoCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFReferenceItemLogoCardSection *)self init];
  if (v5)
  {
    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v7 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v9 = [(_SFPBRFVisualProperty *)v7 initWithFacade:thumbnail2];
      [(_SFPBRFReferenceItemLogoCardSection *)v5 setThumbnail:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFReferenceItemLogoCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBRFReferenceItemLogoCardSection;
  v5 = [(_SFPBRFReferenceItemLogoCardSection *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v6];
      [(_SFPBRFReferenceItemLogoCardSection *)v5 setThumbnail:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFReferenceItemLogoCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFReferenceItemLogoCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFReferenceItemLogoCardSection *)self dictionaryRepresentation];
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
  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFReferenceItemLogoCardSection *)self thumbnail];
    dictionaryRepresentation = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"thumbnail"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    thumbnail = [(_SFPBRFReferenceItemLogoCardSection *)self thumbnail];
    thumbnail2 = [equalCopy thumbnail];
    v7 = thumbnail2;
    if ((thumbnail != 0) != (thumbnail2 == 0))
    {
      thumbnail3 = [(_SFPBRFReferenceItemLogoCardSection *)self thumbnail];
      if (!thumbnail3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = thumbnail3;
      thumbnail4 = [(_SFPBRFReferenceItemLogoCardSection *)self thumbnail];
      thumbnail5 = [equalCopy thumbnail];
      v12 = [thumbnail4 isEqual:thumbnail5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  thumbnail = [(_SFPBRFReferenceItemLogoCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end