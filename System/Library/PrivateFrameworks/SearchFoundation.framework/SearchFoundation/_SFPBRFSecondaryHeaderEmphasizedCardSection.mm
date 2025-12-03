@interface _SFPBRFSecondaryHeaderEmphasizedCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSecondaryHeaderEmphasizedCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSecondaryHeaderEmphasizedCardSection)initWithFacade:(id)facade;
- (_SFPBRFSecondaryHeaderEmphasizedCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSecondaryHeaderEmphasizedCardSection

- (_SFPBRFSecondaryHeaderEmphasizedCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)v5 setText_1:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFSecondaryHeaderEmphasizedCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBRFSecondaryHeaderEmphasizedCardSection;
  v5 = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)v5 setText_1:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFSecondaryHeaderEmphasizedCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)self dictionaryRepresentation];
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
    text = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)self text];
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

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    text = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)self text];
    text2 = [equalCopy text];
    v7 = text2;
    if ((text != 0) != (text2 == 0))
    {
      text3 = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)self text];
      if (!text3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = text3;
      text4 = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)self text];
      text5 = [equalCopy text];
      v12 = [text4 isEqual:text5];

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
  text = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end