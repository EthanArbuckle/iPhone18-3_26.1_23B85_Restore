@interface _SFPBRFPrimaryHeaderStackedImageCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithFacade:(id)facade;
- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addImages:(id)images;
- (void)setImages:(id)images;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFPrimaryHeaderStackedImageCardSection

- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithFacade:(id)facade
{
  v30 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 setText_2:v13];
    }

    images = [facadeCopy images];
    if (images)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    images2 = [facadeCopy images];
    v17 = [images2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(images2);
          }

          v21 = [[_SFPBRFVisualProperty alloc] initWithFacade:*(*(&v25 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [images2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 setImages:v15];
    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = _SFPBRFPrimaryHeaderStackedImageCardSection;
  v5 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 setText_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"images"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v8;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v16];
              [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 addImages:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v8 = v21;
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_images count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_images;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"images"];
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
    dictionaryRepresentation2 = [text dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"text1"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    text2 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
    dictionaryRepresentation3 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"text2"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"text2"];
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  return v4 ^ [(NSArray *)self->_images hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  text = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_16;
  }

  text3 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  text = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_16;
  }

  text6 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  text = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self images];
  text2 = [equalCopy images];
  if ((text != 0) != (text2 == 0))
  {
    images = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self images];
    if (!images)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = images;
    images2 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self images];
    images3 = [equalCopy images];
    v21 = [images2 isEqual:images3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  images = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self images];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [images countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(images);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [images countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addImages:(id)images
{
  imagesCopy = images;
  images = self->_images;
  v8 = imagesCopy;
  if (!images)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_images;
    self->_images = array;

    imagesCopy = v8;
    images = self->_images;
  }

  [(NSArray *)images addObject:imagesCopy];
}

- (void)setImages:(id)images
{
  v4 = [images copy];
  images = self->_images;
  self->_images = v4;

  MEMORY[0x1EEE66BB8]();
}

@end