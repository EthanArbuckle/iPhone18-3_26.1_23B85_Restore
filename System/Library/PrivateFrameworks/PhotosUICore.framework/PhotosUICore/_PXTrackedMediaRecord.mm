@interface _PXTrackedMediaRecord
- (_PXTrackedMediaRecord)init;
- (_PXTrackedMediaRecord)initWithMedia:(id)media mediaKind:(int64_t)kind timestamp:(double)timestamp;
@end

@implementation _PXTrackedMediaRecord

- (_PXTrackedMediaRecord)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMediaViewControllerEventTracker.m" lineNumber:209 description:{@"%s is not available as initializer", "-[_PXTrackedMediaRecord init]"}];

  abort();
}

- (_PXTrackedMediaRecord)initWithMedia:(id)media mediaKind:(int64_t)kind timestamp:(double)timestamp
{
  mediaCopy = media;
  v13.receiver = self;
  v13.super_class = _PXTrackedMediaRecord;
  v10 = [(_PXTrackedMediaRecord *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_media, media);
    v11->_mediaKind = kind;
    v11->_timestamp = timestamp;
  }

  return v11;
}

@end