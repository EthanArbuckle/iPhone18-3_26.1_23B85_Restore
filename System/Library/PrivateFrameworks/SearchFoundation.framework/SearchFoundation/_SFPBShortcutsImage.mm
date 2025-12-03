@interface _SFPBShortcutsImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBShortcutsImage)initWithDictionary:(id)dictionary;
- (_SFPBShortcutsImage)initWithFacade:(id)facade;
- (_SFPBShortcutsImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setLnPropertyIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBShortcutsImage

- (_SFPBShortcutsImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBShortcutsImage *)self init];
  if (v5)
  {
    lnPropertyIdentifier = [facadeCopy lnPropertyIdentifier];

    if (lnPropertyIdentifier)
    {
      lnPropertyIdentifier2 = [facadeCopy lnPropertyIdentifier];
      [(_SFPBShortcutsImage *)v5 setLnPropertyIdentifier:lnPropertyIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBShortcutsImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBShortcutsImage;
  v5 = [(_SFPBShortcutsImage *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"lnPropertyIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBShortcutsImage *)v5 setLnPropertyIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBShortcutsImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBShortcutsImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBShortcutsImage *)self dictionaryRepresentation];
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
  if (self->_lnPropertyIdentifier)
  {
    lnPropertyIdentifier = [(_SFPBShortcutsImage *)self lnPropertyIdentifier];
    v5 = [lnPropertyIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"lnPropertyIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    lnPropertyIdentifier = [(_SFPBShortcutsImage *)self lnPropertyIdentifier];
    lnPropertyIdentifier2 = [equalCopy lnPropertyIdentifier];
    v7 = lnPropertyIdentifier2;
    if ((lnPropertyIdentifier != 0) != (lnPropertyIdentifier2 == 0))
    {
      lnPropertyIdentifier3 = [(_SFPBShortcutsImage *)self lnPropertyIdentifier];
      if (!lnPropertyIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = lnPropertyIdentifier3;
      lnPropertyIdentifier4 = [(_SFPBShortcutsImage *)self lnPropertyIdentifier];
      lnPropertyIdentifier5 = [equalCopy lnPropertyIdentifier];
      v12 = [lnPropertyIdentifier4 isEqual:lnPropertyIdentifier5];

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
  lnPropertyIdentifier = [(_SFPBShortcutsImage *)self lnPropertyIdentifier];
  if (lnPropertyIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setLnPropertyIdentifier:(id)identifier
{
  v4 = [identifier copy];
  lnPropertyIdentifier = self->_lnPropertyIdentifier;
  self->_lnPropertyIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end