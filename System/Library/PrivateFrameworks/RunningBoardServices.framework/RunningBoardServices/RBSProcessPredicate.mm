@interface RBSProcessPredicate
+ (id)predicate;
+ (id)predicateMatching:(id)matching;
+ (id)predicateMatchingAnyPredicate:(id)predicate;
+ (id)predicateMatchingAuid:(unsigned int)auid;
+ (id)predicateMatchingBeforeTranslocationBundlePath:(id)path;
+ (id)predicateMatchingBundleIdentifier:(id)identifier;
+ (id)predicateMatchingBundleIdentifiers:(id)identifiers;
+ (id)predicateMatchingDextsBundledWithBundleID:(id)d;
+ (id)predicateMatchingEuid:(unsigned int)euid;
+ (id)predicateMatchingExecPathStartsWith:(id)with;
+ (id)predicateMatchingExtensionPoint:(id)point;
+ (id)predicateMatchingHandle:(id)handle;
+ (id)predicateMatchingHostIdentifier:(id)identifier;
+ (id)predicateMatchingIdentifier:(id)identifier;
+ (id)predicateMatchingIdentifiers:(id)identifiers;
+ (id)predicateMatchingIdentity:(id)identity;
+ (id)predicateMatchingJobLabel:(id)label;
+ (id)predicateMatchingLSApplicationIdentity:(id)identity;
+ (id)predicateMatchingLaunchServicesProcesses;
+ (id)predicateMatchingPredicates:(id)predicates;
+ (id)predicateMatchingProcessTypeApplication;
+ (id)predicateMatchingServiceName:(id)name;
+ (id)predicateMatchingSuspendableProcesses;
+ (id)predicateNotMatchingPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (NSString)beforeTranslocationBundlePath;
- (NSString)bundleIdentifier;
- (NSString)description;
- (NSString)extensionPoint;
- (NSString)jobLabel;
- (NSString)serviceName;
- (RBSProcessIdentity)processIdentity;
- (RBSProcessPredicate)initWithPredicate:(id)predicate;
- (RBSProcessPredicate)initWithRBSXPCCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)processIdentifier;
- (id)processIdentifiers;
- (unsigned)auid;
- (unsigned)euid;
@end

@implementation RBSProcessPredicate

- (id)processIdentifiers
{
  predicate = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = predicate;
  }

  else
  {
    v4 = 0;
  }

  processIdentifier = v4;

  processIdentifiers = [processIdentifier processIdentifiers];
  if (processIdentifiers)
  {
    processIdentifiers4 = processIdentifiers;
  }

  else
  {
    predicate2 = [(RBSProcessPredicate *)self predicate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = predicate2;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    processIdentifiers2 = [v10 processIdentifiers];
    v12 = processIdentifiers2;
    if (processIdentifiers2)
    {
      processIdentifiers4 = processIdentifiers2;
    }

    else
    {
      predicate3 = [(RBSProcessPredicate *)self predicate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = predicate3;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      processIdentifiers3 = [v15 processIdentifiers];
      v17 = processIdentifiers3;
      if (processIdentifiers3)
      {
        processIdentifiers4 = processIdentifiers3;
      }

      else
      {
        predicate4 = [(RBSProcessPredicate *)self predicate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = predicate4;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        processIdentifiers4 = [v20 processIdentifiers];
      }
    }

    if (processIdentifiers4)
    {
      goto LABEL_23;
    }

    processIdentifier = [(RBSProcessPredicate *)self processIdentifier];
    if (processIdentifier)
    {
      v22 = MEMORY[0x1E695DFD8];
      v23 = [RBSProcessIdentifier identifierForIdentifier:processIdentifier];
      processIdentifiers4 = [v22 setWithObject:v23];
    }

    else
    {
      processIdentifiers4 = 0;
    }
  }

LABEL_23:

  return processIdentifiers4;
}

- (id)processIdentifier
{
  predicate = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = predicate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  identifier = [v5 identifier];
  v7 = identifier;
  if (identifier)
  {
    processIdentifier4 = identifier;
  }

  else
  {
    predicate2 = [(RBSProcessPredicate *)self predicate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = predicate2;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    processIdentifier = [v11 processIdentifier];
    v13 = processIdentifier;
    if (processIdentifier)
    {
      processIdentifier4 = processIdentifier;
    }

    else
    {
      predicate3 = [(RBSProcessPredicate *)self predicate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = predicate3;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      processIdentifier2 = [v16 processIdentifier];
      v18 = processIdentifier2;
      if (processIdentifier2)
      {
        processIdentifier4 = processIdentifier2;
      }

      else
      {
        predicate4 = [(RBSProcessPredicate *)self predicate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = predicate4;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        processIdentifier3 = [v21 processIdentifier];
        v23 = processIdentifier3;
        if (processIdentifier3)
        {
          processIdentifier4 = processIdentifier3;
        }

        else
        {
          predicate5 = [(RBSProcessPredicate *)self predicate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = predicate5;
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;

          processIdentifier4 = [v26 processIdentifier];
        }
      }
    }
  }

  return processIdentifier4;
}

- (RBSProcessIdentity)processIdentity
{
  predicate = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = predicate;
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
  predicate = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = predicate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  identifier = [v4 identifier];

  return identifier;
}

- (NSString)beforeTranslocationBundlePath
{
  predicate = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = predicate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  beforeTranslocationBundlePath = [v4 beforeTranslocationBundlePath];

  return beforeTranslocationBundlePath;
}

+ (id)predicateMatchingProcessTypeApplication
{
  v2 = objc_alloc_init(RBSProcessPredicateTypeApplication);
  v3 = [RBSProcessPredicate predicateMatching:v2];

  return v3;
}

+ (id)predicate
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)predicateMatching:(id)matching
{
  matchingCopy = matching;
  if (!matchingCopy)
  {
    +[RBSProcessPredicate predicateMatching:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    processPredicate = [[self alloc] initWithPredicate:matchingCopy];
  }

  else
  {
    processPredicate = [matchingCopy processPredicate];
  }

  v6 = processPredicate;

  return v6;
}

+ (id)predicateMatchingPredicates:(id)predicates
{
  v22 = *MEMORY[0x1E69E9840];
  predicatesCopy = predicates;
  if ([predicatesCopy count] >= 2)
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = predicatesCopy;
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

          predicate = [*(*(&v17 + 1) + 8 * i) predicate];
          [array addObject:predicate];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    predicate2 = [[RBSCompoundAllPredicate alloc] initWithPredicates:array];
  }

  else
  {
    array = [predicatesCopy firstObject];
    predicate2 = [array predicate];
  }

  v7 = predicate2;

  v8 = [[self alloc] initWithPredicate:v7];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)predicateMatchingAnyPredicate:(id)predicate
{
  v22 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if ([predicateCopy count] >= 2)
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = predicateCopy;
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

          predicate = [*(*(&v17 + 1) + 8 * i) predicate];
          [array addObject:predicate];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    predicate2 = [[RBSCompoundAnyPredicate alloc] initWithPredicates:array];
  }

  else
  {
    array = [predicateCopy firstObject];
    predicate2 = [array predicate];
  }

  v7 = predicate2;

  v8 = [[self alloc] initWithPredicate:v7];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)predicateNotMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [self alloc];
  v6 = [RBSNotPredicate alloc];
  predicate = [predicateCopy predicate];

  v8 = [(RBSNotPredicate *)&v6->super.super.isa initNotWithPredicate:predicate];
  v9 = [v5 initWithPredicate:v8];

  return v9;
}

- (RBSProcessPredicate)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (predicateCopy)
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
    objc_storeStrong(&v6->_predicate, predicate);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
  v8 = equalCopy->_predicate;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RBSProcessPredicate allocWithZone:zone];
  predicate = self->_predicate;

  return [(RBSProcessPredicate *)v4 initWithPredicate:predicate];
}

- (RBSProcessPredicate)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(RBSProcessPredicate *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v6;
  }

  return v5;
}

+ (id)predicateMatchingEuid:(unsigned int)euid
{
  v3 = [(RBSProcessIntPredicate *)[RBSProcessEUIDPredicate alloc] initWithIdentifier:euid];
  v4 = [RBSProcessPredicate predicateMatching:v3];

  return v4;
}

+ (id)predicateMatchingAuid:(unsigned int)auid
{
  v3 = [(RBSProcessIntPredicate *)[RBSProcessAUIDPredicate alloc] initWithIdentifier:auid];
  v4 = [RBSProcessPredicate predicateMatching:v3];

  return v4;
}

- (unsigned)euid
{
  predicate = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = predicate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  identifier = [v4 identifier];
  return identifier;
}

- (unsigned)auid
{
  predicate = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = predicate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  identifier = [v4 identifier];
  return identifier;
}

+ (id)predicateMatchingBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessBundleIdentifierPredicate alloc] initWithIdentifier:identifierCopy];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingExtensionPoint:(id)point
{
  pointCopy = point;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessExtensionPointPredicate alloc] initWithIdentifier:pointCopy];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingBeforeTranslocationBundlePath:(id)path
{
  pathCopy = path;
  v4 = [[RBSProcessBeforeTranslocationBundlePathPredicate alloc] initWithIdentifier:pathCopy];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count] == 1)
  {
    anyObject = [identifiersCopy anyObject];
    [self predicateMatchingBundleIdentifier:anyObject];
  }

  else
  {
    anyObject = [[RBSProcessBundleIdentifiersPredicate alloc] initWithIdentifiers:identifiersCopy];
    [RBSProcessPredicate predicateMatching:anyObject];
  }
  v6 = ;

  return v6;
}

+ (id)predicateMatchingExecPathStartsWith:(id)with
{
  withCopy = with;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessExecPathStartsWithPredicate alloc] initWithIdentifier:withCopy];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingDextsBundledWithBundleID:(id)d
{
  dCopy = d;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessBundledDextPredicate alloc] initWithIdentifier:dCopy];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingLSApplicationIdentity:(id)identity
{
  v3 = [RBSProcessIdentity identityForLSApplicationIdentity:identity];
  v4 = [RBSProcessPredicate predicateMatchingIdentity:v3];

  return v4;
}

- (NSString)extensionPoint
{
  predicate = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = predicate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  identifier = [v4 identifier];

  return identifier;
}

+ (id)predicateMatchingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(RBSProcessIdentifierPredicate *)[RBSProcessInstancePredicate alloc] initWithIdentifier:identifierCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [RBSProcessInstancePredicate alloc];
      instance = [identifierCopy instance];
      v4 = [(RBSProcessIdentifierPredicate *)v5 initWithIdentifier:instance];
    }

    else
    {
      v7 = [RBSProcessIdentifier identifierForIdentifier:identifierCopy];

      v4 = [[RBSProcessIdentifierPredicate alloc] initWithIdentifier:v7];
      identifierCopy = v7;
    }
  }

  v8 = [RBSProcessPredicate predicateMatching:v4];

  return v8;
}

+ (id)predicateMatchingHandle:(id)handle
{
  handleCopy = handle;
  v4 = [[RBSProcessHandlePredicateImpl alloc] initWithHandle:handleCopy];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [[RBSProcessIdentifiersPredicate alloc] initWithIdentifiers:identifiersCopy];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingHostIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(RBSProcessIdentifierPredicate *)[RBSProcessHostIdentifierPredicate alloc] initWithIdentifier:identifierCopy];

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

+ (id)predicateMatchingJobLabel:(id)label
{
  labelCopy = label;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessLaunchdJobLabelPredicate alloc] initWithIdentifier:labelCopy];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

+ (id)predicateMatchingServiceName:(id)name
{
  nameCopy = name;
  v4 = [(RBSProcessStringPredicate *)[RBSProcessServiceNamePredicate alloc] initWithIdentifier:nameCopy];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

- (NSString)jobLabel
{
  predicate = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = predicate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  identifier = [v4 identifier];

  return identifier;
}

- (NSString)serviceName
{
  predicate = [(RBSProcessPredicate *)self predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = predicate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  identifier = [v4 identifier];

  return identifier;
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

+ (id)predicateMatchingIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [[RBSProcessIdentityPredicate alloc] initWithIdentity:identityCopy];

  v5 = [RBSProcessPredicate predicateMatching:v4];

  return v5;
}

@end