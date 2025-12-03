@interface SSToolResultBuilder
- (SSToolResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildSecondaryCommand;
- (id)buildStandardThumbnail;
- (id)buildTitle;
@end

@implementation SSToolResultBuilder

- (SSToolResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = SSToolResultBuilder;
  v5 = [(SSShortcutResultBuilder *)&v14 initWithResult:resultCopy];
  v6 = v5;
  if (v5)
  {
    result = [(SSResultBuilder *)v5 result];
    v8 = [result valueForAttribute:*MEMORY[0x1E69642B8] withType:objc_opt_class()];
    [(SSToolResultBuilder *)v6 setToolIdentifier:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x1E6964DE8] withType:objc_opt_class()];
    [(SSToolResultBuilder *)v6 setToolInvocationData:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x1E6964AF8] withType:objc_opt_class()];
    [(SSToolResultBuilder *)v6 setToolIconData:v10];

    v11 = [resultCopy valueForAttribute:@"SSToolParameterizedTitle" withType:objc_opt_class()];
    [(SSToolResultBuilder *)v6 setParameterizedTitle:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E6964B00] withType:objc_opt_class()];
    [(SSToolResultBuilder *)v6 setToolType:v12];
  }

  return v6;
}

- (id)buildTitle
{
  parameterizedTitle = [(SSToolResultBuilder *)self parameterizedTitle];
  v4 = parameterizedTitle;
  if (parameterizedTitle)
  {
    buildTitle = parameterizedTitle;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSToolResultBuilder;
    buildTitle = [(SSShortcutResultBuilder *)&v8 buildTitle];
  }

  v6 = buildTitle;

  return v6;
}

- (id)buildDescriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  relatedAppBundleIdentifier = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  v4 = SSAppNameForBundleId(relatedAppBundleIdentifier);

  parameterizedTitle = [(SSToolResultBuilder *)self parameterizedTitle];
  if (parameterizedTitle || ![v4 length])
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E69CA3A0] textWithString:v4];
    v10[0] = v7;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)buildStandardThumbnail
{
  v11.receiver = self;
  v11.super_class = SSToolResultBuilder;
  buildStandardThumbnail = [(SSShortcutResultBuilder *)&v11 buildStandardThumbnail];
  toolIconData = [(SSToolResultBuilder *)self toolIconData];

  if (toolIconData)
  {
    buildStandardThumbnail2 = objc_opt_new();
    toolIconData2 = [(SSToolResultBuilder *)self toolIconData];
    [buildStandardThumbnail2 setImageData:toolIconData2];

    goto LABEL_8;
  }

  toolType = [(SSToolResultBuilder *)self toolType];
  if ([toolType isEqualToString:@"shortcutTool"])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      buildStandardThumbnail2 = objc_opt_new();
      [buildStandardThumbnail2 setBundleIdentifier:@"com.apple.shortcuts"];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10.receiver = self;
  v10.super_class = SSToolResultBuilder;
  buildStandardThumbnail2 = [(SSShortcutResultBuilder *)&v10 buildStandardThumbnail];
LABEL_8:

  return buildStandardThumbnail2;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  toolIdentifier = [(SSToolResultBuilder *)self toolIdentifier];
  [v3 setToolIdentifier:toolIdentifier];

  toolInvocationData = [(SSToolResultBuilder *)self toolInvocationData];
  [v3 setToolInvocationData:toolInvocationData];

  return v3;
}

- (id)buildSecondaryCommand
{
  v3 = objc_opt_new();
  toolIdentifier = [(SSToolResultBuilder *)self toolIdentifier];
  [v3 setToolIdentifier:toolIdentifier];

  toolInvocationData = [(SSToolResultBuilder *)self toolInvocationData];
  [v3 setToolInvocationData:toolInvocationData];

  [v3 setCommandDetail:@"skipExecution"];

  return v3;
}

@end