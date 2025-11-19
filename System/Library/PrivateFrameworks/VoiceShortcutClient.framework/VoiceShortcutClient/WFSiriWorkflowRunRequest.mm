@interface WFSiriWorkflowRunRequest
- (WFSiriWorkflowRunRequest)initWithCoder:(id)a3;
- (WFSiriWorkflowRunRequest)initWithOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSiriWorkflowRunRequest

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFSiriWorkflowRunRequest;
  v4 = a3;
  [(WFWorkflowRunRequest *)&v6 encodeWithCoder:v4];
  v5 = [(WFSiriWorkflowRunRequest *)self options:v6.receiver];
  [v4 encodeObject:v5 forKey:@"options"];
}

- (WFSiriWorkflowRunRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFSiriWorkflowRunRequest;
  v5 = [(WFWorkflowRunRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    options = v5->_options;
    v5->_options = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriWorkflowRunRequest)initWithOptions:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFSiriWorkflowRunRequest;
  v6 = [(WFWorkflowRunRequest *)&v10 initWithInput:0 presentationMode:4];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
    v8 = v7;
  }

  return v7;
}

@end