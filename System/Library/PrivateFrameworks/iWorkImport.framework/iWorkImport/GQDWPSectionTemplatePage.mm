@interface GQDWPSectionTemplatePage
- (void)dealloc;
@end

@implementation GQDWPSectionTemplatePage

- (void)dealloc
{
  mHeaderIdentifier = self->mHeaderIdentifier;
  if (mHeaderIdentifier)
  {
    CFRelease(mHeaderIdentifier);
  }

  mFooterIdentifier = self->mFooterIdentifier;
  if (mFooterIdentifier)
  {
    CFRelease(mFooterIdentifier);
  }

  v5.receiver = self;
  v5.super_class = GQDWPSectionTemplatePage;
  [(GQDWPSectionTemplatePage *)&v5 dealloc];
}

@end