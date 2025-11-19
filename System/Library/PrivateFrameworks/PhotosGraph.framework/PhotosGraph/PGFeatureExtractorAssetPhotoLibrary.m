@interface PGFeatureExtractorAssetPhotoLibrary
- (PGFeatureExtractorAssetPhotoLibrary)initWithPhotoLibraryFeatureExtractor:(id)a3;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
- (id)name;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorAssetPhotoLibrary

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PGFeatureExtractorAssetPhotoLibrary *)self photoLibraryFeatureExtractor];
  v8 = [v6 photoLibrary];

  v9 = [v7 floatVectorWithEntity:v8 error:a4];

  return v9;
}

- (int64_t)featureLength
{
  v2 = [(PGFeatureExtractorAssetPhotoLibrary *)self photoLibraryFeatureExtractor];
  v3 = [v2 featureNames];
  v4 = [v3 count];

  return v4;
}

- (id)featureNames
{
  v2 = [(PGFeatureExtractorAssetPhotoLibrary *)self photoLibraryFeatureExtractor];
  v3 = [v2 featureNames];

  return v3;
}

- (id)name
{
  v2 = [(PGFeatureExtractorAssetPhotoLibrary *)self photoLibraryFeatureExtractor];
  v3 = [v2 name];

  return v3;
}

- (PGFeatureExtractorAssetPhotoLibrary)initWithPhotoLibraryFeatureExtractor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGFeatureExtractorAssetPhotoLibrary;
  v6 = [(PGFeatureExtractorAssetPhotoLibrary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibraryFeatureExtractor, a3);
  }

  return v7;
}

@end