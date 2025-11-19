@interface STActivityAttribution
+ (STActivityAttribution)attributionWithAuditToken:(id *)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)_isEquivalentForBookkeepingPurposesToActivityAttribution:(id)a3;
- (BOOL)isEqual:(id)a3;
- (STActivityAttribution)initWithAttributedEntity:(id)a3 activeEntity:(id)a4;
- (STActivityAttribution)initWithAuditToken:(id *)a3;
- (STActivityAttribution)initWithCoder:(id)a3;
- (STActivityAttribution)initWithPID:(int)a3;
- (STAttributedEntity)activeEntity;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)_initWithAttributedEntity:(id)a3 activeEntity:(id)a4 UUID:(id)a5;
- (id)copyReplacingAttributedEntity:(id)a3 activeEntity:(id)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STActivityAttribution

- (STAttributedEntity)activeEntity
{
  activeEntity = self->_activeEntity;
  if (activeEntity)
  {
    v3 = activeEntity;
  }

  else
  {
    v3 = [(STActivityAttribution *)self attributedEntity];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STActivityAttribution *)self attributedEntity];
  v5 = [v3 appendObject:v4];

  v6 = [(STActivityAttribution *)self activeEntity];
  v7 = [v3 appendObject:v6];

  v8 = [v3 hash];
  return v8;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v4 = [(STActivityAttribution *)self attributedEntity];
  if (v4)
  {
    v6 = v4;
    [v4 auditToken];
    v4 = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

+ (STActivityAttribution)attributionWithAuditToken:(id *)a3
{
  v4 = [a1 alloc];
  v5 = *&a3->var0[4];
  v8[0] = *a3->var0;
  v8[1] = v5;
  v6 = [v4 initWithAuditToken:v8];

  return v6;
}

- (STActivityAttribution)initWithAuditToken:(id *)a3
{
  v5 = [STAttributedEntity alloc];
  v6 = *&a3->var0[4];
  v10[0] = *a3->var0;
  v10[1] = v6;
  v7 = [(STAttributedEntity *)v5 initWithAuditToken:v10];
  v8 = [(STActivityAttribution *)self initWithAttributedEntity:v7];

  return v8;
}

- (STActivityAttribution)initWithPID:(int)a3
{
  v4[0] = -1;
  v4[1] = -1;
  v5 = -1;
  v6 = a3;
  v7 = -1;
  return [(STActivityAttribution *)self initWithAuditToken:v4];
}

- (STActivityAttribution)initWithAttributedEntity:(id)a3 activeEntity:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [(STActivityAttribution *)self _initWithAttributedEntity:v8 activeEntity:v7 UUID:v9];

  return v10;
}

- (id)_initWithAttributedEntity:(id)a3 activeEntity:(id)a4 UUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = STActivityAttribution;
  v11 = [(STActivityAttribution *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    attributedEntity = v11->_attributedEntity;
    v11->_attributedEntity = v12;

    if (([v8 isEqual:v9] & 1) == 0)
    {
      v14 = [v9 copy];
      activeEntity = v11->_activeEntity;
      v11->_activeEntity = v14;
    }

    v16 = [v10 copy];
    UUID = v11->_UUID;
    v11->_UUID = v16;
  }

  return v11;
}

- (id)copyReplacingAttributedEntity:(id)a3 activeEntity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc(objc_opt_class());
  v9 = [(STActivityAttribution *)self UUID];
  v10 = [v8 _initWithAttributedEntity:v7 activeEntity:v6 UUID:v9];

  return v10;
}

- (BOOL)_isEquivalentForBookkeepingPurposesToActivityAttribution:(id)a3
{
  v4 = a3;
  v5 = [(STActivityAttribution *)self UUID];
  v6 = [v4 UUID];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STActivityAttribution *)self attributedEntity];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __33__STActivityAttribution_isEqual___block_invoke;
  v18[3] = &unk_1E85DDCD8;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:v6 counterpart:v18];

  v9 = [(STActivityAttribution *)self activeEntity];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __33__STActivityAttribution_isEqual___block_invoke_2;
  v16 = &unk_1E85DDCD8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:v9 counterpart:&v13];

  LOBYTE(v9) = [v5 isEqual];
  return v9;
}

- (id)succinctDescription
{
  v2 = [(STActivityAttribution *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STActivityAttribution *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STActivityAttribution *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  v3 = a1;
  if (a1)
  {
    v5 = a2;
    v6 = [v3 succinctDescriptionBuilder];
    [v6 setUseDebugDescription:a3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__STActivityAttribution__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v10[4] = v3;
    v7 = v6;
    v11 = v7;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

    v8 = v11;
    v3 = v7;
  }

  return v3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STActivityAttribution *)self attributedEntity];
  [v4 encodeObject:v5 forKey:@"attributedEntity"];

  v6 = [(STActivityAttribution *)self activeEntity];
  [v4 encodeObject:v6 forKey:@"activeEntity"];

  v7 = [(STActivityAttribution *)self UUID];
  [v4 encodeObject:v7 forKey:@"uuid"];
}

- (STActivityAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributedEntity"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeEntity"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];

  v8 = [(STActivityAttribution *)self _initWithAttributedEntity:v5 activeEntity:v6 UUID:v7];
  return v8;
}

@end