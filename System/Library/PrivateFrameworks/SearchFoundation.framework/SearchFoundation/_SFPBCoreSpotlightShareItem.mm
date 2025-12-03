@interface _SFPBCoreSpotlightShareItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCoreSpotlightShareItem)initWithDictionary:(id)dictionary;
- (_SFPBCoreSpotlightShareItem)initWithFacade:(id)facade;
- (_SFPBCoreSpotlightShareItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setCoreSpotlightIdentifier:(id)identifier;
- (void)setShareProviderTypeIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCoreSpotlightShareItem

- (_SFPBCoreSpotlightShareItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCoreSpotlightShareItem *)self init];
  if (v5)
  {
    shareProviderTypeIdentifier = [facadeCopy shareProviderTypeIdentifier];

    if (shareProviderTypeIdentifier)
    {
      shareProviderTypeIdentifier2 = [facadeCopy shareProviderTypeIdentifier];
      [(_SFPBCoreSpotlightShareItem *)v5 setShareProviderTypeIdentifier:shareProviderTypeIdentifier2];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBCoreSpotlightShareItem *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    coreSpotlightIdentifier = [facadeCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [facadeCopy coreSpotlightIdentifier];
      [(_SFPBCoreSpotlightShareItem *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCoreSpotlightShareItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBCoreSpotlightShareItem;
  v5 = [(_SFPBCoreSpotlightShareItem *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"shareProviderTypeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCoreSpotlightShareItem *)v5 setShareProviderTypeIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBCoreSpotlightShareItem *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBCoreSpotlightShareItem *)v5 setCoreSpotlightIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCoreSpotlightShareItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCoreSpotlightShareItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCoreSpotlightShareItem *)self dictionaryRepresentation];
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
  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBCoreSpotlightShareItem *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_coreSpotlightIdentifier)
  {
    coreSpotlightIdentifier = [(_SFPBCoreSpotlightShareItem *)self coreSpotlightIdentifier];
    v7 = [coreSpotlightIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_shareProviderTypeIdentifier)
  {
    shareProviderTypeIdentifier = [(_SFPBCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
    v9 = [shareProviderTypeIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"shareProviderTypeIdentifier"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_shareProviderTypeIdentifier hash];
  v4 = [(NSString *)self->_applicationBundleIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_coreSpotlightIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  shareProviderTypeIdentifier = [(_SFPBCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
  shareProviderTypeIdentifier2 = [equalCopy shareProviderTypeIdentifier];
  if ((shareProviderTypeIdentifier != 0) == (shareProviderTypeIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  shareProviderTypeIdentifier3 = [(_SFPBCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
  if (shareProviderTypeIdentifier3)
  {
    v8 = shareProviderTypeIdentifier3;
    shareProviderTypeIdentifier4 = [(_SFPBCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
    shareProviderTypeIdentifier5 = [equalCopy shareProviderTypeIdentifier];
    v11 = [shareProviderTypeIdentifier4 isEqual:shareProviderTypeIdentifier5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  shareProviderTypeIdentifier = [(_SFPBCoreSpotlightShareItem *)self applicationBundleIdentifier];
  shareProviderTypeIdentifier2 = [equalCopy applicationBundleIdentifier];
  if ((shareProviderTypeIdentifier != 0) == (shareProviderTypeIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  applicationBundleIdentifier = [(_SFPBCoreSpotlightShareItem *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    v13 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBCoreSpotlightShareItem *)self applicationBundleIdentifier];
    applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
    v16 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  shareProviderTypeIdentifier = [(_SFPBCoreSpotlightShareItem *)self coreSpotlightIdentifier];
  shareProviderTypeIdentifier2 = [equalCopy coreSpotlightIdentifier];
  if ((shareProviderTypeIdentifier != 0) != (shareProviderTypeIdentifier2 == 0))
  {
    coreSpotlightIdentifier = [(_SFPBCoreSpotlightShareItem *)self coreSpotlightIdentifier];
    if (!coreSpotlightIdentifier)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = coreSpotlightIdentifier;
    coreSpotlightIdentifier2 = [(_SFPBCoreSpotlightShareItem *)self coreSpotlightIdentifier];
    coreSpotlightIdentifier3 = [equalCopy coreSpotlightIdentifier];
    v21 = [coreSpotlightIdentifier2 isEqual:coreSpotlightIdentifier3];

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
  shareProviderTypeIdentifier = [(_SFPBCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
  if (shareProviderTypeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  applicationBundleIdentifier = [(_SFPBCoreSpotlightShareItem *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  coreSpotlightIdentifier = [(_SFPBCoreSpotlightShareItem *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setCoreSpotlightIdentifier:(id)identifier
{
  v4 = [identifier copy];
  coreSpotlightIdentifier = self->_coreSpotlightIdentifier;
  self->_coreSpotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setShareProviderTypeIdentifier:(id)identifier
{
  v4 = [identifier copy];
  shareProviderTypeIdentifier = self->_shareProviderTypeIdentifier;
  self->_shareProviderTypeIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end