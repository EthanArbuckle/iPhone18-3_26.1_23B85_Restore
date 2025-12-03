@interface WFWidgetWorkflowFetchRequest
- (WFWidgetWorkflowFetchRequest)initWithFetchType:(unint64_t)type identifier:(id)identifier limit:(unint64_t)limit retryCount:(unint64_t)count completionHandler:(id)handler;
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

  identifier = [(WFWidgetWorkflowFetchRequest *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@, type: %@, identifier: %@, limit: %lu, retryCount: %lu>", v4, v5, identifier, -[WFWidgetWorkflowFetchRequest limit](self, "limit"), -[WFWidgetWorkflowFetchRequest retryCount](self, "retryCount")];

  return v7;
}

- (WFWidgetWorkflowFetchRequest)initWithFetchType:(unint64_t)type identifier:(id)identifier limit:(unint64_t)limit retryCount:(unint64_t)count completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = WFWidgetWorkflowFetchRequest;
  v14 = [(WFWidgetWorkflowFetchRequest *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v15->_limit = limit;
    v15->_retryCount = count;
    v18 = [handlerCopy copy];
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v18;

    v20 = v15;
  }

  return v15;
}

@end