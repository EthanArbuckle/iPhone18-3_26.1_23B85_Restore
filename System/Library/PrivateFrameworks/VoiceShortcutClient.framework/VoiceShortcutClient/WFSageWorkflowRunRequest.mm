@interface WFSageWorkflowRunRequest
- (WFSageWorkflowRunRequest)initWithInput:(id)a3 presentationMode:(unint64_t)a4 locale:(id)a5;
@end

@implementation WFSageWorkflowRunRequest

- (WFSageWorkflowRunRequest)initWithInput:(id)a3 presentationMode:(unint64_t)a4 locale:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = WFSageWorkflowRunRequest;
  v9 = [(WFWorkflowRunRequest *)&v12 initWithInput:a3 presentationMode:a4];
  locale = v9->_locale;
  v9->_locale = v8;

  return v9;
}

@end