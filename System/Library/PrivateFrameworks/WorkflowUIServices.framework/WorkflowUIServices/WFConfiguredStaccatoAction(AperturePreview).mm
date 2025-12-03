@interface WFConfiguredStaccatoAction(AperturePreview)
- (WFApertureIconView)leadingApertureView;
- (WFApertureIconView)trailingApertureView;
@end

@implementation WFConfiguredStaccatoAction(AperturePreview)

- (WFApertureIconView)trailingApertureView
{
  sectionIdentifier = [self sectionIdentifier];
  v3 = [sectionIdentifier isEqualToString:@"Accessibility"];

  if (v3)
  {
    v4 = [WFStaccatoPreviewViewProvider secondarySymbolForConfiguredAction:self];
    if (v4)
    {
      v5 = objc_alloc(MEMORY[0x1E69E0D70]);
      whiteColor = [MEMORY[0x1E69E09E0] whiteColor];
      v7 = [v5 initWithSymbolName:v4 symbolColor:whiteColor];

      v8 = [[WFApertureIconView alloc] initWithIcon:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WFApertureIconView)leadingApertureView
{
  v2 = [WFApertureIconView alloc];
  previewIcon = [self previewIcon];
  v4 = [(WFApertureIconView *)v2 initWithIcon:previewIcon];

  identifier = [self identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x1E69E1220]];

  if (v6)
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    identifier2 = [self identifier];
    v9 = [identifier2 isEqualToString:*MEMORY[0x1E69E1300]];

    if (!v9)
    {
      goto LABEL_6;
    }

    systemRedColor = [MEMORY[0x1E69DC888] colorWithRed:0.196 green:0.678 blue:0.843 alpha:1.0];
  }

  v10 = systemRedColor;
  [(WFApertureIconView *)v4 setKeyColorOverride:systemRedColor];

LABEL_6:

  return v4;
}

@end