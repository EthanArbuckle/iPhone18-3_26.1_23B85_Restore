@interface PLSFace
- (CGRect)relativeRect;
- (PLSFace)initWithFaceInfo:(id)info;
@end

@implementation PLSFace

- (CGRect)relativeRect
{
  x = self->_relativeRect.origin.x;
  y = self->_relativeRect.origin.y;
  width = self->_relativeRect.size.width;
  height = self->_relativeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PLSFace)initWithFaceInfo:(id)info
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = PLSFace;
  v5 = [(PLSFace *)&v11 init];
  if (v5)
  {
    v6 = [infoCopy objectForKey:kPLSAssetFaceAlbumUUIDKey];
    [(PLSFace *)v5 setAlbumUUID:v6];

    v7 = [infoCopy objectForKey:kPLSAssetFaceIndexKey];
    -[PLSFace setIdentifier:](v5, "setIdentifier:", [v7 intValue]);

    v8 = [infoCopy objectForKey:kPLSAssetFaceRectangleKey];
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v8, &rect))
    {
      [(PLSFace *)v5 setRelativeRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
    }

    else
    {
      NSLog(@"[PLS] Unable to construct faceRect for faceInfo: %@", infoCopy);
    }
  }

  return v5;
}

@end