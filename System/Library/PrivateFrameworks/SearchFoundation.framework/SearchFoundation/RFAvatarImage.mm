@interface RFAvatarImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFAvatarImage)initWithCoder:(id)coder;
- (RFAvatarImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFAvatarImage

- (unint64_t)hash
{
  contact_ids = [(RFAvatarImage *)self contact_ids];
  v4 = [contact_ids hash];
  image_style = [(RFAvatarImage *)self image_style];

  return v4 ^ image_style;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFAvatarImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      contact_ids = [(RFAvatarImage *)self contact_ids];
      contact_ids2 = [(RFAvatarImage *)v7 contact_ids];
      if ((contact_ids != 0) == (contact_ids2 == 0))
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      contact_ids3 = [(RFAvatarImage *)self contact_ids];
      if (!contact_ids3 || (-[RFAvatarImage contact_ids](self, "contact_ids"), v3 = objc_claimAutoreleasedReturnValue(), -[RFAvatarImage contact_ids](v7, "contact_ids"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        image_style = [(RFAvatarImage *)self image_style];
        v11 = image_style == [(RFAvatarImage *)v7 image_style];
        if (!contact_ids3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  contact_ids = [(RFAvatarImage *)self contact_ids];
  v6 = [contact_ids copy];
  [v4 setContact_ids:v6];

  [v4 setImage_style:{-[RFAvatarImage image_style](self, "image_style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFAvatarImage alloc] initWithFacade:self];
  jsonData = [(_SFPBRFAvatarImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFAvatarImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFAvatarImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFAvatarImage alloc] initWithFacade:self];
  data = [(_SFPBRFAvatarImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFAvatarImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFAvatarImage alloc] initWithData:v5];
  v7 = [(RFAvatarImage *)self initWithProtobuf:v6];

  return v7;
}

- (RFAvatarImage)initWithProtobuf:(id)protobuf
{
  v22 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = RFAvatarImage;
  v5 = [(RFAvatarImage *)&v20 init];
  if (v5)
  {
    contact_ids = [protobufCopy contact_ids];
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
    contact_ids2 = [protobufCopy contact_ids];
    v9 = [contact_ids2 countByEnumeratingWithState:&v16 objects:v21 count:16];
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

        v10 = [contact_ids2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    [(RFAvatarImage *)v5 setContact_ids:v7];
    if ([protobufCopy image_style])
    {
      -[RFAvatarImage setImage_style:](v5, "setImage_style:", [protobufCopy image_style]);
    }

    v13 = v5;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

@end