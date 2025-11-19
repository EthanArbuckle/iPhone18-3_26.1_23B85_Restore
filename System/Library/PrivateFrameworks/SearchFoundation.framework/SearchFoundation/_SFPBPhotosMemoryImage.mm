@interface _SFPBPhotosMemoryImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPhotosMemoryImage)initWithDictionary:(id)a3;
- (_SFPBPhotosMemoryImage)initWithFacade:(id)a3;
- (_SFPBPhotosMemoryImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)setMemoryIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPhotosMemoryImage

- (_SFPBPhotosMemoryImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPhotosMemoryImage *)self init];
  if (v5)
  {
    v6 = [v4 memoryIdentifier];

    if (v6)
    {
      v7 = [v4 memoryIdentifier];
      [(_SFPBPhotosMemoryImage *)v5 setMemoryIdentifier:v7];
    }

    v8 = [v4 applicationBundleIdentifier];

    if (v8)
    {
      v9 = [v4 applicationBundleIdentifier];
      [(_SFPBPhotosMemoryImage *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBPhotosMemoryImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBPhotosMemoryImage;
  v5 = [(_SFPBPhotosMemoryImage *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"memoryIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPhotosMemoryImage *)v5 setMemoryIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"applicationBundleIdentifier"];
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

- (_SFPBPhotosMemoryImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPhotosMemoryImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPhotosMemoryImage *)self dictionaryRepresentation];
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
  if (self->_applicationBundleIdentifier)
  {
    v4 = [(_SFPBPhotosMemoryImage *)self applicationBundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_memoryIdentifier)
  {
    v6 = [(_SFPBPhotosMemoryImage *)self memoryIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"memoryIdentifier"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBPhotosMemoryImage *)self memoryIdentifier];
  v6 = [v4 memoryIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBPhotosMemoryImage *)self memoryIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPhotosMemoryImage *)self memoryIdentifier];
    v10 = [v4 memoryIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPhotosMemoryImage *)self applicationBundleIdentifier];
  v6 = [v4 applicationBundleIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBPhotosMemoryImage *)self applicationBundleIdentifier];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBPhotosMemoryImage *)self applicationBundleIdentifier];
    v15 = [v4 applicationBundleIdentifier];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_SFPBPhotosMemoryImage *)self memoryIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBPhotosMemoryImage *)self applicationBundleIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setApplicationBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMemoryIdentifier:(id)a3
{
  v4 = [a3 copy];
  memoryIdentifier = self->_memoryIdentifier;
  self->_memoryIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end