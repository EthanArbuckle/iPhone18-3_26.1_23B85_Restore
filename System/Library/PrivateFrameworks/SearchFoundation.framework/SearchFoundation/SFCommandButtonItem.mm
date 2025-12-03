@interface SFCommandButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCommandButtonItem)initWithCoder:(id)coder;
- (SFCommandButtonItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCommandButtonItem

- (SFCommandButtonItem)initWithProtobuf:(id)protobuf
{
  v33 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v31.receiver = self;
  v31.super_class = SFCommandButtonItem;
  v5 = [(SFCommandButtonItem *)&v31 init];
  if (v5)
  {
    image = [protobufCopy image];

    if (image)
    {
      v7 = [SFImage alloc];
      image2 = [protobufCopy image];
      v9 = [(SFImage *)v7 initWithProtobuf:image2];
      [(SFCommandButtonItem *)v5 setImage:v9];
    }

    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFCommandButtonItem *)v5 setTitle:title2];
    }

    command = [protobufCopy command];

    if (command)
    {
      v13 = [SFCommand alloc];
      command2 = [protobufCopy command];
      v15 = [(SFCommand *)v13 initWithProtobuf:command2];
      [(SFCommandButtonItem *)v5 setCommand:v15];
    }

    previewButtonItems = [protobufCopy previewButtonItems];
    if (previewButtonItems)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v17 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    previewButtonItems2 = [protobufCopy previewButtonItems];
    v19 = [previewButtonItems2 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(previewButtonItems2);
          }

          v23 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v27 + 1) + 8 * i)];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [previewButtonItems2 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v20);
    }

    [(SFCommandButtonItem *)v5 setPreviewButtonItems:v17];
    if ([protobufCopy isDestructive])
    {
      -[SFCommandButtonItem setIsDestructive:](v5, "setIsDestructive:", [protobufCopy isDestructive]);
    }

    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [protobufCopy uniqueId]);
    }

    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v15.receiver = self;
  v15.super_class = SFCommandButtonItem;
  v3 = [(SFButtonItem *)&v15 hash];
  image = [(SFCommandButtonItem *)self image];
  v5 = [image hash];
  title = [(SFCommandButtonItem *)self title];
  v7 = v5 ^ [title hash];
  command = [(SFCommandButtonItem *)self command];
  v9 = v7 ^ [command hash];
  previewButtonItems = [(SFCommandButtonItem *)self previewButtonItems];
  v11 = v9 ^ [previewButtonItems hash];
  v12 = v11 ^ [(SFCommandButtonItem *)self isDestructive]^ v3;
  uniqueId = [(SFButtonItem *)self uniqueId];

  return v12 ^ uniqueId;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(SFCommandButtonItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v43.receiver = self;
      v43.super_class = SFCommandButtonItem;
      if ([(SFButtonItem *)&v43 isEqual:equalCopy])
      {
        v5 = equalCopy;
        image = [(SFCommandButtonItem *)self image];
        image2 = [(SFCommandButtonItem *)v5 image];
        if ((image != 0) == (image2 == 0))
        {
          v10 = 0;
LABEL_38:

          goto LABEL_39;
        }

        image3 = [(SFCommandButtonItem *)self image];
        if (image3)
        {
          image4 = [(SFCommandButtonItem *)self image];
          image5 = [(SFCommandButtonItem *)v5 image];
          if (![image4 isEqual:?])
          {
            v10 = 0;
            goto LABEL_36;
          }

          v40 = image4;
        }

        title = [(SFCommandButtonItem *)self title];
        title2 = [(SFCommandButtonItem *)v5 title];
        if ((title != 0) != (title2 == 0))
        {
          title3 = [(SFCommandButtonItem *)self title];
          if (title3)
          {
            v13 = title3;
            title4 = [(SFCommandButtonItem *)self title];
            [(SFCommandButtonItem *)v5 title];
            v39 = v37 = title4;
            if (![title4 isEqual:?])
            {
              v10 = 0;
              v19 = v39;
              goto LABEL_33;
            }

            v38 = v13;
          }

          else
          {
            v38 = 0;
          }

          command = [(SFCommandButtonItem *)self command];
          command2 = [(SFCommandButtonItem *)v5 command];
          if ((command != 0) != (command2 == 0))
          {
            v35 = command;
            v36 = command2;
            command3 = [(SFCommandButtonItem *)self command];
            if (command3)
            {
              command4 = [(SFCommandButtonItem *)self command];
              command5 = [(SFCommandButtonItem *)v5 command];
              v34 = command4;
              if (![command4 isEqual:?])
              {
                v10 = 0;
                v13 = v38;
                v19 = v39;
                goto LABEL_31;
              }
            }

            previewButtonItems = [(SFCommandButtonItem *)self previewButtonItems];
            previewButtonItems2 = [(SFCommandButtonItem *)v5 previewButtonItems];
            if ((previewButtonItems != 0) == (previewButtonItems2 == 0))
            {

              v10 = 0;
              v13 = v38;
              v19 = v39;
              if (!command3)
              {
                goto LABEL_32;
              }

              goto LABEL_31;
            }

            v31 = previewButtonItems2;
            v32 = previewButtonItems;
            [(SFCommandButtonItem *)self previewButtonItems];
            v22 = v19 = v39;
            if (v22)
            {
              v28 = command3;
              previewButtonItems3 = [(SFCommandButtonItem *)self previewButtonItems];
              [(SFCommandButtonItem *)v5 previewButtonItems];
              v30 = v27 = previewButtonItems3;
              if (![previewButtonItems3 isEqual:?])
              {
                v10 = 0;
                command3 = v28;
                v26 = v30;
                goto LABEL_46;
              }

              command3 = v28;
            }

            isDestructive = [(SFCommandButtonItem *)self isDestructive];
            if (isDestructive == [(SFCommandButtonItem *)v5 isDestructive])
            {
              uniqueId = [(SFButtonItem *)self uniqueId];
              v10 = uniqueId == [(SFButtonItem *)v5 uniqueId];
            }

            else
            {
              v10 = 0;
            }

            v26 = v30;
            if (!v22)
            {
LABEL_47:

              v13 = v38;
              if (!command3)
              {
LABEL_32:

                if (!v13)
                {
LABEL_34:

LABEL_35:
                  image4 = v40;
                  if (!image3)
                  {
LABEL_37:

                    goto LABEL_38;
                  }

LABEL_36:

                  goto LABEL_37;
                }

LABEL_33:

                goto LABEL_34;
              }

LABEL_31:

              goto LABEL_32;
            }

LABEL_46:

            goto LABEL_47;
          }

          if (v38)
          {
          }
        }

        v10 = 0;
        goto LABEL_35;
      }
    }

    v10 = 0;
  }

LABEL_39:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = SFCommandButtonItem;
  v4 = [(SFButtonItem *)&v14 copyWithZone:zone];
  image = [(SFCommandButtonItem *)self image];
  v6 = [image copy];
  [v4 setImage:v6];

  title = [(SFCommandButtonItem *)self title];
  v8 = [title copy];
  [v4 setTitle:v8];

  command = [(SFCommandButtonItem *)self command];
  v10 = [command copy];
  [v4 setCommand:v10];

  previewButtonItems = [(SFCommandButtonItem *)self previewButtonItems];
  v12 = [previewButtonItems copy];
  [v4 setPreviewButtonItems:v12];

  [v4 setIsDestructive:{-[SFCommandButtonItem isDestructive](self, "isDestructive")}];
  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCommandButtonItem alloc] initWithFacade:self];
  jsonData = [(_SFPBCommandButtonItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCommandButtonItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCommandButtonItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCommandButtonItem alloc] initWithFacade:self];
  data = [(_SFPBCommandButtonItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCommandButtonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCommandButtonItem alloc] initWithData:v5];
  v7 = [(SFCommandButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end