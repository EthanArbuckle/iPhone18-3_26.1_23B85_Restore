@interface VUIPlistSeasonMediaCollection
- (VUIPlistSeasonMediaCollection)initWithMediaLibrary:(id)library databaseSeason:(id)season requestedProperties:(id)properties;
- (VUIPlistSeasonMediaCollection)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind;
- (id)_valueForPropertyDescriptor:(id)descriptor;
- (id)coverArtImageIdentifier;
- (id)imageLoadParamsWithImageType:(unint64_t)type;
- (id)mediaItemCount;
- (id)seasonNumber;
- (id)showIdentifier;
- (id)showTitle;
@end

@implementation VUIPlistSeasonMediaCollection

- (VUIPlistSeasonMediaCollection)initWithMediaLibrary:(id)library databaseSeason:(id)season requestedProperties:(id)properties
{
  seasonCopy = season;
  propertiesCopy = properties;
  libraryCopy = library;
  v12 = [VUIPlistMediaEntityIdentifier alloc];
  identifier = [seasonCopy identifier];
  v14 = [(VUIPlistMediaEntityIdentifier *)v12 initWithIdentifier:identifier type:5];

  v15 = VUIPlistSeasonMediaKind();
  v18.receiver = self;
  v18.super_class = VUIPlistSeasonMediaCollection;
  v16 = [(VUIMediaEntity *)&v18 initWithMediaLibrary:libraryCopy identifier:v14 requestedProperties:propertiesCopy kind:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_databaseSeason, season);
  }

  return v16;
}

- (VUIPlistSeasonMediaCollection)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The %@ initializer is not available.", v9}];

  return 0;
}

- (id)coverArtImageIdentifier
{
  databaseSeason = [(VUIPlistSeasonMediaCollection *)self databaseSeason];
  coverArtURL = [databaseSeason coverArtURL];
  absoluteString = [coverArtURL absoluteString];

  return absoluteString;
}

- (id)showIdentifier
{
  databaseSeason = [(VUIPlistSeasonMediaCollection *)self databaseSeason];
  show = [databaseSeason show];
  identifier = [show identifier];

  v5 = [[VUIPlistMediaEntityIdentifier alloc] initWithIdentifier:identifier type:4];

  return v5;
}

- (id)showTitle
{
  databaseSeason = [(VUIPlistSeasonMediaCollection *)self databaseSeason];
  show = [databaseSeason show];
  title = [show title];

  return title;
}

- (id)seasonNumber
{
  databaseSeason = [(VUIPlistSeasonMediaCollection *)self databaseSeason];
  seasonNumber = [databaseSeason seasonNumber];

  return seasonNumber;
}

- (id)_valueForPropertyDescriptor:(id)descriptor
{
  sourcePropertyNames = [descriptor sourcePropertyNames];
  allObjects = [sourcePropertyNames allObjects];

  if ([allObjects count] == 1)
  {
    firstObject = [allObjects firstObject];
    databaseSeason = [(VUIPlistSeasonMediaCollection *)self databaseSeason];
    NSSelectorFromString(firstObject);
    if (objc_opt_respondsToSelector())
    {
      v8 = [databaseSeason valueForKey:firstObject];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mediaItemCount
{
  v2 = MEMORY[0x1E696AD98];
  databaseSeason = [(VUIPlistSeasonMediaCollection *)self databaseSeason];
  episodes = [databaseSeason episodes];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(episodes, "count")}];

  return v5;
}

- (id)imageLoadParamsWithImageType:(unint64_t)type
{
  if (type)
  {
    v3 = 0;
  }

  else
  {
    databaseSeason = [(VUIPlistSeasonMediaCollection *)self databaseSeason];
    coverArtURL = [databaseSeason coverArtURL];

    coverArtImageIdentifier = [(VUIPlistSeasonMediaCollection *)self coverArtImageIdentifier];
    v3 = [[VUIPlistMediaEntityImageLoadParams alloc] initWithImageURL:coverArtURL baseImageIdentifier:coverArtImageIdentifier imageType:0];
  }

  return v3;
}

@end