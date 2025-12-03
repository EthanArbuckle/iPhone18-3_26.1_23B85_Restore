@interface SSScreenshotAssetManagerRegistrationOptions
- (NSString)assetDescription;
@end

@implementation SSScreenshotAssetManagerRegistrationOptions

- (NSString)assetDescription
{
  if (!_SSLinksInPhotosEnabled())
  {
    v9 = 0;
    goto LABEL_10;
  }

  harvestedMetadata = [(SSScreenshotAssetManagerRegistrationOptions *)self harvestedMetadata];
  firstObject = [harvestedMetadata firstObject];

  if (!firstObject)
  {
    v9 = 0;
    goto LABEL_9;
  }

  userActivityTitle = [firstObject userActivityTitle];
  userActivityURL = [firstObject userActivityURL];
  v7 = userActivityURL;
  if (!userActivityTitle)
  {
    v9 = &stru_1F55557C0;
    if (!userActivityURL)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [userActivityTitle stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F55557C0];
  v9 = [&stru_1F55557C0 stringByAppendingFormat:@"Title: %@", v8];

  if (v7)
  {
LABEL_5:
    absoluteURL = [v7 absoluteURL];
    v11 = [(__CFString *)v9 stringByAppendingFormat:@"\nURL: %@", absoluteURL];

    v9 = v11;
  }

LABEL_6:

LABEL_9:
LABEL_10:

  return v9;
}

@end