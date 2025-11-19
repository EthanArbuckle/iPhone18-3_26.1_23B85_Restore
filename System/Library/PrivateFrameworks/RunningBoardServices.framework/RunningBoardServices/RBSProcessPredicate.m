@interface RBSProcessPredicate
+ (id)predicate;
+ (id)predicateMatching:(id)a3;
+ (id)predicateMatchingAnyPredicate:(id)a3;
+ (id)predicateMatchingAuid:(unsigned int)a3;
+ (id)predicateMatchingBeforeTranslocationBundlePath:(id)a3;
+ (id)predicateMatchingBundleIdentifier:(id)a3;
+ (id)predicateMatchingBundleIdentifiers:(id)a3;
+ (id)predicateMatchingDextsBundledWithBundleID:(id)a3;
+ (id)predicateMatchingEuid:(unsigned int)a3;
+ (id)predicateMatchingExecPathStartsWith:(id)a3;
+ (id)predicateMatchingExtensionPoint:(id)a3;
+ (id)predicateMatchingHandle:(id)a3;
+ (id)predicateMatchingHostIdentifier:(id)a3;
+ (id)predicateMatchingIdentifier:(id)a3;
+ (id)predicateMatchingIdentifiers:(id)a3;
+ (id)predicateMatchingIdentity:(id)a3;
+ (id)predicateMatchingJobLabel:(id)a3;
+ (id)predicateMatchingLSApplicationIdentity:(id)a3;
+ (id)predicateMatchingLaunchServicesProcesses;
+ (id)predicateMatchingPredicates:(id)a3;
+ (id)predicateMatchingProcessTypeApplication;
+ (id)predicateMatchingServiceName:(id)a3;
+ (id)predicateMatchingSuspendableProcesses;
+ (id)predicateNotMatchingPredicate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)beforeTranslocationBundlePath;
- (NSString)bundleIdentifier;
- (NSString)description;
- (NSString)extensionPoint;
- (NSString)jobLabel;
- (NSString)serviceName;
- (RBSProcessIdentity)processIdentity;
- (RBSProcessPredicate)initWithPredicate:(id)a3;
- (RBSProcessPredicate)initWithRBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)processIdentifier;
- (id)processIdentifiers;
- (unsigned)auid;
- (unsigned)euid;
@end

@implementation RBSProcessPredicate

- (id)processIdentifiers
{
  v3 = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 processIdentifiers];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(RBSProcessPredicate *)self predicate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 processIdentifiers];
    v12 = v11;
    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v13 = [(RBSProcessPredicate *)self predicate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      v16 = [v15 processIdentifiers];
      v17 = v16;
      if (v16)
      {
        v7 = v16;
      }

      else
      {
        v18 = [(RBSProcessPredicate *)self predicate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        v7 = [v20 processIdentifiers];
      }
    }

    if (v7)
    {
      goto LABEL_23;
    }

    v5 = [(RBSProcessPredicate *)self processIdentifier];
    if (v5)
    {
      v22 = MEMORY[0x1E695DFD8];
      v23 = [RBSProcessIdentifier identifierForIdentifier:v5];
      v7 = [v22 setWithObject:v23];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_23:

  return v7;
}

- (id)processIdentifier
{
  v3 = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 identifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(RBSProcessPredicate *)self predicate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 processIdentifier];
    v13 = v12;
    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v14 = [(RBSProcessPredicate *)self predicate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v17 = [v16 processIdentifier];
      v18 = v17;
      if (v17)
      {
        v8 = v17;
      }

      else
      {
        v19 = [(RBSProcessPredicate *)self predicate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v22 = [v21 processIdentifier];
        v23 = v22;
        if (v22)
        {
          v8 = v22;
        }

        else
        {
          v24 = [(RBSProcessPredicate *)self predicate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;

          v8 = [v26 processIdentifier];
        }
      }
    }
  }

  return v8;
}

- (RBSProcessIdentity)processIdentity
{
  v2 = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@ %@>", v4, self->_predicate];

  return v5;
}

- (NSString)bundleIdentifier
{
  v2 = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 identifier];

  return v5;
}

- (NSString)beforeTranslocationBundlePath
{
  v2 = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 beforeTranslocationBundlePath];

  return v5;
}

+ (id)predicateMatchingProcessTypeApplication
{
  v2 = objc_alloc_init(RBSProcessPredicateTypeApplication);
  v3 = [RBSProcessPredicate predicateMatching:v2];

  return v3;
}

+ (id)predicate
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)predicateMatching:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[RBSProcessPredicate predicateMatching:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[a1 alloc] initWithPredicate:v4];
  }

  else
  {
    v5 = [v4 processPredicate];
  }

  v6 = v5;

  return v6;
}

+ (id)predicateMatchingPredicates:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v17 + 1) + 8 * i) predicate];
          [v5 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    v6 = [[RBSCompoundAllPredicate alloc] initWithPredicates:v5];
  }

  else
  {
    v5 = [v4 firstObject];
    v6 = [v5 predicate];
  }

  v7 = v6;

  v8 = [[a1 alloc] initWithPredicate:v7];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)predicateMatchingAnyPredicate:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v17 + 1) + 8 * i) predicate];
          [v5 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    v6 = [[RBSCompoundAnyPredicate alloc] initWithPredicates:v5];
  }

  else
  {
    v5 = [v4 firstObject];
    v6 = [v5 predicate];
  }

  v7 = v6;

  v8 = [[a1 alloc] initWithPredicate:v7];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)predicateNotMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [RBSNotPredicate alloc];
  v7 = [v4 predicate];

  v8 = [(RBSNotPredicate *)&v6->super.super.isa initNotWithPredicate:v7];
  v9 = [v5 initWithPredicate:v8];

  return v9;
}

- (RBSProcessPredicate)initWithPredicate:(id)a3
{
  v5 = a3;
  if (v5)
  {
    NSClassFromString(&cfstr_Rbsprocesspred_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [RBSProcessPredicate initWithPredicate:];
    }
  }

  v9.receiver = self;
  v9.super_class = RBSProcessPredicate;
  v6 = [(RBSProcessPredicate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_8;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = 0;
    goto LABEL_9;
  }

  predicate = self->_predicate;
  v8 = v4->_predicate;
  if (predicate == v8)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v6 = 0;
  if (predicate && v8)
  {
    v6 = [(RBSProcessPredicateImpl *)predicate isEqual:?];
  }

LABEL_9:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RBSProcessPredicate allocWithZone:a3];
  predicate = self->_predicate;

  return [(RBSProcessPredicate *)v4 initWithPredicate:predicate];
}

- (RBSProcessPredicate)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(RBSProcessPredicate *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v6;
  }

  return v5;
}

+ (id)predicateMatchingEuid:(unsigned int)a3
{
  v3 = [(RBSProcessIntPredicate *)[RBSProcessEUIDPredicate alloc] initWithIdentifier:a3];
  v4 = [RBSProcessPredicate predicateMatching:v3];

  return v4;
}

+ (id)predicateMatchingAuid:(unsigned int)a3
{
  v3 = [(RBSProcessIntPredicate *)[RBSProcessAUIDPredicate alloc] initWithIdentifier:a3];
  v4 = [RBSProcessPredicate predicateMatching:v3];

  return v4;
}

- (unsigned)euid
{
  v2 = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 identifier];
  return v5;
}

- (unsigned)auid
{
  v2 = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 identifier];
  return v5;
}

+ (id)predicateMatchingBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessBundleIdentifierPredicate alloc] initWithIdentifier:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingExtensionPoint:(id)a3
{
  v3 = a3;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessExtensionPointPredicate alloc] initWithIdentifier:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingBeforeTranslocationBundlePath:(id)a3
{
  v3 = a3;
  v4 = [[RBSProcessBeforeTranslocationBundlePathPredicate alloc] initWithIdentifier:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingBundleIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 anyObject];
    [a1 predicateMatchingBundleIdentifier:v5];
  }

  else
  {
    v5 = [[RBSProcessBundleIdentifiersPredicate alloc] initWithIdentifiers:v4];
    [RBSProcessPredicate predicateMatching:v5];
  }
  v6 = ;

  return v6;
}

+ (id)predicateMatchingExecPathStartsWith:(id)a3
{
  v3 = a3;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessExecPathStartsWithPredicate alloc] initWithIdentifier:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingDextsBundledWithBundleID:(id)a3
{
  v3 = a3;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessBundledDextPredicate alloc] initWithIdentifier:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingLSApplicationIdentity:(id)a3
{
  v3 = [RBSProcessIdentity identityForLSApplicationIdentity:a3];
  v4 = [RBSProcessPredicate predicateMatchingIdentity:v3];

  return v4;
}

- (NSString)extensionPoint
{
  v2 = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 identifier];

  return v5;
}

+ (id)predicateMatchingIdentifier:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(RBSProcessIdentifierPredicate *)[RBSProcessInstancePredicate alloc] initWithIdentifier:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [RBSProcessInstancePredicate alloc];
      v6 = [v3 instance];
      v4 = [(RBSProcessIdentifierPredicate *)v5 initWithIdentifier:v6];
    }

    else
    {
      v7 = [RBSProcessIdentifier identifierForIdentifier:v3];

      v4 = [[RBSProcessIdentifierPredicate alloc] initWithIdentifier:v7];
      v3 = v7;
    }
  }

  v8 = [RBSProcessPredicate predicateMatching:v4];

  return v8;
}

+ (id)predicateMatchingHandle:(id)a3
{
  v3 = a3;
  v4 = [[RBSProcessHandlePredicateImpl alloc] initWithHandle:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [[RBSProcessIdentifiersPredicate alloc] initWithIdentifiers:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingHostIdentifier:(id)a3
{
  v3 = a3;
  v4 = [(RBSProcessIdentifierPredicate *)[RBSProcessHostIdentifierPredicate alloc] initWithIdentifier:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingLaunchServicesProcesses
{
  v2 = objc_alloc_init(RBSProcessPredicateLaunchServicesProcesses);
  v3 = [RBSProcessPredicate predicateMatching:v2];

  return v3;
}

+ (id)predicateMatchingSuspendableProcesses
{
  v2 = objc_alloc_init(RBSProcessPredicateSuspendable);
  v3 = [RBSProcessPredicate predicateMatching:v2];

  return v3;
}

+ (id)predicateMatchingJobLabel:(id)a3
{
  v3 = a3;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessLaunchdJobLabelPredicate alloc] initWithIdentifier:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingServiceName:(id)a3
{
  v3 = a3;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessServiceNamePredicate alloc] initWithIdentifier:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

- (NSString)jobLabel
{
  v2 = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 identifier];

  return v5;
}

- (NSString)serviceName
{
  v2 = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 identifier];

  return v5;
}

+ (void)predicateMatching:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"predicate" object:? file:? lineNumber:? description:?];
}

- (void)initWithPredicate:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[object isKindOfClass:RBSProcessPredicateImplClass]" object:? file:? lineNumber:? description:?];
}

+ (id)predicateMatchingIdentity:(id)a3
{
  v3 = a3;
  v4 = [[RBSProcessIdentityPredicate alloc] initWithIdentity:v3];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

@end