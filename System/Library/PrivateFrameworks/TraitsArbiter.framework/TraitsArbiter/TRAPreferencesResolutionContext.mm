@interface TRAPreferencesResolutionContext
- (TRAPreferencesResolutionContext)initWithAcquiredParticipants:(id)participants stageParticipantsRoles:(id)roles validatedInputs:(id)inputs rawInputs:(id)rawInputs;
@end

@implementation TRAPreferencesResolutionContext

- (TRAPreferencesResolutionContext)initWithAcquiredParticipants:(id)participants stageParticipantsRoles:(id)roles validatedInputs:(id)inputs rawInputs:(id)rawInputs
{
  participantsCopy = participants;
  rolesCopy = roles;
  inputsCopy = inputs;
  rawInputsCopy = rawInputs;
  v18.receiver = self;
  v18.super_class = TRAPreferencesResolutionContext;
  v15 = [(TRAPreferencesResolutionContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_acquiredParticipants, participants);
    objc_storeStrong(&v16->_stageParticipantsRoles, roles);
    objc_storeStrong(&v16->_validatedInputs, inputs);
    objc_storeStrong(&v16->_rawInputs, rawInputs);
  }

  return v16;
}

@end