@interface VSRecognitionResultHandlingRequest
- (VSRecognitionResultHandlingRequest)initWithHandler:(id)handler results:(id)results;
- (id)handler;
- (id)nextAction;
- (id)results;
- (void)dealloc;
- (void)setNextAction:(id)action;
@end

@implementation VSRecognitionResultHandlingRequest

- (id)nextAction
{
  v2 = self->_action;

  return v2;
}

- (void)setNextAction:(id)action
{
  action = self->_action;
  if (action != action)
  {
    actionCopy = action;
    self->_action = action;
  }
}

- (id)handler
{
  v2 = self->_handler;

  return v2;
}

- (id)results
{
  v2 = self->_results;

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VSRecognitionResultHandlingRequest;
  [(VSRecognitionResultHandlingRequest *)&v3 dealloc];
}

- (VSRecognitionResultHandlingRequest)initWithHandler:(id)handler results:(id)results
{
  v6 = [(VSRecognitionResultHandlingRequest *)self init];
  if (v6)
  {
    v6->_handler = handler;
    v6->_results = results;
  }

  return v6;
}

@end