@interface SBCaptureButtonBehaviorsResponseLog
- (BOOL)isEqual:(id)a3;
- (SBCaptureButtonBehaviorsResponseLog)initWithBehavior:(id)a3 response:(id)a4;
- (SBCaptureButtonBehaviorsResponseLog)initWithBehaviorIdentifier:(unint64_t)a3 response:(id)a4;
- (SBCaptureButtonBehaviorsResponseLog)initWithDictionary:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation SBCaptureButtonBehaviorsResponseLog

- (SBCaptureButtonBehaviorsResponseLog)initWithBehavior:(id)a3 response:(id)a4
{
  v6 = a4;
  v7 = -[SBCaptureButtonBehaviorsResponseLog initWithBehaviorIdentifier:response:](self, "initWithBehaviorIdentifier:response:", [a3 identifier], v6);

  return v7;
}

- (SBCaptureButtonBehaviorsResponseLog)initWithBehaviorIdentifier:(unint64_t)a3 response:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBCaptureButtonBehaviorsResponseLog;
  v8 = [(SBCaptureButtonBehaviorsResponseLog *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_behaviorIdentifier = a3;
    objc_storeStrong(&v8->_response, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  behaviorIdentifier = self->_behaviorIdentifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__SBCaptureButtonBehaviorsResponseLog_isEqual___block_invoke;
  v18[3] = &unk_2783ACDE0;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendInteger:behaviorIdentifier counterpart:v18];
  response = self->_response;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __47__SBCaptureButtonBehaviorsResponseLog_isEqual___block_invoke_2;
  v16 = &unk_2783ACDB8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:response counterpart:&v13];
  LOBYTE(response) = [v5 isEqual];

  return response;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_behaviorIdentifier];
  v5 = [v3 appendObject:self->_response];
  v6 = [v3 hash];

  return v6;
}

- (SBCaptureButtonBehaviorsResponseLog)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [SBCaptureButtonBehaviorsResponseLog alloc];
  v6 = [v4 objectForKeyedSubscript:@"Behavior"];
  v7 = SBCaptureButtonBehaviorIdentifierFromString(v6);
  v8 = [SBCaptureButtonBehaviorsResponse alloc];
  v9 = [v4 objectForKeyedSubscript:@"Response"];

  v10 = [(SBCaptureButtonBehaviorsResponse *)v8 initWithDictionary:v9];
  v11 = [(SBCaptureButtonBehaviorsResponseLog *)v5 initWithBehaviorIdentifier:v7 response:v10];

  return v11;
}

- (id)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Behavior";
  v3 = SBCaptureButtonBehaviorIdentifierDescription(self->_behaviorIdentifier);
  v7[1] = @"Response";
  v8[0] = v3;
  v4 = [(SBCaptureButtonBehaviorsResponse *)self->_response dictionaryRepresentation];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end