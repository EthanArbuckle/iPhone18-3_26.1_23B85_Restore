@interface STActivityAttribution
+ (STActivityAttribution)attributionWithAuditToken:(id *)token;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)_isEquivalentForBookkeepingPurposesToActivityAttribution:(id)attribution;
- (BOOL)isEqual:(id)equal;
- (STActivityAttribution)initWithAttributedEntity:(id)entity activeEntity:(id)activeEntity;
- (STActivityAttribution)initWithAuditToken:(id *)token;
- (STActivityAttribution)initWithCoder:(id)coder;
- (STActivityAttribution)initWithPID:(int)d;
- (STAttributedEntity)activeEntity;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)_initWithAttributedEntity:(id)entity activeEntity:(id)activeEntity UUID:(id)d;
- (id)copyReplacingAttributedEntity:(id)entity activeEntity:(id)activeEntity;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STActivityAttribution

- (STAttributedEntity)activeEntity
{
  activeEntity = self->_activeEntity;
  if (activeEntity)
  {
    attributedEntity = activeEntity;
  }

  else
  {
    attributedEntity = [(STActivityAttribution *)self attributedEntity];
  }

  return attributedEntity;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  attributedEntity = [(STActivityAttribution *)self attributedEntity];
  v5 = [builder appendObject:attributedEntity];

  activeEntity = [(STActivityAttribution *)self activeEntity];
  v7 = [builder appendObject:activeEntity];

  v8 = [builder hash];
  return v8;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  attributedEntity = [(STActivityAttribution *)self attributedEntity];
  if (attributedEntity)
  {
    v6 = attributedEntity;
    [attributedEntity auditToken];
    attributedEntity = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

+ (STActivityAttribution)attributionWithAuditToken:(id *)token
{
  v4 = [self alloc];
  v5 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v5;
  v6 = [v4 initWithAuditToken:v8];

  return v6;
}

- (STActivityAttribution)initWithAuditToken:(id *)token
{
  v5 = [STAttributedEntity alloc];
  v6 = *&token->var0[4];
  v10[0] = *token->var0;
  v10[1] = v6;
  v7 = [(STAttributedEntity *)v5 initWithAuditToken:v10];
  v8 = [(STActivityAttribution *)self initWithAttributedEntity:v7];

  return v8;
}

- (STActivityAttribution)initWithPID:(int)d
{
  v4[0] = -1;
  v4[1] = -1;
  v5 = -1;
  dCopy = d;
  v7 = -1;
  return [(STActivityAttribution *)self initWithAuditToken:v4];
}

- (STActivityAttribution)initWithAttributedEntity:(id)entity activeEntity:(id)activeEntity
{
  v6 = MEMORY[0x1E696AFB0];
  activeEntityCopy = activeEntity;
  entityCopy = entity;
  uUID = [v6 UUID];
  v10 = [(STActivityAttribution *)self _initWithAttributedEntity:entityCopy activeEntity:activeEntityCopy UUID:uUID];

  return v10;
}

- (id)_initWithAttributedEntity:(id)entity activeEntity:(id)activeEntity UUID:(id)d
{
  entityCopy = entity;
  activeEntityCopy = activeEntity;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = STActivityAttribution;
  v11 = [(STActivityAttribution *)&v19 init];
  if (v11)
  {
    v12 = [entityCopy copy];
    attributedEntity = v11->_attributedEntity;
    v11->_attributedEntity = v12;

    if (([entityCopy isEqual:activeEntityCopy] & 1) == 0)
    {
      v14 = [activeEntityCopy copy];
      activeEntity = v11->_activeEntity;
      v11->_activeEntity = v14;
    }

    v16 = [dCopy copy];
    UUID = v11->_UUID;
    v11->_UUID = v16;
  }

  return v11;
}

- (id)copyReplacingAttributedEntity:(id)entity activeEntity:(id)activeEntity
{
  activeEntityCopy = activeEntity;
  entityCopy = entity;
  v8 = objc_alloc(objc_opt_class());
  uUID = [(STActivityAttribution *)self UUID];
  v10 = [v8 _initWithAttributedEntity:entityCopy activeEntity:activeEntityCopy UUID:uUID];

  return v10;
}

- (BOOL)_isEquivalentForBookkeepingPurposesToActivityAttribution:(id)attribution
{
  attributionCopy = attribution;
  uUID = [(STActivityAttribution *)self UUID];
  uUID2 = [attributionCopy UUID];

  LOBYTE(attributionCopy) = [uUID isEqual:uUID2];
  return attributionCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  attributedEntity = [(STActivityAttribution *)self attributedEntity];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __33__STActivityAttribution_isEqual___block_invoke;
  v18[3] = &unk_1E85DDCD8;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:attributedEntity counterpart:v18];

  activeEntity = [(STActivityAttribution *)self activeEntity];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __33__STActivityAttribution_isEqual___block_invoke_2;
  v16 = &unk_1E85DDCD8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:activeEntity counterpart:&v13];

  LOBYTE(activeEntity) = [v5 isEqual];
  return activeEntity;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STActivityAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STActivityAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STActivityAttribution *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  selfCopy = self;
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [selfCopy succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__STActivityAttribution__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v10[4] = selfCopy;
    v7 = succinctDescriptionBuilder;
    v11 = v7;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

    v8 = v11;
    selfCopy = v7;
  }

  return selfCopy;
}

void __73__STActivityAttribution__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) attributedEntity];
  v2 = [*(a1 + 32) activeEntity];
  v3 = [*(a1 + 40) appendObject:v11 withName:@"attributedEntity"];
  if (v2 != v11)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) activeEntity];
    v6 = [v4 appendObject:v5 withName:@"activeEntity" skipIfNil:1];
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 appendObject:v9 withName:@"UUID"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attributedEntity = [(STActivityAttribution *)self attributedEntity];
  [coderCopy encodeObject:attributedEntity forKey:@"attributedEntity"];

  activeEntity = [(STActivityAttribution *)self activeEntity];
  [coderCopy encodeObject:activeEntity forKey:@"activeEntity"];

  uUID = [(STActivityAttribution *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"uuid"];
}

- (STActivityAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributedEntity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeEntity"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];

  v8 = [(STActivityAttribution *)self _initWithAttributedEntity:v5 activeEntity:v6 UUID:v7];
  return v8;
}

@end