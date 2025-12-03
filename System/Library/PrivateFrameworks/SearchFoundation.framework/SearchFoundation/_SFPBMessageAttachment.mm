@interface _SFPBMessageAttachment
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMessageAttachment)initWithDictionary:(id)dictionary;
- (_SFPBMessageAttachment)initWithFacade:(id)facade;
- (_SFPBMessageAttachment)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLinkMetadata:(id)metadata;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMessageAttachment

- (_SFPBMessageAttachment)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBMessageAttachment *)self init];
  if (v5)
  {
    if ([facadeCopy hasType])
    {
      -[_SFPBMessageAttachment setType:](v5, "setType:", [facadeCopy type]);
    }

    v6 = [facadeCopy url];

    if (v6)
    {
      v7 = [_SFPBURL alloc];
      v8 = [facadeCopy url];
      v9 = [(_SFPBURL *)v7 initWithNSURL:v8];
      [(_SFPBMessageAttachment *)v5 setUrl:v9];
    }

    linkMetadata = [facadeCopy linkMetadata];

    if (linkMetadata)
    {
      linkMetadata2 = [facadeCopy linkMetadata];
      [(_SFPBMessageAttachment *)v5 setLinkMetadata:linkMetadata2];
    }

    photosLibraryImage = [facadeCopy photosLibraryImage];

    if (photosLibraryImage)
    {
      v13 = [_SFPBPhotosLibraryImage alloc];
      photosLibraryImage2 = [facadeCopy photosLibraryImage];
      v15 = [(_SFPBPhotosLibraryImage *)v13 initWithFacade:photosLibraryImage2];
      [(_SFPBMessageAttachment *)v5 setPhotosLibraryImage:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBMessageAttachment)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBMessageAttachment;
  v5 = [(_SFPBMessageAttachment *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageAttachment setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBURL alloc] initWithDictionary:v7];
      [(_SFPBMessageAttachment *)v5 setUrl:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"linkMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      [(_SFPBMessageAttachment *)v5 setLinkMetadata:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"photosLibraryImage"];
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

- (_SFPBMessageAttachment)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMessageAttachment *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMessageAttachment *)self dictionaryRepresentation];
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
  if (self->_linkMetadata)
  {
    linkMetadata = [(_SFPBMessageAttachment *)self linkMetadata];
    v5 = [linkMetadata base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"linkMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkMetadata"];
    }
  }

  if (self->_photosLibraryImage)
  {
    photosLibraryImage = [(_SFPBMessageAttachment *)self photosLibraryImage];
    dictionaryRepresentation = [photosLibraryImage dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"photosLibraryImage"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"photosLibraryImage"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBMessageAttachment *)self type];
    if (type >= 5)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v11 = off_1E7ACE448[type];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"type"];
  }

  if (self->_url)
  {
    v12 = [(_SFPBMessageAttachment *)self url];
    dictionaryRepresentation2 = [v12 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"url"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"url"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_type;
  v4 = [(_SFPBURL *)self->_url hash];
  v5 = v4 ^ [(NSData *)self->_linkMetadata hash];
  return v5 ^ [(_SFPBPhotosLibraryImage *)self->_photosLibraryImage hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  type = self->_type;
  if (type != [equalCopy type])
  {
    goto LABEL_18;
  }

  linkMetadata = [(_SFPBMessageAttachment *)self url];
  linkMetadata2 = [equalCopy url];
  if ((linkMetadata != 0) == (linkMetadata2 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(_SFPBMessageAttachment *)self url];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBMessageAttachment *)self url];
    v11 = [equalCopy url];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  linkMetadata = [(_SFPBMessageAttachment *)self linkMetadata];
  linkMetadata2 = [equalCopy linkMetadata];
  if ((linkMetadata != 0) == (linkMetadata2 == 0))
  {
    goto LABEL_17;
  }

  linkMetadata3 = [(_SFPBMessageAttachment *)self linkMetadata];
  if (linkMetadata3)
  {
    v14 = linkMetadata3;
    linkMetadata4 = [(_SFPBMessageAttachment *)self linkMetadata];
    linkMetadata5 = [equalCopy linkMetadata];
    v17 = [linkMetadata4 isEqual:linkMetadata5];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  linkMetadata = [(_SFPBMessageAttachment *)self photosLibraryImage];
  linkMetadata2 = [equalCopy photosLibraryImage];
  if ((linkMetadata != 0) != (linkMetadata2 == 0))
  {
    photosLibraryImage = [(_SFPBMessageAttachment *)self photosLibraryImage];
    if (!photosLibraryImage)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = photosLibraryImage;
    photosLibraryImage2 = [(_SFPBMessageAttachment *)self photosLibraryImage];
    photosLibraryImage3 = [equalCopy photosLibraryImage];
    v22 = [photosLibraryImage2 isEqual:photosLibraryImage3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBMessageAttachment *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBMessageAttachment *)self url];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  linkMetadata = [(_SFPBMessageAttachment *)self linkMetadata];
  if (linkMetadata)
  {
    PBDataWriterWriteDataField();
  }

  photosLibraryImage = [(_SFPBMessageAttachment *)self photosLibraryImage];
  if (photosLibraryImage)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setLinkMetadata:(id)metadata
{
  v4 = [metadata copy];
  linkMetadata = self->_linkMetadata;
  self->_linkMetadata = v4;

  MEMORY[0x1EEE66BB8]();
}

@end