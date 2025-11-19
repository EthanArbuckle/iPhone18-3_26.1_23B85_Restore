@interface PXMockDisplayAssetCollection
- (BOOL)px_isHighlightEnrichedWithAssetMetadataAndScenesProcessed;
- (BOOL)px_isMediaTypeSmartAlbum;
- (BOOL)px_isRootSmartAlbum;
- (BOOL)px_isUserCreated;
- (NSString)uuid;
- (PXMockDisplayAssetCollection)initWithTitle:(id)a3 subtitle:(id)a4 type:(int64_t)a5 subtype:(int64_t)a6 startDate:(id)a7 endDate:(id)a8 isPrivacySensitiveAlbum:(BOOL)a9;
- (id)localizedDateDescriptionWithOptions:(unint64_t)a3;
@end

@implementation PXMockDisplayAssetCollection

- (id)localizedDateDescriptionWithOptions:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAssetCollection.m" lineNumber:600 description:@"not implemented yet"];

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
  v3 = [(PXMockDisplayAssetCollection *)self px_isHighlight];
  if (v3)
  {
    LOBYTE(v3) = [(PXMockDisplayAssetCollection *)self px_highlightEnrichmentState]> 2;
  }

  return v3;
}

- (BOOL)px_isMediaTypeSmartAlbum
{
  v3 = [MEMORY[0x1E6978650] px_mediaTypeSmartAlbumSubtypes];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXMockDisplayAssetCollection subtype](self, "subtype")}];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (BOOL)px_isRootSmartAlbum
{
  v3 = [(PXMockDisplayAssetCollection *)self px_isSmartAlbum];
  if (v3)
  {
    if ([(PXMockDisplayAssetCollection *)self px_isUserSmartAlbum])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(PXMockDisplayAssetCollection *)self px_isMediaTypeSmartAlbum];
    }
  }

  return v3;
}

- (BOOL)px_isUserCreated
{
  if ([(PXMockDisplayAssetCollection *)self px_isRegularAlbum]|| [(PXMockDisplayAssetCollection *)self px_isRegularFolder]|| [(PXMockDisplayAssetCollection *)self px_isUserSmartAlbum])
  {
    return 1;
  }

  return [(PXMockDisplayAssetCollection *)self px_isProject];
}

- (PXMockDisplayAssetCollection)initWithTitle:(id)a3 subtitle:(id)a4 type:(int64_t)a5 subtype:(int64_t)a6 startDate:(id)a7 endDate:(id)a8 isPrivacySensitiveAlbum:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = PXMockDisplayAssetCollection;
  v19 = [(PXMockDisplayAssetCollection *)&v25 init];
  if (v19)
  {
    v20 = [v15 copy];
    localizedTitle = v19->_localizedTitle;
    v19->_localizedTitle = v20;

    v22 = [v16 copy];
    localizedSubtitle = v19->_localizedSubtitle;
    v19->_localizedSubtitle = v22;

    v19->_type = a5;
    v19->_subtype = a6;
    objc_storeStrong(&v19->_startDate, a7);
    objc_storeStrong(&v19->_endDate, a8);
    v19->_isPrivacySensitiveAlbum = a9;
  }

  return v19;
}

@end