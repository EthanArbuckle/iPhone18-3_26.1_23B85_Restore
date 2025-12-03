@interface SBCaptureButtonBehaviorsResponse
+ (id)emptyResponse;
- (BOOL)isEqual:(id)equal;
- (SBCaptureButtonBehaviorsResponse)initWithBehavior:(id)behavior context:(id)context;
- (SBCaptureButtonBehaviorsResponse)initWithDictionary:(id)dictionary;
- (SBCaptureButtonBehaviorsResponse)initWithPrewarmIntent:(unint64_t)intent launchIntent:(unint64_t)launchIntent wakeIntent:(unint64_t)wakeIntent coachIntent:(unint64_t)coachIntent;
- (id)dictionaryRepresentation;
- (id)responseByMergingResponse:(id)response;
- (unint64_t)hash;
@end

@implementation SBCaptureButtonBehaviorsResponse

- (SBCaptureButtonBehaviorsResponse)initWithBehavior:(id)behavior context:(id)context
{
  contextCopy = context;
  behaviorCopy = behavior;
  v8 = [SBCaptureButtonBehaviorsResponse alloc];
  v9 = [behaviorCopy prewarmIntentInContext:contextCopy];
  v10 = [behaviorCopy cameraLaunchIntentInContext:contextCopy];
  v11 = [behaviorCopy wakeIntentInContext:contextCopy];
  v12 = [behaviorCopy coachIntentInContext:contextCopy];

  v13 = [(SBCaptureButtonBehaviorsResponse *)v8 initWithPrewarmIntent:v9 launchIntent:v10 wakeIntent:v11 coachIntent:v12];
  return v13;
}

+ (id)emptyResponse
{
  v2 = [[SBCaptureButtonBehaviorsResponse alloc] initWithPrewarmIntent:0 launchIntent:0 wakeIntent:0 coachIntent:0];

  return v2;
}

- (SBCaptureButtonBehaviorsResponse)initWithPrewarmIntent:(unint64_t)intent launchIntent:(unint64_t)launchIntent wakeIntent:(unint64_t)wakeIntent coachIntent:(unint64_t)coachIntent
{
  v11.receiver = self;
  v11.super_class = SBCaptureButtonBehaviorsResponse;
  result = [(SBCaptureButtonBehaviorsResponse *)&v11 init];
  if (result)
  {
    result->_prewarmIntent = intent;
    result->_launchIntent = launchIntent;
    result->_wakeIntent = wakeIntent;
    result->_coachIntent = coachIntent;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  prewarmIntent = self->_prewarmIntent;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __44__SBCaptureButtonBehaviorsResponse_isEqual___block_invoke;
  v28[3] = &unk_2783ACDE0;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendInteger:prewarmIntent counterpart:v28];
  launchIntent = self->_launchIntent;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__SBCaptureButtonBehaviorsResponse_isEqual___block_invoke_2;
  v26[3] = &unk_2783ACDE0;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendInteger:launchIntent counterpart:v26];
  wakeIntent = self->_wakeIntent;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __44__SBCaptureButtonBehaviorsResponse_isEqual___block_invoke_3;
  v24[3] = &unk_2783ACDE0;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendInteger:wakeIntent counterpart:v24];
  coachIntent = self->_coachIntent;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __44__SBCaptureButtonBehaviorsResponse_isEqual___block_invoke_4;
  v22 = &unk_2783ACDE0;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendInteger:coachIntent counterpart:&v19];
  LOBYTE(coachIntent) = [v5 isEqual];

  return coachIntent;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_prewarmIntent];
  v5 = [builder appendInteger:self->_launchIntent];
  v6 = [builder appendInteger:self->_wakeIntent];
  v7 = [builder appendInteger:self->_coachIntent];
  v8 = [builder hash];

  return v8;
}

- (id)responseByMergingResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy prewarmIntent])
  {
    prewarmIntent = [responseCopy prewarmIntent];
  }

  else
  {
    prewarmIntent = self->_prewarmIntent;
  }

  if ([responseCopy launchIntent])
  {
    launchIntent = [responseCopy launchIntent];
  }

  else
  {
    launchIntent = self->_launchIntent;
  }

  if ([responseCopy wakeIntent])
  {
    wakeIntent = [responseCopy wakeIntent];
  }

  else
  {
    wakeIntent = self->_wakeIntent;
  }

  if ([responseCopy coachIntent])
  {
    coachIntent = [responseCopy coachIntent];
  }

  else
  {
    coachIntent = self->_coachIntent;
  }

  v9 = [[SBCaptureButtonBehaviorsResponse alloc] initWithPrewarmIntent:prewarmIntent launchIntent:launchIntent wakeIntent:wakeIntent coachIntent:coachIntent];

  return v9;
}

- (SBCaptureButtonBehaviorsResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"PrewarmIntent"];
  v6 = SBCameraPrewarmIntentFromString(v5);
  v7 = [dictionaryCopy objectForKeyedSubscript:@"LaunchIntent"];
  v8 = SBCameraLaunchIntentFromString(v7);
  v9 = [dictionaryCopy objectForKeyedSubscript:@"WakeIntent"];
  v10 = SBCameraWakeIntentFromString(v9);
  v11 = [dictionaryCopy objectForKeyedSubscript:@"CoachIntent"];

  v12 = [(SBCaptureButtonBehaviorsResponse *)self initWithPrewarmIntent:v6 launchIntent:v8 wakeIntent:v10 coachIntent:SBCameraCoachIntentFromString(v11)];
  return v12;
}

- (id)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"PrewarmIntent";
  v3 = SBCameraPrewarmIntentDescription(self->_prewarmIntent);
  v10[0] = v3;
  v9[1] = @"LaunchIntent";
  v4 = SBCameraLaunchIntentDescription(self->_launchIntent);
  v10[1] = v4;
  v9[2] = @"WakeIntent";
  v5 = SBCameraWakeIntentDescription(self->_wakeIntent);
  v10[2] = v5;
  v9[3] = @"CoachIntent";
  v6 = SBCameraCoachIntentDescription(self->_coachIntent);
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end