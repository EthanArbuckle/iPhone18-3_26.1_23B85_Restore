@interface SFContactImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFContactImage)initWithCoder:(id)a3;
- (SFContactImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFContactImage

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SFContactImage;
  v3 = [(SFImage *)&v10 hash];
  v4 = [(SFContactImage *)self contactIdentifiers];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFContactImage *)self threeDTouchEnabled];
  v7 = [(SFContactImage *)self appIconBadgeBundleIdentifier];
  v8 = v6 ^ [v7 hash];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFContactImage *)v5 isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFContactImage;
      if ([(SFImage *)&v22 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFContactImage *)self contactIdentifiers];
        v8 = [(SFContactImage *)v6 contactIdentifiers];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_21:

          goto LABEL_22;
        }

        v9 = [(SFContactImage *)self contactIdentifiers];
        if (v9)
        {
          v10 = [(SFContactImage *)self contactIdentifiers];
          v3 = [(SFContactImage *)v6 contactIdentifiers];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_19;
          }

          v21 = v10;
        }

        v12 = [(SFContactImage *)self threeDTouchEnabled];
        if (v12 == [(SFContactImage *)v6 threeDTouchEnabled])
        {
          v13 = [(SFContactImage *)self appIconBadgeBundleIdentifier];
          v14 = [(SFContactImage *)v6 appIconBadgeBundleIdentifier];
          v15 = v14;
          if ((v13 != 0) != (v14 == 0))
          {
            v16 = [(SFContactImage *)self appIconBadgeBundleIdentifier];
            if (v16)
            {
              v17 = v16;
              v20 = [(SFContactImage *)self appIconBadgeBundleIdentifier];
              v19 = [(SFContactImage *)v6 appIconBadgeBundleIdentifier];
              v11 = [v20 isEqual:v19];
            }

            else
            {

              v11 = 1;
            }

LABEL_18:
            v10 = v21;
            if (!v9)
            {
LABEL_20:

              goto LABEL_21;
            }

LABEL_19:

            goto LABEL_20;
          }
        }

        v11 = 0;
        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_22:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFContactImage;
  v4 = [(SFImage *)&v10 copyWithZone:a3];
  v5 = [(SFContactImage *)self contactIdentifiers];
  v6 = [v5 copy];
  [v4 setContactIdentifiers:v6];

  [v4 setThreeDTouchEnabled:{-[SFContactImage threeDTouchEnabled](self, "threeDTouchEnabled")}];
  v7 = [(SFContactImage *)self appIconBadgeBundleIdentifier];
  v8 = [v7 copy];
  [v4 setAppIconBadgeBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBContactImage alloc] initWithFacade:self];
  v3 = [(_SFPBContactImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBContactImage alloc] initWithFacade:self];
  v3 = [(_SFPBContactImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFContactImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFContactImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFContactImage)initWithProtobuf:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SFContactImage;
  v5 = [(SFContactImage *)&v22 init];
  if (v5)
  {
    v6 = [v4 contactIdentifiers];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v4 contactIdentifiers];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (*(*(&v18 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    [(SFContactImage *)v5 setContactIdentifiers:v7];
    if ([v4 threeDTouchEnabled])
    {
      -[SFContactImage setThreeDTouchEnabled:](v5, "setThreeDTouchEnabled:", [v4 threeDTouchEnabled]);
    }

    v13 = [v4 appIconBadgeBundleIdentifier];

    if (v13)
    {
      v14 = [v4 appIconBadgeBundleIdentifier];
      [(SFContactImage *)v5 setAppIconBadgeBundleIdentifier:v14];
    }

    v15 = v5;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

@end