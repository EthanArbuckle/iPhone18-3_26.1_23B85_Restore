@interface _SFPBRFBinaryButtonCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFBinaryButtonCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFBinaryButtonCardSection)initWithFacade:(id)facade;
- (_SFPBRFBinaryButtonCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFBinaryButtonCardSection

- (_SFPBRFBinaryButtonCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFBinaryButtonCardSection *)self init];
  if (v5)
  {
    primary_button = [facadeCopy primary_button];

    if (primary_button)
    {
      v7 = [_SFPBButtonItem alloc];
      primary_button2 = [facadeCopy primary_button];
      v9 = [(_SFPBButtonItem *)v7 initWithFacade:primary_button2];
      [(_SFPBRFBinaryButtonCardSection *)v5 setPrimary_button:v9];
    }

    secondary_button = [facadeCopy secondary_button];

    if (secondary_button)
    {
      v11 = [_SFPBButtonItem alloc];
      secondary_button2 = [facadeCopy secondary_button];
      v13 = [(_SFPBButtonItem *)v11 initWithFacade:secondary_button2];
      [(_SFPBRFBinaryButtonCardSection *)v5 setSecondary_button:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFBinaryButtonCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRFBinaryButtonCardSection;
  v5 = [(_SFPBRFBinaryButtonCardSection *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"primaryButton"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBButtonItem alloc] initWithDictionary:v6];
      [(_SFPBRFBinaryButtonCardSection *)v5 setPrimary_button:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"secondaryButton"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBButtonItem alloc] initWithDictionary:v8];
      [(_SFPBRFBinaryButtonCardSection *)v5 setSecondary_button:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFBinaryButtonCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFBinaryButtonCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFBinaryButtonCardSection *)self dictionaryRepresentation];
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
  if (self->_primary_button)
  {
    primary_button = [(_SFPBRFBinaryButtonCardSection *)self primary_button];
    dictionaryRepresentation = [primary_button dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"primaryButton"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"primaryButton"];
    }
  }

  if (self->_secondary_button)
  {
    secondary_button = [(_SFPBRFBinaryButtonCardSection *)self secondary_button];
    dictionaryRepresentation2 = [secondary_button dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"secondaryButton"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"secondaryButton"];
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

  primary_button = [(_SFPBRFBinaryButtonCardSection *)self primary_button];
  primary_button2 = [equalCopy primary_button];
  if ((primary_button != 0) == (primary_button2 == 0))
  {
    goto LABEL_11;
  }

  primary_button3 = [(_SFPBRFBinaryButtonCardSection *)self primary_button];
  if (primary_button3)
  {
    v8 = primary_button3;
    primary_button4 = [(_SFPBRFBinaryButtonCardSection *)self primary_button];
    primary_button5 = [equalCopy primary_button];
    v11 = [primary_button4 isEqual:primary_button5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  primary_button = [(_SFPBRFBinaryButtonCardSection *)self secondary_button];
  primary_button2 = [equalCopy secondary_button];
  if ((primary_button != 0) != (primary_button2 == 0))
  {
    secondary_button = [(_SFPBRFBinaryButtonCardSection *)self secondary_button];
    if (!secondary_button)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = secondary_button;
    secondary_button2 = [(_SFPBRFBinaryButtonCardSection *)self secondary_button];
    secondary_button3 = [equalCopy secondary_button];
    v16 = [secondary_button2 isEqual:secondary_button3];

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
  primary_button = [(_SFPBRFBinaryButtonCardSection *)self primary_button];
  if (primary_button)
  {
    PBDataWriterWriteSubmessage();
  }

  secondary_button = [(_SFPBRFBinaryButtonCardSection *)self secondary_button];
  if (secondary_button)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end