@interface RFAvatarImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFAvatarImage)initWithCoder:(id)a3;
- (RFAvatarImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFAvatarImage

- (unint64_t)hash
{
  v3 = [(RFAvatarImage *)self contact_ids];
  v4 = [v3 hash];
  v5 = [(RFAvatarImage *)self image_style];

  return v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFAvatarImage *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(RFAvatarImage *)self contact_ids];
      v9 = [(RFAvatarImage *)v7 contact_ids];
      if ((v8 != 0) == (v9 == 0))
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = [(RFAvatarImage *)self contact_ids];
      if (!v10 || (-[RFAvatarImage contact_ids](self, "contact_ids"), v3 = objc_claimAutoreleasedReturnValue(), -[RFAvatarImage contact_ids](v7, "contact_ids"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v12 = [(RFAvatarImage *)self image_style];
        v11 = v12 == [(RFAvatarImage *)v7 image_style];
        if (!v10)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFAvatarImage *)self contact_ids];
  v6 = [v5 copy];
  [v4 setContact_ids:v6];

  [v4 setImage_style:{-[RFAvatarImage image_style](self, "image_style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFAvatarImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFAvatarImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFAvatarImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFAvatarImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFAvatarImage alloc] initWithFacade:self];
  v5 = [(_SFPBRFAvatarImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFAvatarImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFAvatarImage alloc] initWithData:v5];
  v7 = [(RFAvatarImage *)self initWithProtobuf:v6];

  return v7;
}

- (RFAvatarImage)initWithProtobuf:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = RFAvatarImage;
  v5 = [(RFAvatarImage *)&v20 init];
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
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
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

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    [(RFAvatarImage *)v5 setContact_ids:v7];
    if ([v4 image_style])
    {
      -[RFAvatarImage setImage_style:](v5, "setImage_style:", [v4 image_style]);
    }

    v13 = v5;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

@end