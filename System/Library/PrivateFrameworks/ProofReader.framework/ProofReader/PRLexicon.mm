@interface PRLexicon
+ (PRLexicon)lexiconWithLexicon:(const void *)lexicon;
+ (PRLexicon)lexiconWithLocalization:(id)localization unigramsPath:(id)path;
+ (PRLexicon)lexiconWithName:(id)name words:(id)words;
- (BOOL)getProbabilityForString:(id)string probability:(double *)probability;
- (BOOL)getProbabilityForTokenID:(unsigned int)d probability:(double *)probability;
- (PRLexicon)initWithLexicon:(const void *)lexicon;
- (PRLexicon)initWithLocalization:(id)localization unigramsPath:(id)path deltaPath:(id)deltaPath cachedOnly:(BOOL)only;
- (PRLexicon)initWithName:(id)name words:(id)words;
- (id)createCursor;
- (id)description;
- (id)stringForTokenID:(unsigned int)d;
- (unsigned)tokenIDForString:(id)string;
- (void)dealloc;
- (void)enumerateCompletionEntriesForPrefix:(id)prefix maxCompletions:(unint64_t)completions withBlock:(id)block;
- (void)enumerateCompletionsForPrefix:(id)prefix maxCompletions:(unint64_t)completions withBlock:(id)block;
- (void)enumerateCorrectionEntriesForWord:(id)word maxCorrections:(unint64_t)corrections withBlock:(id)block;
- (void)enumerateEntriesForString:(id)string usingBlock:(id)block;
@end

@implementation PRLexicon

- (PRLexicon)initWithLocalization:(id)localization unigramsPath:(id)path deltaPath:(id)deltaPath cachedOnly:(BOOL)only
{
  onlyCopy = only;
  v26[1] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  if (deltaPath)
  {
    v26[0] = deltaPath;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_alloc(MEMORY[0x1E695DF20]);
  if (onlyCopy)
  {
    v14 = [v13 initWithObjectsAndKeys:{*MEMORY[0x1E69ABFE0], MEMORY[0x1E695E118], *MEMORY[0x1E69ABFD8], v11, *MEMORY[0x1E69ABFE8], path, *MEMORY[0x1E69ABFC8], v12, *MEMORY[0x1E69ABFD0], 0}];
  }

  else
  {
    v14 = [v13 initWithObjectsAndKeys:{*MEMORY[0x1E69ABFD8], v11, *MEMORY[0x1E69ABFE8], path, *MEMORY[0x1E69ABFC8], v12, *MEMORY[0x1E69ABFD0], 0, v22, v23}];
  }

  v15 = v14;
  v16 = LXLexiconCreate();
  if (v16)
  {
    v17 = v16;
    v24.receiver = self;
    v24.super_class = PRLexicon;
    v18 = [(PRLexicon *)&v24 init];
    if (v18)
    {
      v18->_localization = [localization copy];
      v18->_unigramsPath = [path copy];
      v18->_deltaPath = [deltaPath copy];
      v18->_lexicon = v17;
    }

    else
    {
      CFRelease(v17);
    }

    self = v15;
  }

  else
  {
    if (path)
    {
      NSLog(@"Lexicon creation for %@:%@ failed: %@", localization, path, v25);
    }

    else
    {
      NSLog(@"Lexicon creation for %@ failed: %@", localization, v25, v21);
    }

    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (PRLexicon)initWithLexicon:(const void *)lexicon
{
  if (lexicon)
  {
    v7.receiver = self;
    v7.super_class = PRLexicon;
    v4 = [(PRLexicon *)&v7 init];
    v5 = v4;
    if (v4)
    {
      v4->_localization = @"External";
      v4->_lexicon = CFRetain(lexicon);
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (PRLexicon)initWithName:(id)name words:(id)words
{
  v27 = *MEMORY[0x1E69E9840];
  cf = 0;
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v8 = [v7 initWithObjectsAndKeys:{name, *MEMORY[0x1E69ABFF8], 0}];
  if (!name || !words)
  {
    goto LABEL_14;
  }

  Mutable = LXLexiconCreateMutable();
  if (!Mutable)
  {
    NSLog(@"Lexicon creation for %@ failed: %@", name, cf);
LABEL_14:

    v12 = 0;
    goto LABEL_17;
  }

  v10 = Mutable;
  v24.receiver = self;
  v24.super_class = PRLexicon;
  v11 = [(PRLexicon *)&v24 init];
  v12 = v11;
  if (v11)
  {
    v11->_localization = @"External";
    v11->_name = [name copy];
    v12->_lexicon = v10;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [words countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(words);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          LXLexiconAdd();
        }

        v14 = [words countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v14);
    }
  }

  else
  {
    CFRelease(v10);
  }

  self = v8;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (PRLexicon)lexiconWithLocalization:(id)localization unigramsPath:(id)path
{
  v4 = [[self alloc] initWithLocalization:localization unigramsPath:path];

  return v4;
}

+ (PRLexicon)lexiconWithLexicon:(const void *)lexicon
{
  v3 = [[self alloc] initWithLexicon:lexicon];

  return v3;
}

+ (PRLexicon)lexiconWithName:(id)name words:(id)words
{
  v4 = [[self alloc] initWithName:name words:words];

  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PRLexicon;
  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"%@(%@"), -[PRLexicon description](&v6, sel_description), self->_localization;
  v4 = v3;
  if (self->_unigramsPath)
  {
    [v3 appendFormat:@":%@", self->_unigramsPath];
  }

  if (self->_deltaPath)
  {
    [v4 appendFormat:@":%@", self->_deltaPath];
  }

  if (self->_name)
  {
    [v4 appendFormat:@":%@", self->_name];
  }

  [v4 appendFormat:@")(%p", self->_lexicon];
  [v4 appendString:@""]);
  return v4;
}

- (void)dealloc
{
  lexicon = self->_lexicon;
  if (lexicon)
  {
    CFRelease(lexicon);
  }

  v4.receiver = self;
  v4.super_class = PRLexicon;
  [(PRLexicon *)&v4 dealloc];
}

- (id)createCursor
{
  v3 = [PRLexiconCursor alloc];

  return [(PRLexiconCursor *)v3 initWithLexicon:self];
}

- (void)enumerateEntriesForString:(id)string usingBlock:(id)block
{
  createCursor = [(PRLexicon *)self createCursor];
  [createCursor advanceWithString:string];
  [createCursor enumerateEntriesUsingBlock:block];
}

- (unsigned)tokenIDForString:(id)string
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__PRLexicon_tokenIDForString___block_invoke;
  v5[3] = &unk_1E84057A0;
  v5[4] = string;
  v5[5] = &v6;
  [(PRLexicon *)self enumerateEntriesForString:string usingBlock:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __30__PRLexicon_tokenIDForString___block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) isEqualToString:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a5 = 1;
  }

  return result;
}

- (id)stringForTokenID:(unsigned int)d
{
  lexicon = self->_lexicon;
  v4 = LXLexiconCopyEntryForTokenID();
  if (v4)
  {
    v5 = v4;
    v6 = LXEntryCopyString();
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)getProbabilityForString:(id)string probability:(double *)probability
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0xC03E000000000000;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PRLexicon_getProbabilityForString_probability___block_invoke;
  v7[3] = &unk_1E8405890;
  v7[4] = string;
  v7[5] = &v8;
  v7[6] = &v12;
  [(PRLexicon *)self enumerateEntriesForString:string usingBlock:v7];
  v5 = *(v13 + 24);
  if (probability && *(v13 + 24))
  {
    *probability = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

uint64_t __49__PRLexicon_getProbabilityForString_probability___block_invoke(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  result = [*(a1 + 32) isEqualToString:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

- (BOOL)getProbabilityForTokenID:(unsigned int)d probability:(double *)probability
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0xC03E000000000000;
  v7 = [(PRLexicon *)self stringForTokenID:?];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PRLexicon_getProbabilityForTokenID_probability___block_invoke;
  v10[3] = &unk_1E84058B8;
  dCopy = d;
  v10[4] = &v12;
  v10[5] = &v16;
  [(PRLexicon *)self enumerateEntriesForString:v7 usingBlock:v10];
  v8 = *(v17 + 24);
  if (probability && *(v17 + 24))
  {
    *probability = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v8;
}

uint64_t __50__PRLexicon_getProbabilityForTokenID_probability___block_invoke(uint64_t result, double a2, uint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  if (*(result + 48) == a4)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *(*(*(result + 40) + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

- (void)enumerateCompletionsForPrefix:(id)prefix maxCompletions:(unint64_t)completions withBlock:(id)block
{
  createCursor = [(PRLexicon *)self createCursor];
  [createCursor advanceWithString:prefix];
  [createCursor enumerateCompletions:completions usingBlock:block];
}

- (void)enumerateCompletionEntriesForPrefix:(id)prefix maxCompletions:(unint64_t)completions withBlock:(id)block
{
  createCursor = [(PRLexicon *)self createCursor];
  [createCursor advanceWithString:prefix];
  [createCursor enumerateCompletionEntries:completions usingBlock:block];
}

- (void)enumerateCorrectionEntriesForWord:(id)word maxCorrections:(unint64_t)corrections withBlock:(id)block
{
  v6 = *(MEMORY[0x1E695E970] + 16);
  *&callBacks.version = *MEMORY[0x1E695E970];
  *&callBacks.release = v6;
  [(PRLexicon *)self lexicon];
  RootCursor = LXLexiconCreateRootCursor();
  v8 = [[PRLexiconCorrectionCursor alloc] initWithCursor:RootCursor replacementsCount:0 insertionsCount:0 deletionsCount:0 transpositionsCount:0 advancementLength:0];
  wordCopy = word;
  v38 = [word length];
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  callBacks.compare = heapCorrectionCursorCompare;
  v9 = CFBinaryHeapCreate(*MEMORY[0x1E695E480], 0, &callBacks, 0);
  CFBinaryHeapAddValue(v9, v8);
  CFRelease(RootCursor);

  heap = v9;
  v28 = v40;
  v29 = v39;
  v30 = v41;
  while ((v43[3] & 1) == 0 && CFBinaryHeapGetCount(heap) >= 1)
  {
    CFBinaryHeapGetCount(heap);
    v10 = CFBinaryHeapGetMinimum(heap);
    advancementLength = [v10 advancementLength];
    totalEdits = [v10 totalEdits];
    cursor = [v10 cursor];
    CFBinaryHeapRemoveMinimumValue(heap);
    if (advancementLength >= v38)
    {
      if (!totalEdits && advancementLength)
      {
        v36 = 0;
        v18 = 1;
        v34 = &stru_1F4E0A7A0;
        v35 = 0;
        v14 = v38;
        goto LABEL_23;
      }

      v17 = CFRetain(cursor);
      v16 = 0;
      v34 = &stru_1F4E0A7A0;
      v14 = v38;
      if (v17)
      {
LABEL_13:
        v40[8] = MEMORY[0x1E69E9820];
        v40[9] = 3221225472;
        v41[0] = __72__PRLexicon_enumerateCorrectionEntriesForWord_maxCorrections_withBlock___block_invoke;
        v41[1] = &unk_1E84058E0;
        v41[2] = v10;
        v41[3] = wordCopy;
        v41[4] = block;
        v41[5] = v50;
        v41[6] = &v42;
        v41[7] = corrections;
        LXCursorEnumerateEntries();
        CFRelease(v17);
      }
    }

    else
    {
      v14 = [wordCopy rangeOfComposedCharacterSequenceAtIndex:advancementLength];
      v16 = v15;
      v34 = [wordCopy substringWithRange:{v14, v15}];
      if (totalEdits || !advancementLength)
      {
        [wordCopy substringFromIndex:advancementLength];
        v17 = LXCursorCreateByAdvancing();
        if (v17)
        {
          goto LABEL_13;
        }
      }
    }

    v35 = v16;
    v18 = totalEdits == 0;
    v36 = totalEdits != 0;
    if (advancementLength < v38 && !totalEdits)
    {
      v19 = LXCursorCreateByAdvancing();
      if (v19)
      {
        v20 = -[PRLexiconCorrectionCursor initWithCursor:replacementsCount:insertionsCount:deletionsCount:transpositionsCount:advancementLength:]([PRLexiconCorrectionCursor alloc], "initWithCursor:replacementsCount:insertionsCount:deletionsCount:transpositionsCount:advancementLength:", v19, [v10 replacementsCount], objc_msgSend(v10, "replacementsCount"), objc_msgSend(v10, "deletionsCount"), objc_msgSend(v10, "transpositionsCount"), objc_msgSend(v10, "advancementLength") + v16);
        CFBinaryHeapAddValue(heap, v20);
        ++v47[3];

        CFRelease(v19);
      }

      if (![v10 replacementsCount])
      {
        v39[5] = MEMORY[0x1E69E9820];
        v39[6] = 3221225472;
        v40[0] = __72__PRLexicon_enumerateCorrectionEntriesForWord_maxCorrections_withBlock___block_invoke_2;
        v40[1] = &unk_1E8405908;
        v40[2] = wordCopy;
        v40[3] = v10;
        v40[6] = v16;
        v40[7] = heap;
        v40[4] = &v46;
        v40[5] = v14;
        LXCursorEnumerateChildren();
      }

      if (![v10 deletionsCount])
      {
        v21 = -[PRLexiconCorrectionCursor initWithCursor:replacementsCount:insertionsCount:deletionsCount:transpositionsCount:advancementLength:]([PRLexiconCorrectionCursor alloc], "initWithCursor:replacementsCount:insertionsCount:deletionsCount:transpositionsCount:advancementLength:", cursor, [v10 replacementsCount], objc_msgSend(v10, "replacementsCount"), objc_msgSend(v10, "deletionsCount") + 1, objc_msgSend(v10, "transpositionsCount"), objc_msgSend(v10, "advancementLength") + v16);
        CFBinaryHeapAddValue(heap, v21);
        ++v47[3];
      }

      v18 = 1;
    }

LABEL_23:
    if (v18 && advancementLength + 1 < v38 && ![v10 transpositionsCount] && v35 + v14 < v38)
    {
      v22 = [wordCopy rangeOfComposedCharacterSequenceAtIndex:?];
      v24 = v23;
      [objc_msgSend(wordCopy substringWithRange:{v22, v23), "stringByAppendingString:", v34}];
      v25 = LXCursorCreateByAdvancing();
      if (v25)
      {
        v26 = -[PRLexiconCorrectionCursor initWithCursor:replacementsCount:insertionsCount:deletionsCount:transpositionsCount:advancementLength:]([PRLexiconCorrectionCursor alloc], "initWithCursor:replacementsCount:insertionsCount:deletionsCount:transpositionsCount:advancementLength:", v25, [v10 replacementsCount], objc_msgSend(v10, "replacementsCount"), objc_msgSend(v10, "deletionsCount"), objc_msgSend(v10, "transpositionsCount") + 1, v24 + v35 + objc_msgSend(v10, "advancementLength"));
        CFBinaryHeapAddValue(heap, v26);
        ++v47[3];

        CFRelease(v25);
      }
    }

    v27 = advancementLength > v38 || v36;
    if ((v27 & 1) == 0 && ![v10 insertionsCount])
    {
      v39[0] = __72__PRLexicon_enumerateCorrectionEntriesForWord_maxCorrections_withBlock___block_invoke_3;
      v39[1] = &unk_1E8405930;
      v39[2] = v10;
      v39[3] = &v46;
      v39[4] = heap;
      LXCursorEnumerateChildren();
    }
  }

  CFRelease(heap);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(v50, 8);
}

void __72__PRLexicon_enumerateCorrectionEntriesForWord_maxCorrections_withBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  LXEntryGetTokenID();
  MetaFlags = LXEntryGetMetaFlags();
  LXEntryGetProbability();
  v7 = v6;
  [*(a1 + 32) errorType];
  if ((MetaFlags & 0xC2) == 0)
  {
    v8 = LXEntryCopyString();
    if (v8)
    {
      v9 = v8;
      if ([v8 length] >= 3 && (objc_msgSend(*(a1 + 40), "isEqualToString:", v9) & 1) == 0)
      {
        (*(*(a1 + 48) + 16))(v7);
        if (++*(*(*(a1 + 56) + 8) + 24) >= *(a1 + 72))
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
          *a3 = 1;
        }
      }

      CFRelease(v9);
    }
  }
}

void __72__PRLexicon_enumerateCorrectionEntriesForWord_maxCorrections_withBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = LXCursorCopyTraversedCharacters();
  if (([*(a1 + 32) hasPrefix:v4] & 1) == 0)
  {
    v5 = -[PRLexiconCorrectionCursor initWithCursor:replacementsCount:insertionsCount:deletionsCount:transpositionsCount:advancementLength:]([PRLexiconCorrectionCursor alloc], "initWithCursor:replacementsCount:insertionsCount:deletionsCount:transpositionsCount:advancementLength:", a2, [*(a1 + 40) replacementsCount] + 1, objc_msgSend(*(a1 + 40), "replacementsCount"), objc_msgSend(*(a1 + 40), "deletionsCount"), objc_msgSend(*(a1 + 40), "transpositionsCount"), *(a1 + 64) + objc_msgSend(*(a1 + 40), "advancementLength"));
    CFBinaryHeapAddValue(*(a1 + 72), v5);
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  CFRelease(v4);
}

void __72__PRLexicon_enumerateCorrectionEntriesForWord_maxCorrections_withBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = -[PRLexiconCorrectionCursor initWithCursor:replacementsCount:insertionsCount:deletionsCount:transpositionsCount:advancementLength:]([PRLexiconCorrectionCursor alloc], "initWithCursor:replacementsCount:insertionsCount:deletionsCount:transpositionsCount:advancementLength:", a2, [*(a1 + 32) replacementsCount] + 1, objc_msgSend(*(a1 + 32), "replacementsCount"), objc_msgSend(*(a1 + 32), "deletionsCount"), objc_msgSend(*(a1 + 32), "transpositionsCount"), objc_msgSend(*(a1 + 32), "advancementLength"));
  CFBinaryHeapAddValue(*(a1 + 48), v3);
  ++*(*(*(a1 + 40) + 8) + 24);
}

@end