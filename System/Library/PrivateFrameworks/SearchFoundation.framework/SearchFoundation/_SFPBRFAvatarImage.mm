@interface _SFPBRFAvatarImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFAvatarImage)initWithDictionary:(id)a3;
- (_SFPBRFAvatarImage)initWithFacade:(id)a3;
- (_SFPBRFAvatarImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)addContact_ids:(id)a3;
- (void)setContact_ids:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFAvatarImage

- (_SFPBRFAvatarImage)initWithFacade:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFAvatarImage *)self init];
  if (v5)
  {
    v6 = [v4 contact_ids];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v4 contact_ids];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (*(*(&v16 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(_SFPBRFAvatarImage *)v5 setContact_ids:v7];
    if ([v4 hasImage_style])
    {
      -[_SFPBRFAvatarImage setImage_style:](v5, "setImage_style:", [v4 image_style]);
    }

    v13 = v5;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFAvatarImage)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _SFPBRFAvatarImage;
  v5 = [(_SFPBRFAvatarImage *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contactIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(_SFPBRFAvatarImage *)v5 addContact_ids:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:{@"imageStyle", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFAvatarImage setImage_style:](v5, "setImage_style:", [v14 intValue]);
    }

    v15 = v5;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFAvatarImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFAvatarImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFAvatarImage *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contact_ids)
  {
    v4 = [(_SFPBRFAvatarImage *)self contact_ids];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"contactIds"];
  }

  if (self->_image_style)
  {
    v6 = [(_SFPBRFAvatarImage *)self image_style];
    if (v6 < 0x2A && ((0x3FFDFFFFFFFuLL >> v6) & 1) != 0)
    {
      v7 = off_1E7ACE270[v6];
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"imageStyle"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBRFAvatarImage *)self contact_ids];
    v6 = [v4 contact_ids];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBRFAvatarImage *)self contact_ids];
      if (!v8)
      {

LABEL_10:
        image_style = self->_image_style;
        v13 = image_style == [v4 image_style];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBRFAvatarImage *)self contact_ids];
      v11 = [v4 contact_ids];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFAvatarImage *)self contact_ids];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([(_SFPBRFAvatarImage *)self image_style])
  {
    PBDataWriterWriteInt32Field();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addContact_ids:(id)a3
{
  v4 = a3;
  contact_ids = self->_contact_ids;
  v8 = v4;
  if (!contact_ids)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contact_ids;
    self->_contact_ids = v6;

    v4 = v8;
    contact_ids = self->_contact_ids;
  }

  [(NSArray *)contact_ids addObject:v4];
}

- (void)setContact_ids:(id)a3
{
  v4 = [a3 copy];
  contact_ids = self->_contact_ids;
  self->_contact_ids = v4;

  MEMORY[0x1EEE66BB8]();
}

@end