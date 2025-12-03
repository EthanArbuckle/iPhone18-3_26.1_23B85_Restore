@interface _SBDefaultScreenshotProvider
- (_SBDefaultScreenshotProvider)initWithScreen:(id)screen;
- (id)captureScreenshot;
@end

@implementation _SBDefaultScreenshotProvider

- (_SBDefaultScreenshotProvider)initWithScreen:(id)screen
{
  screenCopy = screen;
  v11.receiver = self;
  v11.super_class = _SBDefaultScreenshotProvider;
  v6 = [(_SBDefaultScreenshotProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screen, screen);
    v8 = [[SBScreenFlash alloc] initWithScreen:screenCopy];
    flasher = v7->_flasher;
    v7->_flasher = v8;
  }

  return v7;
}

- (id)captureScreenshot
{
  v3 = [MEMORY[0x277D75DA0] createIOSurfaceFromScreen:self->_screen];
  if (v3)
  {
    v4 = v3;
    v5 = _UICreateCGImageFromIOSurfaceWithOptions();
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x277D755B8];
      [(UIScreen *)self->_screen scale];
      v8 = [v7 imageWithCGImage:v6 scale:0 orientation:?];
      CGImageRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end