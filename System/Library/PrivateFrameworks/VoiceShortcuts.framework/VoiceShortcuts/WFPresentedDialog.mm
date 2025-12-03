@interface WFPresentedDialog
- (WFPresentedDialog)initWithRequest:(id)request presentationMode:(unint64_t)mode runningContext:(id)context completionHandler:(id)handler;
@end

@implementation WFPresentedDialog

- (WFPresentedDialog)initWithRequest:(id)request presentationMode:(unint64_t)mode runningContext:(id)context completionHandler:(id)handler
{
  requestCopy = request;
  contextCopy = context;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = WFPresentedDialog;
  v14 = [(WFPresentedDialog *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, request);
    v15->_presentationMode = mode;
    objc_storeStrong(&v15->_context, context);
    v16 = [handlerCopy copy];
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v16;

    v18 = v15;
  }

  return v15;
}

@end