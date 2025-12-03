@interface VUIPlistMediaItem
- (VUIPlistMediaItem)initWithMediaLibrary:(id)library databaseItem:(id)item requestedProperties:(id)properties;
- (VUIPlistMediaItem)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind;
- (id)_valueForPropertyDescriptor:(id)descriptor;
- (id)assetType;
- (id)coverArtImageIdentifier;
- (id)imageLoadParamsWithImageType:(unint64_t)type;
- (id)isLocal;
- (id)previewFrameImageIdentifier;
- (id)seasonIdentifier;
- (id)seasonNumber;
- (id)seasonTitle;
- (id)showIdentifier;
- (id)showTitle;
@end

@implementation VUIPlistMediaItem

- (VUIPlistMediaItem)initWithMediaLibrary:(id)library databaseItem:(id)item requestedProperties:(id)properties
{
  itemCopy = item;
  propertiesCopy = properties;
  libraryCopy = library;
  v12 = [VUIPlistMediaEntityIdentifier alloc];
  identifier = [itemCopy identifier];
  v14 = -[VUIPlistMediaEntityIdentifier initWithIdentifier:type:](v12, "initWithIdentifier:type:", identifier, [itemCopy type]);

  v15 = VUIPlistMediaItemKind();
  v18.receiver = self;
  v18.super_class = VUIPlistMediaItem;
  v16 = [(VUIMediaEntity *)&v18 initWithMediaLibrary:libraryCopy identifier:v14 requestedProperties:propertiesCopy kind:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_databaseItem, item);
  }

  return v16;
}

- (VUIPlistMediaItem)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The %@ initializer is not available.", v9}];

  return 0;
}

- (id)coverArtImageIdentifier
{
  databaseItem = [(VUIPlistMediaItem *)self databaseItem];
  coverArtURL = [databaseItem coverArtURL];
  absoluteString = [coverArtURL absoluteString];

  return absoluteString;
}

- (id)showIdentifier
{
  databaseItem = [(VUIPlistMediaItem *)self databaseItem];
  season = [databaseItem season];
  show = [season show];
  identifier = [show identifier];

  v6 = [[VUIPlistMediaEntityIdentifier alloc] initWithIdentifier:identifier type:4];

  return v6;
}

- (id)showTitle
{
  databaseItem = [(VUIPlistMediaItem *)self databaseItem];
  season = [databaseItem season];
  show = [season show];
  title = [show title];

  return title;
}

- (id)seasonNumber
{
  databaseItem = [(VUIPlistMediaItem *)self databaseItem];
  season = [databaseItem season];
  seasonNumber = [season seasonNumber];

  return seasonNumber;
}

- (id)isLocal
{
  v2 = MEMORY[0x1E696AD98];
  databaseItem = [(VUIPlistMediaItem *)self databaseItem];
  downloadState = [databaseItem downloadState];
  v5 = [v2 numberWithBool:{objc_msgSend(downloadState, "isEqualToString:", VUIPlistDatabaseItemDownloadStateDownloaded)}];

  return v5;
}

- (id)_valueForPropertyDescriptor:(id)descriptor
{
  sourcePropertyNames = [descriptor sourcePropertyNames];
  allObjects = [sourcePropertyNames allObjects];

  if ([allObjects count] == 1)
  {
    firstObject = [allObjects firstObject];
    databaseItem = [(VUIPlistMediaItem *)self databaseItem];
    NSSelectorFromString(firstObject);
    if (objc_opt_respondsToSelector())
    {
      v8 = [databaseItem valueForKey:firstObject];
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

- (id)previewFrameImageIdentifier
{
  databaseItem = [(VUIPlistMediaItem *)self databaseItem];
  previewFrameURL = [databaseItem previewFrameURL];
  absoluteString = [previewFrameURL absoluteString];

  return absoluteString;
}

- (id)seasonIdentifier
{
  databaseItem = [(VUIPlistMediaItem *)self databaseItem];
  season = [databaseItem season];
  identifier = [season identifier];

  v5 = [[VUIPlistMediaEntityIdentifier alloc] initWithIdentifier:identifier type:5];

  return v5;
}

- (id)seasonTitle
{
  databaseItem = [(VUIPlistMediaItem *)self databaseItem];
  season = [databaseItem season];
  title = [season title];

  return title;
}

- (id)assetType
{
  databaseItem = [(VUIPlistMediaItem *)self databaseItem];
  downloadState = [databaseItem downloadState];
  v4 = [downloadState isEqualToString:VUIPlistDatabaseItemDownloadStateDownloaded];

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithUnsignedInteger:v5];
}

- (id)imageLoadParamsWithImageType:(unint64_t)type
{
  if (type == 1)
  {
    databaseItem = [(VUIPlistMediaItem *)self databaseItem];
    previewFrameURL = [databaseItem previewFrameURL];

    previewFrameImageIdentifier = [(VUIPlistMediaItem *)self previewFrameImageIdentifier];
  }

  else
  {
    if (type)
    {
      v9 = 0;
      previewFrameURL = 0;
      v10 = 0;
      goto LABEL_9;
    }

    databaseItem2 = [(VUIPlistMediaItem *)self databaseItem];
    previewFrameURL = [databaseItem2 coverArtURL];

    previewFrameImageIdentifier = [(VUIPlistMediaItem *)self coverArtImageIdentifier];
  }

  v9 = previewFrameImageIdentifier;
  v10 = 0;
  if (previewFrameURL && previewFrameImageIdentifier)
  {
    v10 = [[VUIPlistMediaEntityImageLoadParams alloc] initWithImageURL:previewFrameURL baseImageIdentifier:previewFrameImageIdentifier imageType:type];
  }

LABEL_9:

  return v10;
}

@end