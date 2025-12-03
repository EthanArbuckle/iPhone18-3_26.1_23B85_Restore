@interface WFVerdict
- (void)dealloc;
- (void)setLSMEvaluationResult:(id)result;
- (void)setMessage:(id)message;
- (void)setURL:(id)l;
@end

@implementation WFVerdict

- (void)setLSMEvaluationResult:(id)result
{
  resultCopy = result;

  self->LSMEvaluationResult = result;
}

- (void)setMessage:(id)message
{
  messageCopy = message;

  self->message = message;
}

- (void)setURL:(id)l
{
  lCopy = l;

  self->URL = l;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFVerdict;
  [(WFVerdict *)&v3 dealloc];
}

@end