@interface SZExtractorInternalDelegate
- (void)extractionCompleteAtArchivePath:(id)a3;
- (void)extractionEnteredPassThroughMode;
- (void)setExtractionProgress:(double)a3;
@end

@implementation SZExtractorInternalDelegate

- (void)extractionEnteredPassThroughMode
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->delegate);
    if (self)
    {
      v3 = self;
      if (objc_opt_respondsToSelector())
      {
        [(SZExtractorInternalDelegate *)v3 extractionEnteredPassThroughMode];
      }

      self = v3;
    }

    v2 = vars8;
  }
}

- (void)extractionCompleteAtArchivePath:(id)a3
{
  v4 = a3;
  if (self)
  {
    self = objc_loadWeakRetained(&self->delegate);
    if (self)
    {
      if (objc_opt_respondsToSelector())
      {
        [(SZExtractorInternalDelegate *)self extractionCompleteAtArchivePath:v4];
      }
    }
  }
}

- (void)setExtractionProgress:(double)a3
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->delegate);
    if (self)
    {
      v5 = self;
      if (objc_opt_respondsToSelector())
      {
        [(SZExtractorInternalDelegate *)v5 setExtractionProgress:a3];
      }

      self = v5;
    }

    v3 = vars8;
  }
}

@end