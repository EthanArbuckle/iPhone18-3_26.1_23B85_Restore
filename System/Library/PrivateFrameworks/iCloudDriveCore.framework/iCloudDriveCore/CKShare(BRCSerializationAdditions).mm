@interface CKShare(BRCSerializationAdditions)
- (uint64_t)_brc_isOwner;
- (uint64_t)deserializeSharingOptions:()BRCSerializationAdditions error:;
@end

@implementation CKShare(BRCSerializationAdditions)

- (uint64_t)_brc_isOwner
{
  recordID = [self recordID];
  zoneID = [recordID zoneID];
  ownerName = [zoneID ownerName];
  v4 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  return v4;
}

- (uint64_t)deserializeSharingOptions:()BRCSerializationAdditions error:
{
  v31 = *MEMORY[0x277D85DE8];
  publicPermission = [self publicPermission];
  if (publicPermission == 3)
  {
    v6 = 8;
    goto LABEL_31;
  }

  if (publicPermission == 2)
  {
    if ([self _brc_isOwner])
    {
      v6 = 24;
    }

    else
    {
      v6 = 8;
    }

    goto LABEL_31;
  }

  if (![self _brc_isOwner])
  {
    currentUserParticipant = [self currentUserParticipant];
    v15 = [currentUserParticipant permission] > 1;

    v6 = v15 << 6;
    goto LABEL_31;
  }

  participants = [self participants];
  if (![participants count])
  {

    goto LABEL_15;
  }

  participants2 = [self participants];
  if ([participants2 count] == 1)
  {
    participants3 = [self participants];
    firstObject = [participants3 firstObject];
    if ([firstObject isCurrentUser])
    {
      participants4 = [self participants];
      firstObject2 = [participants4 firstObject];
      role = [firstObject2 role];

      if (role != 1)
      {
        goto LABEL_20;
      }

LABEL_15:
      if ([self allowsAccessRequests])
      {
        v6 = 64;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_31;
    }
  }

LABEL_20:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  participants5 = [self participants];
  v17 = [participants5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    v6 = 64;
LABEL_22:
    v20 = 0;
    while (1)
    {
      if (*v27 != v19)
      {
        objc_enumerationMutation(participants5);
      }

      v21 = *(*(&v26 + 1) + 8 * v20);
      if ([v21 role] != 1 && objc_msgSend(v21, "permission") > 1)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [participants5 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v18)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    v6 = 0;
  }

LABEL_31:
  currentUserParticipant2 = [self currentUserParticipant];
  if ([currentUserParticipant2 permission] == 3)
  {

    if (!a3)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  publicPermission2 = [self publicPermission];

  if (publicPermission2 != 3)
  {
    v6 |= 0x20uLL;
  }

  if (a3)
  {
LABEL_37:
    *a3 = v6;
  }

LABEL_38:
  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

@end