@interface _SFPBButton
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBButton)initWithDictionary:(id)dictionary;
- (_SFPBButton)initWithFacade:(id)facade;
- (_SFPBButton)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBButton

- (_SFPBButton)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBButton *)self init];
  if (v5)
  {
    image = [facadeCopy image];

    if (image)
    {
      v7 = [_SFPBImage alloc];
      image2 = [facadeCopy image];
      v9 = [(_SFPBImage *)v7 initWithFacade:image2];
      [(_SFPBButton *)v5 setImage:v9];
    }

    selectedImage = [facadeCopy selectedImage];

    if (selectedImage)
    {
      v11 = [_SFPBImage alloc];
      selectedImage2 = [facadeCopy selectedImage];
      v13 = [(_SFPBImage *)v11 initWithFacade:selectedImage2];
      [(_SFPBButton *)v5 setSelectedImage:v13];
    }

    if ([facadeCopy hasIsSelected])
    {
      -[_SFPBButton setIsSelected:](v5, "setIsSelected:", [facadeCopy isSelected]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBButton)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBButton;
  v5 = [(_SFPBButton *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBImage alloc] initWithDictionary:v6];
      [(_SFPBButton *)v5 setImage:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"selectedImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBImage alloc] initWithDictionary:v8];
      [(_SFPBButton *)v5 setSelectedImage:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButton setIsSelected:](v5, "setIsSelected:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBButton)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBButton *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBButton *)self dictionaryRepresentation];
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
    image = [(_SFPBButton *)self image];
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

  if (self->_isSelected)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBButton isSelected](self, "isSelected")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isSelected"];
  }

  if (self->_selectedImage)
  {
    selectedImage = [(_SFPBButton *)self selectedImage];
    dictionaryRepresentation2 = [selectedImage dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"selectedImage"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"selectedImage"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBImage *)self->_image hash];
  v4 = [(_SFPBImage *)self->_selectedImage hash];
  v5 = 2654435761;
  if (!self->_isSelected)
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  image = [(_SFPBButton *)self image];
  image2 = [equalCopy image];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_11;
  }

  image3 = [(_SFPBButton *)self image];
  if (image3)
  {
    v8 = image3;
    image4 = [(_SFPBButton *)self image];
    image5 = [equalCopy image];
    v11 = [image4 isEqual:image5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  image = [(_SFPBButton *)self selectedImage];
  image2 = [equalCopy selectedImage];
  if ((image != 0) != (image2 == 0))
  {
    selectedImage = [(_SFPBButton *)self selectedImage];
    if (!selectedImage)
    {

LABEL_15:
      isSelected = self->_isSelected;
      v17 = isSelected == [equalCopy isSelected];
      goto LABEL_13;
    }

    v13 = selectedImage;
    selectedImage2 = [(_SFPBButton *)self selectedImage];
    selectedImage3 = [equalCopy selectedImage];
    v16 = [selectedImage2 isEqual:selectedImage3];

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
  image = [(_SFPBButton *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  selectedImage = [(_SFPBButton *)self selectedImage];
  if (selectedImage)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBButton *)self isSelected])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end