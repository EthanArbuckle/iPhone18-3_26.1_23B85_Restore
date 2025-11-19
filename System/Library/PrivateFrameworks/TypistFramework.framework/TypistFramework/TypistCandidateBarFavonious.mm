@interface TypistCandidateBarFavonious
- (BOOL)hasVisibleCandidate:(id)a3;
- (id)candidateUIInformation:(id)a3;
- (id)getAllCandidates;
- (id)getVisibleCandidates;
- (int64_t)getIndexOfCandidate:(id)a3;
- (int64_t)selectCandidate:(id)a3;
- (int64_t)selectCandidateAtIndex:(int64_t)a3;
@end

@implementation TypistCandidateBarFavonious

- (id)candidateUIInformation:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__9;
  v14 = __Block_byref_object_dispose__9;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__TypistCandidateBarFavonious_candidateUIInformation___block_invoke;
  v7[3] = &unk_279DF4758;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [TypistKeyboardUtilities runOnMainThread:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __54__TypistCandidateBarFavonious_candidateUIInformation___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v1 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v39;
    v28 = *v39;
    do
    {
      v4 = 0;
      v29 = v2;
      do
      {
        if (*v39 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v38 + 1) + 8 * v4);
        NSClassFromString(&cfstr_Uiremotekeyboa.isa);
        if (objc_opt_isKindOfClass())
        {
          v31 = v5;
          v32 = v4;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v6 = [v5 allSubViews];
          v7 = [v6 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v35;
            while (2)
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v35 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v34 + 1) + 8 * i);
                NSClassFromString(&cfstr_Uimorphinglabe.isa);
                if (objc_opt_isKindOfClass())
                {
                  v12 = [v11 performSelector:sel_textLabel];
                  v13 = [v12 text];
                  v14 = [v13 isEqualToString:*(a1 + 32)];

                  if (v14)
                  {
                    v15 = [v11 superview];
                    [v11 frame];
                    [v15 convertRect:v31 toView:?];
                    UIRectGetCenter();
                    v17 = v16;
                    v19 = v18;

                    v20 = [v11 performSelector:sel_isFocused] != 0;
                    v43[0] = *(a1 + 32);
                    v42[0] = @"candidateString";
                    v42[1] = @"isFocused";
                    v21 = [MEMORY[0x277CCABB0] numberWithBool:v20];
                    v43[1] = v21;
                    v42[2] = @"centerX";
                    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
                    v43[2] = v22;
                    v42[3] = @"centerY";
                    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
                    v43[3] = v23;
                    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
                    v25 = *(*(a1 + 40) + 8);
                    v26 = *(v25 + 40);
                    *(v25 + 40) = v24;

                    goto LABEL_19;
                  }
                }
              }

              v8 = [v6 countByEnumeratingWithState:&v34 objects:v44 count:16];
              if (v8)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:

          v3 = v28;
          v2 = v29;
          v4 = v32;
        }

        ++v4;
      }

      while (v4 != v2);
      v2 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v2);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)getAllCandidates
{
  v8.receiver = self;
  v8.super_class = TypistCandidateBarFavonious;
  v2 = [(TypistCandidateBar *)&v8 getAllCandidates];
  v3 = [v2 mutableCopy];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__TypistCandidateBarFavonious_getAllCandidates__block_invoke;
  v6[3] = &unk_279DF4E58;
  v4 = v3;
  v7 = v4;
  [v4 enumerateObjectsUsingBlock:v6];

  return v4;
}

void __47__TypistCandidateBarFavonious_getAllCandidates__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 candidate];
  v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [v7 stringByTrimmingCharactersInSet:v5];
  [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
}

- (id)getVisibleCandidates
{
  v2 = +[TypistKeyboardData keyboardData];

  return [(objc_class *)v2 getVisibleCandidateList:@"typistCandidateBarTypeFavonious"];
}

- (int64_t)getIndexOfCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TypistCandidateBarFavonious *)self getAllCandidates];
  v6 = 0x8000000000000000;
  v7 = -1;
  while (++v7 < [v5 count])
  {
    v8 = [v5 objectAtIndex:v7];
    v9 = [v8 isEqualToString:v4];

    --v6;
    if (v9)
    {
      if (v6)
      {
        goto LABEL_6;
      }

      break;
    }
  }

  v7 = -1;
LABEL_6:

  return v7;
}

- (BOOL)hasVisibleCandidate:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TypistCandidateBarFavonious *)self getVisibleCandidates];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *v24;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v24 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 candidate];
LABEL_10:
        v11 = v10;
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        goto LABEL_10;
      }

      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      TYLogl(OS_LOG_TYPE_ERROR, @"TypistCandidateBarFavonious - unrecognized candidate type: %@", v14, v15, v16, v17, v18, v19, v13);

      v11 = 0;
LABEL_12:
      v20 = [v11 isEqualToString:v4];

      if (v20)
      {
        LOBYTE(v6) = 1;
        goto LABEL_17;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int64_t)selectCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TypistCandidateBarFavonious *)self getIndexOfCandidate:v4];
  if (v5 < 0)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if (![(TypistCandidateBarFavonious *)self hasVisibleCandidate:v4])
  {
    v7 = 0.0;
    do
    {
      [TypistKeyboardUtilities waitFor:0.02];
      v7 = v7 + 0.02;
    }

    while (![(TypistCandidateBarFavonious *)self hasVisibleCandidate:v4]&& v7 < 2.0);
    if (v7 >= 2.0)
    {
      TYLogl(OS_LOG_TYPE_ERROR, @"TypistCandidateBar: Failed to find %@ in the favonious candidate bar after %fs.", v8, v9, v10, v11, v12, v13, v4);
LABEL_9:
      v14 = -1;
      goto LABEL_10;
    }
  }

  v14 = [(TypistCandidateBarFavonious *)self selectCandidateAtIndex:v6];
LABEL_10:

  return v14;
}

- (int64_t)selectCandidateAtIndex:(int64_t)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__TypistCandidateBarFavonious_selectCandidateAtIndex___block_invoke;
  v6[3] = &__block_descriptor_40_e34_v16__0___RCPEventStreamComposer__8l;
  v6[4] = a3;
  v4 = [MEMORY[0x277D44358] eventStreamWithEventActions:v6];
  [TypistKeyboardUtilities launchRecapWithSyntheticEventStream:v4];

  return a3;
}

void __54__TypistCandidateBarFavonious_selectCandidateAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D44340];
  v16 = a2;
  v4 = [v3 touchScreenDigitizerSender];
  [v16 setSenderProperties:v4];

  [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getCandidateCenterAtIndex:"getCandidateCenterAtIndex:", *(a1 + 32)];
  x = v18.x;
  y = v18.y;
  v7 = *(a1 + 32);
  v15 = NSStringFromCGPoint(v18);
  TYLog(@"Tapping index %li candidate center at: %@", v8, v9, v10, v11, v12, v13, v14, v7);

  [v16 tap:{x, y}];
}

@end