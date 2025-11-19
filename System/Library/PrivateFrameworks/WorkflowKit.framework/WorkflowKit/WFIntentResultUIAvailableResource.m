@interface WFIntentResultUIAvailableResource
- (WFIntentResultUIAvailableResource)initWithDefinition:(id)a3 resolvedIntentDescriptor:(id)a4 hasSuccessResponseWithDialog:(BOOL)a5;
- (void)refreshAvailability;
@end

@implementation WFIntentResultUIAvailableResource

- (void)refreshAvailability
{
  if ([(WFIntentResultUIAvailableResource *)self hasSuccessResponseWithDialog])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(WFIntentResultUIAvailableResource *)self resolvedIntentDescriptor];
    v3 = [v4 hasCustomUIExtension];
  }

  [(WFResource *)self updateAvailability:v3 withError:0];
}

- (WFIntentResultUIAvailableResource)initWithDefinition:(id)a3 resolvedIntentDescriptor:(id)a4 hasSuccessResponseWithDialog:(BOOL)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = WFIntentResultUIAvailableResource;
  v10 = [(WFResource *)&v14 initWithDefinition:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_resolvedIntentDescriptor, a4);
    v11->_hasSuccessResponseWithDialog = a5;
    v12 = v11;
  }

  return v11;
}

@end