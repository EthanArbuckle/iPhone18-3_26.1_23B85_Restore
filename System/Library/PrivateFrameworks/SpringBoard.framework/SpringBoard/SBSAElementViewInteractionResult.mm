@interface SBSAElementViewInteractionResult
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSAElementViewInteractionResult)initWithIdentity:(id)identity interactionSource:(unint64_t)source viewInteractionResult:(int64_t)result;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAElementViewInteractionResult

- (SBSAElementViewInteractionResult)initWithIdentity:(id)identity interactionSource:(unint64_t)source viewInteractionResult:(int64_t)result
{
  identityCopy = identity;
  v17.receiver = self;
  v17.super_class = SBSAElementViewInteractionResult;
  v9 = [(SBSAElementViewInteractionResult *)&v17 init];
  if (v9)
  {
    clientIdentifier = [identityCopy clientIdentifier];
    v11 = [clientIdentifier copy];
    clientIdentifier = v9->_clientIdentifier;
    v9->_clientIdentifier = v11;

    elementIdentifier = [identityCopy elementIdentifier];
    v14 = [elementIdentifier copy];
    elementIdentifier = v9->_elementIdentifier;
    v9->_elementIdentifier = v14;

    v9->_interactionSource = source;
    v9->_viewInteractionResult = result;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  clientIdentifier = self->_clientIdentifier;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __44__SBSAElementViewInteractionResult_isEqual___block_invoke;
  v28[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendObject:clientIdentifier counterpart:v28];
  elementIdentifier = self->_elementIdentifier;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__SBSAElementViewInteractionResult_isEqual___block_invoke_2;
  v26[3] = &unk_2783ACDB8;
  v10 = v7;
  v27 = v10;
  v11 = [v8 appendObject:elementIdentifier counterpart:v26];
  interactionSource = self->_interactionSource;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __44__SBSAElementViewInteractionResult_isEqual___block_invoke_3;
  v24[3] = &unk_2783ACDE0;
  v13 = v10;
  v25 = v13;
  v14 = [v11 appendInteger:interactionSource counterpart:v24];
  viewInteractionResult = self->_viewInteractionResult;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __44__SBSAElementViewInteractionResult_isEqual___block_invoke_4;
  v22 = &unk_2783ACDE0;
  v23 = v13;
  v16 = v13;
  v17 = [v14 appendInteger:viewInteractionResult counterpart:&v19];
  LOBYTE(viewInteractionResult) = [v17 isEqual];

  return viewInteractionResult;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_clientIdentifier];
  v5 = [v4 appendObject:self->_elementIdentifier];
  v6 = [v5 appendInteger:self->_interactionSource];
  v7 = [v6 appendInteger:self->_viewInteractionResult];
  v8 = [v7 hash];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  clientIdentifier = self->_clientIdentifier;
  elementIdentifier = self->_elementIdentifier;
  interactionSource = self->_interactionSource;
  if (interactionSource > 2)
  {
    v8 = @"[Invalid]";
  }

  else
  {
    v8 = off_2783AE160[interactionSource];
  }

  v9 = SAUIStringFromElementViewInteractionResult();
  v10 = [v3 stringWithFormat:@"<%@: %p clientIdentifier: %@; elementIdentifier: %@; interaction source: %@; view interaction result: %@>", v4, self, clientIdentifier, elementIdentifier, v8, v9];;

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  interactionSource = self->_interactionSource;
  viewInteractionResult = self->_viewInteractionResult;

  return [v4 initWithIdentity:self interactionSource:interactionSource viewInteractionResult:viewInteractionResult];
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
  v5 = [(SBSAElementViewInteractionResult *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

@end