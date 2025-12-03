@interface _SFPBPhotosAlbumImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPhotosAlbumImage)initWithDictionary:(id)dictionary;
- (_SFPBPhotosAlbumImage)initWithFacade:(id)facade;
- (_SFPBPhotosAlbumImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setAlbumIdentifier:(id)identifier;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPhotosAlbumImage

- (_SFPBPhotosAlbumImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPhotosAlbumImage *)self init];
  if (v5)
  {
    albumIdentifier = [facadeCopy albumIdentifier];

    if (albumIdentifier)
    {
      albumIdentifier2 = [facadeCopy albumIdentifier];
      [(_SFPBPhotosAlbumImage *)v5 setAlbumIdentifier:albumIdentifier2];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBPhotosAlbumImage *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBPhotosAlbumImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBPhotosAlbumImage;
  v5 = [(_SFPBPhotosAlbumImage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"albumIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPhotosAlbumImage *)v5 setAlbumIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPhotosAlbumImage *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBPhotosAlbumImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPhotosAlbumImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPhotosAlbumImage *)self dictionaryRepresentation];
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
  if (self->_albumIdentifier)
  {
    albumIdentifier = [(_SFPBPhotosAlbumImage *)self albumIdentifier];
    v5 = [albumIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"albumIdentifier"];
  }

  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBPhotosAlbumImage *)self applicationBundleIdentifier];
    v7 = [applicationBundleIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"applicationBundleIdentifier"];
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

  albumIdentifier = [(_SFPBPhotosAlbumImage *)self albumIdentifier];
  albumIdentifier2 = [equalCopy albumIdentifier];
  if ((albumIdentifier != 0) == (albumIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  albumIdentifier3 = [(_SFPBPhotosAlbumImage *)self albumIdentifier];
  if (albumIdentifier3)
  {
    v8 = albumIdentifier3;
    albumIdentifier4 = [(_SFPBPhotosAlbumImage *)self albumIdentifier];
    albumIdentifier5 = [equalCopy albumIdentifier];
    v11 = [albumIdentifier4 isEqual:albumIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  albumIdentifier = [(_SFPBPhotosAlbumImage *)self applicationBundleIdentifier];
  albumIdentifier2 = [equalCopy applicationBundleIdentifier];
  if ((albumIdentifier != 0) != (albumIdentifier2 == 0))
  {
    applicationBundleIdentifier = [(_SFPBPhotosAlbumImage *)self applicationBundleIdentifier];
    if (!applicationBundleIdentifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBPhotosAlbumImage *)self applicationBundleIdentifier];
    applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
    v16 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

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
  albumIdentifier = [(_SFPBPhotosAlbumImage *)self albumIdentifier];
  if (albumIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  applicationBundleIdentifier = [(_SFPBPhotosAlbumImage *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAlbumIdentifier:(id)identifier
{
  v4 = [identifier copy];
  albumIdentifier = self->_albumIdentifier;
  self->_albumIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end