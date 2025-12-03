@interface _SFPBQuickLookThumbnailImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBQuickLookThumbnailImage)initWithDictionary:(id)dictionary;
- (_SFPBQuickLookThumbnailImage)initWithFacade:(id)facade;
- (_SFPBQuickLookThumbnailImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCoreSpotlightIdentifier:(id)identifier;
- (void)setFileProviderIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBQuickLookThumbnailImage

- (_SFPBQuickLookThumbnailImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBQuickLookThumbnailImage *)self init];
  if (v5)
  {
    filePath = [facadeCopy filePath];

    if (filePath)
    {
      v7 = [_SFPBURL alloc];
      filePath2 = [facadeCopy filePath];
      v9 = [(_SFPBURL *)v7 initWithNSURL:filePath2];
      [(_SFPBQuickLookThumbnailImage *)v5 setFilePath:v9];
    }

    coreSpotlightIdentifier = [facadeCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [facadeCopy coreSpotlightIdentifier];
      [(_SFPBQuickLookThumbnailImage *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    fileProviderIdentifier = [facadeCopy fileProviderIdentifier];

    if (fileProviderIdentifier)
    {
      fileProviderIdentifier2 = [facadeCopy fileProviderIdentifier];
      [(_SFPBQuickLookThumbnailImage *)v5 setFileProviderIdentifier:fileProviderIdentifier2];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBQuickLookThumbnailImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBQuickLookThumbnailImage;
  v5 = [(_SFPBQuickLookThumbnailImage *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"filePath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBURL alloc] initWithDictionary:v6];
      [(_SFPBQuickLookThumbnailImage *)v5 setFilePath:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBQuickLookThumbnailImage *)v5 setCoreSpotlightIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"fileProviderIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBQuickLookThumbnailImage *)v5 setFileProviderIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBQuickLookThumbnailImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBQuickLookThumbnailImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBQuickLookThumbnailImage *)self dictionaryRepresentation];
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
    coreSpotlightIdentifier = [(_SFPBQuickLookThumbnailImage *)self coreSpotlightIdentifier];
    v5 = [coreSpotlightIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_filePath)
  {
    filePath = [(_SFPBQuickLookThumbnailImage *)self filePath];
    dictionaryRepresentation = [filePath dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"filePath"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"filePath"];
    }
  }

  if (self->_fileProviderIdentifier)
  {
    fileProviderIdentifier = [(_SFPBQuickLookThumbnailImage *)self fileProviderIdentifier];
    v10 = [fileProviderIdentifier copy];
    [dictionary setObject:v10 forKeyedSubscript:@"fileProviderIdentifier"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBURL *)self->_filePath hash];
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

  filePath = [(_SFPBQuickLookThumbnailImage *)self filePath];
  filePath2 = [equalCopy filePath];
  if ((filePath != 0) == (filePath2 == 0))
  {
    goto LABEL_16;
  }

  filePath3 = [(_SFPBQuickLookThumbnailImage *)self filePath];
  if (filePath3)
  {
    v8 = filePath3;
    filePath4 = [(_SFPBQuickLookThumbnailImage *)self filePath];
    filePath5 = [equalCopy filePath];
    v11 = [filePath4 isEqual:filePath5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  filePath = [(_SFPBQuickLookThumbnailImage *)self coreSpotlightIdentifier];
  filePath2 = [equalCopy coreSpotlightIdentifier];
  if ((filePath != 0) == (filePath2 == 0))
  {
    goto LABEL_16;
  }

  coreSpotlightIdentifier = [(_SFPBQuickLookThumbnailImage *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    v13 = coreSpotlightIdentifier;
    coreSpotlightIdentifier2 = [(_SFPBQuickLookThumbnailImage *)self coreSpotlightIdentifier];
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

  filePath = [(_SFPBQuickLookThumbnailImage *)self fileProviderIdentifier];
  filePath2 = [equalCopy fileProviderIdentifier];
  if ((filePath != 0) != (filePath2 == 0))
  {
    fileProviderIdentifier = [(_SFPBQuickLookThumbnailImage *)self fileProviderIdentifier];
    if (!fileProviderIdentifier)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = fileProviderIdentifier;
    fileProviderIdentifier2 = [(_SFPBQuickLookThumbnailImage *)self fileProviderIdentifier];
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
  filePath = [(_SFPBQuickLookThumbnailImage *)self filePath];
  if (filePath)
  {
    PBDataWriterWriteSubmessage();
  }

  coreSpotlightIdentifier = [(_SFPBQuickLookThumbnailImage *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  fileProviderIdentifier = [(_SFPBQuickLookThumbnailImage *)self fileProviderIdentifier];
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