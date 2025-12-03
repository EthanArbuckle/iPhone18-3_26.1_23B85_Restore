@interface TRAOrientationResolutionPolicyInfo
+ (id)resolutionPolicyInfoDeviceOrientation;
+ (id)resolutionPolicyInfoDeviceOrientationWithStateTypes:(id)types;
+ (id)resolutionPolicyInfoDeviceOrientationWithStateTypesBySupportedOrientationMask:(id)mask;
+ (id)resolutionPolicyInfoForAssociatedParticipantWithRole:(id)role;
+ (id)resolutionPolicyInfoForAssociatedParticipantWithUniqueID:(id)d;
+ (id)resolutionPolicyInfoIsolation;
+ (id)resolutionPolicyInfoOrientationBelow;
+ (id)resolutionPolicyInfoOrientationBelowParticipantWithRole:(id)role;
+ (id)resolutionPolicyInfoOrientationBelowParticipantWithUniqueID:(id)d;
- (TRAOrientationResolutionPolicyInfo)initWithResolutionPolicy:(int64_t)policy associatedParticipantUniqueID:(id)d associatedParticipantRole:(id)role associatedAccStateTypes:(id)types associatedAccStateTypesByMask:(id)mask;
- (TRAOrientationResolutionPolicyInfo)initWithResolutionPolicyInfo:(id)info;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setAssociatedDeviceOrientationStateTypes:(id)types;
@end

@implementation TRAOrientationResolutionPolicyInfo

+ (id)resolutionPolicyInfoOrientationBelow
{
  v2 = [[self alloc] initWithResolutionPolicy:2];

  return v2;
}

+ (id)resolutionPolicyInfoDeviceOrientation
{
  v2 = [[self alloc] initWithResolutionPolicy:1];

  return v2;
}

+ (id)resolutionPolicyInfoIsolation
{
  v2 = [[self alloc] initWithResolutionPolicy:0];

  return v2;
}

+ (id)resolutionPolicyInfoDeviceOrientationWithStateTypes:(id)types
{
  typesCopy = types;
  v5 = [[self alloc] initWithResolutionPolicy:1 associatedAccStateTypes:typesCopy];

  return v5;
}

+ (id)resolutionPolicyInfoDeviceOrientationWithStateTypesBySupportedOrientationMask:(id)mask
{
  maskCopy = mask;
  v5 = [[self alloc] initWithResolutionPolicy:1 associatedAccStateTypesByMask:maskCopy];

  return v5;
}

+ (id)resolutionPolicyInfoOrientationBelowParticipantWithUniqueID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initWithResolutionPolicy:2 associatedParticipantUniqueID:dCopy];

  return v5;
}

+ (id)resolutionPolicyInfoOrientationBelowParticipantWithRole:(id)role
{
  roleCopy = role;
  v5 = [[self alloc] initWithResolutionPolicy:2 associatedParticipantRole:roleCopy];

  return v5;
}

+ (id)resolutionPolicyInfoForAssociatedParticipantWithUniqueID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initWithResolutionPolicy:3 associatedParticipantUniqueID:dCopy];

  return v5;
}

+ (id)resolutionPolicyInfoForAssociatedParticipantWithRole:(id)role
{
  roleCopy = role;
  v5 = [[self alloc] initWithResolutionPolicy:3 associatedParticipantRole:roleCopy];

  return v5;
}

- (TRAOrientationResolutionPolicyInfo)initWithResolutionPolicyInfo:(id)info
{
  infoCopy = info;
  resolutionPolicy = [infoCopy resolutionPolicy];
  associatedParticipantUniqueIdentifier = [infoCopy associatedParticipantUniqueIdentifier];
  associatedParticipantRole = [infoCopy associatedParticipantRole];
  associatedDeviceOrientationStateTypes = [infoCopy associatedDeviceOrientationStateTypes];

  v9 = [(TRAOrientationResolutionPolicyInfo *)self initWithResolutionPolicy:resolutionPolicy associatedParticipantUniqueID:associatedParticipantUniqueIdentifier associatedParticipantRole:associatedParticipantRole associatedAccStateTypes:associatedDeviceOrientationStateTypes];
  return v9;
}

- (TRAOrientationResolutionPolicyInfo)initWithResolutionPolicy:(int64_t)policy associatedParticipantUniqueID:(id)d associatedParticipantRole:(id)role associatedAccStateTypes:(id)types associatedAccStateTypesByMask:(id)mask
{
  dCopy = d;
  roleCopy = role;
  typesCopy = types;
  maskCopy = mask;
  v26.receiver = self;
  v26.super_class = TRAOrientationResolutionPolicyInfo;
  v17 = [(TRAOrientationResolutionPolicyInfo *)&v26 init];
  v18 = v17;
  if (v17)
  {
    v17->_resolutionPolicy = policy;
    if (policy != 3)
    {
      goto LABEL_6;
    }

    if (!(dCopy | roleCopy))
    {
      [TRAOrientationResolutionPolicyInfo initWithResolutionPolicy:a2 associatedParticipantUniqueID:v17 associatedParticipantRole:? associatedAccStateTypes:? associatedAccStateTypesByMask:?];
    }

    if ((roleCopy != 0) == (dCopy != 0))
    {
      [TRAOrientationResolutionPolicyInfo initWithResolutionPolicy:a2 associatedParticipantUniqueID:v18 associatedParticipantRole:? associatedAccStateTypes:? associatedAccStateTypesByMask:?];
      if (typesCopy)
      {
        goto LABEL_7;
      }
    }

    else
    {
LABEL_6:
      if (typesCopy)
      {
LABEL_7:
        if (v18->_resolutionPolicy == 1 && ![typesCopy count])
        {
          [TRAOrientationResolutionPolicyInfo initWithResolutionPolicy:a2 associatedParticipantUniqueID:v18 associatedParticipantRole:? associatedAccStateTypes:? associatedAccStateTypesByMask:?];
        }
      }
    }

    v19 = [dCopy copy];
    associatedParticipantUniqueIdentifier = v18->_associatedParticipantUniqueIdentifier;
    v18->_associatedParticipantUniqueIdentifier = v19;

    v21 = [roleCopy copy];
    associatedParticipantRole = v18->_associatedParticipantRole;
    v18->_associatedParticipantRole = v21;

    v23 = [maskCopy copy];
    associatedDeviceOrientationStateTypesBySupportedOrientationMask = v18->_associatedDeviceOrientationStateTypesBySupportedOrientationMask;
    v18->_associatedDeviceOrientationStateTypesBySupportedOrientationMask = v23;

    [(TRAOrientationResolutionPolicyInfo *)v18 setAssociatedDeviceOrientationStateTypes:typesCopy];
  }

  return v18;
}

- (void)setAssociatedDeviceOrientationStateTypes:(id)types
{
  typesCopy = types;
  if (self->_resolutionPolicy == 1)
  {
    v7 = typesCopy;
    if (typesCopy)
    {
      v5 = [typesCopy copy];
    }

    else
    {
      v5 = &unk_287F768A8;
    }

    associatedDeviceOrientationStateTypes = self->_associatedDeviceOrientationStateTypes;
    self->_associatedDeviceOrientationStateTypes = v5;

    typesCopy = v7;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAOrientationResolutionPolicyInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  selfCopy = self;
  v4 = self->_resolutionPolicy - 1;
  if (v4 > 2)
  {
    v5 = @"None";
  }

  else
  {
    v5 = off_279DD4980[v4];
  }

  v6 = [MEMORY[0x277CCAB68] stringWithString:v5];
  v7 = v6;
  resolutionPolicy = self->_resolutionPolicy;
  if (resolutionPolicy == 1)
  {
    v49 = v3;
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_associatedDeviceOrientationStateTypes, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v13 = self->_associatedDeviceOrientationStateTypes;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v64;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v64 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v63 + 1) + 8 * i) integerValue] - 1;
          v19 = @"ValidatedCurrentOrientation";
          if (v18 <= 2)
          {
            v19 = off_279DD4998[v18];
          }

          [v12 addObject:v19];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v15);
    }

    v11 = [v12 componentsJoinedByString:{@", "}];

    v10 = 0;
    v3 = v49;
  }

  else
  {
    if (resolutionPolicy != 3)
    {
      v21 = v6;
      goto LABEL_43;
    }

    associatedParticipantUniqueIdentifier = self->_associatedParticipantUniqueIdentifier;
    if (!associatedParticipantUniqueIdentifier)
    {
      associatedParticipantUniqueIdentifier = self->_associatedParticipantRole;
    }

    v10 = associatedParticipantUniqueIdentifier;
    v11 = 0;
  }

  if (v10)
  {
    v20 = v10;
  }

  else
  {
    v20 = v11;
  }

  v21 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@-(%@)", v5, v20];

  if (selfCopy->_resolutionPolicy == 1)
  {
    associatedDeviceOrientationStateTypesBySupportedOrientationMask = selfCopy->_associatedDeviceOrientationStateTypesBySupportedOrientationMask;
    if (associatedDeviceOrientationStateTypesBySupportedOrientationMask)
    {
      v46 = v10;
      v47 = v11;
      v48 = v21;
      v50 = v3;
      v53 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](associatedDeviceOrientationStateTypesBySupportedOrientationMask, "count")}];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = [(NSDictionary *)selfCopy->_associatedDeviceOrientationStateTypesBySupportedOrientationMask allKeys];
      v23 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (v23)
      {
        v24 = v23;
        v52 = *v60;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v60 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v59 + 1) + 8 * j);
            v27 = [(NSDictionary *)selfCopy->_associatedDeviceOrientationStateTypesBySupportedOrientationMask objectForKey:v26];
            v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](selfCopy->_associatedDeviceOrientationStateTypes, "count")}];
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v29 = v27;
            v30 = [v29 countByEnumeratingWithState:&v55 objects:v67 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v56;
              do
              {
                for (k = 0; k != v31; ++k)
                {
                  if (*v56 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = [*(*(&v55 + 1) + 8 * k) integerValue] - 1;
                  v35 = @"ValidatedCurrentOrientation";
                  if (v34 <= 2)
                  {
                    v35 = off_279DD4998[v34];
                  }

                  [v28 addObject:v35];
                }

                v31 = [v29 countByEnumeratingWithState:&v55 objects:v67 count:16];
              }

              while (v31);
            }

            v36 = [v28 componentsJoinedByString:{@", "}];
            [v26 integerValue];
            v37 = BSInterfaceOrientationMaskDescription();
            [v53 setObject:v36 forKey:v37];
          }

          v24 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
        }

        while (v24);
      }

      v38 = MEMORY[0x277CCACA8];
      v39 = [v53 description];
      v40 = [v38 stringWithFormat:@"-(%@)", v39];
      v21 = v48;
      [v48 appendString:v40];

      v3 = v50;
      v10 = v46;
      v11 = v47;
    }
  }

LABEL_43:
  [v3 appendString:v21 withName:@"Policy"];
  if (selfCopy->_forceResolution)
  {
    v41 = [v3 appendBool:1 withName:@"Force Resolution"];
  }

  actuationContext = selfCopy->_actuationContext;
  if (actuationContext)
  {
    v43 = [v3 appendObject:actuationContext withName:@"Actuation Context"];
  }

  v44 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAOrientationResolutionPolicyInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)initWithResolutionPolicy:(uint64_t)a1 associatedParticipantUniqueID:(uint64_t)a2 associatedParticipantRole:associatedAccStateTypes:associatedAccStateTypesByMask:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TRAResolutionPolicy.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"participantUniqueID || participantRole"}];
}

- (void)initWithResolutionPolicy:(uint64_t)a1 associatedParticipantUniqueID:(uint64_t)a2 associatedParticipantRole:associatedAccStateTypes:associatedAccStateTypesByMask:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TRAResolutionPolicy.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"(!participantUniqueID && participantRole) || (participantUniqueID && !participantRole)"}];
}

- (void)initWithResolutionPolicy:(uint64_t)a1 associatedParticipantUniqueID:(uint64_t)a2 associatedParticipantRole:associatedAccStateTypes:associatedAccStateTypesByMask:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TRAResolutionPolicy.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"associatedAccStateTypes == nil || [associatedAccStateTypes count] > 0"}];
}

@end