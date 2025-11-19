@interface _SFPBMessageAttachment
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMessageAttachment)initWithDictionary:(id)a3;
- (_SFPBMessageAttachment)initWithFacade:(id)a3;
- (_SFPBMessageAttachment)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLinkMetadata:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMessageAttachment

- (_SFPBMessageAttachment)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBMessageAttachment *)self init];
  if (v5)
  {
    if ([v4 hasType])
    {
      -[_SFPBMessageAttachment setType:](v5, "setType:", [v4 type]);
    }

    v6 = [v4 url];

    if (v6)
    {
      v7 = [_SFPBURL alloc];
      v8 = [v4 url];
      v9 = [(_SFPBURL *)v7 initWithNSURL:v8];
      [(_SFPBMessageAttachment *)v5 setUrl:v9];
    }

    v10 = [v4 linkMetadata];

    if (v10)
    {
      v11 = [v4 linkMetadata];
      [(_SFPBMessageAttachment *)v5 setLinkMetadata:v11];
    }

    v12 = [v4 photosLibraryImage];

    if (v12)
    {
      v13 = [_SFPBPhotosLibraryImage alloc];
      v14 = [v4 photosLibraryImage];
      v15 = [(_SFPBPhotosLibraryImage *)v13 initWithFacade:v14];
      [(_SFPBMessageAttachment *)v5 setPhotosLibraryImage:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBMessageAttachment)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFPBMessageAttachment;
  v5 = [(_SFPBMessageAttachment *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageAttachment setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBURL alloc] initWithDictionary:v7];
      [(_SFPBMessageAttachment *)v5 setUrl:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"linkMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      [(_SFPBMessageAttachment *)v5 setLinkMetadata:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"photosLibraryImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[_SFPBPhotosLibraryImage alloc] initWithDictionary:v11];
      [(_SFPBMessageAttachment *)v5 setPhotosLibraryImage:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBMessageAttachment)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMessageAttachment *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMessageAttachment *)self dictionaryRepresentation];
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
  if (self->_linkMetadata)
  {
    v4 = [(_SFPBMessageAttachment *)self linkMetadata];
    v5 = [v4 base64EncodedStringWithOptions:0];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"linkMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"linkMetadata"];
    }
  }

  if (self->_photosLibraryImage)
  {
    v7 = [(_SFPBMessageAttachment *)self photosLibraryImage];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"photosLibraryImage"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"photosLibraryImage"];
    }
  }

  if (self->_type)
  {
    v10 = [(_SFPBMessageAttachment *)self type];
    if (v10 >= 5)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E7ACE448[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"type"];
  }

  if (self->_url)
  {
    v12 = [(_SFPBMessageAttachment *)self url];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"url"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"url"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_type;
  v4 = [(_SFPBURL *)self->_url hash];
  v5 = v4 ^ [(NSData *)self->_linkMetadata hash];
  return v5 ^ [(_SFPBPhotosLibraryImage *)self->_photosLibraryImage hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  type = self->_type;
  if (type != [v4 type])
  {
    goto LABEL_18;
  }

  v6 = [(_SFPBMessageAttachment *)self url];
  v7 = [v4 url];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(_SFPBMessageAttachment *)self url];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBMessageAttachment *)self url];
    v11 = [v4 url];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_SFPBMessageAttachment *)self linkMetadata];
  v7 = [v4 linkMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(_SFPBMessageAttachment *)self linkMetadata];
  if (v13)
  {
    v14 = v13;
    v15 = [(_SFPBMessageAttachment *)self linkMetadata];
    v16 = [v4 linkMetadata];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_SFPBMessageAttachment *)self photosLibraryImage];
  v7 = [v4 photosLibraryImage];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(_SFPBMessageAttachment *)self photosLibraryImage];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(_SFPBMessageAttachment *)self photosLibraryImage];
    v21 = [v4 photosLibraryImage];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if ([(_SFPBMessageAttachment *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBMessageAttachment *)self url];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBMessageAttachment *)self linkMetadata];
  if (v5)
  {
    PBDataWriterWriteDataField();
  }

  v6 = [(_SFPBMessageAttachment *)self photosLibraryImage];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setLinkMetadata:(id)a3
{
  v4 = [a3 copy];
  linkMetadata = self->_linkMetadata;
  self->_linkMetadata = v4;

  MEMORY[0x1EEE66BB8]();
}

@end