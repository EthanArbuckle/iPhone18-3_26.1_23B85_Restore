@interface SBAbstractDefaults
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation SBAbstractDefaults

- (id)succinctDescription
{
  v2 = [(SBAbstractDefaults *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBAbstractDefaults *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBAbstractDefaults *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SBAbstractDefaults_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E807F290;
  v10[4] = self;
  v5 = v4;
  v11 = v5;
  v6 = [v5 modifyBody:v10];
  v7 = v11;
  v8 = v5;

  return v5;
}

void __60__SBAbstractDefaults_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  outCount = 0;
  v2 = objc_opt_class();
  v3 = class_copyPropertyList(v2, &outCount);
  if (v3)
  {
    v4 = v3;
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v6 = v4[i];
        Name = property_getName(v6);
        if (Name)
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithCString:Name encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
          v9 = property_copyAttributeValue(v6, "G");
          if (v9)
          {
            v10 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];

            v8 = v10;
          }

          v11 = *(a1 + 40);
          v12 = [*(a1 + 32) valueForKey:v8];
          v13 = [v11 appendObject:v12 withName:v8];
        }
      }
    }

    free(v4);
  }
}

@end