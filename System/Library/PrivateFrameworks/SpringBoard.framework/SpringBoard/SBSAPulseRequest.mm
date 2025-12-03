@interface SBSAPulseRequest
- (BOOL)isEqual:(id)equal;
- (SBSAPulseRequest)initWithParticipantIdentifier:(id)identifier pulseStyle:(int64_t)style;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAPulseRequest

- (SBSAPulseRequest)initWithParticipantIdentifier:(id)identifier pulseStyle:(int64_t)style
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SBSAPulseRequest;
  v7 = [(SBSAPulseRequest *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    participantIdentifier = v7->_participantIdentifier;
    v7->_participantIdentifier = v8;

    v7->_pulseStyle = style;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  pulseStyle = self->_pulseStyle;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __28__SBSAPulseRequest_isEqual___block_invoke;
  v19[3] = &unk_2783ACDE0;
  v7 = equalCopy;
  v20 = v7;
  v8 = [v5 appendInteger:pulseStyle counterpart:v19];
  participantIdentifier = self->_participantIdentifier;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __28__SBSAPulseRequest_isEqual___block_invoke_2;
  v17 = &unk_2783ACDB8;
  v18 = v7;
  v10 = v7;
  v11 = [v8 appendObject:participantIdentifier counterpart:&v14];
  v12 = [v11 isEqual];

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_pulseStyle];
  v5 = [v4 appendObject:self->_participantIdentifier];
  v6 = [v5 hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  participantIdentifier = self->_participantIdentifier;
  pulseStyle = self->_pulseStyle;

  return [v4 initWithParticipantIdentifier:participantIdentifier pulseStyle:pulseStyle];
}

@end