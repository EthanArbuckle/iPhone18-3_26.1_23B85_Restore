@interface SBTraitsOrientationDefaultTreeNodesSpecifier
- (id)_activeOrientationOrderedNodesWithContext:(id)context;
- (id)updateStageTreeNodesSpecifications:(id)specifications stageParticipantsRoles:(id)roles context:(id)context;
@end

@implementation SBTraitsOrientationDefaultTreeNodesSpecifier

- (id)updateStageTreeNodesSpecifications:(id)specifications stageParticipantsRoles:(id)roles context:(id)context
{
  v57 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  acquiredParticipants = [contextCopy acquiredParticipants];
  v10 = [acquiredParticipants countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v52;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(acquiredParticipants);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        role = [v14 role];
        [dictionary setObject:v14 forKey:role];

        uniqueIdentifier = [v14 uniqueIdentifier];
        [dictionary2 setObject:v14 forKey:uniqueIdentifier];
      }

      v11 = [acquiredParticipants countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v11);
  }

  v45 = dictionary2;
  v43 = dictionary;

  v41 = [(SBTraitsOrientationDefaultTreeNodesSpecifier *)self _activeOrientationOrderedNodesWithContext:contextCopy];
  reverseObjectEnumerator = [v41 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v19 = MEMORY[0x277CBEB18];
  acquiredParticipants2 = [contextCopy acquiredParticipants];
  v21 = [v19 arrayWithCapacity:{objc_msgSend(acquiredParticipants2, "count")}];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v42 = contextCopy;
  acquiredParticipants3 = [contextCopy acquiredParticipants];
  v46 = [acquiredParticipants3 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v46)
  {
    v23 = *v48;
    v24 = 0x277D73000uLL;
    v44 = *v48;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(acquiredParticipants3);
        }

        v26 = *(*(&v47 + 1) + 8 * j);
        orientationResolutionPolicyInfo = [v26 orientationResolutionPolicyInfo];
        resolutionPolicy = [orientationResolutionPolicyInfo resolutionPolicy];
        if (resolutionPolicy != 2)
        {
          if (resolutionPolicy == 3)
          {
            associatedParticipantUniqueIdentifier = [orientationResolutionPolicyInfo associatedParticipantUniqueIdentifier];

            if (associatedParticipantUniqueIdentifier)
            {
              associatedParticipantUniqueIdentifier2 = [orientationResolutionPolicyInfo associatedParticipantUniqueIdentifier];
              v31 = v45;
LABEL_25:
              v35 = [v31 objectForKey:associatedParticipantUniqueIdentifier2];

              goto LABEL_27;
            }

            associatedParticipantRole = [orientationResolutionPolicyInfo associatedParticipantRole];

            if (associatedParticipantRole)
            {
              associatedParticipantUniqueIdentifier2 = [orientationResolutionPolicyInfo associatedParticipantRole];
              v31 = v43;
              goto LABEL_25;
            }
          }

LABEL_26:
          v35 = 0;
          goto LABEL_27;
        }

        v32 = [allObjects indexOfObject:v26] + 1;
        if (v32 >= [allObjects count])
        {
          goto LABEL_26;
        }

        v33 = acquiredParticipants3;
        v34 = v21;
        while (1)
        {
          v35 = [allObjects objectAtIndex:v32];
          orientationPreferences = [v35 orientationPreferences];
          canDetermineActiveOrientation = [orientationPreferences canDetermineActiveOrientation];

          if (canDetermineActiveOrientation)
          {
            break;
          }

          if (++v32 >= [allObjects count])
          {
            v35 = 0;
            break;
          }
        }

        v21 = v34;
        acquiredParticipants3 = v33;
        v23 = v44;
        v24 = 0x277D73000;
LABEL_27:
        v39 = [objc_alloc(*(v24 + 1248)) initWithParticipant:v26 parentParticipant:v35];
        [v21 addObject:v39];
      }

      v46 = [acquiredParticipants3 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v46);
  }

  return v21;
}

- (id)_activeOrientationOrderedNodesWithContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = MEMORY[0x277CBEB18];
  acquiredParticipants = [contextCopy acquiredParticipants];
  v26 = [v4 arrayWithCapacity:{objc_msgSend(acquiredParticipants, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  acquiredParticipants2 = [contextCopy acquiredParticipants];
  v7 = [acquiredParticipants2 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v7)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_21;
  }

  v25 = contextCopy;
  v8 = 0;
  v9 = 0;
  v27 = 0;
  v10 = *v30;
  obj = acquiredParticipants2;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v29 + 1) + 8 * i);
      role = [v12 role];
      v14 = [role isEqualToString:@"SBTraitsParticipantRoleCoverSheet"];

      if (v14)
      {
        v15 = v12;

        v9 = v15;
      }

      role2 = [v12 role];
      v17 = [role2 isEqualToString:@"SBTraitsParticipantRoleCoverSheetCamera"];

      if (v17)
      {
        v18 = v8;
        v8 = v12;
      }

      else
      {
        role3 = [v12 role];
        v20 = [role3 isEqualToString:@"SBTraitsParticipantRoleSecureApp"];

        if (v20)
        {
          v18 = v27;
          v27 = v12;
        }

        else
        {
          v18 = [objc_alloc(MEMORY[0x277D734E0]) initWithParticipant:v12 parentParticipant:0];
          [v12 currentZOrderLevel];
          [v18 setOrder:?];
          [v26 addObject:v18];
        }
      }
    }

    v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v7);

  if (v9)
  {
    contextCopy = v25;
    v7 = v27;
    if (v8)
    {
      v21 = [objc_alloc(MEMORY[0x277D734E0]) initWithParticipant:v8 parentParticipant:v9];
      [v26 addObject:v21];
    }

    if (v27)
    {
      acquiredParticipants2 = [objc_alloc(MEMORY[0x277D734E0]) initWithParticipant:v27 parentParticipant:v9];
      [v26 addObject:acquiredParticipants2];
LABEL_21:
    }
  }

  else
  {
    contextCopy = v25;
    v7 = v27;
  }

  v22 = [MEMORY[0x277D734D8] treeWithNodesSpecifications:v26 traversalType:0 debugName:@"Active Orientation Order"];
  participantsTopologicalSort = [v22 participantsTopologicalSort];

  return participantsTopologicalSort;
}

@end