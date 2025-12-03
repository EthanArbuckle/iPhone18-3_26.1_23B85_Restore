@interface SFButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFButtonItem)initWithCoder:(id)coder;
- (SFButtonItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFButtonItem

- (SFButtonItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v28.receiver = self;
  v28.super_class = SFButtonItem;
  v5 = [(SFButtonItem *)&v28 init];
  if (v5)
  {
    buttonAppearance = [protobufCopy buttonAppearance];

    if (buttonAppearance)
    {
      v7 = [SFButtonItemAppearance alloc];
      buttonAppearance2 = [protobufCopy buttonAppearance];
      v9 = [(SFButtonItemAppearance *)v7 initWithProtobuf:buttonAppearance2];
      [(SFButtonItem *)v5 setButtonAppearance:v9];
    }

    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [protobufCopy uniqueId]);
    }

    commandButtonItem = [protobufCopy commandButtonItem];

    if (commandButtonItem)
    {
      v11 = [SFCommandButtonItem alloc];
      commandButtonItem2 = [protobufCopy commandButtonItem];
    }

    else
    {
      contactButtonItem = [protobufCopy contactButtonItem];

      if (contactButtonItem)
      {
        v11 = [SFContactButtonItem alloc];
        commandButtonItem2 = [protobufCopy contactButtonItem];
      }

      else
      {
        coreSpotlightButtonItem = [protobufCopy coreSpotlightButtonItem];

        if (coreSpotlightButtonItem)
        {
          v11 = [SFCoreSpotlightButtonItem alloc];
          commandButtonItem2 = [protobufCopy coreSpotlightButtonItem];
        }

        else
        {
          watchListButtonItem = [protobufCopy watchListButtonItem];

          if (watchListButtonItem)
          {
            v11 = [SFWatchListButtonItem alloc];
            commandButtonItem2 = [protobufCopy watchListButtonItem];
          }

          else
          {
            appActionsButtonItem = [protobufCopy appActionsButtonItem];

            if (appActionsButtonItem)
            {
              v11 = [SFAppAutoShortcutsButtonItem alloc];
              commandButtonItem2 = [protobufCopy appActionsButtonItem];
            }

            else
            {
              sportsFollowButtonItem = [protobufCopy sportsFollowButtonItem];

              if (sportsFollowButtonItem)
              {
                v11 = [SFSportsFollowButtonItem alloc];
                commandButtonItem2 = [protobufCopy sportsFollowButtonItem];
              }

              else
              {
                playWatchListItemButtonItem = [protobufCopy playWatchListItemButtonItem];

                if (playWatchListItemButtonItem)
                {
                  v11 = [SFPlayWatchListItemButtonItem alloc];
                  commandButtonItem2 = [protobufCopy playWatchListItemButtonItem];
                }

                else
                {
                  playAudioButtonItem = [protobufCopy playAudioButtonItem];

                  if (playAudioButtonItem)
                  {
                    v11 = [SFPlayAudioButtonItem alloc];
                    commandButtonItem2 = [protobufCopy playAudioButtonItem];
                  }

                  else
                  {
                    storeButtonItem = [protobufCopy storeButtonItem];

                    if (!storeButtonItem)
                    {
                      v13 = v5;
                      goto LABEL_29;
                    }

                    v11 = [SFStoreButtonItem alloc];
                    commandButtonItem2 = [protobufCopy storeButtonItem];
                  }
                }
              }
            }
          }
        }
      }
    }

    v22 = commandButtonItem2;
    v13 = [(SFCommandButtonItem *)v11 initWithProtobuf:commandButtonItem2];

    buttonAppearance3 = [protobufCopy buttonAppearance];

    if (buttonAppearance3)
    {
      v24 = [SFButtonItemAppearance alloc];
      buttonAppearance4 = [protobufCopy buttonAppearance];
      v26 = [(SFButtonItemAppearance *)v24 initWithProtobuf:buttonAppearance4];
      [(SFButtonItem *)v13 setButtonAppearance:v26];
    }

    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v13, "setUniqueId:", [protobufCopy uniqueId]);
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_29:

  return v13;
}

- (unint64_t)hash
{
  buttonAppearance = [(SFButtonItem *)self buttonAppearance];
  v4 = [buttonAppearance hash];
  uniqueId = [(SFButtonItem *)self uniqueId];

  return uniqueId ^ v4;
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
    if ([(SFButtonItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      buttonAppearance = [(SFButtonItem *)self buttonAppearance];
      buttonAppearance2 = [(SFButtonItem *)v7 buttonAppearance];
      if ((buttonAppearance != 0) == (buttonAppearance2 == 0))
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      buttonAppearance3 = [(SFButtonItem *)self buttonAppearance];
      if (!buttonAppearance3 || (-[SFButtonItem buttonAppearance](self, "buttonAppearance"), v3 = objc_claimAutoreleasedReturnValue(), -[SFButtonItem buttonAppearance](v7, "buttonAppearance"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        uniqueId = [(SFButtonItem *)self uniqueId];
        v11 = uniqueId == [(SFButtonItem *)v7 uniqueId];
        if (!buttonAppearance3)
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
  buttonAppearance = [(SFButtonItem *)self buttonAppearance];
  v6 = [buttonAppearance copy];
  [v4 setButtonAppearance:v6];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBButtonItem alloc] initWithFacade:self];
  jsonData = [(_SFPBButtonItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBButtonItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBButtonItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBButtonItem alloc] initWithFacade:self];
  data = [(_SFPBButtonItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFButtonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBButtonItem alloc] initWithData:v5];
  v7 = [(SFButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end