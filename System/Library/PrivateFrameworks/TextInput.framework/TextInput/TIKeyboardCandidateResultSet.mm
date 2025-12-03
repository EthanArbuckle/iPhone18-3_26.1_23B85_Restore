@interface TIKeyboardCandidateResultSet
+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)candidates initialSelectedIndex:(unint64_t)index defaultCandidate:(id)candidate sortMethods:(id)methods sortMethodGroups:(id)groups indexTitles:(id)titles showExtensionCandidates:(id)extensionCandidates disambiguationCandidates:(id)self0 selectedDisambiguationCandidateIndex:(unint64_t)self1;
+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)candidates initialSelectedIndex:(unint64_t)index defaultCandidate:(id)candidate sortMethods:(id)methods sortMethodGroups:(id)groups indexTitles:(id)titles showExtensionCandidates:(id)extensionCandidates disambiguationCandidates:(id)self0 selectedDisambiguationCandidateIndex:(unint64_t)self1 proactiveTriggers:(id)self2;
+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)candidates proactiveTriggers:(id)triggers;
+ (id)dummySet;
- (BOOL)hasCandidates;
- (BOOL)hasMetadata;
- (BOOL)hasOnlyProactiveCandidates;
- (BOOL)hasSupplementalCandidates;
- (BOOL)isDummySet;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSubsetOf:(id)of;
- (NSArray)candidatesIfSupplemental;
- (TIKeyboardCandidate)firstCandidate;
- (TIKeyboardCandidateResultSet)initWithCandidates:(id)candidates initialSelectedIndex:(unint64_t)index defaultCandidate:(id)candidate sortMethods:(id)methods sortMethodGroups:(id)groups indexTitles:(id)titles showExtensionCandidates:(id)extensionCandidates disambiguationCandidates:(id)self0 selectedDisambiguationCandidateIndex:(unint64_t)self1 proactiveTriggers:(id)self2;
- (TIKeyboardCandidateResultSet)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)setByAppendingSet:(id)set;
- (unint64_t)positionInCandidateList:(id)list;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKeyboardCandidateResultSet

- (BOOL)isSubsetOf:(id)of
{
  v26 = *MEMORY[0x1E69E9840];
  ofCopy = of;
  generatedCandidateCount = [(TIKeyboardCandidateResultSet *)self generatedCandidateCount];
  if (generatedCandidateCount == [ofCopy generatedCandidateCount] && (-[TIKeyboardCandidateResultSet candidates](self, "candidates"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), objc_msgSend(ofCopy, "candidates"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v6, v7 <= v9))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    candidates = [(TIKeyboardCandidateResultSet *)self candidates];
    v12 = [candidates countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(candidates);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          candidates2 = [ofCopy candidates];
          v19 = [candidates2 objectAtIndex:v14];

          if (v17 != v19)
          {
            v10 = 0;
            goto LABEL_14;
          }

          ++v14;
        }

        v13 = [candidates countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (id)setByAppendingSet:(id)set
{
  setCopy = set;
  if ([setCopy batchCandidateLocation] && (v5 = objc_msgSend(setCopy, "generatedCandidateCount"), v5 == objc_msgSend(setCopy, "generatedCandidateCount")) && (v6 = objc_msgSend(setCopy, "batchCandidateLocation"), -[TIKeyboardCandidateResultSet candidates](self, "candidates"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 == v8))
  {
    v9 = MEMORY[0x1E695DF70];
    candidates = [(TIKeyboardCandidateResultSet *)self candidates];
    v28 = [v9 arrayWithArray:candidates];

    candidates2 = [setCopy candidates];
    [v28 addObjectsFromArray:candidates2];

    v25 = [TIKeyboardCandidateResultSet alloc];
    initialSelectedIndex = [(TIKeyboardCandidateResultSet *)self initialSelectedIndex];
    defaultCandidate = [(TIKeyboardCandidateResultSet *)self defaultCandidate];
    sortMethods = [(TIKeyboardCandidateResultSet *)self sortMethods];
    sortMethodGroups = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
    indexTitles = [(TIKeyboardCandidateResultSet *)self indexTitles];
    showExtensionCandidates = [(TIKeyboardCandidateResultSet *)self showExtensionCandidates];
    disambiguationCandidates = [(TIKeyboardCandidateResultSet *)self disambiguationCandidates];
    selectedDisambiguationCandidateIndex = [(TIKeyboardCandidateResultSet *)self selectedDisambiguationCandidateIndex];
    proactiveTriggers = [(TIKeyboardCandidateResultSet *)self proactiveTriggers];
    proactiveTriggers2 = [setCopy proactiveTriggers];
    v19 = proactiveTriggers2;
    if (proactiveTriggers2)
    {
      v20 = proactiveTriggers2;
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }

    v21 = [proactiveTriggers arrayByAddingObjectsFromArray:v20];
    v22 = [(TIKeyboardCandidateResultSet *)v25 initWithCandidates:v28 initialSelectedIndex:initialSelectedIndex defaultCandidate:defaultCandidate sortMethods:sortMethods sortMethodGroups:sortMethodGroups indexTitles:indexTitles showExtensionCandidates:showExtensionCandidates disambiguationCandidates:disambiguationCandidates selectedDisambiguationCandidateIndex:selectedDisambiguationCandidateIndex proactiveTriggers:v21];

    [(TIKeyboardCandidateResultSet *)v22 setGeneratedCandidateCount:[(TIKeyboardCandidateResultSet *)self generatedCandidateCount]];
    -[TIKeyboardCandidateResultSet setBatchCandidateLocation:](v22, "setBatchCandidateLocation:", [setCopy batchCandidateLocation]);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (TIKeyboardCandidateResultSet)initWithCandidates:(id)candidates initialSelectedIndex:(unint64_t)index defaultCandidate:(id)candidate sortMethods:(id)methods sortMethodGroups:(id)groups indexTitles:(id)titles showExtensionCandidates:(id)extensionCandidates disambiguationCandidates:(id)self0 selectedDisambiguationCandidateIndex:(unint64_t)self1 proactiveTriggers:(id)self2
{
  candidatesCopy = candidates;
  candidateCopy = candidate;
  methodsCopy = methods;
  groupsCopy = groups;
  titlesCopy = titles;
  extensionCandidatesCopy = extensionCandidates;
  disambiguationCandidatesCopy = disambiguationCandidates;
  triggersCopy = triggers;
  v44.receiver = self;
  v44.super_class = TIKeyboardCandidateResultSet;
  v26 = [(TIKeyboardCandidateResultSet *)&v44 init];
  if (v26)
  {
    v27 = [candidatesCopy copy];
    candidates = v26->_candidates;
    v26->_candidates = v27;

    v26->_initialSelectedIndex = index;
    v29 = [disambiguationCandidatesCopy copy];
    disambiguationCandidates = v26->_disambiguationCandidates;
    v26->_disambiguationCandidates = v29;

    v31 = [candidateCopy copy];
    defaultCandidate = v26->_defaultCandidate;
    v26->_defaultCandidate = v31;

    v33 = [methodsCopy copy];
    sortMethods = v26->_sortMethods;
    v26->_sortMethods = v33;

    v35 = [groupsCopy copy];
    sortMethodGroups = v26->_sortMethodGroups;
    v26->_sortMethodGroups = v35;

    v37 = [titlesCopy copy];
    indexTitles = v26->_indexTitles;
    v26->_indexTitles = v37;

    v39 = [extensionCandidatesCopy copy];
    showExtensionCandidates = v26->_showExtensionCandidates;
    v26->_showExtensionCandidates = v39;

    v26->_selectedDisambiguationCandidateIndex = candidateIndex;
    v41 = [triggersCopy copy];
    proactiveTriggers = v26->_proactiveTriggers;
    v26->_proactiveTriggers = v41;
  }

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    candidates = [(TIKeyboardCandidateResultSet *)self candidates];
    candidates2 = [equalCopy candidates];
    v7 = [candidates isEqualToArray:candidates2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)positionInCandidateList:(id)list
{
  listCopy = list;
  if (-[TIKeyboardCandidateResultSet hasCandidates](self, "hasCandidates") && (-[TIKeyboardCandidateResultSet candidates](self, "candidates"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    v7 = 0;
    while (1)
    {
      candidates = [(TIKeyboardCandidateResultSet *)self candidates];
      v9 = [candidates objectAtIndex:v7];

      candidate = [v9 candidate];
      v11 = [candidate isEqual:listCopy];

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
  candidates = [(TIKeyboardCandidateResultSet *)self candidates];
  if ([candidates count] == 1)
  {
    candidates2 = [(TIKeyboardCandidateResultSet *)self candidates];
    v5 = [candidates2 objectAtIndex:0];
    null = [MEMORY[0x1E695DFB0] null];
    v7 = [v5 isEqual:null];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasMetadata
{
  sortMethodGroups = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
  v3 = [sortMethodGroups count] > 1;

  return v3;
}

- (TIKeyboardCandidate)firstCandidate
{
  if ([(TIKeyboardCandidateResultSet *)self hasCandidates])
  {
    candidates = [(TIKeyboardCandidateResultSet *)self candidates];
    v4 = [candidates objectAtIndex:0];
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
        null = [MEMORY[0x1E695DFB0] null];
        v11 = null;
        if (v9 == null)
        {
        }

        else
        {
          isSupplementalItemCandidate = [v9 isSupplementalItemCandidate];

          if (isSupplementalItemCandidate)
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
        null = [MEMORY[0x1E695DFB0] null];
        v8 = null;
        if (v6 == null)
        {
        }

        else
        {
          isSupplementalItemCandidate = [v6 isSupplementalItemCandidate];

          if (isSupplementalItemCandidate)
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
  candidates = [(TIKeyboardCandidateResultSet *)self candidates];
  v3 = [candidates countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(candidates);
        }

        if (![*(*(&v9 + 1) + 8 * i) slotID])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [candidates countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  candidates = [(TIKeyboardCandidateResultSet *)self candidates];
  v4 = [candidates count];

  if (!v4)
  {
    return 0;
  }

  if (v4 != 1)
  {
    return 1;
  }

  candidates2 = [(TIKeyboardCandidateResultSet *)self candidates];
  v6 = [candidates2 objectAtIndex:0];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = v6 != null;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = [+[TIKeyboardCandidateResultSet allocWithZone:](TIKeyboardCandidateResultSet init];
  candidates = [(TIKeyboardCandidateResultSet *)self candidates];

  if (candidates)
  {
    v7 = [MEMORY[0x1E695DEC8] allocWithZone:zone];
    candidates2 = [(TIKeyboardCandidateResultSet *)self candidates];
    v9 = [v7 initWithArray:candidates2 copyItems:1];
    [(TIKeyboardCandidateResultSet *)v5 setCandidates:v9];
  }

  [(TIKeyboardCandidateResultSet *)v5 setInitialSelectedIndex:[(TIKeyboardCandidateResultSet *)self initialSelectedIndex]];
  defaultCandidate = [(TIKeyboardCandidateResultSet *)self defaultCandidate];

  if (defaultCandidate)
  {
    v11 = [(TIKeyboardCandidate *)self->_defaultCandidate copyWithZone:zone];
    defaultCandidate = v5->_defaultCandidate;
    v5->_defaultCandidate = v11;
  }

  sortMethods = [(TIKeyboardCandidateResultSet *)self sortMethods];

  if (sortMethods)
  {
    v14 = [MEMORY[0x1E695DEC8] allocWithZone:zone];
    sortMethods2 = [(TIKeyboardCandidateResultSet *)self sortMethods];
    v16 = [v14 initWithArray:sortMethods2 copyItems:1];
    [(TIKeyboardCandidateResultSet *)v5 setSortMethods:v16];
  }

  indexTitles = [(TIKeyboardCandidateResultSet *)self indexTitles];

  if (indexTitles)
  {
    v18 = [MEMORY[0x1E695DF20] allocWithZone:zone];
    indexTitles2 = [(TIKeyboardCandidateResultSet *)self indexTitles];
    v20 = [v18 initWithDictionary:indexTitles2 copyItems:1];
    [(TIKeyboardCandidateResultSet *)v5 setIndexTitles:v20];
  }

  showExtensionCandidates = [(TIKeyboardCandidateResultSet *)self showExtensionCandidates];

  if (showExtensionCandidates)
  {
    v22 = [MEMORY[0x1E695DF20] allocWithZone:zone];
    showExtensionCandidates2 = [(TIKeyboardCandidateResultSet *)self showExtensionCandidates];
    v24 = [v22 initWithDictionary:showExtensionCandidates2 copyItems:1];
    [(TIKeyboardCandidateResultSet *)v5 setShowExtensionCandidates:v24];
  }

  disambiguationCandidates = [(TIKeyboardCandidateResultSet *)self disambiguationCandidates];

  if (disambiguationCandidates)
  {
    v26 = [MEMORY[0x1E695DEC8] allocWithZone:zone];
    disambiguationCandidates2 = [(TIKeyboardCandidateResultSet *)self disambiguationCandidates];
    v28 = [v26 initWithArray:disambiguationCandidates2 copyItems:1];
    [(TIKeyboardCandidateResultSet *)v5 setDisambiguationCandidates:v28];
  }

  [(TIKeyboardCandidateResultSet *)v5 setSelectedDisambiguationCandidateIndex:[(TIKeyboardCandidateResultSet *)self selectedDisambiguationCandidateIndex]];
  sortMethodGroups = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
  if (sortMethodGroups)
  {
    v30 = sortMethodGroups;
    candidates3 = [(TIKeyboardCandidateResultSet *)self candidates];

    if (candidates3)
    {
      zoneCopy = zone;
      candidates4 = [(TIKeyboardCandidateResultSet *)self candidates];
      v33 = [candidates4 count];

      v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (v33 >= 1)
      {
        for (i = 0; i != v33; ++i)
        {
          candidates5 = [(TIKeyboardCandidateResultSet *)v5 candidates];
          v37 = [candidates5 objectAtIndex:i];
          candidates6 = [(TIKeyboardCandidateResultSet *)self candidates];
          v39 = [candidates6 objectAtIndex:i];
          [v34 setObject:v37 forKey:v39];
        }
      }

      v40 = MEMORY[0x1E695DF90];
      sortMethodGroups2 = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
      v70 = [v40 dictionaryWithCapacity:{objc_msgSend(sortMethodGroups2, "count")}];

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      obj = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
      v71 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
      if (v71)
      {
        v68 = *v87;
        selfCopy = self;
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
            sortMethodGroups3 = [(TIKeyboardCandidateResultSet *)self sortMethodGroups];
            v72 = v43;
            v45 = [sortMethodGroups3 objectForKey:v43];

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
                  title = [v49 title];
                  [(TIKeyboardCandidateGroup *)v50 setTitle:title];

                  v80 = 0u;
                  v81 = 0u;
                  v78 = 0u;
                  v79 = 0u;
                  candidates7 = [v49 candidates];
                  v53 = [candidates7 countByEnumeratingWithState:&v78 objects:v90 count:16];
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
                          objc_enumerationMutation(candidates7);
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

                      v54 = [candidates7 countByEnumeratingWithState:&v78 objects:v90 count:16];
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
            self = selfCopy;
          }

          while (v73 + 1 != v71);
          v71 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
        }

        while (v71);
      }

      v5 = v66;
      [(TIKeyboardCandidateResultSet *)v66 setSortMethodGroups:v70];

      zone = zoneCopy;
    }
  }

  v5->_generatedCandidateCount = self->_generatedCandidateCount;
  v5->_batchCandidateLocation = self->_batchCandidateLocation;
  v59 = [(NSString *)self->_committedText copy];
  committedText = v5->_committedText;
  v5->_committedText = v59;

  objc_storeStrong(&v5->_uncommittedText, self->_uncommittedText);
  v61 = [(TIKeyboardCandidate *)self->_acceptedCandidate copyWithZone:zone];
  acceptedCandidate = v5->_acceptedCandidate;
  v5->_acceptedCandidate = v61;

  v63 = [(NSArray *)self->_proactiveTriggers copyWithZone:zone];
  proactiveTriggers = v5->_proactiveTriggers;
  v5->_proactiveTriggers = v63;

  v5->_inputManagerHasPendingCandidatesUpdate = self->_inputManagerHasPendingCandidatesUpdate;
  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  candidates = [(TIKeyboardCandidateResultSet *)self candidates];
  v6 = [v3 initWithFormat:@"<%@: %p count=%lu>", v4, self, objc_msgSend(candidates, "count")];

  candidates2 = [(TIKeyboardCandidateResultSet *)self candidates];
  v8 = [candidates2 count];

  if (v8)
  {
    objc_msgSend(v6, "appendString:", @"(\n");
    candidates3 = [(TIKeyboardCandidateResultSet *)self candidates];
    v10 = [candidates3 componentsJoinedByString:{@", \n"}];
    [v6 appendString:v10];

    [v6 appendString:@"\n"]);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [TIKeyboardCandidateResultSetCoder encodeWithCandidateResultSet:self];
  [coderCopy encodeObject:v4 forKey:@"data"];
  committedText = self->_committedText;
  if (committedText)
  {
    [coderCopy encodeObject:committedText forKey:@"committedText"];
  }

  uncommittedText = self->_uncommittedText;
  if (uncommittedText)
  {
    [coderCopy encodeObject:uncommittedText forKey:@"uncommittedText"];
  }

  acceptedCandidate = self->_acceptedCandidate;
  v8 = coderCopy;
  if (acceptedCandidate)
  {
    [coderCopy encodeObject:acceptedCandidate forKey:@"acceptedCandidate"];
    v8 = coderCopy;
  }

  [v8 encodeBool:self->_inputManagerHasPendingCandidatesUpdate forKey:@"inputManagerHasPendingCandidatesUpdate"];
}

- (TIKeyboardCandidateResultSet)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = TIKeyboardCandidateResultSet;
  coderCopy = coder;
  v4 = [(TIKeyboardCandidateResultSet *)&v12 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"data", v12.receiver, v12.super_class}];
  v6 = [TIKeyboardCandidateResultSetCoder decodeWithData:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"committedText"];
  [(TIKeyboardCandidateResultSet *)v6 setCommittedText:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uncommittedText"];
  [(TIKeyboardCandidateResultSet *)v6 setUncommittedText:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acceptedCandidate"];
  [(TIKeyboardCandidateResultSet *)v6 setAcceptedCandidate:v9];

  v10 = [coderCopy decodeBoolForKey:@"inputManagerHasPendingCandidatesUpdate"];
  [(TIKeyboardCandidateResultSet *)v6 setInputManagerHasPendingCandidatesUpdate:v10];

  return v6;
}

+ (id)dummySet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__TIKeyboardCandidateResultSet_dummySet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)candidates initialSelectedIndex:(unint64_t)index defaultCandidate:(id)candidate sortMethods:(id)methods sortMethodGroups:(id)groups indexTitles:(id)titles showExtensionCandidates:(id)extensionCandidates disambiguationCandidates:(id)self0 selectedDisambiguationCandidateIndex:(unint64_t)self1 proactiveTriggers:(id)self2
{
  triggersCopy = triggers;
  disambiguationCandidatesCopy = disambiguationCandidates;
  extensionCandidatesCopy = extensionCandidates;
  titlesCopy = titles;
  groupsCopy = groups;
  methodsCopy = methods;
  candidateCopy = candidate;
  candidatesCopy = candidates;
  v26 = [[self alloc] initWithCandidates:candidatesCopy initialSelectedIndex:index defaultCandidate:candidateCopy sortMethods:methodsCopy sortMethodGroups:groupsCopy indexTitles:titlesCopy showExtensionCandidates:extensionCandidatesCopy disambiguationCandidates:disambiguationCandidatesCopy selectedDisambiguationCandidateIndex:candidateIndex proactiveTriggers:triggersCopy];

  return v26;
}

+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)candidates initialSelectedIndex:(unint64_t)index defaultCandidate:(id)candidate sortMethods:(id)methods sortMethodGroups:(id)groups indexTitles:(id)titles showExtensionCandidates:(id)extensionCandidates disambiguationCandidates:(id)self0 selectedDisambiguationCandidateIndex:(unint64_t)self1
{
  disambiguationCandidatesCopy = disambiguationCandidates;
  extensionCandidatesCopy = extensionCandidates;
  titlesCopy = titles;
  groupsCopy = groups;
  methodsCopy = methods;
  candidateCopy = candidate;
  candidatesCopy = candidates;
  v25 = [[self alloc] initWithCandidates:candidatesCopy initialSelectedIndex:index defaultCandidate:candidateCopy sortMethods:methodsCopy sortMethodGroups:groupsCopy indexTitles:titlesCopy showExtensionCandidates:extensionCandidatesCopy disambiguationCandidates:disambiguationCandidatesCopy selectedDisambiguationCandidateIndex:candidateIndex proactiveTriggers:0];

  return v25;
}

+ (TIKeyboardCandidateResultSet)setWithCandidates:(id)candidates proactiveTriggers:(id)triggers
{
  triggersCopy = triggers;
  candidatesCopy = candidates;
  v8 = [[self alloc] initWithCandidates:candidatesCopy initialSelectedIndex:0x7FFFFFFFFFFFFFFFLL defaultCandidate:0 sortMethods:0 sortMethodGroups:0 indexTitles:0 showExtensionCandidates:0 disambiguationCandidates:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL proactiveTriggers:triggersCopy];

  return v8;
}

@end