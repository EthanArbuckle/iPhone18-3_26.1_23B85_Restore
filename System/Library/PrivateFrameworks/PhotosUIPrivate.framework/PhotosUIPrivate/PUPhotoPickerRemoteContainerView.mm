@interface PUPhotoPickerRemoteContainerView
- (void)setFrame:(CGRect)frame;
@end

@implementation PUPhotoPickerRemoteContainerView

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PUPhotoPickerRemoteContainerView *)self frame];
  v8 = v14.origin.x;
  v9 = v14.origin.y;
  v10 = v14.size.width;
  v11 = v14.size.height;
  if (CGRectIsEmpty(v14) || (v15.origin.x = x, v15.origin.y = y, v15.size.width = width, v15.size.height = height, !CGRectIsEmpty(v15)))
  {
    [(PUPhotoPickerRemoteContainerView *)&v12 setFrame:x, y, width, height, self, PUPhotoPickerRemoteContainerView, v13.receiver, v13.super_class];
  }

  else
  {
    [(PUPhotoPickerRemoteContainerView *)&v13 setFrame:v8, v9, v10, v11, v12.receiver, v12.super_class, self, PUPhotoPickerRemoteContainerView];
  }
}

@end