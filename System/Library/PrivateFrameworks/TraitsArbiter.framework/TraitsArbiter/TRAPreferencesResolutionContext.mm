@interface TRAPreferencesResolutionContext
- (TRAPreferencesResolutionContext)initWithAcquiredParticipants:(id)a3 stageParticipantsRoles:(id)a4 validatedInputs:(id)a5 rawInputs:(id)a6;
@end

@implementation TRAPreferencesResolutionContext

- (TRAPreferencesResolutionContext)initWithAcquiredParticipants:(id)a3 stageParticipantsRoles:(id)a4 validatedInputs:(id)a5 rawInputs:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TRAPreferencesResolutionContext;
  v15 = [(TRAPreferencesResolutionContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_acquiredParticipants, a3);
    objc_storeStrong(&v16->_stageParticipantsRoles, a4);
    objc_storeStrong(&v16->_validatedInputs, a5);
    objc_storeStrong(&v16->_rawInputs, a6);
  }

  return v16;
}

@end