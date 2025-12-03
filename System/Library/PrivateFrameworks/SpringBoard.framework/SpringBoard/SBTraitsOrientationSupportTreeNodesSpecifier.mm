@interface SBTraitsOrientationSupportTreeNodesSpecifier
+ (id)findParentForParticipant:(id)participant nodeSpecifications:(id)specifications;
+ (id)findParticipantWithRole:(id)role nodeSpecifications:(id)specifications;
- (id)updateStageTreeNodesSpecifications:(id)specifications stageParticipantsRoles:(id)roles context:(id)context;
@end

@implementation SBTraitsOrientationSupportTreeNodesSpecifier

+ (id)findParticipantWithRole:(id)role nodeSpecifications:(id)specifications
{
  v20 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  specificationsCopy = specifications;
  v7 = [specificationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(specificationsCopy);
      }

      participant = [*(*(&v15 + 1) + 8 * v10) participant];
      role = [participant role];
      v13 = [role isEqualToString:roleCopy];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [specificationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    participant = 0;
  }

  return participant;
}

+ (id)findParentForParticipant:(id)participant nodeSpecifications:(id)specifications
{
  v18 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  specificationsCopy = specifications;
  parentParticipant = [specificationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (parentParticipant)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != parentParticipant; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(specificationsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        participant = [v10 participant];

        if (participant == participantCopy)
        {
          parentParticipant = [v10 parentParticipant];
          goto LABEL_11;
        }
      }

      parentParticipant = [specificationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (parentParticipant)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return parentParticipant;
}

- (id)updateStageTreeNodesSpecifications:(id)specifications stageParticipantsRoles:(id)roles context:(id)context
{
  specificationsCopy = specifications;
  self->_supportedOrientations = 0;
  v7 = [SBTraitsOrientationSupportTreeNodesSpecifier findParticipantWithRole:@"SBTraitsParticipantRolePipelineManager" nodeSpecifications:specificationsCopy];
  v19 = v7;
  while (1)
  {
    v8 = v7;
    v7 = [SBTraitsOrientationSupportTreeNodesSpecifier findParentForParticipant:v7 nodeSpecifications:specificationsCopy];

    if (!v7)
    {
      break;
    }

    role = [v7 role];
    v10 = [role isEqualToString:@"SBTraitsParticipantRoleSwitcherPublisher"];

    role2 = [v7 role];
    v12 = [role2 isEqualToString:@"SBTraitsParticipantRoleSwitcherRaw"];

    if ((v10 & 1) == 0 && !v12)
    {
      orientationPreferences = [v7 orientationPreferences];
      self->_supportedOrientations = [orientationPreferences supportedOrientations];

      break;
    }

    orientationResolutionPolicyInfo = [v7 orientationResolutionPolicyInfo];
    resolutionPolicy = [orientationResolutionPolicyInfo resolutionPolicy];

    if (!resolutionPolicy)
    {
      [v7 currentOrientation];
      v15 = SBFBSInterfaceOrientationMaskForBSInterfaceOrientation();
      self->_supportedOrientations = v15;
      if (v15)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  if (self->_supportedOrientations)
  {
    goto LABEL_13;
  }

LABEL_10:
  v17 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[ContinuityPipeline] No valid supported orientation found", buf, 2u);
  }

LABEL_13:

  return specificationsCopy;
}

@end