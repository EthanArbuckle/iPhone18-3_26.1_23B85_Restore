@interface _SFPBQuickLookThumbnailImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBQuickLookThumbnailImage)initWithDictionary:(id)a3;
- (_SFPBQuickLookThumbnailImage)initWithFacade:(id)a3;
- (_SFPBQuickLookThumbnailImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCoreSpotlightIdentifier:(id)a3;
- (void)setFileProviderIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBQuickLookThumbnailImage

- (_SFPBQuickLookThumbnailImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBQuickLookThumbnailImage *)self init];
  if (v5)
  {
    v6 = [v4 filePath];

    if (v6)
    {
      v7 = [_SFPBURL alloc];
      v8 = [v4 filePath];
      v9 = [(_SFPBURL *)v7 initWithNSURL:v8];
      [(_SFPBQuickLookThumbnailImage *)v5 setFilePath:v9];
    }

    v10 = [v4 coreSpotlightIdentifier];

    if (v10)
    {
      v11 = [v4 coreSpotlightIdentifier];
      [(_SFPBQuickLookThumbnailImage *)v5 setCoreSpotlightIdentifier:v11];
    }

    v12 = [v4 fileProviderIdentifier];

    if (v12)
    {
      v13 = [v4 fileProviderIdentifier];
      [(_SFPBQuickLookThumbnailImage *)v5 setFileProviderIdentifier:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBQuickLookThumbnailImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBQuickLookThumbnailImage;
  v5 = [(_SFPBQuickLookThumbnailImage *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"filePath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBURL alloc] initWithDictionary:v6];
      [(_SFPBQuickLookThumbnailImage *)v5 setFilePath:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBQuickLookThumbnailImage *)v5 setCoreSpotlightIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"fileProviderIdentifier"];
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

- (_SFPBQuickLookThumbnailImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBQuickLookThumbnailImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBQuickLookThumbnailImage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_coreSpotlightIdentifier)
  {
    v4 = [(_SFPBQuickLookThumbnailImage *)self coreSpotlightIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_filePath)
  {
    v6 = [(_SFPBQuickLookThumbnailImage *)self filePath];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"filePath"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"filePath"];
    }
  }

  if (self->_fileProviderIdentifier)
  {
    v9 = [(_SFPBQuickLookThumbnailImage *)self fileProviderIdentifier];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"fileProviderIdentifier"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBURL *)self->_filePath hash];
  v4 = [(NSString *)self->_coreSpotlightIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_fileProviderIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBQuickLookThumbnailImage *)self filePath];
  v6 = [v4 filePath];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBQuickLookThumbnailImage *)self filePath];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBQuickLookThumbnailImage *)self filePath];
    v10 = [v4 filePath];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBQuickLookThumbnailImage *)self coreSpotlightIdentifier];
  v6 = [v4 coreSpotlightIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBQuickLookThumbnailImage *)self coreSpotlightIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBQuickLookThumbnailImage *)self coreSpotlightIdentifier];
    v15 = [v4 coreSpotlightIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBQuickLookThumbnailImage *)self fileProviderIdentifier];
  v6 = [v4 fileProviderIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBQuickLookThumbnailImage *)self fileProviderIdentifier];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBQuickLookThumbnailImage *)self fileProviderIdentifier];
    v20 = [v4 fileProviderIdentifier];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBQuickLookThumbnailImage *)self filePath];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBQuickLookThumbnailImage *)self coreSpotlightIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBQuickLookThumbnailImage *)self fileProviderIdentifier];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setFileProviderIdentifier:(id)a3
{
  v4 = [a3 copy];
  fileProviderIdentifier = self->_fileProviderIdentifier;
  self->_fileProviderIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCoreSpotlightIdentifier:(id)a3
{
  v4 = [a3 copy];
  coreSpotlightIdentifier = self->_coreSpotlightIdentifier;
  self->_coreSpotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end