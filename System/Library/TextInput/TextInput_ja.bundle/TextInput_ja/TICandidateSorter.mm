@interface TICandidateSorter
- (BOOL)getInfoForCharacter:(id)a3 strokeCount:(unint64_t *)a4 radicals:(id *)a5 yomis:(id *)a6;
- (BOOL)hasCandidatesFromCandidates:(id)a3 inputString:(id)a4 sortedBy:(unint64_t)a5 omittingEmoji:(BOOL)a6;
- (BOOL)hasCandidatesSortedByEmojiCategoryFromCandidates:(id)a3;
- (BOOL)hasCandidatesSortedByFacemarkCategoryFromCandidates:(id)a3;
- (BOOL)hasCandidatesSortedByRadicalFromCandidates:(id)a3;
- (BOOL)hasCandidatesSortedByYomiFromCandidates:(id)a3 inputString:(id)a4;
- (TICandidateSorter)init;
- (id)candidatesSortedByDefaultFromCandidates:(id)a3 omittingEmoji:(BOOL)a4;
- (id)candidatesSortedByEmojiFromCandidates:(id)a3;
- (id)candidatesSortedByRadicalFromCandidates:(id)a3;
- (id)candidatesSortedByYomiFromCandidates:(id)a3 inputString:(id)a4;
- (void)dealloc;
@end

@implementation TICandidateSorter

- (TICandidateSorter)init
{
  v30 = *MEMORY[0x29EDCA608];
  v28.receiver = self;
  v28.super_class = TICandidateSorter;
  v2 = [(TICandidateSorter *)&v28 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"CharacterInfo.dictionary" ofType:0 inDirectory:0];

    v5 = *MEMORY[0x29EDB8ED8];
    [MEMORY[0x29EDB8E70] fileURLWithPath:v4 isDirectory:1];
    v6 = IDXCreateIndexObject();
    IDXSetRequestFields();
    [(TICandidateSorter *)v2 setIndex:v6];

    v7 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v8 = [v7 pathForResource:@"RadicalInfo-jp.plist" ofType:0 inDirectory:0];

    v23 = v8;
    v9 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithContentsOfFile:v8];
    v10 = [v9 count];
    Mutable = CFDictionaryCreateMutable(v5, v10, MEMORY[0x29EDB9010], 0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v12 objectForKey:v17];
          v19 = [v18 objectAtIndex:0];
          v20 = [v19 unsignedIntegerValue];

          CFDictionarySetValue(Mutable, v17, v20);
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }

    [(TICandidateSorter *)v2 setRadicalToSortPosition:Mutable];
  }

  v21 = *MEMORY[0x29EDCA608];
  return v2;
}

- (void)dealloc
{
  index = self->_index;
  if (index)
  {
    CFRelease(index);
  }

  radicalToSortPosition = self->_radicalToSortPosition;
  if (radicalToSortPosition)
  {
    CFRelease(radicalToSortPosition);
  }

  v5.receiver = self;
  v5.super_class = TICandidateSorter;
  [(TICandidateSorter *)&v5 dealloc];
}

- (BOOL)getInfoForCharacter:(id)a3 strokeCount:(unint64_t *)a4 radicals:(id *)a5 yomis:(id *)a6
{
  v19 = *MEMORY[0x29EDCA608];
  v10 = a3;
  [(TICandidateSorter *)self index];
  v11 = *MEMORY[0x29EDC0FF8];
  IDXSetSearchString();

  matched = IDXGetMatchDataPtr();
  if (matched >= 1)
  {
    IDXGetFieldDataPtrs();
    if (a4)
    {
      *a4 = MEMORY[0];
    }

    if (a5)
    {
      *a5 = [MEMORY[0x29EDBA0F8] stringWithCharacters:0 length:v17 >> 1];
    }

    if (a6)
    {
      v13 = [MEMORY[0x29EDBA0F8] stringWithCharacters:0 length:v18 >> 1];
      v14 = [v13 stringByReplacingOccurrencesOfString:@"/" withString:{@", "}];
      *a6 = [v14 componentsSeparatedByString:{@", "}];
    }
  }

  result = matched > 0;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

- (BOOL)hasCandidatesSortedByRadicalFromCandidates:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v19 + 1) + 8 * i) label];
        v10 = [v9 _firstGrapheme];
        if ([v10 length])
        {
          v17 = 0;
          v18 = 0;
          v11 = [(TICandidateSorter *)self getInfoForCharacter:v10 strokeCount:&v18 radicals:&v17 yomis:0];
          v12 = v17;
          v13 = v12;
          if (v11 && [v12 length])
          {

            v14 = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

- (id)candidatesSortedByDefaultFromCandidates:(id)a3 omittingEmoji:(BOOL)a4
{
  v16[1] = *MEMORY[0x29EDCA608];
  v6 = a3;
  if ([(TICandidateSorter *)self liveConversionEnabled])
  {
    [v6 _sortedArrayByFrequency:2 extensionCandidateIndex:6 maxEmojisPerCandidate:1 ignoreTransliterateCandidate:1];
  }

  else
  {
    [v6 _sortedArrayByFrequency];
  }
  v7 = ;

  if (a4)
  {
    v8 = [v7 _arrayByFilteringEmojiCandidates:0];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = objc_alloc(MEMORY[0x29EDC7078]);
  v11 = [MEMORY[0x29EDB8E30] orderedSetWithArray:v9];
  v12 = [v10 initWithTitle:0 candidates:v11];
  v16[0] = v12;
  v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:v16 count:1];

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (id)candidatesSortedByRadicalFromCandidates:(id)a3
{
  v68 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v42 = [MEMORY[0x29EDB8DE8] array];
  context = objc_autoreleasePoolPush();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], 0);
  v5 = [MEMORY[0x29EDB8E00] dictionary];
  cf = [MEMORY[0x29EDB8E00] dictionary];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v62;
    v37 = v56;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v62 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v61 + 1) + 8 * i);
        if (([v10 isTransliterationCandidate] & 1) == 0)
        {
          v11 = [v10 label];
          v12 = [v11 _firstGrapheme];
          if ([v12 length])
          {
            [v5 setObject:v12 forKey:v11];
            v59 = 0;
            value = 0;
            v13 = [(TICandidateSorter *)self getInfoForCharacter:v12 strokeCount:&value radicals:&v59 yomis:0];
            v14 = v59;
            if (v13)
            {
              CFDictionarySetValue(Mutable, v12, value);
              v15 = [v14 length];
              v55[0] = MEMORY[0x29EDCA5F8];
              v55[1] = 3221225472;
              v56[0] = __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke;
              v56[1] = &unk_29F3793C0;
              v57 = cf;
              v58 = v10;
              [v14 enumerateSubstringsInRange:0 options:v15 usingBlock:{2, v55}];
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v7);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v16 = cf;
  v17 = [v16 countByEnumeratingWithState:&v51 objects:v66 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v52;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v52 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v16 objectForKey:{*(*(&v51 + 1) + 8 * j), context}];
        v48[0] = MEMORY[0x29EDCA5F8];
        v48[1] = 3221225472;
        v48[2] = __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke_2;
        v48[3] = &unk_29F3793E8;
        v49 = v5;
        v50 = Mutable;
        [v21 sortUsingComparator:v48];
      }

      v18 = [v16 countByEnumeratingWithState:&v51 objects:v66 count:16];
    }

    while (v18);
  }

  cfa = Mutable;

  v22 = [(TICandidateSorter *)self radicalToSortPosition];
  v23 = [v16 allKeys];
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 3221225472;
  v47[2] = __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke_3;
  v47[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v47[4] = v22;
  v24 = [v23 sortedArrayUsingComparator:v47];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v43 objects:v65 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v43 + 1) + 8 * k);
        v31 = objc_alloc(MEMORY[0x29EDC7078]);
        v32 = [v16 objectForKey:v30];
        v33 = [v31 initWithTitle:v30 candidates:v32];

        [v42 addObject:v33];
      }

      v27 = [v25 countByEnumeratingWithState:&v43 objects:v65 count:16];
    }

    while (v27);
  }

  CFRelease(cfa);
  objc_autoreleasePoolPop(context);

  v34 = *MEMORY[0x29EDCA608];

  return v42;
}

uint64_t __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 length])
  {
    v3 = [*(a1 + 32) objectForKey:v5];
    if (!v3)
    {
      v3 = [MEMORY[0x29EDB8E10] orderedSet];
      [*(a1 + 32) setObject:v3 forKey:v5];
    }

    [v3 addObject:*(a1 + 40)];
  }

  return MEMORY[0x2A1C71048]();
}

uint64_t __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 label];
  v7 = [v5 label];

  v8 = [*(a1 + 32) objectForKey:v6];
  v9 = [*(a1 + 32) objectForKey:v7];
  if ([v8 isEqualToString:v9])
  {
    v10 = [v6 length];
    v11 = [v7 length];
    v12 = v10 >= v11;
    v13 = v10 > v11;
  }

  else
  {
    Value = CFDictionaryGetValue(*(a1 + 40), v8);
    v15 = CFDictionaryGetValue(*(a1 + 40), v9);
    v12 = Value >= v15;
    v13 = Value > v15;
  }

  v16 = !v12;
  v17 = v13;
  if (v16)
  {
    v18 = -1;
  }

  else
  {
    v18 = v17;
  }

  return v18;
}

uint64_t __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke_3(uint64_t a1, const void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  Value = CFDictionaryGetValue(v5, a2);
  v8 = CFDictionaryGetValue(*(a1 + 32), v6);

  if (Value < v8)
  {
    return -1;
  }

  else
  {
    return Value > v8;
  }
}

- (BOOL)hasCandidatesSortedByYomiFromCandidates:(id)a3 inputString:(id)a4
{
  v51 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v45 + 1) + 8 * i) label];
        if ([v13 _containsJapaneseOnly])
        {
          v14 = [v13 _firstGrapheme];
          if ([v14 length])
          {
            v43 = 0;
            v44 = 0;
            v15 = [(TICandidateSorter *)self getInfoForCharacter:v14 strokeCount:&v44 radicals:0 yomis:&v43];
            v16 = v43;
            if (v15)
            {
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v35 = v16;
              v17 = v16;
              v37 = [v17 countByEnumeratingWithState:&v39 objects:v49 count:16];
              if (v37)
              {
                v38 = *v40;
                v33 = v11;
                v34 = v8;
                v31 = self;
                v32 = v10;
                v36 = v17;
                while (2)
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (*v40 != v38)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v19 = *(*(&v39 + 1) + 8 * j);
                    if ([v19 length])
                    {
                      v20 = [v19 rangeOfComposedCharacterSequenceAtIndex:0];
                      v22 = [v19 substringWithRange:{v20, v21}];
                      v23 = [v22 stringByConvertingKatakanaToHiragana];

                      v24 = [v7 length];
                      v25 = 1;
                      while (v24)
                      {
                        v26 = [v7 substringToIndex:v25];
                        v27 = [v23 isEqualToString:v26];

                        --v24;
                        ++v25;
                        if (v27)
                        {

                          v10 = v32;
                          v11 = v33;
                          v17 = v36;
                          goto LABEL_19;
                        }
                      }

                      v28 = 1;
                      v8 = v34;
                      goto LABEL_29;
                    }

LABEL_19:
                    ;
                  }

                  v8 = v34;
                  self = v31;
                  v37 = [v17 countByEnumeratingWithState:&v39 objects:v49 count:16];
                  if (v37)
                  {
                    continue;
                  }

                  break;
                }
              }

              v16 = v35;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
      v28 = 0;
    }

    while (v10);
  }

  else
  {
    v28 = 0;
  }

LABEL_29:

  v29 = *MEMORY[0x29EDCA608];
  return v28;
}

- (id)candidatesSortedByYomiFromCandidates:(id)a3 inputString:(id)a4
{
  v106 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v59 = a4;
  v73 = [MEMORY[0x29EDB8DE8] array];
  context = objc_autoreleasePoolPush();
  theDict = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], 0);
  v7 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [MEMORY[0x29EDB8E00] dictionary];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v97 objects:v105 count:16];
  v63 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v98;
    v61 = v7;
    v62 = self;
    v60 = *v98;
    do
    {
      v13 = 0;
      v65 = v11;
      do
      {
        if (*v98 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v97 + 1) + 8 * v13);
        if (([v14 isTransliterationCandidate] & 1) == 0)
        {
          v15 = [v14 label];
          if ([v15 _containsJapaneseOnly])
          {
            v16 = [v15 _firstGrapheme];
            if ([v16 length])
            {
              v71 = v15;
              [v7 setObject:v16 forKey:v15];
              v95 = 0;
              value = 0;
              key = v16;
              v17 = [(TICandidateSorter *)self getInfoForCharacter:v16 strokeCount:&value radicals:0 yomis:&v95];
              v18 = v95;
              if (v17)
              {
                obj = v13;
                CFDictionarySetValue(theDict, key, value);
                v93 = 0u;
                v94 = 0u;
                v91 = 0u;
                v92 = 0u;
                v67 = v18;
                v19 = v18;
                v20 = [v19 countByEnumeratingWithState:&v91 objects:v104 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v92;
                  do
                  {
                    for (i = 0; i != v21; ++i)
                    {
                      if (*v92 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = *(*(&v91 + 1) + 8 * i);
                      if ([v24 length])
                      {
                        v25 = [v24 rangeOfComposedCharacterSequenceAtIndex:0];
                        v27 = [v24 substringWithRange:{v25, v26}];
                        v28 = [v27 stringByConvertingKatakanaToHiragana];

                        v29 = [v8 objectForKey:v28];
                        if (!v29)
                        {
                          v29 = [MEMORY[0x29EDB8E10] orderedSet];
                          [v8 setObject:v29 forKey:v28];
                        }

                        v30 = [v14 copy];
                        [v30 setAlternativeText:v24];
                        [v29 addObject:v30];
                      }
                    }

                    v21 = [v19 countByEnumeratingWithState:&v91 objects:v104 count:16];
                  }

                  while (v21);
                }

                self = v62;
                v9 = v63;
                v12 = v60;
                v7 = v61;
                v11 = v65;
                v18 = v67;
                v13 = obj;
              }

              v15 = v71;
              v16 = key;
            }
          }
        }

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v11);
  }

  v88[0] = MEMORY[0x29EDCA5F8];
  v88[1] = 3221225472;
  v88[2] = __70__TICandidateSorter_candidatesSortedByYomiFromCandidates_inputString___block_invoke;
  v88[3] = &unk_29F3793E8;
  v68 = v7;
  v89 = v68;
  v90 = theDict;
  v31 = MEMORY[0x29EDA3C60](v88);
  v32 = [v59 length];
  if (v32)
  {
    v33 = v32;
    v34 = 1;
    do
    {
      v35 = [v59 substringToIndex:v34];
      [v8 removeObjectForKey:v35];

      ++v34;
      --v33;
    }

    while (v33);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v36 = v8;
  v37 = [v36 countByEnumeratingWithState:&v84 objects:v103 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v85;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v85 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [v36 objectForKey:*(*(&v84 + 1) + 8 * j)];
        [v41 sortUsingComparator:v31];
      }

      v38 = [v36 countByEnumeratingWithState:&v84 objects:v103 count:16];
    }

    while (v38);
  }

  v42 = [v36 allKeys];
  v66 = v31;
  v43 = [v42 sortedArrayUsingComparator:v31];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obja = v43;
  keya = [obja countByEnumeratingWithState:&v80 objects:v102 count:16];
  if (keya)
  {
    v72 = *v81;
    do
    {
      for (k = 0; k != keya; k = k + 1)
      {
        if (*v81 != v72)
        {
          objc_enumerationMutation(obja);
        }

        v45 = *(*(&v80 + 1) + 8 * k);
        v46 = [v36 objectForKey:v45];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v47 = [v46 countByEnumeratingWithState:&v76 objects:v101 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = 0;
          v50 = *v77;
          do
          {
            for (m = 0; m != v48; ++m)
            {
              if (*v77 != v50)
              {
                objc_enumerationMutation(v46);
              }

              v52 = *(*(&v76 + 1) + 8 * m);
              v53 = [v52 label];
              if ([v53 _graphemeCount] == 1)
              {
                v54 = v53;

                v49 = v54;
              }

              else if (v49 && [v53 hasPrefix:v49])
              {
                [v52 setAlternativeText:0];
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v76 objects:v101 count:16];
          }

          while (v48);
        }

        else
        {
          v49 = 0;
        }

        v55 = [objc_alloc(MEMORY[0x29EDC7078]) initWithTitle:v45 candidates:v46];
        [v73 addObject:v55];
      }

      keya = [obja countByEnumeratingWithState:&v80 objects:v102 count:16];
    }

    while (keya);
  }

  CFRelease(theDict);
  objc_autoreleasePoolPop(context);

  v56 = *MEMORY[0x29EDCA608];

  return v73;
}

uint64_t __70__TICandidateSorter_candidatesSortedByYomiFromCandidates_inputString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 label];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 label];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  v11 = [v8 substringToIndex:1];
  v12 = [v11 mutableCopy];

  v13 = *MEMORY[0x29EDB8FE0];
  CFStringTransform(v12, 0, *MEMORY[0x29EDB8FE0], 1u);
  v14 = [v10 substringToIndex:1];
  v15 = [v14 mutableCopy];

  CFStringTransform(v15, 0, v13, 1u);
  v16 = [(__CFString *)v12 compare:v15];
  if (!v16)
  {
    v16 = [v8 localizedStandardCompare:v10];
    if (!v16)
    {
      v19 = [*(a1 + 32) objectForKey:v8];
      if (!v19)
      {
        v19 = [v8 _firstGrapheme];
      }

      v20 = [*(a1 + 32) objectForKey:v10];
      if (!v20)
      {
        v20 = [v10 _firstGrapheme];
      }

      Value = CFDictionaryGetValue(*(a1 + 40), v19);
      v22 = CFDictionaryGetValue(*(a1 + 40), v20);

      if (Value < v22)
      {
        v17 = -1;
        goto LABEL_10;
      }

      if (Value > v22)
      {
        v17 = 1;
        goto LABEL_10;
      }

      v16 = [v8 localizedStandardCompare:v10];
    }
  }

  v17 = v16;
LABEL_10:

  return v17;
}

- (id)candidatesSortedByEmojiFromCandidates:(id)a3
{
  v13[1] = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDBA0A8];
  v4 = a3;
  v5 = [v3 predicateWithBlock:&__block_literal_global_6];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = objc_alloc(MEMORY[0x29EDC7078]);
  v8 = [MEMORY[0x29EDB8E30] orderedSetWithArray:v6];
  v9 = [v7 initWithTitle:0 candidates:v8];
  v13[0] = v9;
  v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

uint64_t __59__TICandidateSorter_candidatesSortedByEmojiFromCandidates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEmojiCandidate])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isStickerCandidate];
  }

  return v3;
}

- (BOOL)hasCandidatesSortedByFacemarkCategoryFromCandidates:(id)a3
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

- (BOOL)hasCandidatesSortedByEmojiCategoryFromCandidates:(id)a3
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) isEmojiCandidate])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

- (BOOL)hasCandidatesFromCandidates:(id)a3 inputString:(id)a4 sortedBy:(unint64_t)a5 omittingEmoji:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v12 = [(TICandidateSorter *)self hasCandidatesSortedByFacemarkCategoryFromCandidates:v10];
      goto LABEL_13;
    }

    if (a5 == 4)
    {
      v12 = [(TICandidateSorter *)self hasCandidatesSortedByEmojiCategoryFromCandidates:v10];
      goto LABEL_13;
    }
  }

  else
  {
    if (a5 == 1)
    {
      v12 = [(TICandidateSorter *)self hasCandidatesSortedByRadicalFromCandidates:v10];
      goto LABEL_13;
    }

    if (a5 == 2)
    {
      v12 = [(TICandidateSorter *)self hasCandidatesSortedByYomiFromCandidates:v10 inputString:v11];
LABEL_13:
      v14 = v12;
      goto LABEL_14;
    }
  }

  if (v6)
  {
    v13 = [v10 _arrayByFilteringEmojiCandidates:0];

    v10 = v13;
  }

  v14 = [v10 count] != 0;
LABEL_14:

  return v14;
}

@end