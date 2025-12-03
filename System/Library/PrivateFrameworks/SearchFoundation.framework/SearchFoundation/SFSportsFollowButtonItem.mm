@interface SFSportsFollowButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSportsFollowButtonItem)initWithCoder:(id)coder;
- (SFSportsFollowButtonItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSportsFollowButtonItem

- (SFSportsFollowButtonItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v18.receiver = self;
  v18.super_class = SFSportsFollowButtonItem;
  v5 = [(SFSportsFollowButtonItem *)&v18 init];
  if (v5)
  {
    sportsItem = [protobufCopy sportsItem];

    if (sportsItem)
    {
      v7 = [SFSportsItem alloc];
      sportsItem2 = [protobufCopy sportsItem];
      v9 = [(SFSportsItem *)v7 initWithProtobuf:sportsItem2];
      [(SFSportsFollowButtonItem *)v5 setSportsItem:v9];
    }

    toggleButtonConfiguration = [protobufCopy toggleButtonConfiguration];

    if (toggleButtonConfiguration)
    {
      v11 = [SFToggleButtonConfiguration alloc];
      toggleButtonConfiguration2 = [protobufCopy toggleButtonConfiguration];
      v13 = [(SFToggleButtonConfiguration *)v11 initWithProtobuf:toggleButtonConfiguration2];
      [(SFSportsFollowButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    fallbackTitle = [protobufCopy fallbackTitle];

    if (fallbackTitle)
    {
      fallbackTitle2 = [protobufCopy fallbackTitle];
      [(SFSportsFollowButtonItem *)v5 setFallbackTitle:fallbackTitle2];
    }

    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [protobufCopy uniqueId]);
    }

    v16 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFSportsFollowButtonItem;
  v3 = [(SFButtonItem *)&v12 hash];
  sportsItem = [(SFSportsFollowButtonItem *)self sportsItem];
  v5 = [sportsItem hash];
  toggleButtonConfiguration = [(SFSportsFollowButtonItem *)self toggleButtonConfiguration];
  v7 = v5 ^ [toggleButtonConfiguration hash];
  fallbackTitle = [(SFSportsFollowButtonItem *)self fallbackTitle];
  v9 = v7 ^ [fallbackTitle hash];
  v10 = v9 ^ [(SFButtonItem *)self uniqueId];

  return v10 ^ v3;
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
    if ([(SFSportsFollowButtonItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFSportsFollowButtonItem;
      if ([(SFButtonItem *)&v34 isEqual:equalCopy])
      {
        v6 = equalCopy;
        sportsItem = [(SFSportsFollowButtonItem *)self sportsItem];
        sportsItem2 = [(SFSportsFollowButtonItem *)v6 sportsItem];
        if ((sportsItem != 0) == (sportsItem2 == 0))
        {
          v11 = 0;
LABEL_34:

          goto LABEL_35;
        }

        sportsItem3 = [(SFSportsFollowButtonItem *)self sportsItem];
        if (sportsItem3)
        {
          sportsItem4 = [(SFSportsFollowButtonItem *)self sportsItem];
          sportsItem5 = [(SFSportsFollowButtonItem *)v6 sportsItem];
          if (![sportsItem4 isEqual:sportsItem5])
          {
            v11 = 0;
            goto LABEL_32;
          }

          v33 = sportsItem4;
        }

        toggleButtonConfiguration = [(SFSportsFollowButtonItem *)self toggleButtonConfiguration];
        toggleButtonConfiguration2 = [(SFSportsFollowButtonItem *)v6 toggleButtonConfiguration];
        v14 = toggleButtonConfiguration2;
        if ((toggleButtonConfiguration != 0) == (toggleButtonConfiguration2 == 0))
        {

          v11 = 0;
          goto LABEL_31;
        }

        toggleButtonConfiguration3 = [(SFSportsFollowButtonItem *)self toggleButtonConfiguration];
        if (toggleButtonConfiguration3)
        {
          v27 = toggleButtonConfiguration;
          toggleButtonConfiguration4 = [(SFSportsFollowButtonItem *)self toggleButtonConfiguration];
          toggleButtonConfiguration5 = [(SFSportsFollowButtonItem *)v6 toggleButtonConfiguration];
          v30 = toggleButtonConfiguration4;
          if (![toggleButtonConfiguration4 isEqual:?])
          {
            v11 = 0;
            toggleButtonConfiguration = v27;
            goto LABEL_29;
          }

          v31 = toggleButtonConfiguration3;
          v32 = sportsItem5;
          toggleButtonConfiguration = v27;
        }

        else
        {
          v31 = 0;
          v32 = sportsItem5;
        }

        fallbackTitle = [(SFSportsFollowButtonItem *)self fallbackTitle];
        fallbackTitle2 = [(SFSportsFollowButtonItem *)v6 fallbackTitle];
        if ((fallbackTitle != 0) == (fallbackTitle2 == 0))
        {

          v11 = 0;
          toggleButtonConfiguration3 = v31;
          sportsItem5 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = fallbackTitle2;
        v26 = fallbackTitle;
        [(SFSportsFollowButtonItem *)self fallbackTitle];
        v28 = toggleButtonConfiguration3 = v31;
        if (v28)
        {
          fallbackTitle3 = [(SFSportsFollowButtonItem *)self fallbackTitle];
          fallbackTitle4 = [(SFSportsFollowButtonItem *)v6 fallbackTitle];
          v24 = fallbackTitle3;
          v20 = [fallbackTitle3 isEqual:?];
          sportsItem5 = v32;
          if (!v20)
          {
            v11 = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              sportsItem4 = v33;
              if (!sportsItem3)
              {
LABEL_33:

                goto LABEL_34;
              }

LABEL_32:

              goto LABEL_33;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          sportsItem5 = v32;
        }

        uniqueId = [(SFButtonItem *)self uniqueId];
        v11 = uniqueId == [(SFButtonItem *)v6 uniqueId];
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v11 = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFSportsFollowButtonItem;
  v4 = [(SFButtonItem *)&v12 copyWithZone:zone];
  sportsItem = [(SFSportsFollowButtonItem *)self sportsItem];
  v6 = [sportsItem copy];
  [v4 setSportsItem:v6];

  toggleButtonConfiguration = [(SFSportsFollowButtonItem *)self toggleButtonConfiguration];
  v8 = [toggleButtonConfiguration copy];
  [v4 setToggleButtonConfiguration:v8];

  fallbackTitle = [(SFSportsFollowButtonItem *)self fallbackTitle];
  v10 = [fallbackTitle copy];
  [v4 setFallbackTitle:v10];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSportsFollowButtonItem alloc] initWithFacade:self];
  jsonData = [(_SFPBSportsFollowButtonItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSportsFollowButtonItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSportsFollowButtonItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBSportsFollowButtonItem alloc] initWithFacade:self];
  data = [(_SFPBSportsFollowButtonItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFSportsFollowButtonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSportsFollowButtonItem alloc] initWithData:v5];
  v7 = [(SFSportsFollowButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end