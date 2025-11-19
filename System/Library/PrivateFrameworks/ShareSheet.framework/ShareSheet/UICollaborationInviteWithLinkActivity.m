@interface UICollaborationInviteWithLinkActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithCollaborationItem:(id)a3 activityItems:(id)a4;
- (id)_activityImage;
- (id)_activitySettingsImage;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation UICollaborationInviteWithLinkActivity

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)_activityImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = _ShareSheetBundle();
  v4 = [v2 imageNamed:@"CopyLinkActivity" inBundle:v3];
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 scale];
  v6 = [v4 _applicationIconImageForFormat:10 precomposed:0 scale:?];

  return v6;
}

- (id)_activitySettingsImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = _ShareSheetBundle();
  v4 = [v2 imageNamed:@"CopyLinkActivity" inBundle:v3];
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 scale];
  v6 = [v4 _applicationIconImageForFormat:0 precomposed:0 scale:?];

  return v6;
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"Link[Activity]" value:@"Link" table:@"Localizable"];

  return v3;
}

- (BOOL)canPerformWithCollaborationItem:(id)a3 activityItems:(id)a4
{
  v4 = a3;
  v5 = [v4 type];
  if (v5)
  {
    if (v5 == 2)
    {
      v6 = [v4 isURLProviderSupported];
LABEL_8:
      v7 = v6;
      goto LABEL_9;
    }

    v7 = 1;
  }

  else
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v6 = [v4 isiCloudDrive];
      goto LABEL_8;
    }

    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (void)prepareWithActivityItems:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 firstObject];
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v6[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v4 setObjects:v5];
}

@end