@interface PFLivePhotoExportDestination
+ (id)destinationWithPhotoURL:(id)a3 videoURL:(id)a4;
- (PFLivePhotoExportDestination)initWithPhotoURL:(id)a3 videoURL:(id)a4;
@end

@implementation PFLivePhotoExportDestination

- (PFLivePhotoExportDestination)initWithPhotoURL:(id)a3 videoURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PFLivePhotoExportDestination;
  v8 = [(PFLivePhotoExportDestination *)&v13 init];
  photoURL = v8->_photoURL;
  v8->_photoURL = v6;
  v10 = v6;

  videoURL = v8->_videoURL;
  v8->_videoURL = v7;

  return v8;
}

+ (id)destinationWithPhotoURL:(id)a3 videoURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPhotoURL:v7 videoURL:v6];

  return v8;
}

@end