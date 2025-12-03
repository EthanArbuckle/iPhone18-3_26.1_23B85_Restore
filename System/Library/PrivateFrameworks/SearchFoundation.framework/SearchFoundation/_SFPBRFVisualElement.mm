@interface _SFPBRFVisualElement
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFImageElement)image_element;
- (_SFPBRFVisualElement)initWithDictionary:(id)dictionary;
- (_SFPBRFVisualElement)initWithFacade:(id)facade;
- (_SFPBRFVisualElement)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFVisualElement

- (_SFPBRFVisualElement)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFVisualElement *)self init];
  if (v5)
  {
    if ([facadeCopy hasImage_element])
    {
      image_element = [facadeCopy image_element];

      if (image_element)
      {
        v7 = [_SFPBRFImageElement alloc];
        image_element2 = [facadeCopy image_element];
        v9 = [(_SFPBRFImageElement *)v7 initWithFacade:image_element2];
        [(_SFPBRFVisualElement *)v5 setImage_element:v9];
      }
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFVisualElement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBRFVisualElement;
  v5 = [(_SFPBRFVisualElement *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"imageElement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFImageElement alloc] initWithDictionary:v6];
      [(_SFPBRFVisualElement *)v5 setImage_element:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFVisualElement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFVisualElement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFVisualElement *)self dictionaryRepresentation];
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
  if (self->_image_element)
  {
    image_element = [(_SFPBRFVisualElement *)self image_element];
    dictionaryRepresentation = [image_element dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"imageElement"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"imageElement"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    image_element = [(_SFPBRFVisualElement *)self image_element];
    image_element2 = [equalCopy image_element];
    v7 = image_element2;
    if ((image_element != 0) != (image_element2 == 0))
    {
      image_element3 = [(_SFPBRFVisualElement *)self image_element];
      if (!image_element3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = image_element3;
      image_element4 = [(_SFPBRFVisualElement *)self image_element];
      image_element5 = [equalCopy image_element];
      v12 = [image_element4 isEqual:image_element5];

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
  image_element = [(_SFPBRFVisualElement *)self image_element];
  if (image_element)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBRFImageElement)image_element
{
  if (self->_whichElement == 1)
  {
    v3 = self->_image_element;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end