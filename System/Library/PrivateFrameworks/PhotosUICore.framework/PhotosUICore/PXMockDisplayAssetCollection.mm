@interface PXMockDisplayAssetCollection
- (BOOL)px_isHighlightEnrichedWithAssetMetadataAndScenesProcessed;
- (BOOL)px_isMediaTypeSmartAlbum;
- (BOOL)px_isRootSmartAlbum;
- (BOOL)px_isUserCreated;
- (NSString)uuid;
- (PXMockDisplayAssetCollection)initWithTitle:(id)title subtitle:(id)subtitle type:(int64_t)type subtype:(int64_t)subtype startDate:(id)date endDate:(id)endDate isPrivacySensitiveAlbum:(BOOL)album;
- (id)localizedDateDescriptionWithOptions:(unint64_t)options;
@end

@implementation PXMockDisplayAssetCollection

- (id)localizedDateDescriptionWithOptions:(unint64_t)options
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMockDisplayAssetCollection.m" lineNumber:600 description:@"not implemented yet"];

  abort();
}

- (NSString)uuid
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@-%p", v5, self];

  return v6;
}

- (BOOL)px_isHighlightEnrichedWithAssetMetadataAndScenesProcessed
{
  px_isHighlight = [(PXMockDisplayAssetCollection *)self px_isHighlight];
  if (px_isHighlight)
  {
    LOBYTE(px_isHighlight) = [(PXMockDisplayAssetCollection *)self px_highlightEnrichmentState]> 2;
  }

  return px_isHighlight;
}

- (BOOL)px_isMediaTypeSmartAlbum
{
  px_mediaTypeSmartAlbumSubtypes = [MEMORY[0x1E6978650] px_mediaTypeSmartAlbumSubtypes];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXMockDisplayAssetCollection subtype](self, "subtype")}];
  v5 = [px_mediaTypeSmartAlbumSubtypes containsObject:v4];

  return v5;
}

- (BOOL)px_isRootSmartAlbum
{
  px_isSmartAlbum = [(PXMockDisplayAssetCollection *)self px_isSmartAlbum];
  if (px_isSmartAlbum)
  {
    if ([(PXMockDisplayAssetCollection *)self px_isUserSmartAlbum])
    {
      LOBYTE(px_isSmartAlbum) = 0;
    }

    else
    {
      LOBYTE(px_isSmartAlbum) = ![(PXMockDisplayAssetCollection *)self px_isMediaTypeSmartAlbum];
    }
  }

  return px_isSmartAlbum;
}

- (BOOL)px_isUserCreated
{
  if ([(PXMockDisplayAssetCollection *)self px_isRegularAlbum]|| [(PXMockDisplayAssetCollection *)self px_isRegularFolder]|| [(PXMockDisplayAssetCollection *)self px_isUserSmartAlbum])
  {
    return 1;
  }

  return [(PXMockDisplayAssetCollection *)self px_isProject];
}

- (PXMockDisplayAssetCollection)initWithTitle:(id)title subtitle:(id)subtitle type:(int64_t)type subtype:(int64_t)subtype startDate:(id)date endDate:(id)endDate isPrivacySensitiveAlbum:(BOOL)album
{
  titleCopy = title;
  subtitleCopy = subtitle;
  dateCopy = date;
  endDateCopy = endDate;
  v25.receiver = self;
  v25.super_class = PXMockDisplayAssetCollection;
  v19 = [(PXMockDisplayAssetCollection *)&v25 init];
  if (v19)
  {
    v20 = [titleCopy copy];
    localizedTitle = v19->_localizedTitle;
    v19->_localizedTitle = v20;

    v22 = [subtitleCopy copy];
    localizedSubtitle = v19->_localizedSubtitle;
    v19->_localizedSubtitle = v22;

    v19->_type = type;
    v19->_subtype = subtype;
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v19->_endDate, endDate);
    v19->_isPrivacySensitiveAlbum = album;
  }

  return v19;
}

@end