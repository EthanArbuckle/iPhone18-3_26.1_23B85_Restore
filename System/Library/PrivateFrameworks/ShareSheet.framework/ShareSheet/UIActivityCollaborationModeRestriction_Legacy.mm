@interface UIActivityCollaborationModeRestriction_Legacy
- (UIActivityCollaborationModeRestriction_Legacy)initWithDisabledMode:(int64_t)a3 alertTitle:(id)a4 alertMessage:(id)a5 alertConfirmationButtonTitle:(id)a6 alertContinueToModeButtonTitle:(id)a7;
@end

@implementation UIActivityCollaborationModeRestriction_Legacy

- (UIActivityCollaborationModeRestriction_Legacy)initWithDisabledMode:(int64_t)a3 alertTitle:(id)a4 alertMessage:(id)a5 alertConfirmationButtonTitle:(id)a6 alertContinueToModeButtonTitle:(id)a7
{
  v8.receiver = self;
  v8.super_class = UIActivityCollaborationModeRestriction_Legacy;
  return [(UIActivityCollaborationModeRestriction *)&v8 initWithDisabledMode:a3 alertTitle:a4 alertMessage:a5 alertDismissButtonTitle:a6 alertContinueToModeButtonTitle:a7];
}

@end