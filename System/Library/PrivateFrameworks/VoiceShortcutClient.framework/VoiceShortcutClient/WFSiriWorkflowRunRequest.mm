@interface WFSiriWorkflowRunRequest
- (WFSiriWorkflowRunRequest)initWithCoder:(id)coder;
- (WFSiriWorkflowRunRequest)initWithOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriWorkflowRunRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSiriWorkflowRunRequest;
  coderCopy = coder;
  [(WFWorkflowRunRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFSiriWorkflowRunRequest *)self options:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"options"];
}

- (WFSiriWorkflowRunRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFSiriWorkflowRunRequest;
  v5 = [(WFWorkflowRunRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    options = v5->_options;
    v5->_options = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriWorkflowRunRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = WFSiriWorkflowRunRequest;
  v6 = [(WFWorkflowRunRequest *)&v10 initWithInput:0 presentationMode:4];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    v8 = v7;
  }

  return v7;
}

@end