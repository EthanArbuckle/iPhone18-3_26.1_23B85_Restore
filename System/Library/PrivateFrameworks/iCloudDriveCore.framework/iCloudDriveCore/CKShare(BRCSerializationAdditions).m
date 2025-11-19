@interface CKShare(BRCSerializationAdditions)
- (uint64_t)_brc_isOwner;
- (uint64_t)deserializeSharingOptions:()BRCSerializationAdditions error:;
@end

@implementation CKShare(BRCSerializationAdditions)

- (uint64_t)_brc_isOwner
{
  v1 = [a1 recordID];
  v2 = [v1 zoneID];
  v3 = [v2 ownerName];
  v4 = [v3 isEqualToString:*MEMORY[0x277CBBF28]];

  return v4;
}

- (uint64_t)deserializeSharingOptions:()BRCSerializationAdditions error:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [a1 publicPermission];
  if (v5 == 3)
  {
    v6 = 8;
    goto LABEL_31;
  }

  if (v5 == 2)
  {
    if ([a1 _brc_isOwner])
    {
      v6 = 24;
    }

    else
    {
      v6 = 8;
    }

    goto LABEL_31;
  }

  if (![a1 _brc_isOwner])
  {
    v14 = [a1 currentUserParticipant];
    v15 = [v14 permission] > 1;

    v6 = v15 << 6;
    goto LABEL_31;
  }

  v7 = [a1 participants];
  if (![v7 count])
  {

    goto LABEL_15;
  }

  v8 = [a1 participants];
  if ([v8 count] == 1)
  {
    v9 = [a1 participants];
    v10 = [v9 firstObject];
    if ([v10 isCurrentUser])
    {
      v11 = [a1 participants];
      v12 = [v11 firstObject];
      v13 = [v12 role];

      if (v13 != 1)
      {
        goto LABEL_20;
      }

LABEL_15:
      if ([a1 allowsAccessRequests])
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
  v16 = [a1 participants];
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v26 + 1) + 8 * v20);
      if ([v21 role] != 1 && objc_msgSend(v21, "permission") > 1)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
  v22 = [a1 currentUserParticipant];
  if ([v22 permission] == 3)
  {

    if (!a3)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v23 = [a1 publicPermission];

  if (v23 != 3)
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