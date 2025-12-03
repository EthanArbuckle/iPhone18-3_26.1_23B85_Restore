@interface _SFPBDynamicURLImageResource
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBDynamicURLImageResource)initWithDictionary:(id)dictionary;
- (_SFPBDynamicURLImageResource)initWithFacade:(id)facade;
- (_SFPBDynamicURLImageResource)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addImageOptions:(id)options;
- (void)setFormatURL:(id)l;
- (void)setImageOptions:(id)options;
- (void)writeTo:(id)to;
@end

@implementation _SFPBDynamicURLImageResource

- (_SFPBDynamicURLImageResource)initWithFacade:(id)facade
{
  v28 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBDynamicURLImageResource *)self init];
  if (v5)
  {
    if ([facadeCopy hasPixelWidth])
    {
      v6 = [_SFPBGraphicalFloat alloc];
      [facadeCopy pixelWidth];
      v7 = [(_SFPBGraphicalFloat *)v6 initWithCGFloat:?];
      [(_SFPBDynamicURLImageResource *)v5 setPixelWidth:v7];
    }

    if ([facadeCopy hasPixelHeight])
    {
      v8 = [_SFPBGraphicalFloat alloc];
      [facadeCopy pixelHeight];
      v9 = [(_SFPBGraphicalFloat *)v8 initWithCGFloat:?];
      [(_SFPBDynamicURLImageResource *)v5 setPixelHeight:v9];
    }

    formatURL = [facadeCopy formatURL];

    if (formatURL)
    {
      formatURL2 = [facadeCopy formatURL];
      [(_SFPBDynamicURLImageResource *)v5 setFormatURL:formatURL2];
    }

    if ([facadeCopy hasSupportsResizing])
    {
      -[_SFPBDynamicURLImageResource setSupportsResizing:](v5, "setSupportsResizing:", [facadeCopy supportsResizing]);
    }

    imageOptions = [facadeCopy imageOptions];
    if (imageOptions)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    imageOptions2 = [facadeCopy imageOptions];
    v15 = [imageOptions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(imageOptions2);
          }

          v19 = [[_SFPBImageOption alloc] initWithFacade:*(*(&v23 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [imageOptions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    [(_SFPBDynamicURLImageResource *)v5 setImageOptions:v13];
    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDynamicURLImageResource)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = _SFPBDynamicURLImageResource;
  v5 = [(_SFPBDynamicURLImageResource *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pixelWidth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v6];
      [(_SFPBDynamicURLImageResource *)v5 setPixelWidth:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pixelHeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v8];
      [(_SFPBDynamicURLImageResource *)v5 setPixelHeight:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"formatURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBDynamicURLImageResource *)v5 setFormatURL:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"supportsResizing"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDynamicURLImageResource setSupportsResizing:](v5, "setSupportsResizing:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"imageOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v12;
      v25 = v8;
      v26 = v6;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v27 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[_SFPBImageOption alloc] initWithDictionary:v19];
              [(_SFPBDynamicURLImageResource *)v5 addImageOptions:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v16);
      }

      v8 = v25;
      v6 = v26;
      v12 = v24;
    }

    v21 = v5;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDynamicURLImageResource)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBDynamicURLImageResource *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBDynamicURLImageResource *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_formatURL)
  {
    formatURL = [(_SFPBDynamicURLImageResource *)self formatURL];
    v5 = [formatURL copy];
    [dictionary setObject:v5 forKeyedSubscript:@"formatURL"];
  }

  if ([(NSArray *)self->_imageOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = self->_imageOptions;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"imageOptions"];
  }

  if (self->_pixelHeight)
  {
    pixelHeight = [(_SFPBDynamicURLImageResource *)self pixelHeight];
    dictionaryRepresentation2 = [pixelHeight dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"pixelHeight"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"pixelHeight"];
    }
  }

  if (self->_pixelWidth)
  {
    pixelWidth = [(_SFPBDynamicURLImageResource *)self pixelWidth];
    dictionaryRepresentation3 = [pixelWidth dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"pixelWidth"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"pixelWidth"];
    }
  }

  if (self->_supportsResizing)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDynamicURLImageResource supportsResizing](self, "supportsResizing")}];
    [dictionary setObject:v20 forKeyedSubscript:@"supportsResizing"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBGraphicalFloat *)self->_pixelWidth hash];
  v4 = [(_SFPBGraphicalFloat *)self->_pixelHeight hash];
  v5 = [(NSString *)self->_formatURL hash];
  if (self->_supportsResizing)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSArray *)self->_imageOptions hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  pixelWidth = [(_SFPBDynamicURLImageResource *)self pixelWidth];
  pixelWidth2 = [equalCopy pixelWidth];
  if ((pixelWidth != 0) == (pixelWidth2 == 0))
  {
    goto LABEL_22;
  }

  pixelWidth3 = [(_SFPBDynamicURLImageResource *)self pixelWidth];
  if (pixelWidth3)
  {
    v8 = pixelWidth3;
    pixelWidth4 = [(_SFPBDynamicURLImageResource *)self pixelWidth];
    pixelWidth5 = [equalCopy pixelWidth];
    v11 = [pixelWidth4 isEqual:pixelWidth5];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  pixelWidth = [(_SFPBDynamicURLImageResource *)self pixelHeight];
  pixelWidth2 = [equalCopy pixelHeight];
  if ((pixelWidth != 0) == (pixelWidth2 == 0))
  {
    goto LABEL_22;
  }

  pixelHeight = [(_SFPBDynamicURLImageResource *)self pixelHeight];
  if (pixelHeight)
  {
    v13 = pixelHeight;
    pixelHeight2 = [(_SFPBDynamicURLImageResource *)self pixelHeight];
    pixelHeight3 = [equalCopy pixelHeight];
    v16 = [pixelHeight2 isEqual:pixelHeight3];

    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  pixelWidth = [(_SFPBDynamicURLImageResource *)self formatURL];
  pixelWidth2 = [equalCopy formatURL];
  if ((pixelWidth != 0) == (pixelWidth2 == 0))
  {
    goto LABEL_22;
  }

  formatURL = [(_SFPBDynamicURLImageResource *)self formatURL];
  if (formatURL)
  {
    v18 = formatURL;
    formatURL2 = [(_SFPBDynamicURLImageResource *)self formatURL];
    formatURL3 = [equalCopy formatURL];
    v21 = [formatURL2 isEqual:formatURL3];

    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  supportsResizing = self->_supportsResizing;
  if (supportsResizing != [equalCopy supportsResizing])
  {
    goto LABEL_23;
  }

  pixelWidth = [(_SFPBDynamicURLImageResource *)self imageOptions];
  pixelWidth2 = [equalCopy imageOptions];
  if ((pixelWidth != 0) == (pixelWidth2 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  imageOptions = [(_SFPBDynamicURLImageResource *)self imageOptions];
  if (!imageOptions)
  {

LABEL_26:
    v28 = 1;
    goto LABEL_24;
  }

  v24 = imageOptions;
  imageOptions2 = [(_SFPBDynamicURLImageResource *)self imageOptions];
  imageOptions3 = [equalCopy imageOptions];
  v27 = [imageOptions2 isEqual:imageOptions3];

  if (v27)
  {
    goto LABEL_26;
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  pixelWidth = [(_SFPBDynamicURLImageResource *)self pixelWidth];
  if (pixelWidth)
  {
    PBDataWriterWriteSubmessage();
  }

  pixelHeight = [(_SFPBDynamicURLImageResource *)self pixelHeight];
  if (pixelHeight)
  {
    PBDataWriterWriteSubmessage();
  }

  formatURL = [(_SFPBDynamicURLImageResource *)self formatURL];
  if (formatURL)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBDynamicURLImageResource *)self supportsResizing])
  {
    PBDataWriterWriteBOOLField();
  }

  imageOptions = [(_SFPBDynamicURLImageResource *)self imageOptions];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [imageOptions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(imageOptions);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [imageOptions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addImageOptions:(id)options
{
  optionsCopy = options;
  imageOptions = self->_imageOptions;
  v8 = optionsCopy;
  if (!imageOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_imageOptions;
    self->_imageOptions = array;

    optionsCopy = v8;
    imageOptions = self->_imageOptions;
  }

  [(NSArray *)imageOptions addObject:optionsCopy];
}

- (void)setImageOptions:(id)options
{
  v4 = [options copy];
  imageOptions = self->_imageOptions;
  self->_imageOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFormatURL:(id)l
{
  v4 = [l copy];
  formatURL = self->_formatURL;
  self->_formatURL = v4;

  MEMORY[0x1EEE66BB8]();
}

@end