@interface SiriVoiceTriggerContext
- (id)description;
@end

@implementation SiriVoiceTriggerContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contextOverride = [(SiriContext *)self contextOverride];
  speechRequestOptions = [(SiriContinuityContext *)self speechRequestOptions];
  requestInfo = [(SiriContinuityContext *)self requestInfo];
  userActivity = [(SiriContinuityContext *)self userActivity];
  v8 = [v3 stringWithFormat:@"<SiriVoiceTriggerContext contextOverride:%@, speechRequestOptions:%@, requestInfo:%@, userActivity:%@>", contextOverride, speechRequestOptions, requestInfo, userActivity];

  return v8;
}

@end