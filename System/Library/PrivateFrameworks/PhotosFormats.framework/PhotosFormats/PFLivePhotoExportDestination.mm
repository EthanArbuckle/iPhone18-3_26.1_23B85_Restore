@interface PFLivePhotoExportDestination
+ (id)destinationWithPhotoURL:(id)l videoURL:(id)rL;
- (PFLivePhotoExportDestination)initWithPhotoURL:(id)l videoURL:(id)rL;
@end

@implementation PFLivePhotoExportDestination

- (PFLivePhotoExportDestination)initWithPhotoURL:(id)l videoURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v13.receiver = self;
  v13.super_class = PFLivePhotoExportDestination;
  v8 = [(PFLivePhotoExportDestination *)&v13 init];
  photoURL = v8->_photoURL;
  v8->_photoURL = lCopy;
  v10 = lCopy;

  videoURL = v8->_videoURL;
  v8->_videoURL = rLCopy;

  return v8;
}

+ (id)destinationWithPhotoURL:(id)l videoURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  v8 = [[self alloc] initWithPhotoURL:lCopy videoURL:rLCopy];

  return v8;
}

@end