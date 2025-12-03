@interface PRSGadget
- (BOOL)isEqual:(id)equal;
- (PRSGadget)initWithBSXPCCoder:(id)coder;
- (PRSGadget)initWithCoder:(id)coder;
- (PRSGadget)initWithUniqueIdentifier:(id)identifier kind:(id)kind extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier intent:(id)intent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSGadget

- (PRSGadget)initWithUniqueIdentifier:(id)identifier kind:(id)kind extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier intent:(id)intent
{
  identifierCopy = identifier;
  kindCopy = kind;
  bundleIdentifierCopy = bundleIdentifier;
  containerBundleIdentifierCopy = containerBundleIdentifier;
  intentCopy = intent;
  v27.receiver = self;
  v27.super_class = PRSGadget;
  v17 = [(PRSGadget *)&v27 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = v18;

    v20 = [kindCopy copy];
    kind = v17->_kind;
    v17->_kind = v20;

    v22 = [bundleIdentifierCopy copy];
    extensionBundleIdentifier = v17->_extensionBundleIdentifier;
    v17->_extensionBundleIdentifier = v22;

    v24 = [containerBundleIdentifierCopy copy];
    containerBundleIdentifier = v17->_containerBundleIdentifier;
    v17->_containerBundleIdentifier = v24;

    objc_storeStrong(&v17->_intent, intent);
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  uniqueIdentifier = [(PRSGadget *)self uniqueIdentifier];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __21__PRSGadget_isEqual___block_invoke;
  v30[3] = &unk_1E818D5E8;
  v7 = equalCopy;
  v31 = v7;
  v8 = [v5 appendString:uniqueIdentifier counterpart:v30];

  kind = [(PRSGadget *)self kind];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __21__PRSGadget_isEqual___block_invoke_2;
  v28[3] = &unk_1E818D5E8;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendString:kind counterpart:v28];

  containerBundleIdentifier = [(PRSGadget *)self containerBundleIdentifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __21__PRSGadget_isEqual___block_invoke_3;
  v26[3] = &unk_1E818D5E8;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendString:containerBundleIdentifier counterpart:v26];

  extensionBundleIdentifier = [(PRSGadget *)self extensionBundleIdentifier];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __21__PRSGadget_isEqual___block_invoke_4;
  v24[3] = &unk_1E818D5E8;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendString:extensionBundleIdentifier counterpart:v24];

  intent = [(PRSGadget *)self intent];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __21__PRSGadget_isEqual___block_invoke_5;
  v22[3] = &unk_1E818DD58;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendObject:intent counterpart:v22];

  LOBYTE(intent) = [v5 isEqual];
  return intent;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendString:self->_uniqueIdentifier];
  v5 = [builder appendString:self->_kind];
  v6 = [builder appendString:self->_containerBundleIdentifier];
  v7 = [builder appendString:self->_extensionBundleIdentifier];
  v8 = [builder appendObject:self->_intent];
  v9 = [builder hash];

  return v9;
}

- (PRSGadget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = PRSGadget;
  v5 = [(PRSGadget *)&v26 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"uniqueIdentifier"];
    v8 = [v7 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = objc_opt_self();
    v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"kind"];
    v12 = [v11 copy];
    kind = v5->_kind;
    v5->_kind = v12;

    v14 = objc_opt_self();
    v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"extensionBundleIdentifier"];
    v16 = [v15 copy];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v16;

    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"containerBundleIdentifier"];
    v20 = [v19 copy];
    containerBundleIdentifier = v5->_containerBundleIdentifier;
    v5->_containerBundleIdentifier = v20;

    v22 = objc_opt_self();
    v23 = [coderCopy decodeObjectOfClass:v22 forKey:@"intent"];
    intent = v5->_intent;
    v5->_intent = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueIdentifier = self->_uniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [coderCopy encodeObject:self->_containerBundleIdentifier forKey:@"containerBundleIdentifier"];
  [coderCopy encodeObject:self->_intent forKey:@"intent"];
}

- (PRSGadget)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"uniqueIdentifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"kind"];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"extensionBundleIdentifier"];

  v11 = objc_opt_self();
  v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"containerBundleIdentifier"];

  v13 = objc_opt_self();
  v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"intent"];

  v15 = [(PRSGadget *)self initWithUniqueIdentifier:v6 kind:v8 extensionBundleIdentifier:v10 containerBundleIdentifier:v12 intent:v14];
  return v15;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(PRSGadget *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  kind = [(PRSGadget *)self kind];
  [coderCopy encodeObject:kind forKey:@"kind"];

  extensionBundleIdentifier = [(PRSGadget *)self extensionBundleIdentifier];
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];

  containerBundleIdentifier = [(PRSGadget *)self containerBundleIdentifier];
  [coderCopy encodeObject:containerBundleIdentifier forKey:@"containerBundleIdentifier"];

  intent = [(PRSGadget *)self intent];
  [coderCopy encodeObject:intent forKey:@"intent"];
}

- (id)copyWithZone:(_NSZone *)zone
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
  succinctDescriptionBuilder = [(PRSGadget *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PRSGadget *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(PRSGadget *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];
  v6 = [succinctDescriptionBuilder appendObject:self->_kind withName:@"kind"];
  v7 = [succinctDescriptionBuilder appendObject:self->_extensionBundleIdentifier withName:@"extensionBundleIdentifier"];
  v8 = [succinctDescriptionBuilder appendObject:self->_containerBundleIdentifier withName:@"containerBundleIdentifier"];
  v9 = [succinctDescriptionBuilder appendObject:self->_intent withName:@"intent"];

  return succinctDescriptionBuilder;
}

@end