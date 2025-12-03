@interface _SFPBLocalImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBLocalImage)initWithDictionary:(id)dictionary;
- (_SFPBLocalImage)initWithFacade:(id)facade;
- (_SFPBLocalImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBLocalImage

- (_SFPBLocalImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBLocalImage *)self init];
  if (v5)
  {
    if ([facadeCopy hasLocalImageType])
    {
      -[_SFPBLocalImage setLocalImageType:](v5, "setLocalImageType:", [facadeCopy localImageType]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBLocalImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _SFPBLocalImage;
  v5 = [(_SFPBLocalImage *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"localImageType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLocalImage setLocalImageType:](v5, "setLocalImageType:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBLocalImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBLocalImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBLocalImage *)self dictionaryRepresentation];
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
  if (self->_localImageType)
  {
    localImageType = [(_SFPBLocalImage *)self localImageType];
    if (localImageType >= 5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", localImageType];
    }

    else
    {
      v5 = off_1E7ACE448[localImageType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"localImageType"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    localImageType = self->_localImageType;
    v6 = localImageType == [equalCopy localImageType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBLocalImage *)self localImageType])
  {
    PBDataWriterWriteInt32Field();
  }
}

@end