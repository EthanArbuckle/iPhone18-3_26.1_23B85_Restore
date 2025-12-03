@interface SSScreenCapturerScreenshotOptionsCollection
- (void)setScreenshotOptions:(id)options forScreen:(id)screen;
@end

@implementation SSScreenCapturerScreenshotOptionsCollection

- (void)setScreenshotOptions:(id)options forScreen:(id)screen
{
  optionsCopy = options;
  screenCopy = screen;
  v7 = optionsCopy;
  v8 = screenCopy;
  screenToScreenshotOptions = self->_screenToScreenshotOptions;
  if (optionsCopy)
  {
    if (!screenToScreenshotOptions)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v11 = self->_screenToScreenshotOptions;
      self->_screenToScreenshotOptions = strongToStrongObjectsMapTable;

      v7 = optionsCopy;
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