@interface _SFPBAppIconImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAppIconImage)initWithDictionary:(id)dictionary;
- (_SFPBAppIconImage)initWithFacade:(id)facade;
- (_SFPBAppIconImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setBundleIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAppIconImage

- (_SFPBAppIconImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBAppIconImage *)self init];
  if (v5)
  {
    bundleIdentifier = [facadeCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [facadeCopy bundleIdentifier];
      [(_SFPBAppIconImage *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    if ([facadeCopy hasIconType])
    {
      -[_SFPBAppIconImage setIconType:](v5, "setIconType:", [facadeCopy iconType]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBAppIconImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBAppIconImage;
  v5 = [(_SFPBAppIconImage *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBAppIconImage *)v5 setBundleIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"iconType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAppIconImage setIconType:](v5, "setIconType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBAppIconImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAppIconImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAppIconImage *)self dictionaryRepresentation];
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
  if (self->_bundleIdentifier)
  {
    bundleIdentifier = [(_SFPBAppIconImage *)self bundleIdentifier];
    v5 = [bundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_iconType)
  {
    iconType = [(_SFPBAppIconImage *)self iconType];
    if (iconType >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", iconType];
    }

    else
    {
      v7 = off_1E7ACE548[iconType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"iconType"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bundleIdentifier = [(_SFPBAppIconImage *)self bundleIdentifier];
    bundleIdentifier2 = [equalCopy bundleIdentifier];
    v7 = bundleIdentifier2;
    if ((bundleIdentifier != 0) != (bundleIdentifier2 == 0))
    {
      bundleIdentifier3 = [(_SFPBAppIconImage *)self bundleIdentifier];
      if (!bundleIdentifier3)
      {

LABEL_10:
        iconType = self->_iconType;
        v13 = iconType == [equalCopy iconType];
        goto LABEL_8;
      }

      v9 = bundleIdentifier3;
      bundleIdentifier4 = [(_SFPBAppIconImage *)self bundleIdentifier];
      bundleIdentifier5 = [equalCopy bundleIdentifier];
      v12 = [bundleIdentifier4 isEqual:bundleIdentifier5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  bundleIdentifier = [(_SFPBAppIconImage *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAppIconImage *)self iconType])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end