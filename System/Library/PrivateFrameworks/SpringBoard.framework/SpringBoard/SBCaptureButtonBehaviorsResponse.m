@interface SBCaptureButtonBehaviorsResponse
+ (id)emptyResponse;
- (BOOL)isEqual:(id)a3;
- (SBCaptureButtonBehaviorsResponse)initWithBehavior:(id)a3 context:(id)a4;
- (SBCaptureButtonBehaviorsResponse)initWithDictionary:(id)a3;
- (SBCaptureButtonBehaviorsResponse)initWithPrewarmIntent:(unint64_t)a3 launchIntent:(unint64_t)a4 wakeIntent:(unint64_t)a5 coachIntent:(unint64_t)a6;
- (id)dictionaryRepresentation;
- (id)responseByMergingResponse:(id)a3;
- (unint64_t)hash;
@end

@implementation SBCaptureButtonBehaviorsResponse

- (SBCaptureButtonBehaviorsResponse)initWithBehavior:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SBCaptureButtonBehaviorsResponse alloc];
  v9 = [v7 prewarmIntentInContext:v6];
  v10 = [v7 cameraLaunchIntentInContext:v6];
  v11 = [v7 wakeIntentInContext:v6];
  v12 = [v7 coachIntentInContext:v6];

  v13 = [(SBCaptureButtonBehaviorsResponse *)v8 initWithPrewarmIntent:v9 launchIntent:v10 wakeIntent:v11 coachIntent:v12];
  return v13;
}

+ (id)emptyResponse
{
  v2 = [[SBCaptureButtonBehaviorsResponse alloc] initWithPrewarmIntent:0 launchIntent:0 wakeIntent:0 coachIntent:0];

  return v2;
}

- (SBCaptureButtonBehaviorsResponse)initWithPrewarmIntent:(unint64_t)a3 launchIntent:(unint64_t)a4 wakeIntent:(unint64_t)a5 coachIntent:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = SBCaptureButtonBehaviorsResponse;
  result = [(SBCaptureButtonBehaviorsResponse *)&v11 init];
  if (result)
  {
    result->_prewarmIntent = a3;
    result->_launchIntent = a4;
    result->_wakeIntent = a5;
    result->_coachIntent = a6;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  prewarmIntent = self->_prewarmIntent;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __44__SBCaptureButtonBehaviorsResponse_isEqual___block_invoke;
  v28[3] = &unk_2783ACDE0;
  v7 = v4;
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
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_prewarmIntent];
  v5 = [v3 appendInteger:self->_launchIntent];
  v6 = [v3 appendInteger:self->_wakeIntent];
  v7 = [v3 appendInteger:self->_coachIntent];
  v8 = [v3 hash];

  return v8;
}

- (id)responseByMergingResponse:(id)a3
{
  v4 = a3;
  if ([v4 prewarmIntent])
  {
    prewarmIntent = [v4 prewarmIntent];
  }

  else
  {
    prewarmIntent = self->_prewarmIntent;
  }

  if ([v4 launchIntent])
  {
    launchIntent = [v4 launchIntent];
  }

  else
  {
    launchIntent = self->_launchIntent;
  }

  if ([v4 wakeIntent])
  {
    wakeIntent = [v4 wakeIntent];
  }

  else
  {
    wakeIntent = self->_wakeIntent;
  }

  if ([v4 coachIntent])
  {
    coachIntent = [v4 coachIntent];
  }

  else
  {
    coachIntent = self->_coachIntent;
  }

  v9 = [[SBCaptureButtonBehaviorsResponse alloc] initWithPrewarmIntent:prewarmIntent launchIntent:launchIntent wakeIntent:wakeIntent coachIntent:coachIntent];

  return v9;
}

- (SBCaptureButtonBehaviorsResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"PrewarmIntent"];
  v6 = SBCameraPrewarmIntentFromString(v5);
  v7 = [v4 objectForKeyedSubscript:@"LaunchIntent"];
  v8 = SBCameraLaunchIntentFromString(v7);
  v9 = [v4 objectForKeyedSubscript:@"WakeIntent"];
  v10 = SBCameraWakeIntentFromString(v9);
  v11 = [v4 objectForKeyedSubscript:@"CoachIntent"];

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