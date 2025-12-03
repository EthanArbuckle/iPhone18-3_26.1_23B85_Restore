@interface _SFPBShowSFCardCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBShowSFCardCommand)initWithDictionary:(id)dictionary;
- (_SFPBShowSFCardCommand)initWithFacade:(id)facade;
- (_SFPBShowSFCardCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBShowSFCardCommand

- (_SFPBShowSFCardCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBShowSFCardCommand *)self init];
  if (v5)
  {
    card = [facadeCopy card];

    if (card)
    {
      v7 = [_SFPBCard alloc];
      card2 = [facadeCopy card];
      v9 = [(_SFPBCard *)v7 initWithFacade:card2];
      [(_SFPBShowSFCardCommand *)v5 setCard:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBShowSFCardCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBShowSFCardCommand;
  v5 = [(_SFPBShowSFCardCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"card"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCard alloc] initWithDictionary:v6];
      [(_SFPBShowSFCardCommand *)v5 setCard:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBShowSFCardCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBShowSFCardCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBShowSFCardCommand *)self dictionaryRepresentation];
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
  if (self->_card)
  {
    card = [(_SFPBShowSFCardCommand *)self card];
    dictionaryRepresentation = [card dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"card"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"card"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    card = [(_SFPBShowSFCardCommand *)self card];
    card2 = [equalCopy card];
    v7 = card2;
    if ((card != 0) != (card2 == 0))
    {
      card3 = [(_SFPBShowSFCardCommand *)self card];
      if (!card3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = card3;
      card4 = [(_SFPBShowSFCardCommand *)self card];
      card5 = [equalCopy card];
      v12 = [card4 isEqual:card5];

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
  card = [(_SFPBShowSFCardCommand *)self card];
  if (card)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end