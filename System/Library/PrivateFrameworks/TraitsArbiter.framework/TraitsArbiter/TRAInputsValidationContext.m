@interface TRAInputsValidationContext
- (TRAInputsValidationContext)initWithAcquiredParticipants:(id)a3;
@end

@implementation TRAInputsValidationContext

- (TRAInputsValidationContext)initWithAcquiredParticipants:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRAInputsValidationContext;
  v6 = [(TRAInputsValidationContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_acquiredParticipants, a3);
  }

  return v7;
}

@end