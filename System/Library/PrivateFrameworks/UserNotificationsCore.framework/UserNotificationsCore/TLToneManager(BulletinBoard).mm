@interface TLToneManager(BulletinBoard)
- (id)unc_toneIdentifierForAlertConfiguration:()BulletinBoard;
- (uint64_t)unc_isToneEnabledForAlertConfiguration:()BulletinBoard;
- (uint64_t)unc_isToneEnabledForAlertType:()BulletinBoard topic:;
- (uint64_t)unc_isToneEnabledForSectionInfo:()BulletinBoard;
@end

@implementation TLToneManager(BulletinBoard)

- (uint64_t)unc_isToneEnabledForSectionInfo:()BulletinBoard
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69DA8E0];
  sectionID = [v4 sectionID];
  v7 = [v5 unc_toneLibraryAlertTypeForSectionID:sectionID];

  if (v7)
  {
    subsections = [v4 subsections];
    if ([subsections count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = subsections;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            subsectionID = [*(*(&v19 + 1) + 8 * v13) subsectionID];
            v15 = [self unc_isToneEnabledForAlertType:v7 topic:subsectionID];

            if (v15)
            {
              v16 = 1;
              goto LABEL_14;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v16 = 0;
LABEL_14:
    }

    else
    {
      v16 = [self unc_isToneEnabledForAlertType:v7 topic:0];
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (uint64_t)unc_isToneEnabledForAlertType:()BulletinBoard topic:
{
  v1 = [self currentToneIdentifierForAlertType:? topic:?];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69DA928]];

  return v2 ^ 1u;
}

- (id)unc_toneIdentifierForAlertConfiguration:()BulletinBoard
{
  v4 = a3;
  toneIdentifier = [v4 toneIdentifier];
  if (![toneIdentifier length])
  {
    type = [v4 type];
    topic = [v4 topic];
    v8 = [self currentToneIdentifierForAlertType:type topic:topic];

    toneIdentifier = v8;
  }

  return toneIdentifier;
}

- (uint64_t)unc_isToneEnabledForAlertConfiguration:()BulletinBoard
{
  v1 = [self unc_toneIdentifierForAlertConfiguration:?];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69DA928]];

  return v2 ^ 1u;
}

@end