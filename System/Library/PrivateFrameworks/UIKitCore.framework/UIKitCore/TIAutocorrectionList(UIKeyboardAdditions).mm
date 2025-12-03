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
  candidates = [self candidates];
  v2 = [candidates countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(candidates);
        }

        if ([*(*(&v6 + 1) + 8 * i) isAutofillCandidate])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [candidates countByEnumeratingWithState:&v6 objects:v10 count:16];
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
  candidates = [self candidates];
  v2 = [candidates countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(candidates);
        }

        if ([*(*(&v6 + 1) + 8 * i) isSlottedCandidate])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [candidates countByEnumeratingWithState:&v6 objects:v10 count:16];
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
  candidates = [self candidates];
  v2 = [candidates countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(candidates);
        }

        if ([*(*(&v6 + 1) + 8 * i) isContinuousPathConversion])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [candidates countByEnumeratingWithState:&v6 objects:v10 count:16];
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
  autocorrection = [self autocorrection];
  if (autocorrection)
  {
    v3 = 1;
  }

  else
  {
    predictions = [self predictions];
    if ([predictions count])
    {
      v3 = 1;
    }

    else
    {
      emojiList = [self emojiList];
      if ([emojiList count])
      {
        v3 = 1;
      }

      else
      {
        proactiveTriggers = [self proactiveTriggers];
        v3 = [proactiveTriggers count] != 0;
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
  corrections = [self corrections];
  alternateCorrections = [corrections alternateCorrections];

  v4 = [alternateCorrections countByEnumeratingWithState:&v16 objects:v21 count:16];
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
        objc_enumerationMutation(alternateCorrections);
      }

      if ([*(*(&v16 + 1) + 8 * v7) isAlternativeInput])
      {
        goto LABEL_18;
      }

      if (v5 == ++v7)
      {
        v5 = [alternateCorrections countByEnumeratingWithState:&v16 objects:v21 count:16];
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
  alternateCorrections = [self predictions];
  v8 = [alternateCorrections countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
LABEL_11:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(alternateCorrections);
      }

      if ([*(*(&v12 + 1) + 8 * v10) isAlternativeInput])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [alternateCorrections countByEnumeratingWithState:&v12 objects:v20 count:16];
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