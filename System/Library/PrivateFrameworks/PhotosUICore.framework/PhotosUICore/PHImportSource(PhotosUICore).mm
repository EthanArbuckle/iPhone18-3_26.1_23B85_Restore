@interface PHImportSource(PhotosUICore)
- (uint64_t)_cplOptimizedLearnMoreURL;
- (uint64_t)px_shouldShowCPLOptimizedMessage;
@end

@implementation PHImportSource(PhotosUICore)

- (uint64_t)_cplOptimizedLearnMoreURL
{
  if (PLPhysicalDeviceIsIPad())
  {
    v0 = @"https://support.apple.com/ht213272?cid=mc-ols-photos-article_ht213272-ipados_ui-06232022";
  }

  else
  {
    v0 = @"https://support.apple.com/ht213272?cid=mc-ols-photos-article_ht213272-ios_ui-06232022";
  }

  v1 = MEMORY[0x1E695DFF8];

  return [v1 URLWithString:v0];
}

- (uint64_t)px_shouldShowCPLOptimizedMessage
{
  selfCopy = self;
  isAppleDevice = [self isAppleDevice];
  LODWORD(selfCopy) = [selfCopy isOptimizedCPLStorage];
  v3 = +[PXImportSettings sharedInstance];
  alwaysShowCPLOptimizedMessage = [v3 alwaysShowCPLOptimizedMessage];

  return isAppleDevice & (selfCopy | alwaysShowCPLOptimizedMessage);
}

@end