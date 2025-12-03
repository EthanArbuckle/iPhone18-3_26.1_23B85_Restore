@interface SXQuickLookStyler
- (void)styleViewController:(id)controller;
@end

@implementation SXQuickLookStyler

- (void)styleViewController:(id)controller
{
  errorLabel = [controller errorLabel];
  [errorLabel setTextAlignment:1];
}

@end