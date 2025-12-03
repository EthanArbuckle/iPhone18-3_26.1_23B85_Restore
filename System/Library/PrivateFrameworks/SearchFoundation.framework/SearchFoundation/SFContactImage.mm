@interface SFContactImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFContactImage)initWithCoder:(id)coder;
- (SFContactImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFContactImage

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SFContactImage;
  v3 = [(SFImage *)&v10 hash];
  contactIdentifiers = [(SFContactImage *)self contactIdentifiers];
  v5 = [contactIdentifiers hash];
  v6 = v5 ^ [(SFContactImage *)self threeDTouchEnabled];
  appIconBadgeBundleIdentifier = [(SFContactImage *)self appIconBadgeBundleIdentifier];
  v8 = v6 ^ [appIconBadgeBundleIdentifier hash];

  return v8 ^ v3;
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
    if ([(SFContactImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFContactImage;
      if ([(SFImage *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        contactIdentifiers = [(SFContactImage *)self contactIdentifiers];
        contactIdentifiers2 = [(SFContactImage *)v6 contactIdentifiers];
        if ((contactIdentifiers != 0) == (contactIdentifiers2 == 0))
        {
          v11 = 0;
LABEL_21:

          goto LABEL_22;
        }

        contactIdentifiers3 = [(SFContactImage *)self contactIdentifiers];
        if (contactIdentifiers3)
        {
          contactIdentifiers4 = [(SFContactImage *)self contactIdentifiers];
          contactIdentifiers5 = [(SFContactImage *)v6 contactIdentifiers];
          if (![contactIdentifiers4 isEqual:contactIdentifiers5])
          {
            v11 = 0;
            goto LABEL_19;
          }

          v21 = contactIdentifiers4;
        }

        threeDTouchEnabled = [(SFContactImage *)self threeDTouchEnabled];
        if (threeDTouchEnabled == [(SFContactImage *)v6 threeDTouchEnabled])
        {
          appIconBadgeBundleIdentifier = [(SFContactImage *)self appIconBadgeBundleIdentifier];
          appIconBadgeBundleIdentifier2 = [(SFContactImage *)v6 appIconBadgeBundleIdentifier];
          v15 = appIconBadgeBundleIdentifier2;
          if ((appIconBadgeBundleIdentifier != 0) != (appIconBadgeBundleIdentifier2 == 0))
          {
            appIconBadgeBundleIdentifier3 = [(SFContactImage *)self appIconBadgeBundleIdentifier];
            if (appIconBadgeBundleIdentifier3)
            {
              v17 = appIconBadgeBundleIdentifier3;
              appIconBadgeBundleIdentifier4 = [(SFContactImage *)self appIconBadgeBundleIdentifier];
              appIconBadgeBundleIdentifier5 = [(SFContactImage *)v6 appIconBadgeBundleIdentifier];
              v11 = [appIconBadgeBundleIdentifier4 isEqual:appIconBadgeBundleIdentifier5];
            }

            else
            {

              v11 = 1;
            }

LABEL_18:
            contactIdentifiers4 = v21;
            if (!contactIdentifiers3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFContactImage;
  v4 = [(SFImage *)&v10 copyWithZone:zone];
  contactIdentifiers = [(SFContactImage *)self contactIdentifiers];
  v6 = [contactIdentifiers copy];
  [v4 setContactIdentifiers:v6];

  [v4 setThreeDTouchEnabled:{-[SFContactImage threeDTouchEnabled](self, "threeDTouchEnabled")}];
  appIconBadgeBundleIdentifier = [(SFContactImage *)self appIconBadgeBundleIdentifier];
  v8 = [appIconBadgeBundleIdentifier copy];
  [v4 setAppIconBadgeBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBContactImage alloc] initWithFacade:self];
  jsonData = [(_SFPBContactImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBContactImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBContactImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFContactImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFContactImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFContactImage)initWithProtobuf:(id)protobuf
{
  v24 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v22.receiver = self;
  v22.super_class = SFContactImage;
  v5 = [(SFContactImage *)&v22 init];
  if (v5)
  {
    contactIdentifiers = [protobufCopy contactIdentifiers];
    if (contactIdentifiers)
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
    contactIdentifiers2 = [protobufCopy contactIdentifiers];
    v9 = [contactIdentifiers2 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(contactIdentifiers2);
          }

          if (*(*(&v18 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [contactIdentifiers2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    [(SFContactImage *)v5 setContactIdentifiers:v7];
    if ([protobufCopy threeDTouchEnabled])
    {
      -[SFContactImage setThreeDTouchEnabled:](v5, "setThreeDTouchEnabled:", [protobufCopy threeDTouchEnabled]);
    }

    appIconBadgeBundleIdentifier = [protobufCopy appIconBadgeBundleIdentifier];

    if (appIconBadgeBundleIdentifier)
    {
      appIconBadgeBundleIdentifier2 = [protobufCopy appIconBadgeBundleIdentifier];
      [(SFContactImage *)v5 setAppIconBadgeBundleIdentifier:appIconBadgeBundleIdentifier2];
    }

    v15 = v5;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

@end