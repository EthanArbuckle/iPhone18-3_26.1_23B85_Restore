@interface SearchUIDefaultBrowserAppIconImage
+ (id)defaultBrowserBundleIdentifier;
+ (void)invalidateDefaultBrowserBundleIdentifier;
- (SearchUIDefaultBrowserAppIconImage)initWithVariant:(unint64_t)variant;
- (id)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style;
@end

@implementation SearchUIDefaultBrowserAppIconImage

+ (void)invalidateDefaultBrowserBundleIdentifier
{
  v2 = sDefaultBrowserBundleIdentifier;
  sDefaultBrowserBundleIdentifier = 0;
}

+ (id)defaultBrowserBundleIdentifier
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!sDefaultBrowserBundleIdentifier)
  {
    v3 = objc_alloc(MEMORY[0x1E6963630]);
    v4 = [MEMORY[0x1E695DFF8] URLWithString:@"http://"];
    v5 = [v3 initWithURL:v4 error:0];

    bundleRecord = [v5 bundleRecord];
    bundleIdentifier = [bundleRecord bundleIdentifier];
    v8 = bundleIdentifier;
    if (bundleIdentifier)
    {
      v9 = bundleIdentifier;
    }

    else
    {
      v9 = [SearchUIUtilities bundleIdentifierForApp:14];
    }

    v10 = sDefaultBrowserBundleIdentifier;
    sDefaultBrowserBundleIdentifier = v9;
  }

  objc_sync_exit(v2);

  v11 = sDefaultBrowserBundleIdentifier;

  return v11;
}

- (SearchUIDefaultBrowserAppIconImage)initWithVariant:(unint64_t)variant
{
  defaultBrowserBundleIdentifier = [objc_opt_class() defaultBrowserBundleIdentifier];
  v8.receiver = self;
  v8.super_class = SearchUIDefaultBrowserAppIconImage;
  v6 = [(SearchUIAppIconImage *)&v8 initWithBundleIdentifier:defaultBrowserBundleIdentifier isOnenessApp:0 variant:variant contentType:0];

  return v6;
}

- (id)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style
{
  styleCopy = style;
  defaultBrowserBundleIdentifier = [objc_opt_class() defaultBrowserBundleIdentifier];
  [(SearchUIAppIconImage *)self setBundleIdentifier:defaultBrowserBundleIdentifier];

  v10.receiver = self;
  v10.super_class = SearchUIDefaultBrowserAppIconImage;
  v8 = [(SearchUIAppIconImage *)&v10 loadImageWithScale:styleCopy isDarkStyle:scale];

  return v8;
}

@end