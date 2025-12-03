@interface UIStatusBarBreadcrumbItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (id)shortenedTitleWithCompressionLevel:(int)level;
- (void)userDidActivateButton:(id)button;
@end

@implementation UIStatusBarBreadcrumbItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  dataCopy = data;
  rawData = [dataCopy rawData];
  if (*(rawData + 2537))
  {
    v7 = rawData;
    [(UIStatusBarBreadcrumbItemView *)self setSystemNavigationAction:0];
    2537 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7 + 2537];
  }

  else
  {
    systemNavigationItem = [dataCopy systemNavigationItem];
    [(UIStatusBarBreadcrumbItemView *)self setSystemNavigationAction:systemNavigationItem];

    systemNavigationAction = [(UIStatusBarBreadcrumbItemView *)self systemNavigationAction];
    2537 = [systemNavigationAction titleForDestination:0];
  }

  destinationText = [(UIStatusBarBreadcrumbItemView *)self destinationText];
  v12 = [destinationText isEqualToString:2537];

  if ((v12 & 1) == 0)
  {
    [(UIStatusBarBreadcrumbItemView *)self setDestinationText:2537];
    [(UIStatusBarSystemNavigationItemView *)self setCurrentLabelCompressionLevel:0];
  }

  v13 = [(UIStatusBarBreadcrumbItemView *)self shortenedTitleWithCompressionLevel:[(UIStatusBarSystemNavigationItemView *)self currentLabelCompressionLevel]];
  [self setAccessibilityIdentifier:@"breadcrumb"];
  title = [(UIStatusBarSystemNavigationItemView *)self title];
  v15 = [title isEqualToString:v13];

  if ((v15 & 1) == 0)
  {
    [(UIStatusBarSystemNavigationItemView *)self setTitle:v13];
  }

  return v15 ^ 1;
}

- (void)userDidActivateButton:(id)button
{
  systemNavigationAction = [(UIStatusBarBreadcrumbItemView *)self systemNavigationAction];
  canSendResponse = [systemNavigationAction canSendResponse];

  if (canSendResponse)
  {
    systemNavigationAction2 = [(UIStatusBarBreadcrumbItemView *)self systemNavigationAction];
    [systemNavigationAction2 sendResponseForDestination:0];
  }
}

- (id)shortenedTitleWithCompressionLevel:(int)level
{
  if (level)
  {
    v3 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _UILocalizedStringInSystemLanguage(@"StatusBar: BackBreadcrumb", @"%@");
    destinationText = [(UIStatusBarBreadcrumbItemView *)self destinationText];
    v3 = [v5 stringWithFormat:v6, destinationText];
  }

  return v3;
}

@end