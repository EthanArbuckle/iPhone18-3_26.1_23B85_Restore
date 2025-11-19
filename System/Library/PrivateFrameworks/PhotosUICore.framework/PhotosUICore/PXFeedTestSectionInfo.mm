@interface PXFeedTestSectionInfo
- (PXFeedTestSectionInfo)initWithPhotoLibrary:(id)a3;
@end

@implementation PXFeedTestSectionInfo

- (PXFeedTestSectionInfo)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PXFeedTestSectionInfo;
  v5 = [(PXFeedTestSectionInfo *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69789A8]) initWithPLPhotoLibrary:v4];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = v6;

    v8 = arc4random_uniform(5u);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v5->_countOfItems = v9;
  }

  return v5;
}

@end