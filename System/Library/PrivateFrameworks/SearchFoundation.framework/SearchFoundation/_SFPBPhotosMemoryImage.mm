@interface _SFPBPhotosMemoryImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPhotosMemoryImage)initWithDictionary:(id)dictionary;
- (_SFPBPhotosMemoryImage)initWithFacade:(id)facade;
- (_SFPBPhotosMemoryImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setMemoryIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPhotosMemoryImage

- (_SFPBPhotosMemoryImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPhotosMemoryImage *)self init];
  if (v5)
  {
    memoryIdentifier = [facadeCopy memoryIdentifier];

    if (memoryIdentifier)
    {
      memoryIdentifier2 = [facadeCopy memoryIdentifier];
      [(_SFPBPhotosMemoryImage *)v5 setMemoryIdentifier:memoryIdentifier2];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBPhotosMemoryImage *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBPhotosMemoryImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBPhotosMemoryImage;
  v5 = [(_SFPBPhotosMemoryImage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"memoryIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPhotosMemoryImage *)v5 setMemoryIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPhotosMemoryImage *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBPhotosMemoryImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPhotosMemoryImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPhotosMemoryImage *)self dictionaryRepresentation];
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
    applicationBundleIdentifier = [(_SFPBPhotosMemoryImage *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_memoryIdentifier)
  {
    memoryIdentifier = [(_SFPBPhotosMemoryImage *)self memoryIdentifier];
    v7 = [memoryIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"memoryIdentifier"];
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

  memoryIdentifier = [(_SFPBPhotosMemoryImage *)self memoryIdentifier];
  memoryIdentifier2 = [equalCopy memoryIdentifier];
  if ((memoryIdentifier != 0) == (memoryIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  memoryIdentifier3 = [(_SFPBPhotosMemoryImage *)self memoryIdentifier];
  if (memoryIdentifier3)
  {
    v8 = memoryIdentifier3;
    memoryIdentifier4 = [(_SFPBPhotosMemoryImage *)self memoryIdentifier];
    memoryIdentifier5 = [equalCopy memoryIdentifier];
    v11 = [memoryIdentifier4 isEqual:memoryIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  memoryIdentifier = [(_SFPBPhotosMemoryImage *)self applicationBundleIdentifier];
  memoryIdentifier2 = [equalCopy applicationBundleIdentifier];
  if ((memoryIdentifier != 0) != (memoryIdentifier2 == 0))
  {
    applicationBundleIdentifier = [(_SFPBPhotosMemoryImage *)self applicationBundleIdentifier];
    if (!applicationBundleIdentifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBPhotosMemoryImage *)self applicationBundleIdentifier];
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
  memoryIdentifier = [(_SFPBPhotosMemoryImage *)self memoryIdentifier];
  if (memoryIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  applicationBundleIdentifier = [(_SFPBPhotosMemoryImage *)self applicationBundleIdentifier];
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

- (void)setMemoryIdentifier:(id)identifier
{
  v4 = [identifier copy];
  memoryIdentifier = self->_memoryIdentifier;
  self->_memoryIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end