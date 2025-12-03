@interface _SFPBRFReferenceItemButtonCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFReferenceItemButtonCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFReferenceItemButtonCardSection)initWithFacade:(id)facade;
- (_SFPBRFReferenceItemButtonCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFReferenceItemButtonCardSection

- (_SFPBRFReferenceItemButtonCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFReferenceItemButtonCardSection *)self init];
  if (v5)
  {
    button = [facadeCopy button];

    if (button)
    {
      v7 = [_SFPBButtonItem alloc];
      button2 = [facadeCopy button];
      v9 = [(_SFPBButtonItem *)v7 initWithFacade:button2];
      [(_SFPBRFReferenceItemButtonCardSection *)v5 setButton_1:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFReferenceItemButtonCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBRFReferenceItemButtonCardSection;
  v5 = [(_SFPBRFReferenceItemButtonCardSection *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"button1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBButtonItem alloc] initWithDictionary:v6];
      [(_SFPBRFReferenceItemButtonCardSection *)v5 setButton_1:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFReferenceItemButtonCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFReferenceItemButtonCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFReferenceItemButtonCardSection *)self dictionaryRepresentation];
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
  if (self->_button_1)
  {
    button = [(_SFPBRFReferenceItemButtonCardSection *)self button];
    dictionaryRepresentation = [button dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"button1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"button1"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    button = [(_SFPBRFReferenceItemButtonCardSection *)self button];
    button2 = [equalCopy button];
    v7 = button2;
    if ((button != 0) != (button2 == 0))
    {
      button3 = [(_SFPBRFReferenceItemButtonCardSection *)self button];
      if (!button3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = button3;
      button4 = [(_SFPBRFReferenceItemButtonCardSection *)self button];
      button5 = [equalCopy button];
      v12 = [button4 isEqual:button5];

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
  button = [(_SFPBRFReferenceItemButtonCardSection *)self button];
  if (button)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end