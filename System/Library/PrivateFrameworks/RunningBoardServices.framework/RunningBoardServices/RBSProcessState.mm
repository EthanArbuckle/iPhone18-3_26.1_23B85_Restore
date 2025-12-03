@interface RBSProcessState
+ (id)stateWithProcess:(id)process;
+ (id)statesForPredicate:(id)predicate withDescriptor:(id)descriptor error:(id *)error;
+ (id)untrackedRunningStateforProcess:(id)process;
+ (void)setActiveStateDescriptor:(id)descriptor;
- (BOOL)isDifferentFromState:(id)state significantly:(BOOL *)significantly;
- (BOOL)isEqual:(id)equal;
- (NSSet)assertions;
- (NSString)description;
- (RBSProcessState)init;
- (RBSProcessState)initWithRBSXPCCoder:(id)coder;
- (id)_lock_encodedStateForDescriptor:(uint64_t)descriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_lock_finalizeCodingForValues:(uint64_t)values;
- (void)encodeWithPreviousState:(id)state;
- (void)encodeWithRBSXPCCoder:(id)coder;
- (void)initWithProcess:(void *)process;
@end

@implementation RBSProcessState

- (RBSProcessState)init
{
  v3.receiver = self;
  v3.super_class = RBSProcessState;
  result = [(RBSProcessState *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (NSSet)assertions
{
  v3 = [MEMORY[0x1E695DFA8] set];
  [v3 unionSet:self->_legacyAssertions];
  [v3 unionSet:self->_primitiveAssertions];

  return v3;
}

- (NSString)description
{
  terminationResistance = self->_terminationResistance;
  cpuRole = self->_cpuRole;
  allObjects = [(NSSet *)self->_endowmentNamespaces allObjects];
  v6 = [allObjects count];
  allObjects2 = [(NSSet *)self->_tags allObjects];
  v8 = [allObjects2 count];
  allObjects3 = [(NSSet *)self->_legacyAssertions allObjects];
  v54 = [allObjects3 count];
  allObjects4 = [(NSSet *)self->_primitiveAssertions allObjects];
  v35 = [allObjects4 count];
  allObjects5 = [(NSSet *)self->_endowmentInfos allObjects];
  v53 = [allObjects5 count];
  v37 = objc_alloc(MEMORY[0x1E696AEC0]);
  v41 = [objc_opt_class() description];
  v39 = NSStringFromRBSTaskState(self->_taskState);
  v38 = NSStringFromRBSDebugState(self->_debugState);
  v11 = @" terminationResistance:";
  if (!terminationResistance)
  {
    v11 = &stru_1F01CD8F0;
  }

  v36 = v11;
  if (terminationResistance)
  {
    v51 = NSStringFromRBSTerminationResistance(self->_terminationResistance);
  }

  else
  {
    v51 = &stru_1F01CD8F0;
  }

  v12 = @" cpuRole:";
  if (!cpuRole)
  {
    v12 = &stru_1F01CD8F0;
  }

  v34 = v12;
  if (cpuRole)
  {
    v50 = NSStringFromRBSRole(self->_cpuRole);
  }

  else
  {
    v50 = &stru_1F01CD8F0;
  }

  if ([(RBSProcessState *)self isPreventedFromLaunching])
  {
    v13 = @" launchPrevented";
  }

  else
  {
    v13 = &stru_1F01CD8F0;
  }

  v14 = @" endowmentNamespace:[\n\t";
  if (!v6)
  {
    v14 = &stru_1F01CD8F0;
  }

  v33 = v14;
  if (v6)
  {
    v49 = [allObjects componentsJoinedByString:{@", \n\t"}];
    v32 = @"\n\t]";
  }

  else
  {
    v32 = &stru_1F01CD8F0;
    v49 = &stru_1F01CD8F0;
  }

  v15 = @" endowmentInfo:[\n\t";
  if (!v53)
  {
    v15 = &stru_1F01CD8F0;
  }

  v31 = v15;
  v42 = allObjects5;
  if (v53)
  {
    v48 = [allObjects5 componentsJoinedByString:{@", \n\t"}];
  }

  else
  {
    v48 = &stru_1F01CD8F0;
  }

  v44 = cpuRole;
  if (v8)
  {
    v16 = @" tags:[\n\t";
  }

  else
  {
    v16 = &stru_1F01CD8F0;
  }

  v40 = v8;
  if (v8)
  {
    v47 = [allObjects2 componentsJoinedByString:{@", \n\t"}];
    v17 = @"\n\t]";
  }

  else
  {
    v17 = &stru_1F01CD8F0;
    v47 = &stru_1F01CD8F0;
  }

  v43 = v6;
  v46 = allObjects2;
  if (v54)
  {
    v18 = @" legacyAssertions:[\n\t";
  }

  else
  {
    v18 = &stru_1F01CD8F0;
  }

  if (v54)
  {
    v19 = [allObjects3 componentsJoinedByString:{@", \n\t"}];
    v20 = @"\n\t]";
  }

  else
  {
    v20 = &stru_1F01CD8F0;
    v19 = &stru_1F01CD8F0;
  }

  v45 = allObjects3;
  if (v35)
  {
    v21 = [allObjects4 componentsJoinedByString:{@", \n\t"}];
    v29 = v18;
    v27 = v16;
    v22 = v38;
    v23 = v39;
    v24 = v41;
    v25 = [v37 initWithFormat:@"<%@| task:%@ debug:%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@>", v41, v39, v38, v36, v51, v34, v50, v13, v33, v49, v32, v31, v48, v27, v47, v17, v29, v19, v20, @" rbAssertions:[\n\t", v21, @"\n\t]", &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0];
  }

  else
  {
    v30 = v18;
    v28 = v16;
    v22 = v38;
    v23 = v39;
    v24 = v41;
    v25 = [v37 initWithFormat:@"<%@| task:%@ debug:%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@>", v41, v39, v38, v36, v51, v34, v50, v13, v33, v49, v32, v31, v48, v28, v47, v17, v30, v19, v20, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0];
  }

  if (v54)
  {
  }

  if (v40)
  {
  }

  if (v53)
  {
  }

  if (v43)
  {
  }

  if (v44)
  {
  }

  if (terminationResistance)
  {
  }

  return v25;
}

+ (id)stateWithProcess:(id)process
{
  processCopy = process;
  v4 = [[RBSProcessState alloc] initWithProcess:processCopy];

  return v4;
}

+ (id)untrackedRunningStateforProcess:(id)process
{
  v3 = [RBSProcessState stateWithProcess:process];
  [v3 setTaskState:2];

  return v3;
}

+ (id)statesForPredicate:(id)predicate withDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  predicateCopy = predicate;
  v9 = +[RBSConnection sharedInstance];
  v10 = [v9 statesForPredicate:predicateCopy withDescriptor:descriptorCopy error:error];

  return v10;
}

+ (void)setActiveStateDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v5 = threadDictionary;
  if (descriptorCopy)
  {
    [threadDictionary setObject:descriptorCopy forKey:@"RBSProcessStateDescriptor"];
  }

  else
  {
    [threadDictionary removeObjectForKey:@"RBSProcessStateDescriptor"];
  }
}

- (BOOL)isDifferentFromState:(id)state significantly:(BOOL *)significantly
{
  stateCopy = state;
  v7 = stateCopy;
  if (stateCopy)
  {
    if (self == stateCopy)
    {
      goto LABEL_39;
    }

    if (self->_taskState == stateCopy->_taskState && (v8 = [(RBSProcessHandle *)self->_process pid], v8 == [(RBSProcessHandle *)v7->_process pid]))
    {
      endowmentNamespaces = self->_endowmentNamespaces;
      v10 = v7->_endowmentNamespaces;
      if (endowmentNamespaces == v10 || endowmentNamespaces && v10 && (v11 = CFSetGetCount(self->_endowmentNamespaces), v11 == CFSetGetCount(v10)) && [(NSSet *)endowmentNamespaces isEqualToSet:v10])
      {
        if (self->_debugState != v7->_debugState || self->_terminationResistance != v7->_terminationResistance || self->_cpuRole != v7->_cpuRole)
        {
          goto LABEL_42;
        }

        tags = self->_tags;
        v13 = v7->_tags;
        if (tags != v13)
        {
          v14 = 0;
          if (!tags || !v13)
          {
            goto LABEL_36;
          }

          Count = CFSetGetCount(self->_tags);
          if (Count != CFSetGetCount(v13) || ![(NSSet *)tags isEqualToSet:v13])
          {
            goto LABEL_42;
          }
        }

        legacyAssertions = self->_legacyAssertions;
        v17 = v7->_legacyAssertions;
        if (legacyAssertions != v17)
        {
          v14 = 0;
          if (!legacyAssertions || !v17)
          {
            goto LABEL_36;
          }

          v18 = CFSetGetCount(self->_legacyAssertions);
          if (v18 != CFSetGetCount(v17) || ![(NSSet *)legacyAssertions isEqualToSet:v17])
          {
            goto LABEL_42;
          }
        }

        primitiveAssertions = self->_primitiveAssertions;
        v20 = v7->_primitiveAssertions;
        if (primitiveAssertions != v20)
        {
          v14 = 0;
          if (!primitiveAssertions || !v20)
          {
            goto LABEL_36;
          }

          v21 = CFSetGetCount(self->_primitiveAssertions);
          if (v21 != CFSetGetCount(v20) || ![(NSSet *)primitiveAssertions isEqualToSet:v20])
          {
LABEL_42:
            v14 = 0;
            goto LABEL_36;
          }
        }

        endowmentInfos = self->_endowmentInfos;
        v23 = v7->_endowmentInfos;
        if (endowmentInfos != v23)
        {
          v14 = 0;
          if (!endowmentInfos || !v23)
          {
            goto LABEL_36;
          }

          v24 = CFSetGetCount(endowmentInfos);
          if (v24 == CFSetGetCount(v23))
          {
            v25 = [(NSSet *)endowmentInfos isEqualToSet:v23];
            v14 = 0;
            v26 = 0;
            if (v25)
            {
              goto LABEL_40;
            }

            goto LABEL_36;
          }

          goto LABEL_42;
        }

LABEL_39:
        v26 = 0;
        goto LABEL_40;
      }

      v28 = [(NSSet *)self->_endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
      v14 = v28 ^ [(NSSet *)v7->_endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = self->_taskState > 1u;
  }

LABEL_36:
  if (significantly)
  {
    *significantly = v14;
  }

  v26 = 1;
LABEL_40:

  return v26;
}

- (void)encodeWithPreviousState:(id)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_codedState)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    codedState = self->_codedState;
    self->_codedState = v4;

    if (stateCopy)
    {
      v6 = *(stateCopy + 2);
      v7 = *(stateCopy + 1);
      v8 = stateCopy;
      v9 = v7;
      if (self->_process == *(stateCopy + 6))
      {
        v10 = self->_codedState;
        v11 = v7;
        v12 = v10;
        if (v11)
        {
          v13 = xpc_dictionary_get_value(v11, "_process");
          v14 = v13;
          if (v12 && v13)
          {
            xpc_dictionary_set_value(v12, "_process", v13);
          }
        }

        else
        {
          v14 = 0;
        }

        v8 = stateCopy;
      }

      if (self->_lastStateChangeTimestamp == *(v8 + 11))
      {
        v15 = self->_codedState;
        v16 = v9;
        v17 = v15;
        if (v16)
        {
          v18 = xpc_dictionary_get_value(v16, "_lastStateChangeTimestamp");
          v19 = v18;
          if (v17 && v18)
          {
            xpc_dictionary_set_value(v17, "_lastStateChangeTimestamp", v18);
          }
        }

        else
        {
          v19 = 0;
        }

        v8 = stateCopy;
      }

      if ((v6 & 1) != 0 && self->_taskState == v8[36] && self->_debugState == v8[37])
      {
        v20 = self->_codedState;
        self->_codedValues |= 1uLL;
        v21 = v9;
        v22 = v20;
        if (v21)
        {
          v23 = xpc_dictionary_get_value(v21, "_taskState");
          v24 = v23;
          if (v22 && v23)
          {
            xpc_dictionary_set_value(v22, "_taskState", v23);
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = self->_codedState;
        v26 = v21;
        v27 = v25;
        if (v21)
        {
          v28 = xpc_dictionary_get_value(v26, "_debugState");
          v21 = v28;
          if (v27)
          {
            if (v28)
            {
              xpc_dictionary_set_value(v27, "_debugState", v28);
            }
          }
        }

        v8 = stateCopy;
      }

      if ((v6 & 4) != 0 && self->_terminationResistance == v8[38])
      {
        v29 = self->_codedState;
        self->_codedValues |= 4uLL;
        v30 = v9;
        v31 = v29;
        if (v30)
        {
          v32 = xpc_dictionary_get_value(v30, "_terminationResistance");
          v33 = v32;
          if (v31 && v32)
          {
            xpc_dictionary_set_value(v31, "_terminationResistance", v32);
          }
        }

        else
        {
          v33 = 0;
        }

        v8 = stateCopy;
      }

      if ((v6 & 0x40) != 0 && self->_cpuRole == v8[39])
      {
        v34 = self->_codedState;
        self->_codedValues |= 0x40uLL;
        v35 = v9;
        v36 = v34;
        if (v35)
        {
          v37 = xpc_dictionary_get_value(v35, "_cpuRole");
          v38 = v37;
          if (v36 && v37)
          {
            xpc_dictionary_set_value(v36, "_cpuRole", v37);
          }
        }

        else
        {
          v38 = 0;
        }

        v8 = stateCopy;
      }

      if ((v6 & 0x8000) != 0)
      {
        endowmentNamespaces = self->_endowmentNamespaces;
        v40 = *(v8 + 7);
        if (endowmentNamespaces == v40 || endowmentNamespaces && v40 && (Count = CFSetGetCount(self->_endowmentNamespaces), v42 = CFSetGetCount(v40), v8 = stateCopy, Count == v42) && (v43 = [(NSSet *)endowmentNamespaces isEqualToSet:v40], v8 = stateCopy, v43))
        {
          v44 = self->_codedState;
          self->_codedValues |= 0x8000uLL;
          v45 = v9;
          v46 = v44;
          if (v45)
          {
            v47 = xpc_dictionary_get_value(v45, "_endowmentNamespaces");
            v48 = v47;
            if (v46 && v47)
            {
              xpc_dictionary_set_value(v46, "_endowmentNamespaces", v47);
            }
          }

          else
          {
            v48 = 0;
          }

          v8 = stateCopy;
        }
      }

      if ((v6 & 2) != 0)
      {
        tags = self->_tags;
        v50 = *(v8 + 8);
        if (tags == v50 || tags && v50 && (v51 = CFSetGetCount(self->_tags), v52 = CFSetGetCount(v50), v8 = stateCopy, v51 == v52) && (v53 = [(NSSet *)tags isEqualToSet:v50], v8 = stateCopy, v53))
        {
          v54 = self->_codedState;
          self->_codedValues |= 2uLL;
          v55 = v9;
          v56 = v54;
          if (v55)
          {
            v57 = xpc_dictionary_get_value(v55, "_tags");
            v58 = v57;
            if (v56 && v57)
            {
              xpc_dictionary_set_value(v56, "_tags", v57);
            }
          }

          else
          {
            v58 = 0;
          }

          v8 = stateCopy;
        }
      }

      if ((v6 & 8) != 0)
      {
        legacyAssertions = self->_legacyAssertions;
        v60 = *(v8 + 9);
        if (legacyAssertions == v60 || legacyAssertions && v60 && (v61 = CFSetGetCount(self->_legacyAssertions), v62 = CFSetGetCount(v60), v8 = stateCopy, v61 == v62) && (v63 = [(NSSet *)legacyAssertions isEqualToSet:v60], v8 = stateCopy, v63))
        {
          v64 = self->_codedState;
          self->_codedValues |= 8uLL;
          v65 = v9;
          v66 = v64;
          if (v65)
          {
            v67 = xpc_dictionary_get_value(v65, "_legacyAssertions");
            v68 = v67;
            if (v66 && v67)
            {
              xpc_dictionary_set_value(v66, "_legacyAssertions", v67);
            }
          }

          else
          {
            v68 = 0;
          }

          v8 = stateCopy;
        }
      }

      if ((v6 & 0x10) != 0)
      {
        primitiveAssertions = self->_primitiveAssertions;
        v70 = *(v8 + 10);
        if (primitiveAssertions == v70 || primitiveAssertions && v70 && (v71 = CFSetGetCount(self->_primitiveAssertions), v72 = CFSetGetCount(v70), v8 = stateCopy, v71 == v72) && (v73 = [(NSSet *)primitiveAssertions isEqualToSet:v70], v8 = stateCopy, v73))
        {
          v74 = self->_codedState;
          self->_codedValues |= 0x10uLL;
          v75 = v9;
          v76 = v74;
          if (v75)
          {
            v77 = xpc_dictionary_get_value(v75, "_primitiveAssertions");
            v78 = v77;
            if (v76 && v77)
            {
              xpc_dictionary_set_value(v76, "_primitiveAssertions", v77);
            }
          }

          else
          {
            v78 = 0;
          }

          v8 = stateCopy;
        }
      }

      if ((v6 & 0x20) != 0)
      {
        endowmentInfos = self->_endowmentInfos;
        v80 = *(v8 + 12);
        if (endowmentInfos == v80 || endowmentInfos && v80 && (v81 = CFSetGetCount(self->_endowmentInfos), v81 == CFSetGetCount(v80)) && [(NSSet *)endowmentInfos isEqualToSet:v80])
        {
          v82 = self->_codedState;
          self->_codedValues |= 0x20uLL;
          v83 = v9;
          v84 = v82;
          if (v83)
          {
            v85 = xpc_dictionary_get_value(v83, "_endowmentInfos");
            v86 = v85;
            if (v84 && v85)
            {
              xpc_dictionary_set_value(v84, "_endowmentInfos", v85);
            }
          }

          else
          {
            v86 = 0;
          }
        }
      }
    }

    if ([(RBSProcessHandle *)self->_process isReported])
    {
      [(RBSProcessState *)self _lock_finalizeCodingForValues:?];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
  }

  else if (equalCopy && (v6 = objc_opt_class(), v6 == objc_opt_class()))
  {
    v7 = ![(RBSProcessState *)self isDifferentFromState:v5 significantly:0];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v8 = [threadDictionary objectForKey:@"RBSProcessStateDescriptor"];

  if (v8)
  {
    v7 = [(RBSProcessState *)self _lock_encodedStateForDescriptor:v8];
    [coderCopy encodeObject:v7 forKey:@"_codedState"];

    coderCopy = v7;
  }

  else
  {
    [(RBSProcessState *)self encodeWithRBSXPCCoder:coderCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (RBSProcessState)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_codedState"];
  if (v5)
  {
    v6 = [RBSXPCCoder coderWithMessage:v5];

    coderCopy = v6;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_process"];
  if (v7)
  {
    v8 = [(RBSProcessState *)self init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_process, v7);
      v9->_taskState = [coderCopy decodeInt64ForKey:@"_taskState"];
      v9->_debugState = [coderCopy decodeInt64ForKey:@"_debugState"];
      v9->_terminationResistance = [coderCopy decodeInt64ForKey:@"_terminationResistance"];
      v9->_cpuRole = [coderCopy decodeInt64ForKey:@"_cpuRole"];
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastStateChangeTimestamp"];
      lastStateChangeTimestamp = v9->_lastStateChangeTimestamp;
      v9->_lastStateChangeTimestamp = v10;

      v12 = objc_opt_class();
      v13 = [coderCopy decodeCollectionOfClass:v12 containingClass:objc_opt_class() forKey:@"_endowmentNamespaces"];
      endowmentNamespaces = v9->_endowmentNamespaces;
      v9->_endowmentNamespaces = v13;

      v15 = objc_opt_class();
      v16 = [coderCopy decodeCollectionOfClass:v15 containingClass:objc_opt_class() forKey:@"_tags"];
      tags = v9->_tags;
      v9->_tags = v16;

      v18 = objc_opt_class();
      v19 = [coderCopy decodeCollectionOfClass:v18 containingClass:objc_opt_class() forKey:@"_legacyAssertions"];
      legacyAssertions = v9->_legacyAssertions;
      v9->_legacyAssertions = v19;

      v21 = objc_opt_class();
      v22 = [coderCopy decodeCollectionOfClass:v21 containingClass:objc_opt_class() forKey:@"_primitiveAssertions"];
      primitiveAssertions = v9->_primitiveAssertions;
      v9->_primitiveAssertions = v22;

      v24 = objc_opt_class();
      v25 = [coderCopy decodeCollectionOfClass:v24 containingClass:objc_opt_class() forKey:@"_endowmentInfos"];
      endowmentInfos = v9->_endowmentInfos;
      v9->_endowmentInfos = v25;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v28 = rbs_general_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessState initWithRBSXPCCoder:v28];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithProcess:(void *)process
{
  v4 = a2;
  if (process)
  {
    v5 = [process init];
    process = v5;
    if (v5)
    {
      objc_storeStrong((v5 + 48), a2);
    }
  }

  return process;
}

- (void)_lock_finalizeCodingForValues:(uint64_t)values
{
  if (values)
  {
    os_unfair_lock_assert_owner((values + 32));
    v4 = *(values + 8);
    v5 = a2 & ~*(values + 16);
    if (v4 && !v5)
    {
      v6 = xpc_dictionary_get_value(*(values + 8), "_process");

      if (v6)
      {
        return;
      }

      v4 = *(values + 8);
    }

    v7 = [RBSXPCCoder coderWithMessage:v4];
    if (v7)
    {
      v13 = v7;
      if (([v7 containsValueForKey:@"_process"] & 1) == 0)
      {
        [v13 encodeObject:*(values + 48) forKey:@"_process"];
      }

      if (([v13 containsValueForKey:@"_lastStateChangeTimestamp"] & 1) == 0)
      {
        [v13 encodeObject:*(values + 88) forKey:@"_lastStateChangeTimestamp"];
      }

      if (v5)
      {
        v8 = *(values + 16);
        if ((v8 & 1) == 0)
        {
          if (*(values + 36))
          {
            *(values + 16) = v8 | 1;
            [v13 encodeInt64:? forKey:?];
          }

          if (*(values + 37))
          {
            *(values + 16) |= 1uLL;
            [v13 encodeInt64:? forKey:?];
          }
        }
      }

      if ((v5 & 4) != 0)
      {
        v9 = *(values + 16);
        if ((v9 & 4) == 0)
        {
          if (*(values + 38))
          {
            *(values + 16) = v9 | 4;
            [v13 encodeInt64:? forKey:?];
          }
        }
      }

      if ((v5 & 0x40) != 0)
      {
        v10 = *(values + 16);
        if ((v10 & 0x40) == 0)
        {
          if (*(values + 39))
          {
            *(values + 16) = v10 | 0x40;
            [v13 encodeInt64:? forKey:?];
          }
        }
      }

      if ((v5 & 0x8000) != 0 && (*(values + 17) & 0x80) == 0 && [*(values + 56) count])
      {
        *(values + 16) |= 0x8000uLL;
        [v13 encodeObject:*(values + 56) forKey:@"_endowmentNamespaces"];
      }

      if ((v5 & 2) != 0 && (*(values + 16) & 2) == 0 && [*(values + 64) count])
      {
        *(values + 16) |= 2uLL;
        [v13 encodeObject:*(values + 64) forKey:@"_tags"];
      }

      if ((v5 & 8) != 0 && (*(values + 16) & 8) == 0 && [*(values + 72) count])
      {
        *(values + 16) |= 8uLL;
        [v13 encodeObject:*(values + 72) forKey:@"_legacyAssertions"];
      }

      if ((v5 & 0x10) != 0 && (*(values + 16) & 0x10) == 0 && [*(values + 80) count])
      {
        *(values + 16) |= 0x10uLL;
        [v13 encodeObject:*(values + 80) forKey:@"_primitiveAssertions"];
      }

      if ((v5 & 0x20) != 0 && (*(values + 16) & 0x20) == 0 && [*(values + 96) count])
      {
        *(values + 16) |= 0x20uLL;
        [v13 encodeObject:*(values + 96) forKey:@"_endowmentInfos"];
      }

      createMessage = [v13 createMessage];
      v12 = *(values + 8);
      *(values + 8) = createMessage;
    }
  }
}

- (id)_lock_encodedStateForDescriptor:(uint64_t)descriptor
{
  if (descriptor)
  {
    v4 = a2;
    os_unfair_lock_assert_owner((descriptor + 32));
    values = [v4 values];
    _endowmentNamespaces = [(RBSProcessStateDescriptor *)v4 _endowmentNamespaces];

    v7 = [_endowmentNamespaces count];
    if (v7)
    {
      v8 = values | 0x8000;
    }

    else
    {
      v8 = values;
    }

    [(RBSProcessState *)descriptor _lock_finalizeCodingForValues:v8];
    v9 = *(descriptor + 16) & v8;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    v11 = [*(descriptor + 24) objectForKey:v10];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
LABEL_100:

      goto LABEL_101;
    }

    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = *(descriptor + 8);
    v16 = v14;
    v17 = v16;
    if (v15)
    {
      v18 = xpc_dictionary_get_value(v15, "_process");
      v19 = v18;
      v20 = v17 != 0;
      if (v17 && v18)
      {
        xpc_dictionary_set_value(v17, "_process", v18);
        v20 = 1;
      }
    }

    else
    {
      v19 = 0;
      v20 = v16 != 0;
    }

    v21 = *(descriptor + 8);
    v13 = v17;
    if (v21)
    {
      v22 = xpc_dictionary_get_value(v21, "_lastStateChangeTimestamp");
      v23 = !v20;
      if (!v22)
      {
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        xpc_dictionary_set_value(v13, "_lastStateChangeTimestamp", v22);
      }
    }

    else
    {
      v22 = 0;
    }

    if (v9)
    {
      v24 = *(descriptor + 8);
      v25 = v13;
      if (v24)
      {
        xpc_dictionary_get_value(v24, "_taskState");
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_0_7();
        if (v27)
        {
          v26 = 1;
        }

        if ((v26 & 1) == 0)
        {
          xpc_dictionary_set_value(v25, "_taskState", v2);
        }
      }

      else
      {
        v2 = 0;
      }

      v28 = *(descriptor + 8);
      v29 = v25;
      if (v28)
      {
        xpc_dictionary_get_value(v28, "_debugState");
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_0_7();
        if (v27)
        {
          v30 = 1;
        }

        if ((v30 & 1) == 0)
        {
          xpc_dictionary_set_value(v29, "_debugState", v2);
        }
      }

      else
      {
        v2 = 0;
      }

      if ((v9 & 4) == 0)
      {
LABEL_20:
        if ((v9 & 0x8000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_50;
      }
    }

    else if ((v9 & 4) == 0)
    {
      goto LABEL_20;
    }

    v31 = *(descriptor + 8);
    v32 = v13;
    if (v31)
    {
      xpc_dictionary_get_value(v31, "_terminationResistance");
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_7();
      if (v27)
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_1(v33, "_terminationResistance");
      }
    }

    else
    {
      v2 = 0;
    }

    if ((v9 & 0x8000) == 0)
    {
LABEL_21:
      if ((v9 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_58;
    }

LABEL_50:
    v35 = *(descriptor + 8);
    v36 = v13;
    if (v35)
    {
      xpc_dictionary_get_value(v35, "_endowmentNamespaces");
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_7();
      if (v27)
      {
        v38 = 1;
      }

      if ((v38 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_1(v37, "_endowmentNamespaces");
      }
    }

    else
    {
      v2 = 0;
    }

    if ((v9 & 2) == 0)
    {
LABEL_22:
      if ((v9 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_66;
    }

LABEL_58:
    v39 = *(descriptor + 8);
    v40 = v13;
    if (v39)
    {
      xpc_dictionary_get_value(v39, "_tags");
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_7();
      if (v27)
      {
        v42 = 1;
      }

      if ((v42 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_1(v41, "_tags");
      }
    }

    else
    {
      v2 = 0;
    }

    if ((v9 & 8) == 0)
    {
LABEL_23:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_74;
    }

LABEL_66:
    v43 = *(descriptor + 8);
    v44 = v13;
    if (v43)
    {
      xpc_dictionary_get_value(v43, "_legacyAssertions");
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_7();
      if (v27)
      {
        v46 = 1;
      }

      if ((v46 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_1(v45, "_legacyAssertions");
      }
    }

    else
    {
      v2 = 0;
    }

    if ((v9 & 0x10) == 0)
    {
LABEL_24:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_82;
    }

LABEL_74:
    v47 = *(descriptor + 8);
    v48 = v13;
    if (v47)
    {
      xpc_dictionary_get_value(v47, "_primitiveAssertions");
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_7();
      if (v27)
      {
        v50 = 1;
      }

      if ((v50 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_1(v49, "_primitiveAssertions");
      }
    }

    else
    {
      v2 = 0;
    }

    if ((v9 & 0x20) == 0)
    {
LABEL_25:
      if ((v9 & 0x40) == 0)
      {
LABEL_97:
        v59 = *(descriptor + 24);
        if (!v59)
        {
          v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v61 = *(descriptor + 24);
          *(descriptor + 24) = v60;

          v59 = *(descriptor + 24);
        }

        [v59 setObject:v13 forKey:v10];
        goto LABEL_100;
      }

LABEL_90:
      v55 = *(descriptor + 8);
      v56 = v13;
      if (v55)
      {
        v57 = xpc_dictionary_get_value(v55, "_cpuRole");
        v58 = !v20;
        if (!v57)
        {
          v58 = 1;
        }

        if ((v58 & 1) == 0)
        {
          xpc_dictionary_set_value(v56, "_cpuRole", v57);
        }
      }

      else
      {
        v57 = 0;
      }

      goto LABEL_97;
    }

LABEL_82:
    v51 = *(descriptor + 8);
    v52 = v13;
    if (v51)
    {
      xpc_dictionary_get_value(v51, "_endowmentInfos");
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_7();
      if (v27)
      {
        v54 = 1;
      }

      if ((v54 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_1(v53, "_endowmentInfos");
      }
    }

    else
    {
      v2 = 0;
    }

    if ((v9 & 0x40) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_90;
  }

  v13 = 0;
LABEL_101:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [[RBSProcessState allocWithZone:?], self->_process];
  [v5 setTaskState:self->_taskState];
  [v5 setDebugState:self->_debugState];
  [v5 setTerminationResistance:self->_terminationResistance];
  [v5 setCpuRole:self->_cpuRole];
  [v5 setLastStateChangeTimestamp:self->_lastStateChangeTimestamp];
  [(NSSet *)self->_endowmentNamespaces copy];
  [OUTLINED_FUNCTION_1_3() setEndowmentNamespaces:?];

  [(NSSet *)self->_tags copy];
  [OUTLINED_FUNCTION_1_3() setTags:?];

  [(NSSet *)self->_legacyAssertions copy];
  [OUTLINED_FUNCTION_1_3() setLegacyAssertions:?];

  [(NSSet *)self->_primitiveAssertions copy];
  [OUTLINED_FUNCTION_1_3() setPrimitiveAssertions:?];

  v6 = [(NSSet *)self->_endowmentInfos copy];
  [v5 setEndowmentInfos:v6];

  return v5;
}

- (uint64_t)encodeWithRBSXPCCoder:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [(RBSProcessState *)a1 _lock_finalizeCodingForValues:?];
  v4 = *(a1 + 8);

  return [a2 encodeObject:v4 forKey:@"_codedState"];
}

@end