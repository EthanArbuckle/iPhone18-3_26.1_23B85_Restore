@interface SSImageSurface
- (SSImageSurface)init;
- (SSImageSurface)initWithBSXPCCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)setBackingSurface:(__IOSurface *)a3;
- (void)setHdrBackingSurface:(__IOSurface *)a3;
@end

@implementation SSImageSurface

- (SSImageSurface)init
{
  v5.receiver = self;
  v5.super_class = SSImageSurface;
  v2 = [(SSImageSurface *)&v5 init];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 scale];
  [(SSImageSurface *)v2 setScale:?];

  [(SSImageSurface *)v2 setOrientation:0];
  return v2;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  SSEncodeIOSurface(v4, [(SSImageSurface *)self backingSurface], @"SSImageSurfaceBackingSurfaceKey");
  SSEncodeIOSurface(v4, [(SSImageSurface *)self hdrBackingSurface], @"SSImageSurfaceHDRBackingSurfaceKey");
  [(SSImageSurface *)self scale];
  [v4 encodeDouble:@"SSImageSurfaceImageScaleKey" forKey:?];
  [v4 encodeInt64:-[SSImageSurface orientation](self forKey:{"orientation"), @"SSImageSurfaceImageOrientationKey"}];
}

- (SSImageSurface)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSImageSurface *)self init];
  v5->_backingSurface = SSDecodingCreateIOSurface(v4, @"SSImageSurfaceBackingSurfaceKey");
  v5->_hdrBackingSurface = SSDecodingCreateIOSurface(v4, @"SSImageSurfaceHDRBackingSurfaceKey");
  [v4 decodeDoubleForKey:@"SSImageSurfaceImageScaleKey"];
  v5->_scale = v6;
  v7 = [v4 decodeInt64ForKey:@"SSImageSurfaceImageOrientationKey"];

  v5->_orientation = v7;
  return v5;
}

- (void)setBackingSurface:(__IOSurface *)a3
{
  backingSurface = self->_backingSurface;
  if (backingSurface != a3)
  {
    if (backingSurface)
    {
      CFRelease(backingSurface);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_backingSurface = a3;
  }
}

- (void)setHdrBackingSurface:(__IOSurface *)a3
{
  hdrBackingSurface = self->_hdrBackingSurface;
  if (hdrBackingSurface != a3)
  {
    if (hdrBackingSurface)
    {
      CFRelease(hdrBackingSurface);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_hdrBackingSurface = a3;
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