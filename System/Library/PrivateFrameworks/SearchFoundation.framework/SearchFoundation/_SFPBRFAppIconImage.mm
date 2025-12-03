@interface _SFPBRFAppIconImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFAppIconImage)initWithDictionary:(id)dictionary;
- (_SFPBRFAppIconImage)initWithFacade:(id)facade;
- (_SFPBRFAppIconImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setApplication_bundle_identifier:(id)application_bundle_identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFAppIconImage

- (_SFPBRFAppIconImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFAppIconImage *)self init];
  if (v5)
  {
    application_bundle_identifier = [facadeCopy application_bundle_identifier];

    if (application_bundle_identifier)
    {
      application_bundle_identifier2 = [facadeCopy application_bundle_identifier];
      [(_SFPBRFAppIconImage *)v5 setApplication_bundle_identifier:application_bundle_identifier2];
    }

    if ([facadeCopy hasImage_style])
    {
      -[_SFPBRFAppIconImage setImage_style:](v5, "setImage_style:", [facadeCopy image_style]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFAppIconImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBRFAppIconImage;
  v5 = [(_SFPBRFAppIconImage *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFAppIconImage *)v5 setApplication_bundle_identifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"imageStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFAppIconImage setImage_style:](v5, "setImage_style:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBRFAppIconImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFAppIconImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFAppIconImage *)self dictionaryRepresentation];
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
  if (self->_application_bundle_identifier)
  {
    application_bundle_identifier = [(_SFPBRFAppIconImage *)self application_bundle_identifier];
    v5 = [application_bundle_identifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_image_style)
  {
    image_style = [(_SFPBRFAppIconImage *)self image_style];
    if (image_style < 0x2A && ((0x3FFDFFFFFFFuLL >> image_style) & 1) != 0)
    {
      v7 = off_1E7ACE270[image_style];
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", image_style];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"imageStyle"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    application_bundle_identifier = [(_SFPBRFAppIconImage *)self application_bundle_identifier];
    application_bundle_identifier2 = [equalCopy application_bundle_identifier];
    v7 = application_bundle_identifier2;
    if ((application_bundle_identifier != 0) != (application_bundle_identifier2 == 0))
    {
      application_bundle_identifier3 = [(_SFPBRFAppIconImage *)self application_bundle_identifier];
      if (!application_bundle_identifier3)
      {

LABEL_10:
        image_style = self->_image_style;
        v13 = image_style == [equalCopy image_style];
        goto LABEL_8;
      }

      v9 = application_bundle_identifier3;
      application_bundle_identifier4 = [(_SFPBRFAppIconImage *)self application_bundle_identifier];
      application_bundle_identifier5 = [equalCopy application_bundle_identifier];
      v12 = [application_bundle_identifier4 isEqual:application_bundle_identifier5];

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
  application_bundle_identifier = [(_SFPBRFAppIconImage *)self application_bundle_identifier];
  if (application_bundle_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRFAppIconImage *)self image_style])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setApplication_bundle_identifier:(id)application_bundle_identifier
{
  v4 = [application_bundle_identifier copy];
  application_bundle_identifier = self->_application_bundle_identifier;
  self->_application_bundle_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end