@interface PLSearchTrackedAttributes
- (NSArray)assetAttributesTrackedForSearch;
- (NSArray)detectedFaceAttributesTrackedForSearch;
- (NSArray)fetchingAlbumAttributesTrackedForSearch;
- (NSArray)highlightAttributesTrackedForSearch;
- (NSArray)managedAlbumAttributesTrackedForSearch;
- (NSArray)mediaAnalysisAssetAttributesTrackedForSearch;
- (NSArray)memoryAttributesTrackedForSearch;
- (NSArray)personAttributesTrackedForSearch;
@end

@implementation PLSearchTrackedAttributes

- (NSArray)detectedFaceAttributesTrackedForSearch
{
  v7[1] = *MEMORY[0x1E69E9840];
  detectedFaceAttributesTrackedForSearch = self->_detectedFaceAttributesTrackedForSearch;
  if (!detectedFaceAttributesTrackedForSearch)
  {
    v7[0] = @"personForFace";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v5 = self->_detectedFaceAttributesTrackedForSearch;
    self->_detectedFaceAttributesTrackedForSearch = v4;

    detectedFaceAttributesTrackedForSearch = self->_detectedFaceAttributesTrackedForSearch;
  }

  return detectedFaceAttributesTrackedForSearch;
}

- (NSArray)personAttributesTrackedForSearch
{
  v7[2] = *MEMORY[0x1E69E9840];
  personAttributesTrackedForSearch = self->_personAttributesTrackedForSearch;
  if (!personAttributesTrackedForSearch)
  {
    v7[0] = @"fullName";
    v7[1] = @"verifiedType";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
    v5 = self->_personAttributesTrackedForSearch;
    self->_personAttributesTrackedForSearch = v4;

    personAttributesTrackedForSearch = self->_personAttributesTrackedForSearch;
  }

  return personAttributesTrackedForSearch;
}

- (NSArray)highlightAttributesTrackedForSearch
{
  v7[10] = *MEMORY[0x1E69E9840];
  highlightAttributesTrackedForSearch = self->_highlightAttributesTrackedForSearch;
  if (!highlightAttributesTrackedForSearch)
  {
    v7[0] = @"dayGroupAssets";
    v7[1] = @"dayGroupExtendedAssets";
    v7[2] = @"endDate";
    v7[3] = @"extendedAssets";
    v7[4] = @"kind";
    v7[5] = @"moments";
    v7[6] = @"startDate";
    v7[7] = @"summaryAssets";
    v7[8] = @"title";
    v7[9] = @"type";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:10];
    v5 = self->_highlightAttributesTrackedForSearch;
    self->_highlightAttributesTrackedForSearch = v4;

    highlightAttributesTrackedForSearch = self->_highlightAttributesTrackedForSearch;
  }

  return highlightAttributesTrackedForSearch;
}

- (NSArray)memoryAttributesTrackedForSearch
{
  v7[5] = *MEMORY[0x1E69E9840];
  memoryAttributesTrackedForSearch = self->_memoryAttributesTrackedForSearch;
  if (!memoryAttributesTrackedForSearch)
  {
    v7[0] = @"category";
    v7[1] = @"curatedAssets";
    v7[2] = @"creationDate";
    v7[3] = @"rejected";
    v7[4] = @"title";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
    v5 = self->_memoryAttributesTrackedForSearch;
    self->_memoryAttributesTrackedForSearch = v4;

    memoryAttributesTrackedForSearch = self->_memoryAttributesTrackedForSearch;
  }

  return memoryAttributesTrackedForSearch;
}

- (NSArray)fetchingAlbumAttributesTrackedForSearch
{
  v7[7] = *MEMORY[0x1E69E9840];
  fetchingAlbumAttributesTrackedForSearch = self->_fetchingAlbumAttributesTrackedForSearch;
  if (!fetchingAlbumAttributesTrackedForSearch)
  {
    v7[0] = @"assets";
    v7[1] = @"creationDate";
    v7[2] = @"endDate";
    v7[3] = @"keyAssets";
    v7[4] = @"startDate";
    v7[5] = @"title";
    v7[6] = @"trashedState";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];
    v5 = self->_fetchingAlbumAttributesTrackedForSearch;
    self->_fetchingAlbumAttributesTrackedForSearch = v4;

    fetchingAlbumAttributesTrackedForSearch = self->_fetchingAlbumAttributesTrackedForSearch;
  }

  return fetchingAlbumAttributesTrackedForSearch;
}

- (NSArray)managedAlbumAttributesTrackedForSearch
{
  v7[7] = *MEMORY[0x1E69E9840];
  managedAlbumAttributesTrackedForSearch = self->_managedAlbumAttributesTrackedForSearch;
  if (!managedAlbumAttributesTrackedForSearch)
  {
    v7[0] = @"assets";
    v7[1] = @"creationDate";
    v7[2] = @"endDate";
    v7[3] = @"keyAssets";
    v7[4] = @"startDate";
    v7[5] = @"title";
    v7[6] = @"trashedState";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];
    v5 = self->_managedAlbumAttributesTrackedForSearch;
    self->_managedAlbumAttributesTrackedForSearch = v4;

    managedAlbumAttributesTrackedForSearch = self->_managedAlbumAttributesTrackedForSearch;
  }

  return managedAlbumAttributesTrackedForSearch;
}

- (NSArray)mediaAnalysisAssetAttributesTrackedForSearch
{
  v7[1] = *MEMORY[0x1E69E9840];
  mediaAnalysisAssetAttributesTrackedForSearch = self->_mediaAnalysisAssetAttributesTrackedForSearch;
  if (!mediaAnalysisAssetAttributesTrackedForSearch)
  {
    v7[0] = @"characterRecognitionAttributes";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v5 = self->_mediaAnalysisAssetAttributesTrackedForSearch;
    self->_mediaAnalysisAssetAttributesTrackedForSearch = v4;

    mediaAnalysisAssetAttributesTrackedForSearch = self->_mediaAnalysisAssetAttributesTrackedForSearch;
  }

  return mediaAnalysisAssetAttributesTrackedForSearch;
}

- (NSArray)assetAttributesTrackedForSearch
{
  v7[35] = *MEMORY[0x1E69E9840];
  assetAttributesTrackedForSearch = self->_assetAttributesTrackedForSearch;
  if (!assetAttributesTrackedForSearch)
  {
    v7[0] = @"addedDate";
    v7[1] = @"albums";
    v7[2] = @"avalanchePickType";
    v7[3] = @"curationScore";
    v7[4] = @"depthType";
    v7[5] = @"dateCreated";
    v7[6] = @"detectedFaces";
    v7[7] = @"duration";
    v7[8] = @"favorite";
    v7[9] = @"filename";
    v7[10] = @"hidden";
    v7[11] = @"isMagicCarpet";
    v7[12] = @"kind";
    v7[13] = @"kindSubtype";
    v7[14] = @"locationInfo";
    v7[15] = @"longitude";
    v7[16] = @"moment";
    v7[17] = @"overallAestheticScore";
    v7[18] = @"originalFilename";
    v7[19] = @"placeAnnotation";
    v7[20] = @"playbackVariation";
    v7[21] = @"playbackStyle";
    v7[22] = @"RAWBadgeAttribute";
    v7[23] = @"savedAssetType";
    v7[24] = @"title";
    v7[25] = @"trashedState";
    v7[26] = @"longDescription";
    v7[27] = @"uniformTypeIdentifier";
    v7[28] = @"visibilityState";
    v7[29] = @"additionalAttributes.cameraCaptureDevice";
    v7[30] = @"additionalAttributes.sceneAnalysisVersion";
    v7[31] = @"additionalAttributes.sceneClassifications";
    v7[32] = @"additionalAttributes.personReferences";
    v7[33] = @"extendedAttributes.cameraMake";
    v7[34] = @"extendedAttributes.cameraModel";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:35];
    v5 = self->_assetAttributesTrackedForSearch;
    self->_assetAttributesTrackedForSearch = v4;

    assetAttributesTrackedForSearch = self->_assetAttributesTrackedForSearch;
  }

  return assetAttributesTrackedForSearch;
}

@end