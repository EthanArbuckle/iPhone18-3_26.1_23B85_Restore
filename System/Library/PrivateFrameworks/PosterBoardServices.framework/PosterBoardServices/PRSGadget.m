@interface PRSGadget
- (BOOL)isEqual:(id)a3;
- (PRSGadget)initWithBSXPCCoder:(id)a3;
- (PRSGadget)initWithCoder:(id)a3;
- (PRSGadget)initWithUniqueIdentifier:(id)a3 kind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6 intent:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSGadget

- (PRSGadget)initWithUniqueIdentifier:(id)a3 kind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6 intent:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = PRSGadget;
  v17 = [(PRSGadget *)&v27 init];
  if (v17)
  {
    v18 = [v12 copy];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = v18;

    v20 = [v13 copy];
    kind = v17->_kind;
    v17->_kind = v20;

    v22 = [v14 copy];
    extensionBundleIdentifier = v17->_extensionBundleIdentifier;
    v17->_extensionBundleIdentifier = v22;

    v24 = [v15 copy];
    containerBundleIdentifier = v17->_containerBundleIdentifier;
    v17->_containerBundleIdentifier = v24;

    objc_storeStrong(&v17->_intent, a7);
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  v6 = [(PRSGadget *)self uniqueIdentifier];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __21__PRSGadget_isEqual___block_invoke;
  v30[3] = &unk_1E818D5E8;
  v7 = v4;
  v31 = v7;
  v8 = [v5 appendString:v6 counterpart:v30];

  v9 = [(PRSGadget *)self kind];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __21__PRSGadget_isEqual___block_invoke_2;
  v28[3] = &unk_1E818D5E8;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendString:v9 counterpart:v28];

  v12 = [(PRSGadget *)self containerBundleIdentifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __21__PRSGadget_isEqual___block_invoke_3;
  v26[3] = &unk_1E818D5E8;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendString:v12 counterpart:v26];

  v15 = [(PRSGadget *)self extensionBundleIdentifier];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __21__PRSGadget_isEqual___block_invoke_4;
  v24[3] = &unk_1E818D5E8;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendString:v15 counterpart:v24];

  v18 = [(PRSGadget *)self intent];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __21__PRSGadget_isEqual___block_invoke_5;
  v22[3] = &unk_1E818DD58;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendObject:v18 counterpart:v22];

  LOBYTE(v18) = [v5 isEqual];
  return v18;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_uniqueIdentifier];
  v5 = [v3 appendString:self->_kind];
  v6 = [v3 appendString:self->_containerBundleIdentifier];
  v7 = [v3 appendString:self->_extensionBundleIdentifier];
  v8 = [v3 appendObject:self->_intent];
  v9 = [v3 hash];

  return v9;
}

- (PRSGadget)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PRSGadget;
  v5 = [(PRSGadget *)&v26 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"uniqueIdentifier"];
    v8 = [v7 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = objc_opt_self();
    v11 = [v4 decodeObjectOfClass:v10 forKey:@"kind"];
    v12 = [v11 copy];
    kind = v5->_kind;
    v5->_kind = v12;

    v14 = objc_opt_self();
    v15 = [v4 decodeObjectOfClass:v14 forKey:@"extensionBundleIdentifier"];
    v16 = [v15 copy];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v16;

    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"containerBundleIdentifier"];
    v20 = [v19 copy];
    containerBundleIdentifier = v5->_containerBundleIdentifier;
    v5->_containerBundleIdentifier = v20;

    v22 = objc_opt_self();
    v23 = [v4 decodeObjectOfClass:v22 forKey:@"intent"];
    intent = v5->_intent;
    v5->_intent = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v5 encodeObject:self->_kind forKey:@"kind"];
  [v5 encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [v5 encodeObject:self->_containerBundleIdentifier forKey:@"containerBundleIdentifier"];
  [v5 encodeObject:self->_intent forKey:@"intent"];
}

- (PRSGadget)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"uniqueIdentifier"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"kind"];

  v9 = objc_opt_self();
  v10 = [v4 decodeObjectOfClass:v9 forKey:@"extensionBundleIdentifier"];

  v11 = objc_opt_self();
  v12 = [v4 decodeObjectOfClass:v11 forKey:@"containerBundleIdentifier"];

  v13 = objc_opt_self();
  v14 = [v4 decodeObjectOfClass:v13 forKey:@"intent"];

  v15 = [(PRSGadget *)self initWithUniqueIdentifier:v6 kind:v8 extensionBundleIdentifier:v10 containerBundleIdentifier:v12 intent:v14];
  return v15;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRSGadget *)self uniqueIdentifier];
  [v4 encodeObject:v5 forKey:@"uniqueIdentifier"];

  v6 = [(PRSGadget *)self kind];
  [v4 encodeObject:v6 forKey:@"kind"];

  v7 = [(PRSGadget *)self extensionBundleIdentifier];
  [v4 encodeObject:v7 forKey:@"extensionBundleIdentifier"];

  v8 = [(PRSGadget *)self containerBundleIdentifier];
  [v4 encodeObject:v8 forKey:@"containerBundleIdentifier"];

  v9 = [(PRSGadget *)self intent];
  [v4 encodeObject:v9 forKey:@"intent"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  uniqueIdentifier = self->_uniqueIdentifier;
  kind = self->_kind;
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  containerBundleIdentifier = self->_containerBundleIdentifier;
  intent = self->_intent;

  return [v4 initWithUniqueIdentifier:uniqueIdentifier kind:kind extensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier intent:intent];
}

- (id)succinctDescription
{
  v2 = [(PRSGadget *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PRSGadget *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(PRSGadget *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];
  v6 = [v4 appendObject:self->_kind withName:@"kind"];
  v7 = [v4 appendObject:self->_extensionBundleIdentifier withName:@"extensionBundleIdentifier"];
  v8 = [v4 appendObject:self->_containerBundleIdentifier withName:@"containerBundleIdentifier"];
  v9 = [v4 appendObject:self->_intent withName:@"intent"];

  return v4;
}

@end