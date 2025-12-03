@interface _SFPBDefaultPunchoutAppIconImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBDefaultPunchoutAppIconImage)initWithDictionary:(id)dictionary;
- (_SFPBDefaultPunchoutAppIconImage)initWithFacade:(id)facade;
- (_SFPBDefaultPunchoutAppIconImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCoreSpotlightIdentifier:(id)identifier;
- (void)setFileProviderIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBDefaultPunchoutAppIconImage

- (_SFPBDefaultPunchoutAppIconImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBDefaultPunchoutAppIconImage *)self init];
  if (v5)
  {
    punchout = [facadeCopy punchout];

    if (punchout)
    {
      v7 = [_SFPBPunchout alloc];
      punchout2 = [facadeCopy punchout];
      v9 = [(_SFPBPunchout *)v7 initWithFacade:punchout2];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setPunchout:v9];
    }

    coreSpotlightIdentifier = [facadeCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [facadeCopy coreSpotlightIdentifier];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    fileProviderIdentifier = [facadeCopy fileProviderIdentifier];

    if (fileProviderIdentifier)
    {
      fileProviderIdentifier2 = [facadeCopy fileProviderIdentifier];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setFileProviderIdentifier:fileProviderIdentifier2];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBDefaultPunchoutAppIconImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBDefaultPunchoutAppIconImage;
  v5 = [(_SFPBDefaultPunchoutAppIconImage *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBPunchout alloc] initWithDictionary:v6];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setPunchout:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setCoreSpotlightIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"fileProviderIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setFileProviderIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBDefaultPunchoutAppIconImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBDefaultPunchoutAppIconImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBDefaultPunchoutAppIconImage *)self dictionaryRepresentation];
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
  if (self->_coreSpotlightIdentifier)
  {
    coreSpotlightIdentifier = [(_SFPBDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
    v5 = [coreSpotlightIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_fileProviderIdentifier)
  {
    fileProviderIdentifier = [(_SFPBDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
    v7 = [fileProviderIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"fileProviderIdentifier"];
  }

  if (self->_punchout)
  {
    punchout = [(_SFPBDefaultPunchoutAppIconImage *)self punchout];
    dictionaryRepresentation = [punchout dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"punchout"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"punchout"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBPunchout *)self->_punchout hash];
  v4 = [(NSString *)self->_coreSpotlightIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_fileProviderIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  punchout = [(_SFPBDefaultPunchoutAppIconImage *)self punchout];
  punchout2 = [equalCopy punchout];
  if ((punchout != 0) == (punchout2 == 0))
  {
    goto LABEL_16;
  }

  punchout3 = [(_SFPBDefaultPunchoutAppIconImage *)self punchout];
  if (punchout3)
  {
    v8 = punchout3;
    punchout4 = [(_SFPBDefaultPunchoutAppIconImage *)self punchout];
    punchout5 = [equalCopy punchout];
    v11 = [punchout4 isEqual:punchout5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  punchout = [(_SFPBDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
  punchout2 = [equalCopy coreSpotlightIdentifier];
  if ((punchout != 0) == (punchout2 == 0))
  {
    goto LABEL_16;
  }

  coreSpotlightIdentifier = [(_SFPBDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    v13 = coreSpotlightIdentifier;
    coreSpotlightIdentifier2 = [(_SFPBDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
    coreSpotlightIdentifier3 = [equalCopy coreSpotlightIdentifier];
    v16 = [coreSpotlightIdentifier2 isEqual:coreSpotlightIdentifier3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  punchout = [(_SFPBDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
  punchout2 = [equalCopy fileProviderIdentifier];
  if ((punchout != 0) != (punchout2 == 0))
  {
    fileProviderIdentifier = [(_SFPBDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
    if (!fileProviderIdentifier)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = fileProviderIdentifier;
    fileProviderIdentifier2 = [(_SFPBDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
    fileProviderIdentifier3 = [equalCopy fileProviderIdentifier];
    v21 = [fileProviderIdentifier2 isEqual:fileProviderIdentifier3];

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
  punchout = [(_SFPBDefaultPunchoutAppIconImage *)self punchout];
  if (punchout)
  {
    PBDataWriterWriteSubmessage();
  }

  coreSpotlightIdentifier = [(_SFPBDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  fileProviderIdentifier = [(_SFPBDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
  if (fileProviderIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setFileProviderIdentifier:(id)identifier
{
  v4 = [identifier copy];
  fileProviderIdentifier = self->_fileProviderIdentifier;
  self->_fileProviderIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCoreSpotlightIdentifier:(id)identifier
{
  v4 = [identifier copy];
  coreSpotlightIdentifier = self->_coreSpotlightIdentifier;
  self->_coreSpotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end