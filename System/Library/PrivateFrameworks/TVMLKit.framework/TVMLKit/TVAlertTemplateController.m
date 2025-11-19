@interface TVAlertTemplateController
@end

@implementation TVAlertTemplateController

_TVAlertTemplateController_iOS *__50___TVTemplateFactory__registerTemplateControllers__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_alloc_init(_TVAlertTemplateController_iOS);
  }

  v7 = v6;
  [(_TVAlertTemplateController_iOS *)v6 updateWithTemplateElement:v4];

  return v7;
}

_TVAlertTemplateController_iOS *__50___TVTemplateFactory__registerTemplateControllers__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_alloc_init(_TVAlertTemplateController_iOS);
  }

  v7 = v6;
  [(_TVAlertTemplateController_iOS *)v6 updateWithViewElement:v4];

  return v7;
}

void __57___TVAlertTemplateController_iOS__presentAlertController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) tv_dispatchEvent:@"select" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:WeakRetained completionBlock:0];
}

@end