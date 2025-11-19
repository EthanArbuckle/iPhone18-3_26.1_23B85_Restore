@interface _SFPBDynamicURLImageResource
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBDynamicURLImageResource)initWithDictionary:(id)a3;
- (_SFPBDynamicURLImageResource)initWithFacade:(id)a3;
- (_SFPBDynamicURLImageResource)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addImageOptions:(id)a3;
- (void)setFormatURL:(id)a3;
- (void)setImageOptions:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBDynamicURLImageResource

- (_SFPBDynamicURLImageResource)initWithFacade:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBDynamicURLImageResource *)self init];
  if (v5)
  {
    if ([v4 hasPixelWidth])
    {
      v6 = [_SFPBGraphicalFloat alloc];
      [v4 pixelWidth];
      v7 = [(_SFPBGraphicalFloat *)v6 initWithCGFloat:?];
      [(_SFPBDynamicURLImageResource *)v5 setPixelWidth:v7];
    }

    if ([v4 hasPixelHeight])
    {
      v8 = [_SFPBGraphicalFloat alloc];
      [v4 pixelHeight];
      v9 = [(_SFPBGraphicalFloat *)v8 initWithCGFloat:?];
      [(_SFPBDynamicURLImageResource *)v5 setPixelHeight:v9];
    }

    v10 = [v4 formatURL];

    if (v10)
    {
      v11 = [v4 formatURL];
      [(_SFPBDynamicURLImageResource *)v5 setFormatURL:v11];
    }

    if ([v4 hasSupportsResizing])
    {
      -[_SFPBDynamicURLImageResource setSupportsResizing:](v5, "setSupportsResizing:", [v4 supportsResizing]);
    }

    v12 = [v4 imageOptions];
    if (v12)
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
    v14 = [v4 imageOptions];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [[_SFPBImageOption alloc] initWithFacade:*(*(&v23 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    [(_SFPBDynamicURLImageResource *)v5 setImageOptions:v13];
    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDynamicURLImageResource)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = _SFPBDynamicURLImageResource;
  v5 = [(_SFPBDynamicURLImageResource *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"pixelWidth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v6];
      [(_SFPBDynamicURLImageResource *)v5 setPixelWidth:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"pixelHeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v8];
      [(_SFPBDynamicURLImageResource *)v5 setPixelHeight:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"formatURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBDynamicURLImageResource *)v5 setFormatURL:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"supportsResizing"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDynamicURLImageResource setSupportsResizing:](v5, "setSupportsResizing:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"imageOptions"];
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

- (_SFPBDynamicURLImageResource)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBDynamicURLImageResource *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBDynamicURLImageResource *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_formatURL)
  {
    v4 = [(_SFPBDynamicURLImageResource *)self formatURL];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"formatURL"];
  }

  if ([(NSArray *)self->_imageOptions count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"imageOptions"];
  }

  if (self->_pixelHeight)
  {
    v14 = [(_SFPBDynamicURLImageResource *)self pixelHeight];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"pixelHeight"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"pixelHeight"];
    }
  }

  if (self->_pixelWidth)
  {
    v17 = [(_SFPBDynamicURLImageResource *)self pixelWidth];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"pixelWidth"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"pixelWidth"];
    }
  }

  if (self->_supportsResizing)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDynamicURLImageResource supportsResizing](self, "supportsResizing")}];
    [v3 setObject:v20 forKeyedSubscript:@"supportsResizing"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = [(_SFPBDynamicURLImageResource *)self pixelWidth];
  v6 = [v4 pixelWidth];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v7 = [(_SFPBDynamicURLImageResource *)self pixelWidth];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBDynamicURLImageResource *)self pixelWidth];
    v10 = [v4 pixelWidth];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDynamicURLImageResource *)self pixelHeight];
  v6 = [v4 pixelHeight];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v12 = [(_SFPBDynamicURLImageResource *)self pixelHeight];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBDynamicURLImageResource *)self pixelHeight];
    v15 = [v4 pixelHeight];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDynamicURLImageResource *)self formatURL];
  v6 = [v4 formatURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v17 = [(_SFPBDynamicURLImageResource *)self formatURL];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBDynamicURLImageResource *)self formatURL];
    v20 = [v4 formatURL];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  supportsResizing = self->_supportsResizing;
  if (supportsResizing != [v4 supportsResizing])
  {
    goto LABEL_23;
  }

  v5 = [(_SFPBDynamicURLImageResource *)self imageOptions];
  v6 = [v4 imageOptions];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  v23 = [(_SFPBDynamicURLImageResource *)self imageOptions];
  if (!v23)
  {

LABEL_26:
    v28 = 1;
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [(_SFPBDynamicURLImageResource *)self imageOptions];
  v26 = [v4 imageOptions];
  v27 = [v25 isEqual:v26];

  if (v27)
  {
    goto LABEL_26;
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBDynamicURLImageResource *)self pixelWidth];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBDynamicURLImageResource *)self pixelHeight];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBDynamicURLImageResource *)self formatURL];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBDynamicURLImageResource *)self supportsResizing])
  {
    PBDataWriterWriteBOOLField();
  }

  v8 = [(_SFPBDynamicURLImageResource *)self imageOptions];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addImageOptions:(id)a3
{
  v4 = a3;
  imageOptions = self->_imageOptions;
  v8 = v4;
  if (!imageOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_imageOptions;
    self->_imageOptions = v6;

    v4 = v8;
    imageOptions = self->_imageOptions;
  }

  [(NSArray *)imageOptions addObject:v4];
}

- (void)setImageOptions:(id)a3
{
  v4 = [a3 copy];
  imageOptions = self->_imageOptions;
  self->_imageOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFormatURL:(id)a3
{
  v4 = [a3 copy];
  formatURL = self->_formatURL;
  self->_formatURL = v4;

  MEMORY[0x1EEE66BB8]();
}

@end