@interface _SFPBOpenFileProviderItemCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBOpenFileProviderItemCommand)initWithDictionary:(id)dictionary;
- (_SFPBOpenFileProviderItemCommand)initWithFacade:(id)facade;
- (_SFPBOpenFileProviderItemCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCoreSpotlightIdentifier:(id)identifier;
- (void)setFileProviderIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBOpenFileProviderItemCommand

- (_SFPBOpenFileProviderItemCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBOpenFileProviderItemCommand *)self init];
  if (v5)
  {
    coreSpotlightIdentifier = [facadeCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [facadeCopy coreSpotlightIdentifier];
      [(_SFPBOpenFileProviderItemCommand *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    fileProviderIdentifier = [facadeCopy fileProviderIdentifier];

    if (fileProviderIdentifier)
    {
      fileProviderIdentifier2 = [facadeCopy fileProviderIdentifier];
      [(_SFPBOpenFileProviderItemCommand *)v5 setFileProviderIdentifier:fileProviderIdentifier2];
    }

    if ([facadeCopy hasShouldRevealFile])
    {
      -[_SFPBOpenFileProviderItemCommand setShouldRevealFile:](v5, "setShouldRevealFile:", [facadeCopy shouldRevealFile]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBOpenFileProviderItemCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBOpenFileProviderItemCommand;
  v5 = [(_SFPBOpenFileProviderItemCommand *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBOpenFileProviderItemCommand *)v5 setCoreSpotlightIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"fileProviderIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBOpenFileProviderItemCommand *)v5 setFileProviderIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"shouldRevealFile"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBOpenFileProviderItemCommand setShouldRevealFile:](v5, "setShouldRevealFile:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBOpenFileProviderItemCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBOpenFileProviderItemCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBOpenFileProviderItemCommand *)self dictionaryRepresentation];
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
    coreSpotlightIdentifier = [(_SFPBOpenFileProviderItemCommand *)self coreSpotlightIdentifier];
    v5 = [coreSpotlightIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_fileProviderIdentifier)
  {
    fileProviderIdentifier = [(_SFPBOpenFileProviderItemCommand *)self fileProviderIdentifier];
    v7 = [fileProviderIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"fileProviderIdentifier"];
  }

  if (self->_shouldRevealFile)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBOpenFileProviderItemCommand shouldRevealFile](self, "shouldRevealFile")}];
    [dictionary setObject:v8 forKeyedSubscript:@"shouldRevealFile"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_coreSpotlightIdentifier hash];
  v4 = [(NSString *)self->_fileProviderIdentifier hash];
  v5 = 2654435761;
  if (!self->_shouldRevealFile)
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  coreSpotlightIdentifier = [(_SFPBOpenFileProviderItemCommand *)self coreSpotlightIdentifier];
  coreSpotlightIdentifier2 = [equalCopy coreSpotlightIdentifier];
  if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  coreSpotlightIdentifier3 = [(_SFPBOpenFileProviderItemCommand *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier3)
  {
    v8 = coreSpotlightIdentifier3;
    coreSpotlightIdentifier4 = [(_SFPBOpenFileProviderItemCommand *)self coreSpotlightIdentifier];
    coreSpotlightIdentifier5 = [equalCopy coreSpotlightIdentifier];
    v11 = [coreSpotlightIdentifier4 isEqual:coreSpotlightIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  coreSpotlightIdentifier = [(_SFPBOpenFileProviderItemCommand *)self fileProviderIdentifier];
  coreSpotlightIdentifier2 = [equalCopy fileProviderIdentifier];
  if ((coreSpotlightIdentifier != 0) != (coreSpotlightIdentifier2 == 0))
  {
    fileProviderIdentifier = [(_SFPBOpenFileProviderItemCommand *)self fileProviderIdentifier];
    if (!fileProviderIdentifier)
    {

LABEL_15:
      shouldRevealFile = self->_shouldRevealFile;
      v17 = shouldRevealFile == [equalCopy shouldRevealFile];
      goto LABEL_13;
    }

    v13 = fileProviderIdentifier;
    fileProviderIdentifier2 = [(_SFPBOpenFileProviderItemCommand *)self fileProviderIdentifier];
    fileProviderIdentifier3 = [equalCopy fileProviderIdentifier];
    v16 = [fileProviderIdentifier2 isEqual:fileProviderIdentifier3];

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
  coreSpotlightIdentifier = [(_SFPBOpenFileProviderItemCommand *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  fileProviderIdentifier = [(_SFPBOpenFileProviderItemCommand *)self fileProviderIdentifier];
  if (fileProviderIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBOpenFileProviderItemCommand *)self shouldRevealFile])
  {
    PBDataWriterWriteBOOLField();
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