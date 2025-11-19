@interface WFPresentedDialog
- (WFPresentedDialog)initWithRequest:(id)a3 presentationMode:(unint64_t)a4 runningContext:(id)a5 completionHandler:(id)a6;
@end

@implementation WFPresentedDialog

- (WFPresentedDialog)initWithRequest:(id)a3 presentationMode:(unint64_t)a4 runningContext:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = WFPresentedDialog;
  v14 = [(WFPresentedDialog *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, a3);
    v15->_presentationMode = a4;
    objc_storeStrong(&v15->_context, a5);
    v16 = [v13 copy];
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v16;

    v18 = v15;
  }

  return v15;
}

@end