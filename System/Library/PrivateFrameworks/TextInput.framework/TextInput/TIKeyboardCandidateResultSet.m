@interface TIKeyboardCandidateResultSet
+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)a3 initialSelectedIndex:(unint64_t)a4 defaultCandidate:(id)a5 sortMethods:(id)a6 sortMethodGroups:(id)a7 indexTitles:(id)a8 showExtensionCandidates:(id)a9 disambiguationCandidates:(id)a10 selectedDisambiguationCandidateIndex:(unint64_t)a11;
+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)a3 initialSelectedIndex:(unint64_t)a4 defaultCandidate:(id)a5 sortMethods:(id)a6 sortMethodGroups:(id)a7 indexTitles:(id)a8 showExtensionCandidates:(id)a9 disambiguationCandidates:(id)a10 selectedDisambiguationCandidateIndex:(unint64_t)a11 proactiveTriggers:(id)a12;
+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)a3 proactiveTriggers:(id)a4;
+ (id)dummySet;
- (BOOL)hasCandidates;
- (BOOL)hasMetadata;
- (BOOL)hasOnlyProactiveCandidates;
- (BOOL)hasSupplementalCandidates;
- (BOOL)isDummySet;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSubsetOf:(id)a3;
- (NSArray)candidatesIfSupplemental;
- (TIKeyboardCandidate)firstCandidate;
- (TIKeyboardCandidateResultSet)initWithCandidates:(id)a3 initialSelectedIndex:(unint64_t)a4 defaultCandidate:(id)a5 sortMethods:(id)a6 sortMethodGroups:(id)a7 indexTitles:(id)a8 showExtensionCandidates:(id)a9 disambiguationCandidates:(id)a10 selectedDisambiguationCandidateIndex:(unint64_t)a11 proactiveTriggers:(id)a12;
- (TIKeyboardCandidateResultSet)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)setByAppendingSet:(id)a3;
- (unint64_t)positionInCandidateList:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIKeyboardCandidateResultSet

- (BOOL)isSubsetOf:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TIKeyboardCandidateResultSet *)self generatedCandidateCount];
  if (v5 == [v4 generatedCandidateCount] && (-[TIKeyboardCandidateResultSet candidates](self, "candidates"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), objc_msgSend(v4, "candidates"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v6, v7 <= v9))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [(TIKeyboardCandidateResultSet *)self candidates];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v4 candidates];
          v19 = [v18 objectAtIndex:v14];

          if (v17 != v19)
          {
            v10 = 0;
            goto LABEL_14;
          }

          ++v14;
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_14:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)setByAppendingSet:(id)a3
{
  v4 = a3;
  if ([v4 batchCandidateLocation] && (v5 = objc_msgSend(v4, "generatedCandidateCount"), v5 == objc_msgSend(v4, "generatedCandidateCount")) && (v6 = objc_msgSend(v4, "batchCandidateLocation"), -[TIKeyboardCandidateResultSet candidates](self, "candidates"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 == v8))
  {
    v9 = MEMORY[0x1E695DF70];
    v10 = [(TIKeyboardCandidateResultSet *)self candidates];
    v28 = [v9 arrayWithArray:v10];

    v11 = [v4 candidates];
    [v28 addObjectsFromArray:v11];

    v25 = [TIKeyboardCandidateResultSet alloc];
    v27 = [(TIKeyboardCandidateResultSet *)self initialSelectedIndex];
    v26 = [(TIKeyboardCandidateResultSet *)self defaultCandidate];
    v24 = [(TIKeyboardCandidateResultSet *)self sortMethods];
    v12 = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
    v13 = [(TIKeyboardCandidateResultSet *)self indexTitles];
    v14 = [(TIKeyboardCandidateResultSet *)self showExtensionCandidates];
    v15 = [(TIKeyboardCandidateResultSet *)self disambiguationCandidates];
    v16 = [(TIKeyboardCandidateResultSet *)self selectedDisambiguationCandidateIndex];
    v17 = [(TIKeyboardCandidateResultSet *)self proactiveTriggers];
    v18 = [v4 proactiveTriggers];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }

    v21 = [v17 arrayByAddingObjectsFromArray:v20];
    v22 = [(TIKeyboardCandidateResultSet *)v25 initWithCandidates:v28 initialSelectedIndex:v27 defaultCandidate:v26 sortMethods:v24 sortMethodGroups:v12 indexTitles:v13 showExtensionCandidates:v14 disambiguationCandidates:v15 selectedDisambiguationCandidateIndex:v16 proactiveTriggers:v21];

    [(TIKeyboardCandidateResultSet *)v22 setGeneratedCandidateCount:[(TIKeyboardCandidateResultSet *)self generatedCandidateCount]];
    -[TIKeyboardCandidateResultSet setBatchCandidateLocation:](v22, "setBatchCandidateLocation:", [v4 batchCandidateLocation]);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (TIKeyboardCandidateResultSet)initWithCandidates:(id)a3 initialSelectedIndex:(unint64_t)a4 defaultCandidate:(id)a5 sortMethods:(id)a6 sortMethodGroups:(id)a7 indexTitles:(id)a8 showExtensionCandidates:(id)a9 disambiguationCandidates:(id)a10 selectedDisambiguationCandidateIndex:(unint64_t)a11 proactiveTriggers:(id)a12
{
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a12;
  v44.receiver = self;
  v44.super_class = TIKeyboardCandidateResultSet;
  v26 = [(TIKeyboardCandidateResultSet *)&v44 init];
  if (v26)
  {
    v27 = [v18 copy];
    candidates = v26->_candidates;
    v26->_candidates = v27;

    v26->_initialSelectedIndex = a4;
    v29 = [v24 copy];
    disambiguationCandidates = v26->_disambiguationCandidates;
    v26->_disambiguationCandidates = v29;

    v31 = [v19 copy];
    defaultCandidate = v26->_defaultCandidate;
    v26->_defaultCandidate = v31;

    v33 = [v20 copy];
    sortMethods = v26->_sortMethods;
    v26->_sortMethods = v33;

    v35 = [v21 copy];
    sortMethodGroups = v26->_sortMethodGroups;
    v26->_sortMethodGroups = v35;

    v37 = [v22 copy];
    indexTitles = v26->_indexTitles;
    v26->_indexTitles = v37;

    v39 = [v23 copy];
    showExtensionCandidates = v26->_showExtensionCandidates;
    v26->_showExtensionCandidates = v39;

    v26->_selectedDisambiguationCandidateIndex = a11;
    v41 = [v25 copy];
    proactiveTriggers = v26->_proactiveTriggers;
    v26->_proactiveTriggers = v41;
  }

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TIKeyboardCandidateResultSet *)self candidates];
    v6 = [v4 candidates];
    v7 = [v5 isEqualToArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)positionInCandidateList:(id)a3
{
  v4 = a3;
  if (-[TIKeyboardCandidateResultSet hasCandidates](self, "hasCandidates") && (-[TIKeyboardCandidateResultSet candidates](self, "candidates"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    v7 = 0;
    while (1)
    {
      v8 = [(TIKeyboardCandidateResultSet *)self candidates];
      v9 = [v8 objectAtIndex:v7];

      v10 = [v9 candidate];
      v11 = [v10 isEqual:v4];

      if (v11)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (BOOL)isDummySet
{
  v3 = [(TIKeyboardCandidateResultSet *)self candidates];
  if ([v3 count] == 1)
  {
    v4 = [(TIKeyboardCandidateResultSet *)self candidates];
    v5 = [v4 objectAtIndex:0];
    v6 = [MEMORY[0x1E695DFB0] null];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasMetadata
{
  v2 = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
  v3 = [v2 count] > 1;

  return v3;
}

- (TIKeyboardCandidate)firstCandidate
{
  if ([(TIKeyboardCandidateResultSet *)self hasCandidates])
  {
    v3 = [(TIKeyboardCandidateResultSet *)self candidates];
    v4 = [v3 objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)candidatesIfSupplemental
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_candidates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695DFB0] null];
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = [v9 isSupplementalItemCandidate];

          if (v12)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)hasSupplementalCandidates
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_candidates;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [MEMORY[0x1E695DFB0] null];
        v8 = v7;
        if (v6 == v7)
        {
        }

        else
        {
          v9 = [v6 isSupplementalItemCandidate];

          if (v9)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

LABEL_12:

  return v3;
}

- (BOOL)hasOnlyProactiveCandidates
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TIKeyboardCandidateResultSet *)self candidates];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) slotID])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)hasCandidates
{
  v3 = [(TIKeyboardCandidateResultSet *)self candidates];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  if (v4 != 1)
  {
    return 1;
  }

  v5 = [(TIKeyboardCandidateResultSet *)self candidates];
  v6 = [v5 objectAtIndex:0];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = v6 != v7;

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = [+[TIKeyboardCandidateResultSet allocWithZone:](TIKeyboardCandidateResultSet init];
  v6 = [(TIKeyboardCandidateResultSet *)self candidates];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DEC8] allocWithZone:a3];
    v8 = [(TIKeyboardCandidateResultSet *)self candidates];
    v9 = [v7 initWithArray:v8 copyItems:1];
    [(TIKeyboardCandidateResultSet *)v5 setCandidates:v9];
  }

  [(TIKeyboardCandidateResultSet *)v5 setInitialSelectedIndex:[(TIKeyboardCandidateResultSet *)self initialSelectedIndex]];
  v10 = [(TIKeyboardCandidateResultSet *)self defaultCandidate];

  if (v10)
  {
    v11 = [(TIKeyboardCandidate *)self->_defaultCandidate copyWithZone:a3];
    defaultCandidate = v5->_defaultCandidate;
    v5->_defaultCandidate = v11;
  }

  v13 = [(TIKeyboardCandidateResultSet *)self sortMethods];

  if (v13)
  {
    v14 = [MEMORY[0x1E695DEC8] allocWithZone:a3];
    v15 = [(TIKeyboardCandidateResultSet *)self sortMethods];
    v16 = [v14 initWithArray:v15 copyItems:1];
    [(TIKeyboardCandidateResultSet *)v5 setSortMethods:v16];
  }

  v17 = [(TIKeyboardCandidateResultSet *)self indexTitles];

  if (v17)
  {
    v18 = [MEMORY[0x1E695DF20] allocWithZone:a3];
    v19 = [(TIKeyboardCandidateResultSet *)self indexTitles];
    v20 = [v18 initWithDictionary:v19 copyItems:1];
    [(TIKeyboardCandidateResultSet *)v5 setIndexTitles:v20];
  }

  v21 = [(TIKeyboardCandidateResultSet *)self showExtensionCandidates];

  if (v21)
  {
    v22 = [MEMORY[0x1E695DF20] allocWithZone:a3];
    v23 = [(TIKeyboardCandidateResultSet *)self showExtensionCandidates];
    v24 = [v22 initWithDictionary:v23 copyItems:1];
    [(TIKeyboardCandidateResultSet *)v5 setShowExtensionCandidates:v24];
  }

  v25 = [(TIKeyboardCandidateResultSet *)self disambiguationCandidates];

  if (v25)
  {
    v26 = [MEMORY[0x1E695DEC8] allocWithZone:a3];
    v27 = [(TIKeyboardCandidateResultSet *)self disambiguationCandidates];
    v28 = [v26 initWithArray:v27 copyItems:1];
    [(TIKeyboardCandidateResultSet *)v5 setDisambiguationCandidates:v28];
  }

  [(TIKeyboardCandidateResultSet *)v5 setSelectedDisambiguationCandidateIndex:[(TIKeyboardCandidateResultSet *)self selectedDisambiguationCandidateIndex]];
  v29 = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
  if (v29)
  {
    v30 = v29;
    v31 = [(TIKeyboardCandidateResultSet *)self candidates];

    if (v31)
    {
      v75 = a3;
      v32 = [(TIKeyboardCandidateResultSet *)self candidates];
      v33 = [v32 count];

      v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (v33 >= 1)
      {
        for (i = 0; i != v33; ++i)
        {
          v36 = [(TIKeyboardCandidateResultSet *)v5 candidates];
          v37 = [v36 objectAtIndex:i];
          v38 = [(TIKeyboardCandidateResultSet *)self candidates];
          v39 = [v38 objectAtIndex:i];
          [v34 setObject:v37 forKey:v39];
        }
      }

      v40 = MEMORY[0x1E695DF90];
      v41 = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
      v70 = [v40 dictionaryWithCapacity:{objc_msgSend(v41, "count")}];

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      obj = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
      v71 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
      if (v71)
      {
        v68 = *v87;
        v69 = self;
        do
        {
          v42 = 0;
          do
          {
            if (*v87 != v68)
            {
              objc_enumerationMutation(obj);
            }

            v73 = v42;
            v43 = *(*(&v86 + 1) + 8 * v42);
            v44 = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
            v72 = v43;
            v45 = [v44 objectForKey:v43];

            v77 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v45, "count")}];
            v82 = 0u;
            v83 = 0u;
            v84 = 0u;
            v85 = 0u;
            v74 = v45;
            v46 = [v74 countByEnumeratingWithState:&v82 objects:v91 count:16];
            if (v46)
            {
              v47 = v46;
              v76 = *v83;
              do
              {
                for (j = 0; j != v47; ++j)
                {
                  if (*v83 != v76)
                  {
                    objc_enumerationMutation(v74);
                  }

                  v49 = *(*(&v82 + 1) + 8 * j);
                  v50 = [[TIKeyboardCandidateGroup allocWithZone:?]];
                  v51 = [v49 title];
                  [(TIKeyboardCandidateGroup *)v50 setTitle:v51];

                  v80 = 0u;
                  v81 = 0u;
                  v78 = 0u;
                  v79 = 0u;
                  v52 = [v49 candidates];
                  v53 = [v52 countByEnumeratingWithState:&v78 objects:v90 count:16];
                  if (v53)
                  {
                    v54 = v53;
                    v55 = *v79;
                    do
                    {
                      for (k = 0; k != v54; ++k)
                      {
                        if (*v79 != v55)
                        {
                          objc_enumerationMutation(v52);
                        }

                        v57 = *(*(&v78 + 1) + 8 * k);
                        v58 = [v34 objectForKey:v57];
                        if (!v58)
                        {
                          v58 = [v57 copy];
                          [v34 setObject:v58 forKey:v57];
                        }

                        [(TIKeyboardCandidateGroup *)v50 addCandidate:v58];
                      }

                      v54 = [v52 countByEnumeratingWithState:&v78 objects:v90 count:16];
                    }

                    while (v54);
                  }

                  [v77 addObject:v50];
                }

                v47 = [v74 countByEnumeratingWithState:&v82 objects:v91 count:16];
              }

              while (v47);
            }

            [v70 setObject:v77 forKey:v72];
            v42 = v73 + 1;
            self = v69;
          }

          while (v73 + 1 != v71);
          v71 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
        }

        while (v71);
      }

      v5 = v66;
      [(TIKeyboardCandidateResultSet *)v66 setSortMethodGroups:v70];

      a3 = v75;
    }
  }

  v5->_generatedCandidateCount = self->_generatedCandidateCount;
  v5->_batchCandidateLocation = self->_batchCandidateLocation;
  v59 = [(NSString *)self->_committedText copy];
  committedText = v5->_committedText;
  v5->_committedText = v59;

  objc_storeStrong(&v5->_uncommittedText, self->_uncommittedText);
  v61 = [(TIKeyboardCandidate *)self->_acceptedCandidate copyWithZone:a3];
  acceptedCandidate = v5->_acceptedCandidate;
  v5->_acceptedCandidate = v61;

  v63 = [(NSArray *)self->_proactiveTriggers copyWithZone:a3];
  proactiveTriggers = v5->_proactiveTriggers;
  v5->_proactiveTriggers = v63;

  v5->_inputManagerHasPendingCandidatesUpdate = self->_inputManagerHasPendingCandidatesUpdate;
  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = [(TIKeyboardCandidateResultSet *)self candidates];
  v6 = [v3 initWithFormat:@"<%@: %p count=%lu>", v4, self, objc_msgSend(v5, "count")];

  v7 = [(TIKeyboardCandidateResultSet *)self candidates];
  v8 = [v7 count];

  if (v8)
  {
    objc_msgSend(v6, "appendString:", @"(\n");
    v9 = [(TIKeyboardCandidateResultSet *)self candidates];
    v10 = [v9 componentsJoinedByString:{@", \n"}];
    [v6 appendString:v10];

    [v6 appendString:@"\n"]);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [TIKeyboardCandidateResultSetCoder encodeWithCandidateResultSet:self];
  [v9 encodeObject:v4 forKey:@"data"];
  committedText = self->_committedText;
  if (committedText)
  {
    [v9 encodeObject:committedText forKey:@"committedText"];
  }

  uncommittedText = self->_uncommittedText;
  if (uncommittedText)
  {
    [v9 encodeObject:uncommittedText forKey:@"uncommittedText"];
  }

  acceptedCandidate = self->_acceptedCandidate;
  v8 = v9;
  if (acceptedCandidate)
  {
    [v9 encodeObject:acceptedCandidate forKey:@"acceptedCandidate"];
    v8 = v9;
  }

  [v8 encodeBool:self->_inputManagerHasPendingCandidatesUpdate forKey:@"inputManagerHasPendingCandidatesUpdate"];
}

- (TIKeyboardCandidateResultSet)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = TIKeyboardCandidateResultSet;
  v3 = a3;
  v4 = [(TIKeyboardCandidateResultSet *)&v12 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"data", v12.receiver, v12.super_class}];
  v6 = [TIKeyboardCandidateResultSetCoder decodeWithData:v5];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"committedText"];
  [(TIKeyboardCandidateResultSet *)v6 setCommittedText:v7];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"uncommittedText"];
  [(TIKeyboardCandidateResultSet *)v6 setUncommittedText:v8];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"acceptedCandidate"];
  [(TIKeyboardCandidateResultSet *)v6 setAcceptedCandidate:v9];

  v10 = [v3 decodeBoolForKey:@"inputManagerHasPendingCandidatesUpdate"];
  [(TIKeyboardCandidateResultSet *)v6 setInputManagerHasPendingCandidatesUpdate:v10];

  return v6;
}

+ (id)dummySet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__TIKeyboardCandidateResultSet_dummySet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (dummySet___onceToken != -1)
  {
    dispatch_once(&dummySet___onceToken, block);
  }

  v2 = dummySet___dummySet;

  return v2;
}

void __40__TIKeyboardCandidateResultSet_dummySet__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = [MEMORY[0x1E695DFB0] null];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = [v0 setWithCandidates:v2 proactiveTriggers:0];
  v4 = dummySet___dummySet;
  dummySet___dummySet = v3;
}

+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)a3 initialSelectedIndex:(unint64_t)a4 defaultCandidate:(id)a5 sortMethods:(id)a6 sortMethodGroups:(id)a7 indexTitles:(id)a8 showExtensionCandidates:(id)a9 disambiguationCandidates:(id)a10 selectedDisambiguationCandidateIndex:(unint64_t)a11 proactiveTriggers:(id)a12
{
  v18 = a12;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a3;
  v26 = [[a1 alloc] initWithCandidates:v25 initialSelectedIndex:a4 defaultCandidate:v24 sortMethods:v23 sortMethodGroups:v22 indexTitles:v21 showExtensionCandidates:v20 disambiguationCandidates:v19 selectedDisambiguationCandidateIndex:a11 proactiveTriggers:v18];

  return v26;
}

+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)a3 initialSelectedIndex:(unint64_t)a4 defaultCandidate:(id)a5 sortMethods:(id)a6 sortMethodGroups:(id)a7 indexTitles:(id)a8 showExtensionCandidates:(id)a9 disambiguationCandidates:(id)a10 selectedDisambiguationCandidateIndex:(unint64_t)a11
{
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a3;
  v25 = [[a1 alloc] initWithCandidates:v24 initialSelectedIndex:a4 defaultCandidate:v23 sortMethods:v22 sortMethodGroups:v21 indexTitles:v20 showExtensionCandidates:v19 disambiguationCandidates:v18 selectedDisambiguationCandidateIndex:a11 proactiveTriggers:0];

  return v25;
}

+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)a3 proactiveTriggers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithCandidates:v7 initialSelectedIndex:0x7FFFFFFFFFFFFFFFLL defaultCandidate:0 sortMethods:0 sortMethodGroups:0 indexTitles:0 showExtensionCandidates:0 disambiguationCandidates:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL proactiveTriggers:v6];

  return v8;
}

@end