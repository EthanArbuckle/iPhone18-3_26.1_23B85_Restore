@interface _SFPBRFPrimaryHeaderStackedImageCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithDictionary:(id)a3;
- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithFacade:(id)a3;
- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addImages:(id)a3;
- (void)setImages:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFPrimaryHeaderStackedImageCardSection

- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithFacade:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 images];
    if (v14)
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
    v16 = [v4 images];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBRFVisualProperty alloc] initWithFacade:*(*(&v25 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 setImages:v15];
    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _SFPBRFPrimaryHeaderStackedImageCardSection;
  v5 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v5 setText_2:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"images"];
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

- (_SFPBRFPrimaryHeaderStackedImageCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_images count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"images"];
  }

  if (self->_text_1)
  {
    v12 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"text1"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    v15 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"text2"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"text2"];
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  return v4 ^ [(NSArray *)self->_images hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
    v15 = [v4 text];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self images];
  v6 = [v4 images];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self images];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self images];
    v20 = [v4 images];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self text];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self images];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addImages:(id)a3
{
  v4 = a3;
  images = self->_images;
  v8 = v4;
  if (!images)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_images;
    self->_images = v6;

    v4 = v8;
    images = self->_images;
  }

  [(NSArray *)images addObject:v4];
}

- (void)setImages:(id)a3
{
  v4 = [a3 copy];
  images = self->_images;
  self->_images = v4;

  MEMORY[0x1EEE66BB8]();
}

@end