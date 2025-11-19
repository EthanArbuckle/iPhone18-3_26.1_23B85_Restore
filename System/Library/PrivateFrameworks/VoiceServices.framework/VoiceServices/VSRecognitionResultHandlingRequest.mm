@interface VSRecognitionResultHandlingRequest
- (VSRecognitionResultHandlingRequest)initWithHandler:(id)a3 results:(id)a4;
- (id)handler;
- (id)nextAction;
- (id)results;
- (void)dealloc;
- (void)setNextAction:(id)a3;
@end

@implementation VSRecognitionResultHandlingRequest

- (id)nextAction
{
  v2 = self->_action;

  return v2;
}

- (void)setNextAction:(id)a3
{
  action = self->_action;
  if (action != a3)
  {
    v6 = action;
    self->_action = a3;
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

- (VSRecognitionResultHandlingRequest)initWithHandler:(id)a3 results:(id)a4
{
  v6 = [(VSRecognitionResultHandlingRequest *)self init];
  if (v6)
  {
    v6->_handler = a3;
    v6->_results = a4;
  }

  return v6;
}

@end