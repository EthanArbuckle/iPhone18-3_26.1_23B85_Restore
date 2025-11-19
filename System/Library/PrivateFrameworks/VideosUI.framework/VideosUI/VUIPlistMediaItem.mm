@interface VUIPlistMediaItem
- (VUIPlistMediaItem)initWithMediaLibrary:(id)a3 databaseItem:(id)a4 requestedProperties:(id)a5;
- (VUIPlistMediaItem)initWithMediaLibrary:(id)a3 identifier:(id)a4 requestedProperties:(id)a5 kind:(id)a6;
- (id)_valueForPropertyDescriptor:(id)a3;
- (id)assetType;
- (id)coverArtImageIdentifier;
- (id)imageLoadParamsWithImageType:(unint64_t)a3;
- (id)isLocal;
- (id)previewFrameImageIdentifier;
- (id)seasonIdentifier;
- (id)seasonNumber;
- (id)seasonTitle;
- (id)showIdentifier;
- (id)showTitle;
@end

@implementation VUIPlistMediaItem

- (VUIPlistMediaItem)initWithMediaLibrary:(id)a3 databaseItem:(id)a4 requestedProperties:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [VUIPlistMediaEntityIdentifier alloc];
  v13 = [v9 identifier];
  v14 = -[VUIPlistMediaEntityIdentifier initWithIdentifier:type:](v12, "initWithIdentifier:type:", v13, [v9 type]);

  v15 = VUIPlistMediaItemKind();
  v18.receiver = self;
  v18.super_class = VUIPlistMediaItem;
  v16 = [(VUIMediaEntity *)&v18 initWithMediaLibrary:v11 identifier:v14 requestedProperties:v10 kind:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_databaseItem, a4);
  }

  return v16;
}

- (VUIPlistMediaItem)initWithMediaLibrary:(id)a3 identifier:(id)a4 requestedProperties:(id)a5 kind:(id)a6
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The %@ initializer is not available.", v9}];

  return 0;
}

- (id)coverArtImageIdentifier
{
  v2 = [(VUIPlistMediaItem *)self databaseItem];
  v3 = [v2 coverArtURL];
  v4 = [v3 absoluteString];

  return v4;
}

- (id)showIdentifier
{
  v2 = [(VUIPlistMediaItem *)self databaseItem];
  v3 = [v2 season];
  v4 = [v3 show];
  v5 = [v4 identifier];

  v6 = [[VUIPlistMediaEntityIdentifier alloc] initWithIdentifier:v5 type:4];

  return v6;
}

- (id)showTitle
{
  v2 = [(VUIPlistMediaItem *)self databaseItem];
  v3 = [v2 season];
  v4 = [v3 show];
  v5 = [v4 title];

  return v5;
}

- (id)seasonNumber
{
  v2 = [(VUIPlistMediaItem *)self databaseItem];
  v3 = [v2 season];
  v4 = [v3 seasonNumber];

  return v4;
}

- (id)isLocal
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(VUIPlistMediaItem *)self databaseItem];
  v4 = [v3 downloadState];
  v5 = [v2 numberWithBool:{objc_msgSend(v4, "isEqualToString:", VUIPlistDatabaseItemDownloadStateDownloaded)}];

  return v5;
}

- (id)_valueForPropertyDescriptor:(id)a3
{
  v4 = [a3 sourcePropertyNames];
  v5 = [v4 allObjects];

  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [(VUIPlistMediaItem *)self databaseItem];
    NSSelectorFromString(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 valueForKey:v6];
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
  v2 = [(VUIPlistMediaItem *)self databaseItem];
  v3 = [v2 previewFrameURL];
  v4 = [v3 absoluteString];

  return v4;
}

- (id)seasonIdentifier
{
  v2 = [(VUIPlistMediaItem *)self databaseItem];
  v3 = [v2 season];
  v4 = [v3 identifier];

  v5 = [[VUIPlistMediaEntityIdentifier alloc] initWithIdentifier:v4 type:5];

  return v5;
}

- (id)seasonTitle
{
  v2 = [(VUIPlistMediaItem *)self databaseItem];
  v3 = [v2 season];
  v4 = [v3 title];

  return v4;
}

- (id)assetType
{
  v2 = [(VUIPlistMediaItem *)self databaseItem];
  v3 = [v2 downloadState];
  v4 = [v3 isEqualToString:VUIPlistDatabaseItemDownloadStateDownloaded];

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

- (id)imageLoadParamsWithImageType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v8 = [(VUIPlistMediaItem *)self databaseItem];
    v6 = [v8 previewFrameURL];

    v7 = [(VUIPlistMediaItem *)self previewFrameImageIdentifier];
  }

  else
  {
    if (a3)
    {
      v9 = 0;
      v6 = 0;
      v10 = 0;
      goto LABEL_9;
    }

    v5 = [(VUIPlistMediaItem *)self databaseItem];
    v6 = [v5 coverArtURL];

    v7 = [(VUIPlistMediaItem *)self coverArtImageIdentifier];
  }

  v9 = v7;
  v10 = 0;
  if (v6 && v7)
  {
    v10 = [[VUIPlistMediaEntityImageLoadParams alloc] initWithImageURL:v6 baseImageIdentifier:v7 imageType:a3];
  }

LABEL_9:

  return v10;
}

@end