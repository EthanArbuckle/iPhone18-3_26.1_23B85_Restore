@interface SBTraitsOrientationDefaultTreeNodesSpecifier
- (id)_activeOrientationOrderedNodesWithContext:(id)a3;
- (id)updateStageTreeNodesSpecifications:(id)a3 stageParticipantsRoles:(id)a4 context:(id)a5;
@end

@implementation SBTraitsOrientationDefaultTreeNodesSpecifier

- (id)updateStageTreeNodesSpecifications:(id)a3 stageParticipantsRoles:(id)a4 context:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v9 = [v6 acquiredParticipants];
  v10 = [v9 countByEnumeratingWithState:&v51 objects:v56 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        v15 = [v14 role];
        [v7 setObject:v14 forKey:v15];

        v16 = [v14 uniqueIdentifier];
        [v8 setObject:v14 forKey:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v11);
  }

  v45 = v8;
  v43 = v7;

  v41 = [(SBTraitsOrientationDefaultTreeNodesSpecifier *)self _activeOrientationOrderedNodesWithContext:v6];
  v17 = [v41 reverseObjectEnumerator];
  v18 = [v17 allObjects];

  v19 = MEMORY[0x277CBEB18];
  v20 = [v6 acquiredParticipants];
  v21 = [v19 arrayWithCapacity:{objc_msgSend(v20, "count")}];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v42 = v6;
  v22 = [v6 acquiredParticipants];
  v46 = [v22 countByEnumeratingWithState:&v47 objects:v55 count:16];
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
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v47 + 1) + 8 * j);
        v27 = [v26 orientationResolutionPolicyInfo];
        v28 = [v27 resolutionPolicy];
        if (v28 != 2)
        {
          if (v28 == 3)
          {
            v29 = [v27 associatedParticipantUniqueIdentifier];

            if (v29)
            {
              v30 = [v27 associatedParticipantUniqueIdentifier];
              v31 = v45;
LABEL_25:
              v35 = [v31 objectForKey:v30];

              goto LABEL_27;
            }

            v38 = [v27 associatedParticipantRole];

            if (v38)
            {
              v30 = [v27 associatedParticipantRole];
              v31 = v43;
              goto LABEL_25;
            }
          }

LABEL_26:
          v35 = 0;
          goto LABEL_27;
        }

        v32 = [v18 indexOfObject:v26] + 1;
        if (v32 >= [v18 count])
        {
          goto LABEL_26;
        }

        v33 = v22;
        v34 = v21;
        while (1)
        {
          v35 = [v18 objectAtIndex:v32];
          v36 = [v35 orientationPreferences];
          v37 = [v36 canDetermineActiveOrientation];

          if (v37)
          {
            break;
          }

          if (++v32 >= [v18 count])
          {
            v35 = 0;
            break;
          }
        }

        v21 = v34;
        v22 = v33;
        v23 = v44;
        v24 = 0x277D73000;
LABEL_27:
        v39 = [objc_alloc(*(v24 + 1248)) initWithParticipant:v26 parentParticipant:v35];
        [v21 addObject:v39];
      }

      v46 = [v22 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v46);
  }

  return v21;
}

- (id)_activeOrientationOrderedNodesWithContext:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CBEB18];
  v5 = [v3 acquiredParticipants];
  v26 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v3 acquiredParticipants];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v7)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_21;
  }

  v25 = v3;
  v8 = 0;
  v9 = 0;
  v27 = 0;
  v10 = *v30;
  obj = v6;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v29 + 1) + 8 * i);
      v13 = [v12 role];
      v14 = [v13 isEqualToString:@"SBTraitsParticipantRoleCoverSheet"];

      if (v14)
      {
        v15 = v12;

        v9 = v15;
      }

      v16 = [v12 role];
      v17 = [v16 isEqualToString:@"SBTraitsParticipantRoleCoverSheetCamera"];

      if (v17)
      {
        v18 = v8;
        v8 = v12;
      }

      else
      {
        v19 = [v12 role];
        v20 = [v19 isEqualToString:@"SBTraitsParticipantRoleSecureApp"];

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
    v3 = v25;
    v7 = v27;
    if (v8)
    {
      v21 = [objc_alloc(MEMORY[0x277D734E0]) initWithParticipant:v8 parentParticipant:v9];
      [v26 addObject:v21];
    }

    if (v27)
    {
      v6 = [objc_alloc(MEMORY[0x277D734E0]) initWithParticipant:v27 parentParticipant:v9];
      [v26 addObject:v6];
LABEL_21:
    }
  }

  else
  {
    v3 = v25;
    v7 = v27;
  }

  v22 = [MEMORY[0x277D734D8] treeWithNodesSpecifications:v26 traversalType:0 debugName:@"Active Orientation Order"];
  v23 = [v22 participantsTopologicalSort];

  return v23;
}

@end