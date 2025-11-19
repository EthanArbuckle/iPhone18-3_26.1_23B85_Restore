@interface GQDBGTheme
- (void)dealloc;
@end

@implementation GQDBGTheme

- (void)dealloc
{
  mTemplateSlides = self->mTemplateSlides;
  if (mTemplateSlides)
  {
    CFRelease(mTemplateSlides);
  }

  v4.receiver = self;
  v4.super_class = GQDBGTheme;
  [(GQDBGTheme *)&v4 dealloc];
}

@end