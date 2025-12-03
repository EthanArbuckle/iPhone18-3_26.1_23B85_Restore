@interface SFToggleWatchListStatusCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFToggleWatchListStatusCommand)initWithCoder:(id)coder;
- (SFToggleWatchListStatusCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFToggleWatchListStatusCommand

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFToggleWatchListStatusCommand;
  v3 = [(SFCommand *)&v8 hash];
  watchListItem = [(SFToggleWatchListStatusCommand *)self watchListItem];
  v5 = [watchListItem hash];
  v6 = v5 ^ [(SFToggleWatchListStatusCommand *)self shouldAddToWatchList];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFToggleWatchListStatusCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFToggleWatchListStatusCommand;
      if ([(SFCommand *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        watchListItem = [(SFToggleWatchListStatusCommand *)self watchListItem];
        watchListItem2 = [(SFToggleWatchListStatusCommand *)v7 watchListItem];
        if ((watchListItem != 0) == (watchListItem2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_14:

          goto LABEL_15;
        }

        watchListItem3 = [(SFToggleWatchListStatusCommand *)self watchListItem];
        if (!watchListItem3 || (-[SFToggleWatchListStatusCommand watchListItem](self, "watchListItem"), v3 = objc_claimAutoreleasedReturnValue(), -[SFToggleWatchListStatusCommand watchListItem](v7, "watchListItem"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          shouldAddToWatchList = [(SFToggleWatchListStatusCommand *)self shouldAddToWatchList];
          v11 = shouldAddToWatchList ^ [(SFToggleWatchListStatusCommand *)v7 shouldAddToWatchList]^ 1;
          if (!watchListItem3)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        goto LABEL_13;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFToggleWatchListStatusCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  watchListItem = [(SFToggleWatchListStatusCommand *)self watchListItem];
  v6 = [watchListItem copy];
  [v4 setWatchListItem:v6];

  [v4 setShouldAddToWatchList:{-[SFToggleWatchListStatusCommand shouldAddToWatchList](self, "shouldAddToWatchList")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBToggleWatchListStatusCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBToggleWatchListStatusCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBToggleWatchListStatusCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBToggleWatchListStatusCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFToggleWatchListStatusCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFToggleWatchListStatusCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFToggleWatchListStatusCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    watchListItem = [(SFCommand *)v8 watchListItem];
    [(SFToggleWatchListStatusCommand *)v5 setWatchListItem:watchListItem];

    [(SFToggleWatchListStatusCommand *)v5 setShouldAddToWatchList:[(SFCommand *)v8 shouldAddToWatchList]];
    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

- (SFToggleWatchListStatusCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFToggleWatchListStatusCommand;
  v5 = [(SFToggleWatchListStatusCommand *)&v12 init];
  if (v5)
  {
    watchListItem = [protobufCopy watchListItem];

    if (watchListItem)
    {
      v7 = [SFWatchListItem alloc];
      watchListItem2 = [protobufCopy watchListItem];
      v9 = [(SFWatchListItem *)v7 initWithProtobuf:watchListItem2];
      [(SFToggleWatchListStatusCommand *)v5 setWatchListItem:v9];
    }

    if ([protobufCopy shouldAddToWatchList])
    {
      -[SFToggleWatchListStatusCommand setShouldAddToWatchList:](v5, "setShouldAddToWatchList:", [protobufCopy shouldAddToWatchList]);
    }

    v10 = v5;
  }

  return v5;
}

@end