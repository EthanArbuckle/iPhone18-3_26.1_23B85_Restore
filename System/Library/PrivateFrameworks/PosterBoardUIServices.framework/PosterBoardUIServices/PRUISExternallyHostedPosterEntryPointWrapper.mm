@interface PRUISExternallyHostedPosterEntryPointWrapper
+ (id)wrapperWithEntryPoint:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PRUISExternallyHostedPosterEntryPointWrapper)initWithBSXPCCoder:(id)a3;
- (id)_entryPointClassForTypeString:(uint64_t)a1;
- (id)_entryPointTypeStringForEntryPoint:(void *)a1;
- (id)_initWithEntryPoint:(id)a3 requestUUID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRUISExternallyHostedPosterEntryPointWrapper

- (id)_initWithEntryPoint:(id)a3 requestUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PRUISExternallyHostedPosterEntryPointWrapper;
  v8 = [(PRUISExternallyHostedPosterEntryPointWrapper *)&v12 init];
  if (v8)
  {
    v9 = [v6 copyWithZone:0];
    entryPoint = v8->_entryPoint;
    v8->_entryPoint = v9;

    objc_storeStrong(&v8->_requestUUID, a4);
  }

  return v8;
}

+ (id)wrapperWithEntryPoint:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v5 _initWithEntryPoint:v4 requestUUID:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  entryPoint = self->_entryPoint;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__PRUISExternallyHostedPosterEntryPointWrapper_isEqual___block_invoke;
  v19[3] = &unk_1E83A7098;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:entryPoint counterpart:v19];
  requestUUID = self->_requestUUID;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __56__PRUISExternallyHostedPosterEntryPointWrapper_isEqual___block_invoke_2;
  v17 = &unk_1E83A70C0;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendObject:requestUUID counterpart:&v14];
  LOBYTE(requestUUID) = [v5 isEqual];

  return requestUUID;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_entryPoint];
  v5 = [v3 appendObject:self->_requestUUID];
  v6 = [v3 hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PRUISModalEntryPoint *)self->_entryPoint copyWithZone:a3];
  v7 = [(NSUUID *)self->_requestUUID copyWithZone:a3];
  v8 = [v5 _initWithEntryPoint:v6 requestUUID:v7];

  return v8;
}

- (PRUISExternallyHostedPosterEntryPointWrapper)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"typeString"];
  v6 = [(PRUISExternallyHostedPosterEntryPointWrapper *)self _entryPointClassForTypeString:v5];
  if (v5)
  {
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"entryPoint"];
    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"requestUUID"];

    self = [(PRUISExternallyHostedPosterEntryPointWrapper *)self _initWithEntryPoint:v7 requestUUID:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  entryPoint = self->_entryPoint;
  v5 = a3;
  v6 = [(PRUISExternallyHostedPosterEntryPointWrapper *)self _entryPointTypeStringForEntryPoint:?];
  [v5 encodeObject:v6 forKey:@"typeString"];
  [v5 encodeObject:self->_entryPoint forKey:@"entryPoint"];
  [v5 encodeObject:self->_requestUUID forKey:@"requestUUID"];
}

- (id)succinctDescription
{
  v2 = [(PRUISExternallyHostedPosterEntryPointWrapper *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PRUISExternallyHostedPosterEntryPointWrapper *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(PRUISExternallyHostedPosterEntryPointWrapper *)self succinctDescriptionBuilder];
  [v5 setActiveMultilinePrefix:v4];

  v6 = [v5 activeMultilinePrefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__PRUISExternallyHostedPosterEntryPointWrapper_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E83A7100;
  v7 = v5;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v6 block:v10];

  v8 = v7;
  return v7;
}

- (id)_entryPointClassForTypeString:(uint64_t)a1
{
  v7[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6[0] = @"FocusPosterSelection";
    v2 = a2;
    v7[0] = objc_opt_class();
    v6[1] = @"PosterSelection";
    v7[1] = objc_opt_class();
    v6[2] = @"Gallery";
    v7[2] = objc_opt_class();
    v6[3] = @"Editing";
    v7[3] = objc_opt_class();
    v6[4] = @"HomeScreenSwitcher";
    v7[4] = objc_opt_class();
    v6[5] = @"EditHomeScreen";
    v7[5] = objc_opt_class();
    v6[6] = @"AmbientEditingSwitcher";
    v7[6] = objc_opt_class();
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:7];
    v4 = [v3 objectForKey:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_entryPointTypeStringForEntryPoint:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel__entryPointTypeStringForEntryPoint_ object:a1 file:@"PRUISExternallyHostedPosterEntryPointWrapper.m" lineNumber:104 description:{@"%@ should implement -_BSXPCSecureCodingEntryPointTypeString!", v3}];
    }

    a1 = [v3 _BSXPCSecureCodingEntryPointTypeString];
  }

  return a1;
}

@end