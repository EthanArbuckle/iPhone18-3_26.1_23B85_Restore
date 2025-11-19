@interface SFCommandButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCommandButtonItem)initWithCoder:(id)a3;
- (SFCommandButtonItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCommandButtonItem

- (SFCommandButtonItem)initWithProtobuf:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = SFCommandButtonItem;
  v5 = [(SFCommandButtonItem *)&v31 init];
  if (v5)
  {
    v6 = [v4 image];

    if (v6)
    {
      v7 = [SFImage alloc];
      v8 = [v4 image];
      v9 = [(SFImage *)v7 initWithProtobuf:v8];
      [(SFCommandButtonItem *)v5 setImage:v9];
    }

    v10 = [v4 title];

    if (v10)
    {
      v11 = [v4 title];
      [(SFCommandButtonItem *)v5 setTitle:v11];
    }

    v12 = [v4 command];

    if (v12)
    {
      v13 = [SFCommand alloc];
      v14 = [v4 command];
      v15 = [(SFCommand *)v13 initWithProtobuf:v14];
      [(SFCommandButtonItem *)v5 setCommand:v15];
    }

    v16 = [v4 previewButtonItems];
    if (v16)
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
    v18 = [v4 previewButtonItems];
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v27 + 1) + 8 * i)];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v20);
    }

    [(SFCommandButtonItem *)v5 setPreviewButtonItems:v17];
    if ([v4 isDestructive])
    {
      -[SFCommandButtonItem setIsDestructive:](v5, "setIsDestructive:", [v4 isDestructive]);
    }

    if ([v4 uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
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
  v4 = [(SFCommandButtonItem *)self image];
  v5 = [v4 hash];
  v6 = [(SFCommandButtonItem *)self title];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCommandButtonItem *)self command];
  v9 = v7 ^ [v8 hash];
  v10 = [(SFCommandButtonItem *)self previewButtonItems];
  v11 = v9 ^ [v10 hash];
  v12 = v11 ^ [(SFCommandButtonItem *)self isDestructive]^ v3;
  v13 = [(SFButtonItem *)self uniqueId];

  return v12 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    if ([(SFCommandButtonItem *)v4 isMemberOfClass:objc_opt_class()])
    {
      v43.receiver = self;
      v43.super_class = SFCommandButtonItem;
      if ([(SFButtonItem *)&v43 isEqual:v4])
      {
        v5 = v4;
        v6 = [(SFCommandButtonItem *)self image];
        v7 = [(SFCommandButtonItem *)v5 image];
        if ((v6 != 0) == (v7 == 0))
        {
          v10 = 0;
LABEL_38:

          goto LABEL_39;
        }

        v8 = [(SFCommandButtonItem *)self image];
        if (v8)
        {
          v9 = [(SFCommandButtonItem *)self image];
          v41 = [(SFCommandButtonItem *)v5 image];
          if (![v9 isEqual:?])
          {
            v10 = 0;
            goto LABEL_36;
          }

          v40 = v9;
        }

        v42 = [(SFCommandButtonItem *)self title];
        v11 = [(SFCommandButtonItem *)v5 title];
        if ((v42 != 0) != (v11 == 0))
        {
          v12 = [(SFCommandButtonItem *)self title];
          if (v12)
          {
            v13 = v12;
            v14 = [(SFCommandButtonItem *)self title];
            [(SFCommandButtonItem *)v5 title];
            v39 = v37 = v14;
            if (![v14 isEqual:?])
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

          v15 = [(SFCommandButtonItem *)self command];
          v16 = [(SFCommandButtonItem *)v5 command];
          if ((v15 != 0) != (v16 == 0))
          {
            v35 = v15;
            v36 = v16;
            v17 = [(SFCommandButtonItem *)self command];
            if (v17)
            {
              v18 = [(SFCommandButtonItem *)self command];
              v33 = [(SFCommandButtonItem *)v5 command];
              v34 = v18;
              if (![v18 isEqual:?])
              {
                v10 = 0;
                v13 = v38;
                v19 = v39;
                goto LABEL_31;
              }
            }

            v20 = [(SFCommandButtonItem *)self previewButtonItems];
            v21 = [(SFCommandButtonItem *)v5 previewButtonItems];
            if ((v20 != 0) == (v21 == 0))
            {

              v10 = 0;
              v13 = v38;
              v19 = v39;
              if (!v17)
              {
                goto LABEL_32;
              }

              goto LABEL_31;
            }

            v31 = v21;
            v32 = v20;
            [(SFCommandButtonItem *)self previewButtonItems];
            v22 = v19 = v39;
            if (v22)
            {
              v28 = v17;
              v23 = [(SFCommandButtonItem *)self previewButtonItems];
              [(SFCommandButtonItem *)v5 previewButtonItems];
              v30 = v27 = v23;
              if (![v23 isEqual:?])
              {
                v10 = 0;
                v17 = v28;
                v26 = v30;
                goto LABEL_46;
              }

              v17 = v28;
            }

            v29 = [(SFCommandButtonItem *)self isDestructive];
            if (v29 == [(SFCommandButtonItem *)v5 isDestructive])
            {
              v25 = [(SFButtonItem *)self uniqueId];
              v10 = v25 == [(SFButtonItem *)v5 uniqueId];
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
              if (!v17)
              {
LABEL_32:

                if (!v13)
                {
LABEL_34:

LABEL_35:
                  v9 = v40;
                  if (!v8)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = SFCommandButtonItem;
  v4 = [(SFButtonItem *)&v14 copyWithZone:a3];
  v5 = [(SFCommandButtonItem *)self image];
  v6 = [v5 copy];
  [v4 setImage:v6];

  v7 = [(SFCommandButtonItem *)self title];
  v8 = [v7 copy];
  [v4 setTitle:v8];

  v9 = [(SFCommandButtonItem *)self command];
  v10 = [v9 copy];
  [v4 setCommand:v10];

  v11 = [(SFCommandButtonItem *)self previewButtonItems];
  v12 = [v11 copy];
  [v4 setPreviewButtonItems:v12];

  [v4 setIsDestructive:{-[SFCommandButtonItem isDestructive](self, "isDestructive")}];
  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCommandButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBCommandButtonItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCommandButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBCommandButtonItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCommandButtonItem alloc] initWithFacade:self];
  v5 = [(_SFPBCommandButtonItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCommandButtonItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCommandButtonItem alloc] initWithData:v5];
  v7 = [(SFCommandButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end