@interface SBCaptureButtonBehaviorsResponseLog
- (BOOL)isEqual:(id)equal;
- (SBCaptureButtonBehaviorsResponseLog)initWithBehavior:(id)behavior response:(id)response;
- (SBCaptureButtonBehaviorsResponseLog)initWithBehaviorIdentifier:(unint64_t)identifier response:(id)response;
- (SBCaptureButtonBehaviorsResponseLog)initWithDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation SBCaptureButtonBehaviorsResponseLog

- (SBCaptureButtonBehaviorsResponseLog)initWithBehavior:(id)behavior response:(id)response
{
  responseCopy = response;
  v7 = -[SBCaptureButtonBehaviorsResponseLog initWithBehaviorIdentifier:response:](self, "initWithBehaviorIdentifier:response:", [behavior identifier], responseCopy);

  return v7;
}

- (SBCaptureButtonBehaviorsResponseLog)initWithBehaviorIdentifier:(unint64_t)identifier response:(id)response
{
  responseCopy = response;
  v11.receiver = self;
  v11.super_class = SBCaptureButtonBehaviorsResponseLog;
  v8 = [(SBCaptureButtonBehaviorsResponseLog *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_behaviorIdentifier = identifier;
    objc_storeStrong(&v8->_response, response);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  behaviorIdentifier = self->_behaviorIdentifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__SBCaptureButtonBehaviorsResponseLog_isEqual___block_invoke;
  v18[3] = &unk_2783ACDE0;
  v7 = equalCopy;
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_behaviorIdentifier];
  v5 = [builder appendObject:self->_response];
  v6 = [builder hash];

  return v6;
}

- (SBCaptureButtonBehaviorsResponseLog)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [SBCaptureButtonBehaviorsResponseLog alloc];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"Behavior"];
  v7 = SBCaptureButtonBehaviorIdentifierFromString(v6);
  v8 = [SBCaptureButtonBehaviorsResponse alloc];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"Response"];

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
  dictionaryRepresentation = [(SBCaptureButtonBehaviorsResponse *)self->_response dictionaryRepresentation];
  v8[1] = dictionaryRepresentation;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end