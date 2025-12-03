@interface _SFPBImageDerivedColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBImageDerivedColor)initWithDictionary:(id)dictionary;
- (_SFPBImageDerivedColor)initWithFacade:(id)facade;
- (_SFPBImageDerivedColor)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBImageDerivedColor

- (_SFPBImageDerivedColor)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBImageDerivedColor *)self init];
  if (v5)
  {
    image = [facadeCopy image];

    if (image)
    {
      v7 = [_SFPBImage alloc];
      image2 = [facadeCopy image];
      v9 = [(_SFPBImage *)v7 initWithFacade:image2];
      [(_SFPBImageDerivedColor *)v5 setImage:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBImageDerivedColor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBImageDerivedColor;
  v5 = [(_SFPBImageDerivedColor *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBImage alloc] initWithDictionary:v6];
      [(_SFPBImageDerivedColor *)v5 setImage:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBImageDerivedColor)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBImageDerivedColor *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBImageDerivedColor *)self dictionaryRepresentation];
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
  if (self->_image)
  {
    image = [(_SFPBImageDerivedColor *)self image];
    dictionaryRepresentation = [image dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"image"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"image"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    image = [(_SFPBImageDerivedColor *)self image];
    image2 = [equalCopy image];
    v7 = image2;
    if ((image != 0) != (image2 == 0))
    {
      image3 = [(_SFPBImageDerivedColor *)self image];
      if (!image3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = image3;
      image4 = [(_SFPBImageDerivedColor *)self image];
      image5 = [equalCopy image];
      v12 = [image4 isEqual:image5];

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
  image = [(_SFPBImageDerivedColor *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end