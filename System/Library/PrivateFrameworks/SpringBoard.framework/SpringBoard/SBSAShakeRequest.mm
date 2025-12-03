@interface SBSAShakeRequest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSAShakeRequest)initWithParticipantIdentifier:(id)identifier triggeredBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAShakeRequest

- (SBSAShakeRequest)initWithParticipantIdentifier:(id)identifier triggeredBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = SBSAShakeRequest;
  v8 = [(SBSAShakeRequest *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    participantIdentifier = v8->_participantIdentifier;
    v8->_participantIdentifier = v9;

    v11 = [blockCopy copy];
    triggeredBlock = v8->_triggeredBlock;
    v8->_triggeredBlock = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  participantIdentifier = self->_participantIdentifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __28__SBSAShakeRequest_isEqual___block_invoke;
  v19[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v20 = v7;
  v8 = [v5 appendObject:participantIdentifier counterpart:v19];
  v9 = MEMORY[0x223D6F7F0](self->_triggeredBlock);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __28__SBSAShakeRequest_isEqual___block_invoke_2;
  v17 = &unk_2783ACDB8;
  v18 = v7;
  v10 = v7;
  v11 = [v8 appendObject:v9 counterpart:&v14];
  v12 = [v11 isEqual];

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_participantIdentifier];
  v5 = MEMORY[0x223D6F7F0](self->_triggeredBlock);
  v6 = [v4 appendObject:v5];
  v7 = [v6 hash];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  participantIdentifier = self->_participantIdentifier;
  v6 = MEMORY[0x223D6F7F0](self->_triggeredBlock);
  v7 = [v3 stringWithFormat:@"<%@: %p participantIdentifier: %@, triggeredBlock: %@>", v4, self, participantIdentifier, v6];;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  participantIdentifier = self->_participantIdentifier;
  triggeredBlock = self->_triggeredBlock;

  return [v4 initWithParticipantIdentifier:participantIdentifier triggeredBlock:triggeredBlock];
}

@end