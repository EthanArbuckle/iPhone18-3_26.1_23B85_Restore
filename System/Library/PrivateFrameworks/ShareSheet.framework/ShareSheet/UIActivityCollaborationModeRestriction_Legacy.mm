@interface UIActivityCollaborationModeRestriction_Legacy
- (UIActivityCollaborationModeRestriction_Legacy)initWithDisabledMode:(int64_t)mode alertTitle:(id)title alertMessage:(id)message alertConfirmationButtonTitle:(id)buttonTitle alertContinueToModeButtonTitle:(id)modeButtonTitle;
@end

@implementation UIActivityCollaborationModeRestriction_Legacy

- (UIActivityCollaborationModeRestriction_Legacy)initWithDisabledMode:(int64_t)mode alertTitle:(id)title alertMessage:(id)message alertConfirmationButtonTitle:(id)buttonTitle alertContinueToModeButtonTitle:(id)modeButtonTitle
{
  v8.receiver = self;
  v8.super_class = UIActivityCollaborationModeRestriction_Legacy;
  return [(UIActivityCollaborationModeRestriction *)&v8 initWithDisabledMode:mode alertTitle:title alertMessage:message alertDismissButtonTitle:buttonTitle alertContinueToModeButtonTitle:modeButtonTitle];
}

@end