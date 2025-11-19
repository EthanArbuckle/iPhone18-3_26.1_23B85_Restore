@interface SCLSettingsSyncErrorHandler
- (id)behaviorForError:(id)a3 history:(id)a4;
- (unint64_t)recoveryTypeForError:(id)a3;
@end

@implementation SCLSettingsSyncErrorHandler

- (id)behaviorForError:(id)a3 history:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SCLSettingsSyncErrorHandler *)self recoveryTypeForError:a3];
  if (v7 == 2)
  {
    v8 = [SCLSettingsSyncErrorBehavior alloc];
    v9 = 2;
    v10 = 0;
  }

  else
  {
    v11 = v7;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v15 += [*(*(&v23 + 1) + 8 * i) isEqual:{&unk_28762A7C8, v23}];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);

      if (v15 > 6)
      {
        v18 = MEMORY[0x277D86298];
      }

      else
      {
        v18 = qword_279B6C050[v15];
      }
    }

    else
    {

      v18 = MEMORY[0x277D862A8];
    }

    v19 = *v18;
    v8 = [SCLSettingsSyncErrorBehavior alloc];
    v9 = v11;
    v10 = v19;
  }

  v20 = [(SCLSettingsSyncErrorBehavior *)v8 initWithRecoveryType:v9 retryInterval:v10, v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (unint64_t)recoveryTypeForError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqual:@"com.apple.schooltime"];

  if (v5)
  {
    v6 = [v3 code];

    if (((v6 - 2) & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v8 = [v3 domain];

    [v8 isEqual:*MEMORY[0x277D18538]];
    return 1;
  }
}

@end