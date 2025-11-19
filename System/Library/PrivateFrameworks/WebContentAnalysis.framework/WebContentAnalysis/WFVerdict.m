@interface WFVerdict
- (void)dealloc;
- (void)setLSMEvaluationResult:(id)a3;
- (void)setMessage:(id)a3;
- (void)setURL:(id)a3;
@end

@implementation WFVerdict

- (void)setLSMEvaluationResult:(id)a3
{
  v5 = a3;

  self->LSMEvaluationResult = a3;
}

- (void)setMessage:(id)a3
{
  v5 = a3;

  self->message = a3;
}

- (void)setURL:(id)a3
{
  v5 = a3;

  self->URL = a3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFVerdict;
  [(WFVerdict *)&v3 dealloc];
}

@end