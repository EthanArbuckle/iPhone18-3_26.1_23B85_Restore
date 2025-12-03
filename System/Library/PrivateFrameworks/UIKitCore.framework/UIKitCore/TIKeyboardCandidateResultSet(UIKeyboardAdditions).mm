@interface TIKeyboardCandidateResultSet(UIKeyboardAdditions)
- (id)ui_uniqueSupplementalCandidates;
- (uint64_t)hasAutofillCandidates;
- (uint64_t)hasOnlyCompletionCandidates;
- (uint64_t)hasOnlySlottedCandidates;
- (uint64_t)hasOnlyTextSuggestions;
- (uint64_t)slottedCandidatesCount;
@end

@implementation TIKeyboardCandidateResultSet(UIKeyboardAdditions)

- (uint64_t)hasOnlyTextSuggestions
{
  v16 = *MEMORY[0x1E69E9840];
  if ([self isDummySet])
  {
    return 0;
  }

  candidates = [self candidates];
  v3 = [candidates count];

  if (!v3)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  candidates2 = [self candidates];
  v5 = [candidates2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(candidates2);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = 0;
          goto LABEL_14;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [candidates2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_14:

  return v9;
}

- (uint64_t)hasOnlySlottedCandidates
{
  v17 = *MEMORY[0x1E69E9840];
  if ([self isDummySet])
  {
    return 0;
  }

  candidates = [self candidates];
  v3 = [candidates count];

  if (!v3)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  candidates2 = [self candidates];
  v5 = [candidates2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(candidates2);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isSlottedCandidate] & 1) == 0 && !objc_msgSend(v9, "isAutofillCandidate"))
        {
          v10 = 0;
          goto LABEL_15;
        }
      }

      v6 = [candidates2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (uint64_t)hasOnlyCompletionCandidates
{
  v16 = *MEMORY[0x1E69E9840];
  if ([self isDummySet])
  {
    return 0;
  }

  candidates = [self candidates];
  v3 = [candidates count];

  if (!v3)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  candidates2 = [self candidates];
  v5 = [candidates2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(candidates2);
        }

        if (![*(*(&v11 + 1) + 8 * v8) isCompletionCandidate])
        {
          v9 = 0;
          goto LABEL_14;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [candidates2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_14:

  return v9;
}

- (uint64_t)slottedCandidatesCount
{
  v16 = *MEMORY[0x1E69E9840];
  if ([self isDummySet])
  {
    return 0;
  }

  candidates = [self candidates];
  v3 = [candidates count];

  if (!v3)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  candidates2 = [self candidates];
  v5 = [candidates2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(candidates2);
        }

        v7 += [*(*(&v11 + 1) + 8 * i) isSlottedCandidate];
      }

      v6 = [candidates2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)hasAutofillCandidates
{
  v14 = *MEMORY[0x1E69E9840];
  if ([self isDummySet])
  {
    return 0;
  }

  candidates = [self candidates];
  v3 = [candidates count];

  if (!v3)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  candidates2 = [self candidates];
  v5 = [candidates2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(candidates2);
        }

        if ([*(*(&v9 + 1) + 8 * i) isAutofillCandidate])
        {
          v5 = 1;
          goto LABEL_14;
        }
      }

      v5 = [candidates2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

- (id)ui_uniqueSupplementalCandidates
{
  v38 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_alloc(MEMORY[0x1E695DEC8]);
    candidatesIfSupplemental = [self candidatesIfSupplemental];
    v4 = [v2 initWithArray:candidatesIfSupplemental copyItems:1];

    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          candidate = [v11 candidate];
          v13 = [weakToWeakObjectsMapTable objectForKey:candidate];

          if (v13)
          {
            supplementalItemIdentifiers = [v13 supplementalItemIdentifiers];
            supplementalItemIdentifiers2 = [v11 supplementalItemIdentifiers];
            v16 = [supplementalItemIdentifiers arrayByAddingObjectsFromArray:supplementalItemIdentifiers2];
            [v13 setSupplementalItemIdentifiers:v16];
          }

          else
          {
            supplementalItemIdentifiers = [v11 candidate];
            [weakToWeakObjectsMapTable setObject:v11 forKey:supplementalItemIdentifiers];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(weakToWeakObjectsMapTable, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v28 + 1) + 8 * j);
          candidate2 = [v23 candidate];
          v25 = [weakToWeakObjectsMapTable objectForKey:candidate2];

          if (v25)
          {
            [v17 addObject:v25];
            candidate3 = [v23 candidate];
            [weakToWeakObjectsMapTable removeObjectForKey:candidate3];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

@end