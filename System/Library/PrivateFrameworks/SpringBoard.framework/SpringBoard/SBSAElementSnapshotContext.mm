@interface SBSAElementSnapshotContext
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (SBSAElementSnapshotContext)initWithSnapshotIdentity:(id)identity;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAElementSnapshotContext

- (SBSAElementSnapshotContext)initWithSnapshotIdentity:(id)identity
{
  identityCopy = identity;
  v16.receiver = self;
  v16.super_class = SBSAElementSnapshotContext;
  v5 = [(SBSAElementSnapshotContext *)&v16 init];
  if (v5)
  {
    clientIdentifier = [identityCopy clientIdentifier];
    v7 = [clientIdentifier copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v7;

    elementIdentifier = [identityCopy elementIdentifier];
    v10 = [elementIdentifier copy];
    elementIdentifier = v5->_elementIdentifier;
    v5->_elementIdentifier = v10;

    snapshotReason = [identityCopy snapshotReason];
    v13 = [snapshotReason copy];
    snapshotReason = v5->_snapshotReason;
    v5->_snapshotReason = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  clientIdentifier = self->_clientIdentifier;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __38__SBSAElementSnapshotContext_isEqual___block_invoke;
  v21[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v22 = v7;
  v8 = [v5 appendObject:clientIdentifier counterpart:v21];
  elementIdentifier = self->_elementIdentifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __38__SBSAElementSnapshotContext_isEqual___block_invoke_2;
  v19[3] = &unk_2783ACDB8;
  v10 = v7;
  v20 = v10;
  v11 = [v8 appendObject:elementIdentifier counterpart:v19];
  snapshotReason = self->_snapshotReason;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__SBSAElementSnapshotContext_isEqual___block_invoke_3;
  v17[3] = &unk_2783ACDB8;
  v18 = v10;
  v13 = v10;
  v14 = [v11 appendObject:snapshotReason counterpart:v17];
  v15 = [v14 isEqual];

  return v15;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_clientIdentifier];
  v5 = [v4 appendObject:self->_elementIdentifier];
  v6 = [v5 appendObject:self->_snapshotReason];
  v7 = [v6 hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSString *)self->_clientIdentifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_elementIdentifier copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_snapshotReason copy];
  v10 = v4[3];
  v4[3] = v9;

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
  v5 = [(SBSAElementSnapshotContext *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

@end