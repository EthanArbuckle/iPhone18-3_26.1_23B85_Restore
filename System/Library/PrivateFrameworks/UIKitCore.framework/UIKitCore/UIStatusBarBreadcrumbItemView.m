@interface UIStatusBarBreadcrumbItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (id)shortenedTitleWithCompressionLevel:(int)a3;
- (void)userDidActivateButton:(id)a3;
@end

@implementation UIStatusBarBreadcrumbItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = a3;
  v6 = [v5 rawData];
  if (*(v6 + 2537))
  {
    v7 = v6;
    [(UIStatusBarBreadcrumbItemView *)self setSystemNavigationAction:0];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7 + 2537];
  }

  else
  {
    v9 = [v5 systemNavigationItem];
    [(UIStatusBarBreadcrumbItemView *)self setSystemNavigationAction:v9];

    v10 = [(UIStatusBarBreadcrumbItemView *)self systemNavigationAction];
    v8 = [v10 titleForDestination:0];
  }

  v11 = [(UIStatusBarBreadcrumbItemView *)self destinationText];
  v12 = [v11 isEqualToString:v8];

  if ((v12 & 1) == 0)
  {
    [(UIStatusBarBreadcrumbItemView *)self setDestinationText:v8];
    [(UIStatusBarSystemNavigationItemView *)self setCurrentLabelCompressionLevel:0];
  }

  v13 = [(UIStatusBarBreadcrumbItemView *)self shortenedTitleWithCompressionLevel:[(UIStatusBarSystemNavigationItemView *)self currentLabelCompressionLevel]];
  [self setAccessibilityIdentifier:@"breadcrumb"];
  v14 = [(UIStatusBarSystemNavigationItemView *)self title];
  v15 = [v14 isEqualToString:v13];

  if ((v15 & 1) == 0)
  {
    [(UIStatusBarSystemNavigationItemView *)self setTitle:v13];
  }

  return v15 ^ 1;
}

- (void)userDidActivateButton:(id)a3
{
  v4 = [(UIStatusBarBreadcrumbItemView *)self systemNavigationAction];
  v5 = [v4 canSendResponse];

  if (v5)
  {
    v6 = [(UIStatusBarBreadcrumbItemView *)self systemNavigationAction];
    [v6 sendResponseForDestination:0];
  }
}

- (id)shortenedTitleWithCompressionLevel:(int)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _UILocalizedStringInSystemLanguage(@"StatusBar: BackBreadcrumb", @"%@");
    v7 = [(UIStatusBarBreadcrumbItemView *)self destinationText];
    v3 = [v5 stringWithFormat:v6, v7];
  }

  return v3;
}

@end