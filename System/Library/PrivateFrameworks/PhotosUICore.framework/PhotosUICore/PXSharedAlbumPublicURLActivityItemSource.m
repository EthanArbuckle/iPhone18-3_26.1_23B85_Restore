@interface PXSharedAlbumPublicURLActivityItemSource
- (PXSharedAlbumPublicURLActivityItemSource)initWithSharedAlbum:(id)a3;
- (id)activityViewController:(id)a3 itemsForActivityType:(id)a4;
- (id)activityViewController:(id)a3 thumbnailForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItems:(id)a3;
- (id)activityViewControllerSubject:(id)a3;
@end

@implementation PXSharedAlbumPublicURLActivityItemSource

- (id)activityViewControllerSubject:(id)a3
{
  v3 = [(PXSharedAlbumPublicURLActivityItemSource *)self sharedAlbum];
  [v3 localizedTitle];
  objc_claimAutoreleasedReturnValue();

  PLServicesLocalizedFrameworkString();
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

- (id)activityViewController:(id)a3 thumbnailForActivityType:(id)a4
{
  v4 = MEMORY[0x1E6978650];
  v5 = [(PXSharedAlbumPublicURLActivityItemSource *)self sharedAlbum:a3];
  v6 = [v4 posterImageForAssetCollection:v5];

  return v6;
}

- (id)activityViewController:(id)a3 itemsForActivityType:(id)a4
{
  v5 = a4;
  v6 = [(PXSharedAlbumPublicURLActivityItemSource *)self sharedAlbum];
  v7 = [v6 localizedTitle];
  v8 = [PXSharedAlbumsUtilities publicURLForSharedAlbum:v6];
  if ([v5 isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = PLServicesLocalizedFrameworkString();
    v11 = [v7 mutableCopy];
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
    if ([v5 isEqualToString:*MEMORY[0x1E69CDAB0]])
    {
      PLServicesLocalizedFrameworkString();
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    if (([v5 isEqualToString:*MEMORY[0x1E69CDAC0]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69CDAE8]))
    {
      PLServicesLocalizedFrameworkString();
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v14 = [MEMORY[0x1E695DEC8] arrayWithObject:v8];
  }

  return v14;
}

- (id)activityViewControllerPlaceholderItems:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [(PXSharedAlbumPublicURLActivityItemSource *)self sharedAlbum];
  v4 = [v3 localizedTitle];
  v5 = [PXSharedAlbumsUtilities publicURLForSharedAlbum:v3];
  v6 = [v5 absoluteString];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"https://www.icloud.com/sharedalbum/#";
  }

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  v11[0] = v4;
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  return v9;
}

- (PXSharedAlbumPublicURLActivityItemSource)initWithSharedAlbum:(id)a3
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PXSharedAlbumPublicURLActivityItemSource;
  v7 = [(PXSharedAlbumPublicURLActivityItemSource *)&v10 init];
  if (v7)
  {
    if (!v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v7 file:@"PXAlbumStreamingUtilities.m" lineNumber:46 description:@"Missing album for PXSharedAlbumPublicURLActivityItemSource"];
    }

    objc_storeStrong(&v7->_sharedAlbum, a3);
  }

  return v7;
}

@end