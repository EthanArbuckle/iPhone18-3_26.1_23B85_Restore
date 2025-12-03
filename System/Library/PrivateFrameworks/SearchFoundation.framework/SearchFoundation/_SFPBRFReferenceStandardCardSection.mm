@interface _SFPBRFReferenceStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFReferenceStandardCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFReferenceStandardCardSection)initWithFacade:(id)facade;
- (_SFPBRFReferenceStandardCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFReferenceStandardCardSection

- (_SFPBRFReferenceStandardCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFReferenceStandardCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFReferenceStandardCardSection *)v5 setText_1:v9];
    }

    if ([facadeCopy hasAddTint])
    {
      -[_SFPBRFReferenceStandardCardSection setAddTint:](v5, "setAddTint:", [facadeCopy addTint]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFReferenceStandardCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBRFReferenceStandardCardSection;
  v5 = [(_SFPBRFReferenceStandardCardSection *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFReferenceStandardCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"addTint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFReferenceStandardCardSection setAddTint:](v5, "setAddTint:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBRFReferenceStandardCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFReferenceStandardCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFReferenceStandardCardSection *)self dictionaryRepresentation];
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
  if (self->_addTint)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFReferenceStandardCardSection addTint](self, "addTint")}];
    [dictionary setObject:v4 forKeyedSubscript:@"addTint"];
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFReferenceStandardCardSection *)self text];
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

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = 2654435761;
  if (!self->_addTint)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    text = [(_SFPBRFReferenceStandardCardSection *)self text];
    text2 = [equalCopy text];
    v7 = text2;
    if ((text != 0) != (text2 == 0))
    {
      text3 = [(_SFPBRFReferenceStandardCardSection *)self text];
      if (!text3)
      {

LABEL_10:
        addTint = self->_addTint;
        v13 = addTint == [equalCopy addTint];
        goto LABEL_8;
      }

      v9 = text3;
      text4 = [(_SFPBRFReferenceStandardCardSection *)self text];
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
  text = [(_SFPBRFReferenceStandardCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFReferenceStandardCardSection *)self addTint])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end