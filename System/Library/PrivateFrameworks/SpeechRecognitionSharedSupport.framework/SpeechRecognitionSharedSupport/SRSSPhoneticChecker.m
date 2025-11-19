@interface SRSSPhoneticChecker
- (BOOL)_loadConfusionMatrixFromJsonFile:(id)a3;
- (BOOL)_loadConfusionMatrixWithModelPath:(id)a3 localization:(id)a4;
- (PhoneticLexiconEntry)copyLexiconEntriesForString:(id)a3;
- (SRSSPhoneticChecker)initWithLocaleIdentifier:(id)a3 modelPath:(id)a4 syncronously:(BOOL)a5;
- (id)_partitionEntriesWithCount:(unint64_t)a3 partitionCount:(unint64_t)a4;
- (id)guessesForString:(id)a3 maxResults:(unint64_t)a4;
- (id)guessesForString:(id)a3 maxResults:(unint64_t)a4 phoneticWeight:(double)a5 priorWeight:(double)a6;
- (id)guessesForString:(id)a3 maxResults:(unint64_t)a4 phoneticWeight:(double)a5 priorWeight:(double)a6 maxThreads:(unint64_t)a7;
- (id)phoneDescription:(PhoneSequence *)a3;
- (unsigned)_phoneForString:(id)a3;
- (void)_freeLexicon;
- (void)_freeLexiconEntry:(PhoneticLexiconEntry *)a3;
- (void)_loadLexiconWithModelPath:(id)a3 localization:(id)a4;
- (void)_waitOnLexiconLoad;
- (void)dealloc;
@end

@implementation SRSSPhoneticChecker

- (SRSSPhoneticChecker)initWithLocaleIdentifier:(id)a3 modelPath:(id)a4 syncronously:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v27.receiver = self;
  v27.super_class = SRSSPhoneticChecker;
  v11 = [(SRSSPhoneticChecker *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_localeIdentifier, a3);
    v13 = [MEMORY[0x277CBEB38] dictionary];
    phoneIds = v12->_phoneIds;
    v12->_phoneIds = v13;

    v15 = [MEMORY[0x277CBEB18] array];
    lexiconWords = v12->_lexiconWords;
    v12->_lexiconWords = v15;

    v17 = [MEMORY[0x277CBEB18] array];
    lexiconEntries = v12->_lexiconEntries;
    v12->_lexiconEntries = v17;

    v19 = [MEMORY[0x277CBEB18] array];
    regionsToFree = v12->_regionsToFree;
    v12->_regionsToFree = v19;

    if ([(SRSSPhoneticChecker *)v12 _loadConfusionMatrixWithModelPath:v10 localization:v9])
    {
      v12->_lexiconLoaded = 0;
      if (v5)
      {
        [(SRSSPhoneticChecker *)v12 _loadLexiconWithModelPath:v10 localization:v9];
      }

      else
      {
        v21 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__SRSSPhoneticChecker_initWithLocaleIdentifier_modelPath_syncronously___block_invoke;
        block[3] = &unk_279CF7378;
        v24 = v12;
        v25 = v10;
        v26 = v9;
        dispatch_async(v21, block);
      }
    }

    else
    {
      v12->_lexiconLoaded = 1;
    }
  }

  return v12;
}

void __71__SRSSPhoneticChecker_initWithLocaleIdentifier_modelPath_syncronously___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _loadLexiconWithModelPath:*(a1 + 40) localization:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (void)dealloc
{
  [(SRSSPhoneticChecker *)self _freeLexicon];
  v3.receiver = self;
  v3.super_class = SRSSPhoneticChecker;
  [(SRSSPhoneticChecker *)&v3 dealloc];
}

- (void)_freeLexicon
{
  v15 = *MEMORY[0x277D85DE8];
  lexiconEntries = self->_lexiconEntries;
  self->_lexiconEntries = 0;

  lexiconWords = self->_lexiconWords;
  self->_lexiconWords = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_regionsToFree;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        free([*(*(&v10 + 1) + 8 * v8++) pointerValue]);
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_freeLexiconEntry:(PhoneticLexiconEntry *)a3
{
  if (a3->var1)
  {
    v4 = 0;
    do
    {
      v5 = a3->var0[v4];
      free(v5->var1);
      free(v5);
      ++v4;
    }

    while (v4 < a3->var1);
  }

  free(a3->var0);

  free(a3);
}

- (id)guessesForString:(id)a3 maxResults:(unint64_t)a4
{
  v4 = [(SRSSPhoneticChecker *)self guessesForString:a3 maxResults:a4 phoneticWeight:10 priorWeight:1.0 maxThreads:0.5];

  return v4;
}

- (PhoneticLexiconEntry)copyLexiconEntriesForString:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v37 = [v36 componentsSeparatedByCharactersInSet:v4];

  v46 = [MEMORY[0x277CBEB18] array];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v37;
  v39 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v39)
  {
    v40 = *v65;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v65 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v64 + 1) + 8 * i);
        v6 = [(NSMutableArray *)self->_lexiconWords indexOfObject:v5];
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v41 = [(_EARUserProfileBuilder *)self->_builder pronunciationsForOrthography:v5];
          if ([v41 count])
          {
            v49 = malloc_type_malloc(0x14uLL, 0x10800401F59AC77uLL);
            v7 = [v41 count];
            v49[8] = v7;
            *v49 = malloc_type_malloc(8 * v7, 0x2004093837F09uLL);
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v43 = v41;
            v8 = [v43 countByEnumeratingWithState:&v60 objects:v70 count:16];
            if (v8)
            {
              LODWORD(v50) = 0;
              v44 = *v61;
              do
              {
                v47 = v8;
                v9 = 0;
                v50 = v50;
                do
                {
                  if (*v61 != v44)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v10 = *(*(&v60 + 1) + 8 * v9);
                  v11 = malloc_type_malloc(0x10uLL, 0x101004032DCA59EuLL);
                  *(*v49 + 8 * v50) = v11;
                  v12 = [MEMORY[0x277CBEB18] array];
                  v13 = [v10 componentsSeparatedByString:@"."];
                  v58 = 0u;
                  v59 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  v14 = v13;
                  v15 = [v14 countByEnumeratingWithState:&v56 objects:v69 count:16];
                  if (v15)
                  {
                    v16 = *v57;
                    do
                    {
                      for (j = 0; j != v15; ++j)
                      {
                        if (*v57 != v16)
                        {
                          objc_enumerationMutation(v14);
                        }

                        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SRSSPhoneticChecker _phoneForString:](self, "_phoneForString:", *(*(&v56 + 1) + 8 * j))}];
                        [v12 addObject:v18];
                      }

                      v15 = [v14 countByEnumeratingWithState:&v56 objects:v69 count:16];
                    }

                    while (v15);
                  }

                  v19 = [v12 count];
                  *v11 = v19;
                  v11[1] = malloc_type_malloc(v19, 0x100004077774924uLL);
                  if (v19)
                  {
                    for (k = 0; k != v19; ++k)
                    {
                      v21 = [v12 objectAtIndexedSubscript:k];
                      *(v11[1] + k) = [v21 intValue];
                    }
                  }

                  v22 = [MEMORY[0x277CCAE60] valueWithPointer:v49];
                  [v46 addObject:v22];

                  ++v50;
                  ++v9;
                }

                while (v9 != v47);
                v8 = [v43 countByEnumeratingWithState:&v60 objects:v70 count:16];
              }

              while (v8);
            }
          }

          else
          {
            v43 = v41;
          }
        }

        else
        {
          v43 = [(NSMutableArray *)self->_lexiconEntries objectAtIndex:v6];
          [v46 addObject:?];
        }
      }

      v39 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v39);
  }

  v51 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v45 = v46;
  v23 = [v45 countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v23)
  {
    v48 = 0;
    v24 = *v53;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v53 != v24)
        {
          objc_enumerationMutation(v45);
        }

        v26 = [*(*(&v52 + 1) + 8 * m) pointerValue];
        v27 = *(v26 + 8);
        v28 = v48 * v27;
        v29 = 8 / v48;
        if (v48 * v27 >= 9)
        {
          v28 = 8 / v48 * v48;
        }

        else
        {
          v29 = *(v26 + 8);
        }

        if (v48)
        {
          v30 = v29;
        }

        else
        {
          v30 = *(v26 + 8);
        }

        if (v48)
        {
          v27 = v28;
        }

        if (v27 >= 8)
        {
          v31 = 8;
        }

        else
        {
          v31 = v27;
        }

        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
        [v51 addObject:v32];
        v48 = v31;
      }

      v23 = [v45 countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v23);
  }

  else
  {
    v48 = 0;
  }

  v33 = malloc_type_malloc(0x14uLL, 0x10800401F59AC77uLL);
  v33->var1 = v48;
  v33->var0 = malloc_type_malloc(8 * v48, 0x80040B8603338uLL);

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (id)_partitionEntriesWithCount:(unint64_t)a3 partitionCount:(unint64_t)a4
{
  v6 = [MEMORY[0x277CBEB18] array];
  if (a4)
  {
    v7 = 0;
    v8 = 0;
    v9 = a3 / a4;
    v10 = a3 % a4 + a3 / a4;
    do
    {
      if (v7)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      v12 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v8, v11}];
      [v6 addObject:v12];
      v8 += v11;

      ++v7;
    }

    while (a4 != v7);
  }

  return v6;
}

- (id)phoneDescription:(PhoneSequence *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3->var0)
  {
    v5 = 0;
    v6 = &stru_287C18208;
    do
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      obj = [(NSDictionary *)self->_phoneIds allKeys];
      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = *v18;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v17 + 1) + 8 * i);
            v11 = [(NSDictionary *)self->_phoneIds objectForKeyedSubscript:v10];
            if ([v11 intValue] == a3->var1[v5])
            {
              v12 = [(__CFString *)v6 stringByAppendingString:v10];

              v13 = [v12 stringByAppendingString:@"."];

              v6 = v13;
            }
          }

          v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v7);
      }

      ++v5;
    }

    while (v5 < a3->var0);
  }

  else
  {
    v6 = &stru_287C18208;
  }

  NSLog(&stru_287C18228.isa, v6);
  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_waitOnLexiconLoad
{
  while (!self->_lexiconLoaded)
  {
    usleep(0x3E8u);
  }
}

- (id)guessesForString:(id)a3 maxResults:(unint64_t)a4 phoneticWeight:(double)a5 priorWeight:(double)a6
{
  v6 = [(SRSSPhoneticChecker *)self guessesForString:a3 maxResults:a4 phoneticWeight:8 priorWeight:a5 maxThreads:a6];

  return v6;
}

- (id)guessesForString:(id)a3 maxResults:(unint64_t)a4 phoneticWeight:(double)a5 priorWeight:(double)a6 maxThreads:(unint64_t)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v32 = a3;
  [(SRSSPhoneticChecker *)self _waitOnLexiconLoad];
  if ([(NSMutableArray *)self->_lexiconEntries count]>= 0x3E8)
  {
    v29 = [(SRSSPhoneticChecker *)self copyLexiconEntriesForString:v32];
    group = dispatch_group_create();
    v31 = [MEMORY[0x277CBEB18] array];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = [(SRSSPhoneticChecker *)self _partitionEntriesWithCount:[(NSMutableArray *)self->_lexiconEntries count] partitionCount:a7];
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
    v28 = self;
    if (v14)
    {
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = a4;
          v18 = *(*(&v40 + 1) + 8 * i);
          v19 = [MEMORY[0x277CBEB18] array];
          v20 = v13;
          [v31 addObject:v19];
          v21 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __89__SRSSPhoneticChecker_guessesForString_maxResults_phoneticWeight_priorWeight_maxThreads___block_invoke;
          block[3] = &unk_279CF73E8;
          block[4] = v18;
          block[5] = v28;
          v37 = a5;
          v38 = a6;
          v36 = v29;
          v34 = v19;
          a4 = v17;
          v39 = v17;
          v35 = v32;
          v22 = v19;
          dispatch_group_async(group, v21, block);

          v13 = v20;
        }

        v14 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v14);
    }

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    [(SRSSPhoneticChecker *)v28 _freeLexiconEntry:v29];
    v23 = [v31 valueForKeyPath:@"@unionOfArrays.self"];
    v12 = [v23 sortedArrayUsingComparator:&__block_literal_global_55];

    if ([v12 count] > a4)
    {
      v24 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, a4}];
      v25 = [v12 objectsAtIndexes:v24];

      v12 = v25;
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v12;
}

void __89__SRSSPhoneticChecker_guessesForString_maxResults_phoneticWeight_priorWeight_maxThreads___block_invoke(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__SRSSPhoneticChecker_guessesForString_maxResults_phoneticWeight_priorWeight_maxThreads___block_invoke_2;
  v7[3] = &unk_279CF73C0;
  v2 = *(a1 + 64);
  v10 = v14;
  v11 = v2;
  v12 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v5 = v4;
  v6 = *(a1 + 88);
  v8 = v5;
  v13 = v6;
  v9 = *(a1 + 56);
  [v3 enumerateIndexesUsingBlock:v7];

  _Block_object_dispose(v14, 8);
}

void __89__SRSSPhoneticChecker_guessesForString_maxResults_phoneticWeight_priorWeight_maxThreads___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v53 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:a2];
  v52 = [*(*(v3 + 32) + 24) objectAtIndexedSubscript:a2];
  v4 = [v52 pointerValue];
  v5 = *(v3 + 64);
  if (v5)
  {
    v6 = v4;
    v7 = 0;
    v8 = 0.0;
    v9 = 1.79769313e308;
    v10 = 0.0;
    v54 = v4;
    v55 = v3;
    do
    {
      if (v7 >= *(v5 + 8))
      {
        break;
      }

      if (*(v6 + 8))
      {
        v11 = 0;
        v56 = v7;
        v57 = *(*v5 + 8 * v7);
        do
        {
          v59 = v11;
          v12 = *(*v6 + 8 * v11);
          v13 = *(*(v3 + 32) + 48);
          v58 = *(*(v3 + 32) + 40);
          v14 = *v57;
          v15 = *v12;
          if (v14 <= v15)
          {
            v16 = *v12;
          }

          else
          {
            v16 = *v57;
          }

          if (v14 <= v15)
          {
            v17 = v12;
          }

          else
          {
            v17 = v57;
          }

          if (v14 >= v15)
          {
            v18 = *v12;
          }

          else
          {
            v18 = *v57;
          }

          if (v14 <= v15)
          {
            v12 = v57;
          }

          v19 = *(v12 + 1);
          v20 = *(v17 + 1);
          v21 = (v18 + 1);
          v22 = malloc_type_malloc((8 * (v21 + v21 * v16)), 0x100004000313F17uLL);
          bzero(v22, (8 * (v21 + v21 * v16)));
          if (v18)
          {
            if (v15 >= v14)
            {
              v23 = v14;
            }

            else
            {
              v23 = v15;
            }

            v24 = v19;
            v25 = v22;
            do
            {
              v26 = *v24++;
              v27 = *v25 + *(v13 + 8 * v58 * v26);
              v25 += v16;
              *v25 = v27;
              --v23;
            }

            while (v23);
          }

          if (v16)
          {
            v28 = v22 + 1;
            v29 = *v22;
            if (v15 <= v14)
            {
              v30 = v14;
            }

            else
            {
              v30 = v15;
            }

            v31 = v20;
            do
            {
              v32 = *v31++;
              v29 = v29 + *(v13 + 8 * v32);
              *v28++ = v29;
              --v30;
            }

            while (v30);
          }

          if (v18)
          {
            v33 = v22 + 1;
            v34 = 1;
            do
            {
              v35 = v22[v34 * v16];
              v36 = v20;
              v37 = v33;
              v38 = v16;
              do
              {
                v39 = *v36++;
                v40 = v58 * v19[v34 - 1];
                v41 = *(v37 - 1);
                v42 = *(v13 + 8 * (v40 + v39));
                v35 = *(v13 + 8 * v39) + v35;
                if (*(v13 + 8 * v40) + *v37 < v35)
                {
                  v35 = *(v13 + 8 * v40) + *v37;
                }

                if (v42 + v41 < v35)
                {
                  v35 = v42 + v41;
                }

                v37[v16] = v35;
                ++v37;
                --v38;
              }

              while (v38);
              ++v34;
              v33 += v16;
            }

            while (v34 != v21);
          }

          v43 = v22[(v21 * v16)];
          free(v22);
          if (v43 >= 100.0)
          {
            v6 = v54;
            v3 = v55;
          }

          else
          {
            if (v43 < v9)
            {
              v9 = v43;
            }

            v6 = v54;
            v3 = v55;
            v10 = *(v54 + 12);
            v44 = v43 * *(v55 + 72);
            v45 = log(v10);
            v46 = *(v55 + 80);
            v47 = -(v44 + -v45 * v46);
            LOBYTE(v46) = *v57;
            v48 = exp(v47 / *&v46);
            if (v48 > v8)
            {
              v8 = v48;
            }
          }

          v7 = v56;
          v11 = v59 + 1;
        }

        while (v59 + 1 < *(v6 + 8));
        v5 = *(v3 + 64);
      }

      ++v7;
    }

    while (v5);
    if (v9 < 100.0 && (v8 > *(*(*(v3 + 56) + 8) + 24) || [*(v3 + 40) count] < *(v3 + 88)) && objc_msgSend(v53, "compare:", *(v3 + 48)))
    {
      v49 = objc_opt_new();
      [v49 setScore:v8];
      [v49 setText:v53];
      [v49 setPrior:v10];
      [v49 setPhoneticSimilarity:v9];
      [*(v3 + 40) addObject:v49];
      if ([*(v3 + 40) count] > *(v3 + 88))
      {
        [*(v3 + 40) sortUsingComparator:&__block_literal_global];
        [*(v3 + 40) removeLastObject];
      }

      v50 = [*(v3 + 40) lastObject];
      [v50 score];
      *(*(*(v3 + 56) + 8) + 24) = v51;
    }
  }
}

uint64_t __89__SRSSPhoneticChecker_guessesForString_maxResults_phoneticWeight_priorWeight_maxThreads___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 score];
  v7 = v6;
  [v5 score];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    [v4 score];
    v11 = v10;
    [v5 score];
    if (v11 < v12)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

uint64_t __89__SRSSPhoneticChecker_guessesForString_maxResults_phoneticWeight_priorWeight_maxThreads___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 score];
  v7 = v6;
  [v5 score];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    [v4 score];
    v11 = v10;
    [v5 score];
    if (v11 < v12)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

- (unsigned)_phoneForString:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_phoneIds objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
  }

  else
  {
    phoneIds = self->_phoneIds;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSDictionary count](phoneIds, "count")}];
    [(NSDictionary *)phoneIds setValue:v9 forKey:v4];

    v10 = [(NSDictionary *)self->_phoneIds objectForKey:v4];
    v7 = [v10 intValue];
    v6 = v10;
  }

  return v7;
}

- (BOOL)_loadConfusionMatrixWithModelPath:(id)a3 localization:(id)a4
{
  v41[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v30 = a4;
  v6 = MEMORY[0x277CBEBC0];
  v32 = v5;
  v41[0] = v5;
  v41[1] = @"mini.json";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v33 = [v6 fileURLWithPathComponents:v7];

  v40 = 0;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v33 options:0 error:&v40];
  v31 = v40;
  v27 = v8;
  if (v31)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v8 length];
    if (v9)
    {
      v39 = 0;
      v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v39];
      v31 = v39;
      v9 = v10;
    }

    else
    {
      v31 = 0;
    }
  }

  v29 = v9;
  v11 = [v9 objectForKeyedSubscript:{@"phonetic-match-building", v27}];
  v36 = [v11 objectForKeyedSubscript:@"phonomap-file"];

  if ([v36 length])
  {
    v12 = [v32 stringByAppendingPathComponent:v36];
    goto LABEL_8;
  }

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v35 = [v19 URLForResource:@"phonomaps" withExtension:@"plist"];

  if (v35)
  {
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
    v21 = [v20 objectForKey:v30];
    if (![v21 length])
    {
      v22 = [v30 componentsSeparatedByString:@"_"];
      v23 = [v22 firstObject];

      if ([v23 length])
      {
        v24 = [v20 objectForKey:v23];

        v21 = v24;
      }
    }

    if ([v21 length])
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 pathForResource:v21 ofType:@"fst"];

      v12 = v26;
LABEL_8:
      v34 = v12;
      v13 = v12;
      v14 = [v34 UTF8String];
      v15 = strlen(v14);
      if (v15 < 0x7FFFFFFFFFFFFFF8)
      {
        v16 = v15;
        if (v15 < 0x17)
        {
          v38 = v15;
          if (v15)
          {
            memmove(&__dst, v14, v15);
          }

          *(&__dst + v16) = 0;
          operator new();
        }

        operator new();
      }

      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_loadConfusionMatrixFromJsonFile:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SRSSPhoneticChecker *)self _phoneForString:@"_"];
  v34 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:&v34];
  v6 = v34;
  if (v6)
  {
    v7 = v6;
LABEL_3:
    v8 = 0;
    v9 = 0;
    goto LABEL_20;
  }

  if (![v5 length])
  {
    v7 = 0;
    goto LABEL_3;
  }

  v33 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v33];
  v7 = v33;
  v22 = [v8 objectForKey:@"recs"];
  v23 = [v8 objectForKey:@"refs"];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v22;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [(SRSSPhoneticChecker *)self _phoneForString:*(*(&v29 + 1) + 8 * i)];
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v23;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v15)
  {
    v16 = *v26;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [(SRSSPhoneticChecker *)self _phoneForString:*(*(&v25 + 1) + 8 * j)];
      }

      v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v15);
  }

  v18 = [(NSDictionary *)self->_phoneIds count];
  self->_phoneCount = v18;
  self->_confusionMatrix = malloc_type_malloc(8 * v18 * v18, 0x100004000313F17uLL);
  v19 = [v8 objectForKey:@"confusionMatrix"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __56__SRSSPhoneticChecker__loadConfusionMatrixFromJsonFile___block_invoke;
  v24[3] = &unk_279CF7410;
  v24[4] = self;
  [v19 enumerateKeysAndObjectsUsingBlock:v24];

  v9 = 1;
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

void __56__SRSSPhoneticChecker__loadConfusionMatrixFromJsonFile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a3;
  v5 = [a2 componentsSeparatedByString:@" "];
  [v16 doubleValue];
  v7 = v6;
  if ([v5 count] <= 1)
  {
    NSLog(&cfstr_UnexpectedEntr.isa);
  }

  v8 = *(a1 + 32);
  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = [v8 _phoneForString:v9];

  v11 = *(a1 + 32);
  v12 = [v5 objectAtIndexedSubscript:1];
  v13 = [v11 _phoneForString:v12];

  v14 = *(a1 + 32);
  v15 = *(v14 + 40);
  if (v15 <= v10 || v15 <= v13)
  {
    NSLog(&cfstr_UnexpectedPhon.isa);
  }

  else
  {
    *(*(v14 + 48) + 8 * v15 * v10 + 8 * v13) = -v7;
  }
}

- (void)_loadLexiconWithModelPath:(id)a3 localization:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v8 = [objc_alloc(MEMORY[0x277CD89C8]) initWithLocalization:v7];
  v9 = [v6 stringByAppendingPathComponent:@"mini.json"];
  v10 = [v6 stringByAppendingPathComponent:@"ncs"];
  v11 = [v10 stringByAppendingPathComponent:@"en_US_napg.json"];
  v12 = [v10 stringByAppendingPathComponent:@"vocdelta.voc"];
  v13 = [v10 stringByAppendingPathComponent:@"pg.voc"];
  v14 = [v10 stringByAppendingPathComponent:@"mrec.psh"];
  v15 = [objc_alloc(MEMORY[0x277D07298]) initWithConfiguration:v9 language:@"en_US" overrides:0 sdapiOverrides:v11 emptyVoc:v12 pgVoc:v13 paramsetHolder:v14];
  builder = self->_builder;
  self->_builder = v15;

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__SRSSPhoneticChecker__loadLexiconWithModelPath_localization___block_invoke;
  v17[3] = &unk_279CF7438;
  v17[4] = self;
  v17[5] = v18;
  v17[6] = v22;
  v17[7] = v26;
  v17[8] = v30;
  v17[9] = v20;
  v17[10] = v23;
  v17[11] = v27;
  v17[12] = v21;
  v17[13] = v25;
  v17[14] = v29;
  v17[15] = v19;
  v17[16] = v24;
  v17[17] = v28;
  [v8 enumerateCompletionsForPrefix:&stru_287C18208 usingBlock:v17];
  self->_lexiconLoaded = 1;
  _Block_object_dispose(v18, 8);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);
}

void __62__SRSSPhoneticChecker__loadLexiconWithModelPath_localization___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v47 = a2;
  context = objc_autoreleasePoolPush();
  if (*(*(*(a1 + 40) + 8) + 24) >= 0x9C41uLL)
  {
    *a3 = 1;
  }

  v5 = *(*(a1 + 32) + 64);
  v6 = [v47 string];
  v48 = [v5 pronunciationsForOrthography:v6];

  ++*(*(*(a1 + 40) + 8) + 24);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 24);
  v9 = v8 + 1;
  if ((v8 + 1) > *(*(*(a1 + 56) + 8) + 24))
  {
    *(v7 + 24) = 0;
    *(*(*(a1 + 56) + 8) + 24) = 5000;
    *(*(*(a1 + 64) + 8) + 24) = malloc_type_malloc(0x186A0uLL, 0x10800401F59AC77uLL);
    v10 = *(*(a1 + 32) + 56);
    v11 = [MEMORY[0x277CCAE60] valueWithPointer:*(*(*(a1 + 64) + 8) + 24)];
    [v10 addObject:v11];

    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 24);
    v9 = v8 + 1;
  }

  v12 = *(*(*(a1 + 64) + 8) + 24);
  *(v7 + 24) = v9;
  v51 = v12 + 20 * v8;
  *(v51 + 8) = [v48 count];
  v13 = *(*(*(a1 + 72) + 8) + 24);
  if (([v48 count] + v13) > *(*(*(a1 + 80) + 8) + 24))
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *(*(*(a1 + 80) + 8) + 24) = 5000;
    *(*(*(a1 + 88) + 8) + 24) = malloc_type_malloc(0x9C40uLL, 0x2004093837F09uLL);
    v14 = *(*(a1 + 32) + 56);
    v15 = [MEMORY[0x277CCAE60] valueWithPointer:*(*(*(a1 + 88) + 8) + 24)];
    [v14 addObject:v15];
  }

  *v51 = *(*(*(a1 + 88) + 8) + 24) + 8 * *(*(*(a1 + 72) + 8) + 24);
  *(*(*(a1 + 72) + 8) + 24) += [v48 count];
  [v47 probability];
  *(v51 + 12) = exp(v16);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v48;
  v17 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v17)
  {
    LODWORD(v18) = 0;
    v50 = *v58;
    do
    {
      v52 = v17;
      v19 = 0;
      v18 = v18;
      do
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v57 + 1) + 8 * v19);
        v21 = [MEMORY[0x277CBEB18] array];
        v22 = [v20 componentsSeparatedByString:@"."];
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (v24)
        {
          v25 = *v54;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v54 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(*(a1 + 32), "_phoneForString:", *(*(&v53 + 1) + 8 * i))}];
              [v21 addObject:v27];
            }

            v24 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
          }

          while (v24);
        }

        v28 = *(*(a1 + 96) + 8);
        v29 = *(v28 + 24);
        v30 = v29 + 1;
        if ((v29 + 1) > *(*(*(a1 + 104) + 8) + 24))
        {
          *(v28 + 24) = 0;
          *(*(*(a1 + 104) + 8) + 24) = 5000;
          *(*(*(a1 + 112) + 8) + 24) = malloc_type_malloc(0x13880uLL, 0x101004032DCA59EuLL);
          v31 = *(*(a1 + 32) + 56);
          v32 = [MEMORY[0x277CCAE60] valueWithPointer:*(*(*(a1 + 112) + 8) + 24)];
          [v31 addObject:v32];

          v28 = *(*(a1 + 96) + 8);
          v29 = *(v28 + 24);
          v30 = v29 + 1;
        }

        v33 = *(*(*(a1 + 112) + 8) + 24);
        *(v28 + 24) = v30;
        v34 = [v21 count];
        v35 = v33 + 16 * v29;
        *v35 = v34;
        v36 = *(*(a1 + 120) + 8);
        v37 = *(v36 + 24);
        if ((v37 + v34) > *(*(*(a1 + 128) + 8) + 24))
        {
          *(v36 + 24) = 0;
          *(*(*(a1 + 128) + 8) + 24) = 5000;
          *(*(*(a1 + 136) + 8) + 24) = malloc_type_malloc(0x1388uLL, 0x100004077774924uLL);
          v38 = *(*(a1 + 32) + 56);
          v39 = [MEMORY[0x277CCAE60] valueWithPointer:*(*(*(a1 + 136) + 8) + 24)];
          [v38 addObject:v39];

          v37 = *(*(*(a1 + 120) + 8) + 24);
        }

        *(v35 + 8) = *(*(*(a1 + 136) + 8) + 24) + v37;
        *(*(*(a1 + 120) + 8) + 24) += v34;
        if (v34)
        {
          for (j = 0; j != v34; ++j)
          {
            v41 = [v21 objectAtIndexedSubscript:j];
            *(*(v35 + 8) + j) = [v41 intValue];
          }
        }

        *(*v51 + 8 * v18) = v35;

        ++v18;
        ++v19;
      }

      while (v19 != v52);
      v17 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v17);
  }

  v42 = [MEMORY[0x277CCAE60] valueWithPointer:v51];
  v43 = *(*(a1 + 32) + 16);
  v44 = [v47 string];
  [v43 addObject:v44];

  [*(*(a1 + 32) + 24) addObject:v42];
  objc_autoreleasePoolPop(context);

  v45 = *MEMORY[0x277D85DE8];
}

@end