@interface RFPreviewList
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFPreviewList)initWithCoder:(id)a3;
- (RFPreviewList)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFPreviewList

- (RFPreviewList)initWithProtobuf:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = RFPreviewList;
  v5 = [(RFPreviewList *)&v21 init];
  if (v5)
  {
    v6 = [v4 previews];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v4 previews];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[RFPreview alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(RFPreviewList *)v5 setPreviews:v7];
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v2 = [(RFPreviewList *)self previews];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(RFPreviewList *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(RFPreviewList *)self previews];
    v7 = [(RFPreviewList *)v5 previews];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(RFPreviewList *)self previews];
      if (v8)
      {
        v9 = [(RFPreviewList *)self previews];
        v10 = [(RFPreviewList *)v5 previews];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFPreviewList *)self previews];
  v6 = [v5 copy];
  [v4 setPreviews:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFPreviewList alloc] initWithFacade:self];
  v3 = [(_SFPBRFPreviewList *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFPreviewList alloc] initWithFacade:self];
  v3 = [(_SFPBRFPreviewList *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFPreviewList alloc] initWithFacade:self];
  v5 = [(_SFPBRFPreviewList *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFPreviewList)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFPreviewList alloc] initWithData:v5];
  v7 = [(RFPreviewList *)self initWithProtobuf:v6];

  return v7;
}

@end