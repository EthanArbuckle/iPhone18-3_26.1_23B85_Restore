@interface WFWidgetWorkflowFetchRequest
- (WFWidgetWorkflowFetchRequest)initWithFetchType:(unint64_t)a3 identifier:(id)a4 limit:(unint64_t)a5 retryCount:(unint64_t)a6 completionHandler:(id)a7;
- (id)description;
@end

@implementation WFWidgetWorkflowFetchRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = WFWidgetWorkflowFetchRequest;
  v4 = [(WFWidgetWorkflowFetchRequest *)&v9 description];
  if ([(WFWidgetWorkflowFetchRequest *)self type])
  {
    v5 = @"collection";
  }

  else
  {
    v5 = @"single workflow";
  }

  v6 = [(WFWidgetWorkflowFetchRequest *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@, type: %@, identifier: %@, limit: %lu, retryCount: %lu>", v4, v5, v6, -[WFWidgetWorkflowFetchRequest limit](self, "limit"), -[WFWidgetWorkflowFetchRequest retryCount](self, "retryCount")];

  return v7;
}

- (WFWidgetWorkflowFetchRequest)initWithFetchType:(unint64_t)a3 identifier:(id)a4 limit:(unint64_t)a5 retryCount:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a7;
  v22.receiver = self;
  v22.super_class = WFWidgetWorkflowFetchRequest;
  v14 = [(WFWidgetWorkflowFetchRequest *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    v16 = [v12 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v15->_limit = a5;
    v15->_retryCount = a6;
    v18 = [v13 copy];
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v18;

    v20 = v15;
  }

  return v15;
}

@end