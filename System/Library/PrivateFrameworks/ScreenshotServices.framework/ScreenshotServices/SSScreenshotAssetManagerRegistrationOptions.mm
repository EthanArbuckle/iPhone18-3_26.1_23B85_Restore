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

  v3 = [(SSScreenshotAssetManagerRegistrationOptions *)self harvestedMetadata];
  v4 = [v3 firstObject];

  if (!v4)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v5 = [v4 userActivityTitle];
  v6 = [v4 userActivityURL];
  v7 = v6;
  if (!v5)
  {
    v9 = &stru_1F55557C0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F55557C0];
  v9 = [&stru_1F55557C0 stringByAppendingFormat:@"Title: %@", v8];

  if (v7)
  {
LABEL_5:
    v10 = [v7 absoluteURL];
    v11 = [(__CFString *)v9 stringByAppendingFormat:@"\nURL: %@", v10];

    v9 = v11;
  }

LABEL_6:

LABEL_9:
LABEL_10:

  return v9;
}

@end