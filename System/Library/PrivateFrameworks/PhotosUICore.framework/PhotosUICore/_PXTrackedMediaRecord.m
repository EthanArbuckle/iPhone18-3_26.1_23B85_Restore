@interface _PXTrackedMediaRecord
- (_PXTrackedMediaRecord)init;
- (_PXTrackedMediaRecord)initWithMedia:(id)a3 mediaKind:(int64_t)a4 timestamp:(double)a5;
@end

@implementation _PXTrackedMediaRecord

- (_PXTrackedMediaRecord)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMediaViewControllerEventTracker.m" lineNumber:209 description:{@"%s is not available as initializer", "-[_PXTrackedMediaRecord init]"}];

  abort();
}

- (_PXTrackedMediaRecord)initWithMedia:(id)a3 mediaKind:(int64_t)a4 timestamp:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _PXTrackedMediaRecord;
  v10 = [(_PXTrackedMediaRecord *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_media, a3);
    v11->_mediaKind = a4;
    v11->_timestamp = a5;
  }

  return v11;
}

@end