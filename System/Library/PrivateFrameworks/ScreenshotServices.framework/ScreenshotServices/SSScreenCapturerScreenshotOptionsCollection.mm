@interface SSScreenCapturerScreenshotOptionsCollection
- (void)setScreenshotOptions:(id)a3 forScreen:(id)a4;
@end

@implementation SSScreenCapturerScreenshotOptionsCollection

- (void)setScreenshotOptions:(id)a3 forScreen:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v13;
  v8 = v6;
  screenToScreenshotOptions = self->_screenToScreenshotOptions;
  if (v13)
  {
    if (!screenToScreenshotOptions)
    {
      v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v11 = self->_screenToScreenshotOptions;
      self->_screenToScreenshotOptions = v10;

      v7 = v13;
      screenToScreenshotOptions = self->_screenToScreenshotOptions;
    }

    [(NSMapTable *)screenToScreenshotOptions setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMapTable *)screenToScreenshotOptions removeObjectForKey:v8];
    if (![(NSMapTable *)self->_screenToScreenshotOptions count])
    {
      v12 = self->_screenToScreenshotOptions;
      self->_screenToScreenshotOptions = 0;
    }
  }
}

@end