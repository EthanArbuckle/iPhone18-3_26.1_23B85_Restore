@interface SPUISToolResultBuilder
- (SPUISToolResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildSecondaryCommand;
- (id)buildStandardThumbnail;
- (id)buildTitle;
@end

@implementation SPUISToolResultBuilder

- (SPUISToolResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SPUISToolResultBuilder;
  v5 = [(SPUISShortcutResultBuilder *)&v14 initWithResult:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(SPUISResultBuilder *)v5 result];
    v8 = [v7 valueForAttribute:*MEMORY[0x277CC2A80] withType:objc_opt_class()];
    [(SPUISToolResultBuilder *)v6 setToolIdentifier:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC3390] withType:objc_opt_class()];
    [(SPUISToolResultBuilder *)v6 setToolInvocationData:v9];

    v10 = [v4 valueForAttribute:@"com_apple_shortcuts_spotlight_tool_icon" withType:objc_opt_class()];
    [(SPUISToolResultBuilder *)v6 setToolIconData:v10];

    v11 = [v4 valueForAttribute:@"SSToolParameterizedTitle" withType:objc_opt_class()];
    [(SPUISToolResultBuilder *)v6 setParameterizedTitle:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x277CC3100] withType:objc_opt_class()];
    [(SPUISToolResultBuilder *)v6 setToolType:v12];
  }

  return v6;
}

- (id)buildTitle
{
  v3 = [(SPUISToolResultBuilder *)self parameterizedTitle];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISToolResultBuilder;
    v5 = [(SPUISShortcutResultBuilder *)&v8 buildTitle];
  }

  v6 = v5;

  return v6;
}

- (id)buildDescriptions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  v4 = SSAppNameForBundleId();

  v5 = [(SPUISToolResultBuilder *)self parameterizedTitle];
  if (v5 || ![v4 length])
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D4C598] textWithString:v4];
    v10[0] = v7;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)buildStandardThumbnail
{
  v11.receiver = self;
  v11.super_class = SPUISToolResultBuilder;
  v3 = [(SPUISShortcutResultBuilder *)&v11 buildStandardThumbnail];
  v4 = [(SPUISToolResultBuilder *)self toolIconData];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [(SPUISToolResultBuilder *)self toolIconData];
    [v5 setImageData:v6];

    goto LABEL_8;
  }

  v7 = [(SPUISToolResultBuilder *)self toolType];
  if ([v7 isEqualToString:@"shortcutTool"])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = objc_opt_new();
      [v5 setBundleIdentifier:@"com.apple.shortcuts"];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10.receiver = self;
  v10.super_class = SPUISToolResultBuilder;
  v5 = [(SPUISShortcutResultBuilder *)&v10 buildStandardThumbnail];
LABEL_8:

  return v5;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  v4 = [(SPUISToolResultBuilder *)self toolIdentifier];
  [v3 setToolIdentifier:v4];

  v5 = [(SPUISToolResultBuilder *)self toolInvocationData];
  [v3 setToolInvocationData:v5];

  return v3;
}

- (id)buildSecondaryCommand
{
  v3 = objc_opt_new();
  v4 = [(SPUISToolResultBuilder *)self toolIdentifier];
  [v3 setToolIdentifier:v4];

  v5 = [(SPUISToolResultBuilder *)self toolInvocationData];
  [v3 setToolInvocationData:v5];

  [v3 setCommandDetail:@"skipExecution"];

  return v3;
}

@end