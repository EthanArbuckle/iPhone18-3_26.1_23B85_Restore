@interface _SFPBRFShowMoreOnTap
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFShowMoreOnTap)initWithDictionary:(id)dictionary;
- (_SFPBRFShowMoreOnTap)initWithFacade:(id)facade;
- (_SFPBRFShowMoreOnTap)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setAffordanceLabel:(id)label;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFShowMoreOnTap

- (_SFPBRFShowMoreOnTap)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFShowMoreOnTap *)self init];
  if (v5)
  {
    affordanceLabel = [facadeCopy affordanceLabel];

    if (affordanceLabel)
    {
      affordanceLabel2 = [facadeCopy affordanceLabel];
      [(_SFPBRFShowMoreOnTap *)v5 setAffordanceLabel:affordanceLabel2];
    }

    shows_without_truncation = [facadeCopy shows_without_truncation];

    if (shows_without_truncation)
    {
      v9 = [_SFPBRFOptionalBool alloc];
      shows_without_truncation2 = [facadeCopy shows_without_truncation];
      v11 = [(_SFPBRFOptionalBool *)v9 initWithFacade:shows_without_truncation2];
      [(_SFPBRFShowMoreOnTap *)v5 setShows_without_truncation:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFShowMoreOnTap)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRFShowMoreOnTap;
  v5 = [(_SFPBRFShowMoreOnTap *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"affordanceLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFShowMoreOnTap *)v5 setAffordanceLabel:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"showsWithoutTruncation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFOptionalBool alloc] initWithDictionary:v8];
      [(_SFPBRFShowMoreOnTap *)v5 setShows_without_truncation:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFShowMoreOnTap)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFShowMoreOnTap *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFShowMoreOnTap *)self dictionaryRepresentation];
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
  if (self->_affordanceLabel)
  {
    affordanceLabel = [(_SFPBRFShowMoreOnTap *)self affordanceLabel];
    v5 = [affordanceLabel copy];
    [dictionary setObject:v5 forKeyedSubscript:@"affordanceLabel"];
  }

  if (self->_shows_without_truncation)
  {
    shows_without_truncation = [(_SFPBRFShowMoreOnTap *)self shows_without_truncation];
    dictionaryRepresentation = [shows_without_truncation dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"showsWithoutTruncation"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"showsWithoutTruncation"];
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

  affordanceLabel = [(_SFPBRFShowMoreOnTap *)self affordanceLabel];
  affordanceLabel2 = [equalCopy affordanceLabel];
  if ((affordanceLabel != 0) == (affordanceLabel2 == 0))
  {
    goto LABEL_11;
  }

  affordanceLabel3 = [(_SFPBRFShowMoreOnTap *)self affordanceLabel];
  if (affordanceLabel3)
  {
    v8 = affordanceLabel3;
    affordanceLabel4 = [(_SFPBRFShowMoreOnTap *)self affordanceLabel];
    affordanceLabel5 = [equalCopy affordanceLabel];
    v11 = [affordanceLabel4 isEqual:affordanceLabel5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  affordanceLabel = [(_SFPBRFShowMoreOnTap *)self shows_without_truncation];
  affordanceLabel2 = [equalCopy shows_without_truncation];
  if ((affordanceLabel != 0) != (affordanceLabel2 == 0))
  {
    shows_without_truncation = [(_SFPBRFShowMoreOnTap *)self shows_without_truncation];
    if (!shows_without_truncation)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = shows_without_truncation;
    shows_without_truncation2 = [(_SFPBRFShowMoreOnTap *)self shows_without_truncation];
    shows_without_truncation3 = [equalCopy shows_without_truncation];
    v16 = [shows_without_truncation2 isEqual:shows_without_truncation3];

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
  affordanceLabel = [(_SFPBRFShowMoreOnTap *)self affordanceLabel];
  if (affordanceLabel)
  {
    PBDataWriterWriteStringField();
  }

  shows_without_truncation = [(_SFPBRFShowMoreOnTap *)self shows_without_truncation];
  if (shows_without_truncation)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setAffordanceLabel:(id)label
{
  v4 = [label copy];
  affordanceLabel = self->_affordanceLabel;
  self->_affordanceLabel = v4;

  MEMORY[0x1EEE66BB8]();
}

@end