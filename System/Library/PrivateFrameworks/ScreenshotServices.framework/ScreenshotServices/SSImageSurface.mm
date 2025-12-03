@interface SSImageSurface
- (SSImageSurface)init;
- (SSImageSurface)initWithBSXPCCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)setBackingSurface:(__IOSurface *)surface;
- (void)setHdrBackingSurface:(__IOSurface *)surface;
@end

@implementation SSImageSurface

- (SSImageSurface)init
{
  v5.receiver = self;
  v5.super_class = SSImageSurface;
  v2 = [(SSImageSurface *)&v5 init];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  [(SSImageSurface *)v2 setScale:?];

  [(SSImageSurface *)v2 setOrientation:0];
  return v2;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  SSEncodeIOSurface(coderCopy, [(SSImageSurface *)self backingSurface], @"SSImageSurfaceBackingSurfaceKey");
  SSEncodeIOSurface(coderCopy, [(SSImageSurface *)self hdrBackingSurface], @"SSImageSurfaceHDRBackingSurfaceKey");
  [(SSImageSurface *)self scale];
  [coderCopy encodeDouble:@"SSImageSurfaceImageScaleKey" forKey:?];
  [coderCopy encodeInt64:-[SSImageSurface orientation](self forKey:{"orientation"), @"SSImageSurfaceImageOrientationKey"}];
}

- (SSImageSurface)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSImageSurface *)self init];
  v5->_backingSurface = SSDecodingCreateIOSurface(coderCopy, @"SSImageSurfaceBackingSurfaceKey");
  v5->_hdrBackingSurface = SSDecodingCreateIOSurface(coderCopy, @"SSImageSurfaceHDRBackingSurfaceKey");
  [coderCopy decodeDoubleForKey:@"SSImageSurfaceImageScaleKey"];
  v5->_scale = v6;
  v7 = [coderCopy decodeInt64ForKey:@"SSImageSurfaceImageOrientationKey"];

  v5->_orientation = v7;
  return v5;
}

- (void)setBackingSurface:(__IOSurface *)surface
{
  backingSurface = self->_backingSurface;
  if (backingSurface != surface)
  {
    if (backingSurface)
    {
      CFRelease(backingSurface);
    }

    if (surface)
    {
      CFRetain(surface);
    }

    self->_backingSurface = surface;
  }
}

- (void)setHdrBackingSurface:(__IOSurface *)surface
{
  hdrBackingSurface = self->_hdrBackingSurface;
  if (hdrBackingSurface != surface)
  {
    if (hdrBackingSurface)
    {
      CFRelease(hdrBackingSurface);
    }

    if (surface)
    {
      CFRetain(surface);
    }

    self->_hdrBackingSurface = surface;
  }
}

- (void)dealloc
{
  backingSurface = self->_backingSurface;
  if (backingSurface)
  {
    CFRelease(backingSurface);
  }

  hdrBackingSurface = self->_hdrBackingSurface;
  if (hdrBackingSurface)
  {
    CFRelease(hdrBackingSurface);
  }

  v5.receiver = self;
  v5.super_class = SSImageSurface;
  [(SSImageSurface *)&v5 dealloc];
}

@end