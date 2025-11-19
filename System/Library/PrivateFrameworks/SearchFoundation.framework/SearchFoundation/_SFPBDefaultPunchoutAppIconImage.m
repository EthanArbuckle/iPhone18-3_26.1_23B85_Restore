@interface _SFPBDefaultPunchoutAppIconImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBDefaultPunchoutAppIconImage)initWithDictionary:(id)a3;
- (_SFPBDefaultPunchoutAppIconImage)initWithFacade:(id)a3;
- (_SFPBDefaultPunchoutAppIconImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCoreSpotlightIdentifier:(id)a3;
- (void)setFileProviderIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBDefaultPunchoutAppIconImage

- (_SFPBDefaultPunchoutAppIconImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBDefaultPunchoutAppIconImage *)self init];
  if (v5)
  {
    v6 = [v4 punchout];

    if (v6)
    {
      v7 = [_SFPBPunchout alloc];
      v8 = [v4 punchout];
      v9 = [(_SFPBPunchout *)v7 initWithFacade:v8];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setPunchout:v9];
    }

    v10 = [v4 coreSpotlightIdentifier];

    if (v10)
    {
      v11 = [v4 coreSpotlightIdentifier];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setCoreSpotlightIdentifier:v11];
    }

    v12 = [v4 fileProviderIdentifier];

    if (v12)
    {
      v13 = [v4 fileProviderIdentifier];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setFileProviderIdentifier:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBDefaultPunchoutAppIconImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBDefaultPunchoutAppIconImage;
  v5 = [(_SFPBDefaultPunchoutAppIconImage *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBPunchout alloc] initWithDictionary:v6];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setPunchout:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBDefaultPunchoutAppIconImage *)v5 setCoreSpotlightIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"fileProviderIdentifier"];
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

- (_SFPBDefaultPunchoutAppIconImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBDefaultPunchoutAppIconImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBDefaultPunchoutAppIconImage *)self dictionaryRepresentation];
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
    v4 = [(_SFPBDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_fileProviderIdentifier)
  {
    v6 = [(_SFPBDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"fileProviderIdentifier"];
  }

  if (self->_punchout)
  {
    v8 = [(_SFPBDefaultPunchoutAppIconImage *)self punchout];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"punchout"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"punchout"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBPunchout *)self->_punchout hash];
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

  v5 = [(_SFPBDefaultPunchoutAppIconImage *)self punchout];
  v6 = [v4 punchout];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBDefaultPunchoutAppIconImage *)self punchout];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBDefaultPunchoutAppIconImage *)self punchout];
    v10 = [v4 punchout];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
  v6 = [v4 coreSpotlightIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
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

  v5 = [(_SFPBDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
  v6 = [v4 fileProviderIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
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
  v4 = [(_SFPBDefaultPunchoutAppIconImage *)self punchout];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
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