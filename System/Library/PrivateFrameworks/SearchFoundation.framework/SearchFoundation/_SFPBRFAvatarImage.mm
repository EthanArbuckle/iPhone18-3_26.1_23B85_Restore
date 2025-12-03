@interface _SFPBRFAvatarImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFAvatarImage)initWithDictionary:(id)dictionary;
- (_SFPBRFAvatarImage)initWithFacade:(id)facade;
- (_SFPBRFAvatarImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addContact_ids:(id)contact_ids;
- (void)setContact_ids:(id)contact_ids;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFAvatarImage

- (_SFPBRFAvatarImage)initWithFacade:(id)facade
{
  v21 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFAvatarImage *)self init];
  if (v5)
  {
    contact_ids = [facadeCopy contact_ids];
    if (contact_ids)
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
    contact_ids2 = [facadeCopy contact_ids];
    v9 = [contact_ids2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(contact_ids2);
          }

          if (*(*(&v16 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [contact_ids2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(_SFPBRFAvatarImage *)v5 setContact_ids:v7];
    if ([facadeCopy hasImage_style])
    {
      -[_SFPBRFAvatarImage setImage_style:](v5, "setImage_style:", [facadeCopy image_style]);
    }

    v13 = v5;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFAvatarImage)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = _SFPBRFAvatarImage;
  v5 = [(_SFPBRFAvatarImage *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contactIds"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:{@"imageStyle", v18}];
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

- (_SFPBRFAvatarImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFAvatarImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFAvatarImage *)self dictionaryRepresentation];
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
  if (self->_contact_ids)
  {
    contact_ids = [(_SFPBRFAvatarImage *)self contact_ids];
    v5 = [contact_ids copy];
    [dictionary setObject:v5 forKeyedSubscript:@"contactIds"];
  }

  if (self->_image_style)
  {
    image_style = [(_SFPBRFAvatarImage *)self image_style];
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
    contact_ids = [(_SFPBRFAvatarImage *)self contact_ids];
    contact_ids2 = [equalCopy contact_ids];
    v7 = contact_ids2;
    if ((contact_ids != 0) != (contact_ids2 == 0))
    {
      contact_ids3 = [(_SFPBRFAvatarImage *)self contact_ids];
      if (!contact_ids3)
      {

LABEL_10:
        image_style = self->_image_style;
        v13 = image_style == [equalCopy image_style];
        goto LABEL_8;
      }

      v9 = contact_ids3;
      contact_ids4 = [(_SFPBRFAvatarImage *)self contact_ids];
      contact_ids5 = [equalCopy contact_ids];
      v12 = [contact_ids4 isEqual:contact_ids5];

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
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  contact_ids = [(_SFPBRFAvatarImage *)self contact_ids];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [contact_ids countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(contact_ids);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [contact_ids countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([(_SFPBRFAvatarImage *)self image_style])
  {
    PBDataWriterWriteInt32Field();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addContact_ids:(id)contact_ids
{
  contact_idsCopy = contact_ids;
  contact_ids = self->_contact_ids;
  v8 = contact_idsCopy;
  if (!contact_ids)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_contact_ids;
    self->_contact_ids = array;

    contact_idsCopy = v8;
    contact_ids = self->_contact_ids;
  }

  [(NSArray *)contact_ids addObject:contact_idsCopy];
}

- (void)setContact_ids:(id)contact_ids
{
  v4 = [contact_ids copy];
  contact_ids = self->_contact_ids;
  self->_contact_ids = v4;

  MEMORY[0x1EEE66BB8]();
}

@end