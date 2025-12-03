@interface WFIntentResultUIAvailableResource
- (WFIntentResultUIAvailableResource)initWithDefinition:(id)definition resolvedIntentDescriptor:(id)descriptor hasSuccessResponseWithDialog:(BOOL)dialog;
- (void)refreshAvailability;
@end

@implementation WFIntentResultUIAvailableResource

- (void)refreshAvailability
{
  if ([(WFIntentResultUIAvailableResource *)self hasSuccessResponseWithDialog])
  {
    hasCustomUIExtension = 1;
  }

  else
  {
    resolvedIntentDescriptor = [(WFIntentResultUIAvailableResource *)self resolvedIntentDescriptor];
    hasCustomUIExtension = [resolvedIntentDescriptor hasCustomUIExtension];
  }

  [(WFResource *)self updateAvailability:hasCustomUIExtension withError:0];
}

- (WFIntentResultUIAvailableResource)initWithDefinition:(id)definition resolvedIntentDescriptor:(id)descriptor hasSuccessResponseWithDialog:(BOOL)dialog
{
  descriptorCopy = descriptor;
  v14.receiver = self;
  v14.super_class = WFIntentResultUIAvailableResource;
  v10 = [(WFResource *)&v14 initWithDefinition:definition];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_resolvedIntentDescriptor, descriptor);
    v11->_hasSuccessResponseWithDialog = dialog;
    v12 = v11;
  }

  return v11;
}

@end