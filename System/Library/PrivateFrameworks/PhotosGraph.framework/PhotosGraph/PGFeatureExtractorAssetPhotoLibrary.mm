@interface PGFeatureExtractorAssetPhotoLibrary
- (PGFeatureExtractorAssetPhotoLibrary)initWithPhotoLibraryFeatureExtractor:(id)extractor;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
- (id)name;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorAssetPhotoLibrary

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  photoLibraryFeatureExtractor = [(PGFeatureExtractorAssetPhotoLibrary *)self photoLibraryFeatureExtractor];
  photoLibrary = [entityCopy photoLibrary];

  v9 = [photoLibraryFeatureExtractor floatVectorWithEntity:photoLibrary error:error];

  return v9;
}

- (int64_t)featureLength
{
  photoLibraryFeatureExtractor = [(PGFeatureExtractorAssetPhotoLibrary *)self photoLibraryFeatureExtractor];
  featureNames = [photoLibraryFeatureExtractor featureNames];
  v4 = [featureNames count];

  return v4;
}

- (id)featureNames
{
  photoLibraryFeatureExtractor = [(PGFeatureExtractorAssetPhotoLibrary *)self photoLibraryFeatureExtractor];
  featureNames = [photoLibraryFeatureExtractor featureNames];

  return featureNames;
}

- (id)name
{
  photoLibraryFeatureExtractor = [(PGFeatureExtractorAssetPhotoLibrary *)self photoLibraryFeatureExtractor];
  name = [photoLibraryFeatureExtractor name];

  return name;
}

- (PGFeatureExtractorAssetPhotoLibrary)initWithPhotoLibraryFeatureExtractor:(id)extractor
{
  extractorCopy = extractor;
  v9.receiver = self;
  v9.super_class = PGFeatureExtractorAssetPhotoLibrary;
  v6 = [(PGFeatureExtractorAssetPhotoLibrary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibraryFeatureExtractor, extractor);
  }

  return v7;
}

@end