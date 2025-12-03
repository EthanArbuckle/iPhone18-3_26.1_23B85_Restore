@interface SBSAIndicatorAppearanceStateContext
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAIndicatorAppearanceStateContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  activeIndicatorElementContext = self->_activeIndicatorElementContext;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__SBSAIndicatorAppearanceStateContext_isEqual___block_invoke;
  v28[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendObject:activeIndicatorElementContext counterpart:v28];
  interSensorIndicatorPhase = self->_interSensorIndicatorPhase;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __47__SBSAIndicatorAppearanceStateContext_isEqual___block_invoke_2;
  v26[3] = &unk_2783A9500;
  v10 = v7;
  v27 = v10;
  v11 = [v8 appendUnsignedInteger:interSensorIndicatorPhase counterpart:v26];
  microIndicatorPhase = self->_microIndicatorPhase;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__SBSAIndicatorAppearanceStateContext_isEqual___block_invoke_3;
  v24[3] = &unk_2783A9500;
  v13 = v10;
  v25 = v13;
  v14 = [v11 appendUnsignedInteger:microIndicatorPhase counterpart:v24];
  microIndicatorEjectionPhase = self->_microIndicatorEjectionPhase;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __47__SBSAIndicatorAppearanceStateContext_isEqual___block_invoke_4;
  v22 = &unk_2783A9500;
  v23 = v13;
  v16 = v13;
  v17 = [v14 appendUnsignedInteger:microIndicatorEjectionPhase counterpart:&v19];
  LOBYTE(microIndicatorEjectionPhase) = [v17 isEqual];

  return microIndicatorEjectionPhase;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_activeIndicatorElementContext];
  v5 = [v4 appendUnsignedInteger:self->_interSensorIndicatorPhase];
  v6 = [v5 appendUnsignedInteger:self->_microIndicatorPhase];
  v7 = [v6 appendUnsignedInteger:self->_microIndicatorEjectionPhase];
  v8 = [v7 hash];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = self->_interSensorIndicatorPhase - 1;
  if (v5 > 2)
  {
    v6 = @"Disappeared";
  }

  else
  {
    v6 = off_2783C3438[v5];
  }

  v7 = self->_microIndicatorEjectionPhase - 1;
  if (v7 > 2)
  {
    v8 = @"Accepted";
  }

  else
  {
    v8 = off_2783C3420[v7];
  }

  v9 = self->_microIndicatorPhase - 1;
  if (v9 > 2)
  {
    v10 = @"Disappeared";
  }

  else
  {
    v10 = off_2783C3438[v9];
  }

  return [v3 stringWithFormat:@"<%@: %p; indicatorElementContext: %@; interSensorIndicatorPhase: %@; microIndicatorEjectionPhase: %@; microIndicatorPhase: %@>", v4, self, self->_activeIndicatorElementContext, v6, v8, v10];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(SBSAIndicatorElementContext *)self->_activeIndicatorElementContext copy];
  v6 = v4[1];
  v4[1] = v5;

  v4[2] = self->_interSensorIndicatorPhase;
  v4[3] = self->_microIndicatorPhase;
  v4[4] = self->_microIndicatorEjectionPhase;
  return v4;
}

+ (id)instanceWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:blockCopy];

  return v5;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(SBSAIndicatorAppearanceStateContext *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

@end