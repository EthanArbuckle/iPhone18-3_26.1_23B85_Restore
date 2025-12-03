@interface TRAInputsValidationContext
- (TRAInputsValidationContext)initWithAcquiredParticipants:(id)participants;
@end

@implementation TRAInputsValidationContext

- (TRAInputsValidationContext)initWithAcquiredParticipants:(id)participants
{
  participantsCopy = participants;
  v9.receiver = self;
  v9.super_class = TRAInputsValidationContext;
  v6 = [(TRAInputsValidationContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_acquiredParticipants, participants);
  }

  return v7;
}

@end