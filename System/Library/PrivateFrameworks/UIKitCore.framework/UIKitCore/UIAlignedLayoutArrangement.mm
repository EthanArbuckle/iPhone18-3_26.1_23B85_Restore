@interface UIAlignedLayoutArrangement
@end

@implementation UIAlignedLayoutArrangement

void __62___UIAlignedLayoutArrangement__addConstraintGroupsAsNecessary__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) _wantsConstraintsForAttribute:{objc_msgSend(*(a1 + 32), "_attributeForConstraintGroupName:")}])
  {
    v3 = [*(*(a1 + 32) + 120) objectForKey:v5];

    if (!v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:0];
      [*(*(a1 + 32) + 120) setObject:v4 forKey:v5];
    }
  }
}

void __62___UIAlignedLayoutArrangement__addConstraintGroupsAsNecessary__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) _attributeForConstraintGroupName:a2];
  if ([v5 count] || !objc_msgSend(*(a1 + 32), "_wantsConstraintsForAttribute:", v6))
  {
    goto LABEL_34;
  }

  v7 = [*(a1 + 40) firstObject];
  v8 = v7;
  if ((v6 - 11) > 1 || v7 == 0)
  {
    goto LABEL_20;
  }

  if (([v7 _hasBaseline] & 1) == 0)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          if ([v15 _hasBaseline] && objc_msgSend(*(a1 + 32), "_itemWantsLayoutAsIfVisible:", v15))
          {
            v16 = v15;

            v8 = v16;
            goto LABEL_19;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

LABEL_20:
    if (!v8)
    {
      goto LABEL_34;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = *(a1 + 40);
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if (v8 != *(*(&v23 + 1) + 8 * j) || (v6 - 7) <= 1)
        {
          [*(a1 + 32) _setUpConstraintForItem:v23 referenceItem:? attribute:? inConstraintsTable:?];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }

LABEL_34:
}

void __66___UIAlignedLayoutArrangement__addIndividualConstraintsIfPossible__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectEnumerator];
  v8 = [v7 nextObject];
  v9 = [v8 firstItem];

  if (v9)
  {
    v26 = v5;
    v29 = [*(a1 + 32) _attributeForConstraintGroupName:v5];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      v27 = *v35;
      v28 = v10;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          if (v15 == v9)
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v17 = [v6 objectEnumerator];
            v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = v9;
              v21 = v6;
              v22 = a1;
              v23 = *v31;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v31 != v23)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v25 = *(*(&v30 + 1) + 8 * j);
                  if (([v25 isActive] & 1) == 0)
                  {
                    [v25 setActive:1];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
              }

              while (v19);
              a1 = v22;
              v6 = v21;
              v9 = v20;
              v13 = v27;
              v10 = v28;
            }
          }

          else
          {
            v16 = [v6 objectForKey:*(*(&v34 + 1) + 8 * i)];
            v17 = v16;
            if (v16)
            {
              if (([v16 isActive] & 1) == 0)
              {
                [v17 setActive:1];
              }
            }

            else
            {
              [*(a1 + 32) _setUpConstraintForItem:v15 referenceItem:v9 attribute:v29 inConstraintsTable:v6];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v12);
    }

    v5 = v26;
  }
}

void __65___UIAlignedLayoutArrangement__removeConstraintGroupsAsNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
}

void __65___UIAlignedLayoutArrangement__removeConstraintGroupsAsNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:v3];
  v5 = [v4 objectEnumerator];
  v6 = [v5 nextObject];

  v7 = [v6 firstItem];
  if (v7)
  {
    if ([*(a1 + 40) containsObject:v7])
    {
      (*(*(a1 + 64) + 16))();
      goto LABEL_30;
    }

    if ((*(a1 + 72) & 1) != 0 || *(a1 + 73) == 1)
    {
      v8 = [*(a1 + 32) items];
      v9 = [v8 indexOfObject:v7];

      if (v9)
      {
        v25 = v6;
        v26 = v4;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = *(a1 + 48);
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
LABEL_9:
          v14 = 0;
          while (1)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v31 + 1) + 8 * v14);
            if ([v15 _hasBaseline])
            {
              v16 = [*(a1 + 32) items];
              v17 = [v16 indexOfObject:v15];

              if (v17 < v9)
              {
                break;
              }
            }

            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
              if (v12)
              {
                goto LABEL_9;
              }

              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:

          v6 = v25;
          v4 = v26;
          if (*(a1 + 73) != 1)
          {
            goto LABEL_30;
          }

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v10 = *(a1 + 56);
          v18 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (!v18)
          {
LABEL_29:

            v6 = v25;
            v4 = v26;
            goto LABEL_30;
          }

          v19 = v18;
          v20 = *v28;
LABEL_19:
          v21 = 0;
          while (1)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v10);
            }

            v22 = *(*(&v27 + 1) + 8 * v21);
            if ([v22 _hasBaseline])
            {
              if ([*(a1 + 32) _itemWantsLayoutAsIfVisible:v22])
              {
                v23 = [*(a1 + 32) items];
                v24 = [v23 indexOfObject:v22];

                if (v24 < v9)
                {
                  break;
                }
              }
            }

            if (v19 == ++v21)
            {
              v19 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v19)
              {
                goto LABEL_19;
              }

              goto LABEL_29;
            }
          }
        }

        (*(*(a1 + 64) + 16))();
        goto LABEL_29;
      }
    }
  }

LABEL_30:
}

void __70___UIAlignedLayoutArrangement__removeIndividualConstraintsAsNecessary__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v3 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:?];
  v4 = [v3 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = *(a1 + 40);
        v12 = [v4 objectForKey:v10];
        LODWORD(v11) = [v11 containsObject:v12];

        if (v11)
        {
          v13 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:v14];
          _UILACleanUpConstraintForItemInCollection(v10, v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

@end