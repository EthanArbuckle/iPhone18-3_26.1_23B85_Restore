@interface TIAutocorrectionList(UIKeyboardAdditions)
- (BOOL)notEmpty;
- (uint64_t)containsAlternativeInputCandidates;
- (uint64_t)containsAutofillCandidates;
- (uint64_t)containsContinuousPathConversions;
- (uint64_t)containsSlottedCandidates;
@end

@implementation TIAutocorrectionList(UIKeyboardAdditions)

- (uint64_t)containsAutofillCandidates
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 candidates];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) isAutofillCandidate])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (uint64_t)containsSlottedCandidates
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 candidates];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) isSlottedCandidate])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (uint64_t)containsContinuousPathConversions
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 candidates];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) isContinuousPathConversion])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (BOOL)notEmpty
{
  v2 = [a1 autocorrection];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 predictions];
    if ([v4 count])
    {
      v3 = 1;
    }

    else
    {
      v5 = [a1 emojiList];
      if ([v5 count])
      {
        v3 = 1;
      }

      else
      {
        v6 = [a1 proactiveTriggers];
        v3 = [v6 count] != 0;
      }
    }
  }

  return v3;
}

- (uint64_t)containsAlternativeInputCandidates
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [a1 corrections];
  v3 = [v2 alternateCorrections];

  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if ([*(*(&v16 + 1) + 8 * v7) isAlternativeInput])
      {
        goto LABEL_18;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 predictions];
  v8 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
LABEL_11:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v3);
      }

      if ([*(*(&v12 + 1) + 8 * v10) isAlternativeInput])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    v8 = 1;
  }

LABEL_19:

  return v8;
}

@end