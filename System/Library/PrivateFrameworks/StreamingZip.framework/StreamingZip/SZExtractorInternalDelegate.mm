@interface SZExtractorInternalDelegate
- (void)extractionCompleteAtArchivePath:(id)path;
- (void)extractionEnteredPassThroughMode;
- (void)setExtractionProgress:(double)progress;
@end

@implementation SZExtractorInternalDelegate

- (void)extractionEnteredPassThroughMode
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->delegate);
    if (self)
    {
      selfCopy = self;
      if (objc_opt_respondsToSelector())
      {
        [(SZExtractorInternalDelegate *)selfCopy extractionEnteredPassThroughMode];
      }

      self = selfCopy;
    }

    v2 = vars8;
  }
}

- (void)extractionCompleteAtArchivePath:(id)path
{
  pathCopy = path;
  if (self)
  {
    self = objc_loadWeakRetained(&self->delegate);
    if (self)
    {
      if (objc_opt_respondsToSelector())
      {
        [(SZExtractorInternalDelegate *)self extractionCompleteAtArchivePath:pathCopy];
      }
    }
  }
}

- (void)setExtractionProgress:(double)progress
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->delegate);
    if (self)
    {
      selfCopy = self;
      if (objc_opt_respondsToSelector())
      {
        [(SZExtractorInternalDelegate *)selfCopy setExtractionProgress:progress];
      }

      self = selfCopy;
    }

    v3 = vars8;
  }
}

@end