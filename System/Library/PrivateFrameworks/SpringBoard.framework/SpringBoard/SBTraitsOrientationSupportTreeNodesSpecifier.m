@interface SBTraitsOrientationSupportTreeNodesSpecifier
+ (id)findParentForParticipant:(id)a3 nodeSpecifications:(id)a4;
+ (id)findParticipantWithRole:(id)a3 nodeSpecifications:(id)a4;
- (id)updateStageTreeNodesSpecifications:(id)a3 stageParticipantsRoles:(id)a4 context:(id)a5;
@end

@implementation SBTraitsOrientationSupportTreeNodesSpecifier

+ (id)findParticipantWithRole:(id)a3 nodeSpecifications:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v15 + 1) + 8 * v10) participant];
      v12 = [v11 role];
      v13 = [v12 isEqualToString:v5];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v11 = 0;
  }

  return v11;
}

+ (id)findParentForParticipant:(id)a3 nodeSpecifications:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 participant];

        if (v11 == v5)
        {
          v7 = [v10 parentParticipant];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)updateStageTreeNodesSpecifications:(id)a3 stageParticipantsRoles:(id)a4 context:(id)a5
{
  v6 = a3;
  self->_supportedOrientations = 0;
  v7 = [SBTraitsOrientationSupportTreeNodesSpecifier findParticipantWithRole:@"SBTraitsParticipantRolePipelineManager" nodeSpecifications:v6];
  v19 = v7;
  while (1)
  {
    v8 = v7;
    v7 = [SBTraitsOrientationSupportTreeNodesSpecifier findParentForParticipant:v7 nodeSpecifications:v6];

    if (!v7)
    {
      break;
    }

    v9 = [v7 role];
    v10 = [v9 isEqualToString:@"SBTraitsParticipantRoleSwitcherPublisher"];

    v11 = [v7 role];
    v12 = [v11 isEqualToString:@"SBTraitsParticipantRoleSwitcherRaw"];

    if ((v10 & 1) == 0 && !v12)
    {
      v16 = [v7 orientationPreferences];
      self->_supportedOrientations = [v16 supportedOrientations];

      break;
    }

    v13 = [v7 orientationResolutionPolicyInfo];
    v14 = [v13 resolutionPolicy];

    if (!v14)
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

  return v6;
}

@end