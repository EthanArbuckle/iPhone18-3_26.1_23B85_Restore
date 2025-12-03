@interface PXSharedAlbumPublicURLActivityItemSource
- (PXSharedAlbumPublicURLActivityItemSource)initWithSharedAlbum:(id)album;
- (id)activityViewController:(id)controller itemsForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItems:(id)items;
- (id)activityViewControllerSubject:(id)subject;
@end

@implementation PXSharedAlbumPublicURLActivityItemSource

- (id)activityViewControllerSubject:(id)subject
{
  sharedAlbum = [(PXSharedAlbumPublicURLActivityItemSource *)self sharedAlbum];
  [sharedAlbum localizedTitle];
  objc_claimAutoreleasedReturnValue();

  PLServicesLocalizedFrameworkString();
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

- (id)activityViewController:(id)controller thumbnailForActivityType:(id)type
{
  v4 = MEMORY[0x1E6978650];
  v5 = [(PXSharedAlbumPublicURLActivityItemSource *)self sharedAlbum:controller];
  v6 = [v4 posterImageForAssetCollection:v5];

  return v6;
}

- (id)activityViewController:(id)controller itemsForActivityType:(id)type
{
  typeCopy = type;
  sharedAlbum = [(PXSharedAlbumPublicURLActivityItemSource *)self sharedAlbum];
  localizedTitle = [sharedAlbum localizedTitle];
  v8 = [PXSharedAlbumsUtilities publicURLForSharedAlbum:sharedAlbum];
  if ([typeCopy isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = PLServicesLocalizedFrameworkString();
    v11 = [localizedTitle mutableCopy];
    if (CFStringTransform(v11, 0, @"Any-Hex/XML", 0))
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v9 stringWithFormat:@"<html><p>%@</p><p><a href=%@>%@</a></p></html>", v10, v8, v12];

    v14 = [MEMORY[0x1E695DEC8] arrayWithObject:v13];
  }

  else
  {
    if ([typeCopy isEqualToString:*MEMORY[0x1E69CDAB0]])
    {
      PLServicesLocalizedFrameworkString();
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    if (([typeCopy isEqualToString:*MEMORY[0x1E69CDAC0]] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69CDAE8]))
    {
      PLServicesLocalizedFrameworkString();
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v14 = [MEMORY[0x1E695DEC8] arrayWithObject:v8];
  }

  return v14;
}

- (id)activityViewControllerPlaceholderItems:(id)items
{
  v11[2] = *MEMORY[0x1E69E9840];
  sharedAlbum = [(PXSharedAlbumPublicURLActivityItemSource *)self sharedAlbum];
  localizedTitle = [sharedAlbum localizedTitle];
  v5 = [PXSharedAlbumsUtilities publicURLForSharedAlbum:sharedAlbum];
  absoluteString = [v5 absoluteString];

  if (absoluteString)
  {
    v7 = absoluteString;
  }

  else
  {
    v7 = @"https://www.icloud.com/sharedalbum/#";
  }

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  v11[0] = localizedTitle;
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  return v9;
}

- (PXSharedAlbumPublicURLActivityItemSource)initWithSharedAlbum:(id)album
{
  albumCopy = album;
  v10.receiver = self;
  v10.super_class = PXSharedAlbumPublicURLActivityItemSource;
  v7 = [(PXSharedAlbumPublicURLActivityItemSource *)&v10 init];
  if (v7)
  {
    if (!albumCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PXAlbumStreamingUtilities.m" lineNumber:46 description:@"Missing album for PXSharedAlbumPublicURLActivityItemSource"];
    }

    objc_storeStrong(&v7->_sharedAlbum, album);
  }

  return v7;
}

@end