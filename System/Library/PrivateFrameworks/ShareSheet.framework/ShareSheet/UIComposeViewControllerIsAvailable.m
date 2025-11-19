@interface UIComposeViewControllerIsAvailable
@end

@implementation UIComposeViewControllerIsAvailable

void ___UIComposeViewControllerIsAvailable_block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v6[0] = @"com.apple.share.Twitter.post";
  v6[1] = @"com.apple.share.Facebook.post";
  v6[2] = @"com.apple.share.SinaWeibo.post";
  v6[3] = @"com.apple.share.TencentWeibo.post";
  v6[4] = @"com.apple.share.Flickr.post";
  v6[5] = @"com.apple.share.Vimeo.post";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = _UIComposeViewControllerIsAvailable_legacySocialActivityTypes;
  _UIComposeViewControllerIsAvailable_legacySocialActivityTypes = v2;

  v4 = objc_alloc_init(getSSVMediaSocialShareExtensionClass());
  v5 = _UIComposeViewControllerIsAvailable_mediaShareExtension;
  _UIComposeViewControllerIsAvailable_mediaShareExtension = v4;
}

@end