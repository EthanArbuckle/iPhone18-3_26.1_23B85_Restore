@interface WFSageWorkflowRunRequest
- (WFSageWorkflowRunRequest)initWithInput:(id)input presentationMode:(unint64_t)mode locale:(id)locale;
@end

@implementation WFSageWorkflowRunRequest

- (WFSageWorkflowRunRequest)initWithInput:(id)input presentationMode:(unint64_t)mode locale:(id)locale
{
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = WFSageWorkflowRunRequest;
  v9 = [(WFWorkflowRunRequest *)&v12 initWithInput:input presentationMode:mode];
  locale = v9->_locale;
  v9->_locale = localeCopy;

  return v9;
}

@end