@interface MecabraCandidate
+ (id)syntheticCandidateFromWords:(id)words withLexicon:(Lexicon *)lexicon language:(int)language;
- (BOOL)isEqual:(id)equal;
- (MecabraCandidate)initWithCandidate:(void *)candidate;
- (id)analysisString;
- (id)attributes;
- (id)category;
- (id)convertedAnalysisString;
- (id)convertedAnalysisStringForFirstSyllable;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryReading;
- (id)surface;
- (id)syllabifiedAnalysisString;
- (id)syllabifiedConvertedAnalysisString;
- (id)syllabifiedDictionaryReading;
- (id)syllablesInAnalysisString;
- (id)syllablesInConvertedAnalysisString;
- (id)syllablesInDictionaryReading;
- (id)syllablesInString:(id)string syllableLengths:(id)lengths;
- (id)wordIDs;
- (id)wordReadings;
- (id)words;
- (void)dealloc;
@end

@implementation MecabraCandidate

- (void)dealloc
{
  rawCandidate = self->_rawCandidate;
  if (rawCandidate)
  {
    (*(*rawCandidate + 16))(rawCandidate, a2);
    self->_rawCandidate = 0;
  }

  v4.receiver = self;
  v4.super_class = MecabraCandidate;
  [(MecabraCandidate *)&v4 dealloc];
}

- (id)surface
{
  result = objc_msgSend_rawCandidate(self, a2, v2);
  if (result)
  {
    v4 = result;
    v5 = (*(*result + 40))(result);
    v6 = *v4;
    if (v5)
    {
      v7 = *(v6 + 40);
      v8 = v4;
    }

    else
    {
      v7 = *(v6 + 24);
      v8 = v4;
    }

    return v7(v8);
  }

  return result;
}

- (id)category
{
  v3 = objc_msgSend_rawCandidate(self, a2, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if ((*(*v3 + 72))(v3) != 1 && (*(*v4 + 72))(v4) != 7)
  {
    return 0;
  }

  v5 = (*(*v4 + 136))(v4);

  return MEMORY[0x2A1C70FE8](v5, sel_valueForKey_, @"category");
}

- (id)analysisString
{
  v3 = objc_msgSend_rawCandidate(self, a2, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if ((*(*v3 + 72))(v3) != 1 && (*(*v4 + 72))(v4) != 7 && (*(*v4 + 72))(v4) != 6)
  {
    return 0;
  }

  v5 = *(*v4 + 56);

  return v5(v4);
}

- (id)convertedAnalysisString
{
  v3 = objc_msgSend_rawCandidate(self, a2, v2);
  if (v3)
  {
    v4 = v3;
    if ((*(*v3 + 72))(v3) == 1 || (*(*v4 + 72))(v4) == 7)
    {
      v5 = *(*v4 + 224);
      v6 = v4;

      return v5(v6);
    }

    if ((*(*v4 + 72))(v4) == 6)
    {
      v5 = *(*v4 + 176);
      v6 = v4;

      return v5(v6);
    }
  }

  return 0;
}

- (id)dictionaryReading
{
  v3 = objc_msgSend_rawCandidate(self, a2, v2);
  if (v3)
  {
    v4 = v3;
    if ((*(*v3 + 72))(v3) == 1 || (*(*v4 + 72))(v4) == 7)
    {
      v5 = *(*v4 + 232);
      v6 = v4;

      return v5(v6);
    }

    if ((*(*v4 + 72))(v4) == 6)
    {
      v5 = *(*v4 + 184);
      v6 = v4;

      return v5(v6);
    }
  }

  return 0;
}

- (id)attributes
{
  result = objc_msgSend_rawCandidate(self, a2, v2);
  if (result)
  {
    v4 = *(*result + 136);

    return v4();
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_msgSend_rawCandidate(self, a2, zone);
  if (result)
  {
    v8 = objc_msgSend_rawCandidate(self, v6, v7);
    v9 = (**&v8[*(*v8 - 32)])(&v8[*(*v8 - 32)]);
    v11 = objc_msgSend_allocWithZone_(MecabraCandidate, v10, zone);

    return objc_msgSend_initWithCandidate_(v11, v12, v9);
  }

  return result;
}

- (MecabraCandidate)initWithCandidate:(void *)candidate
{
  v5.receiver = self;
  v5.super_class = MecabraCandidate;
  result = [(MecabraCandidate *)&v5 init];
  if (result)
  {
    result->_rawCandidate = candidate;
  }

  return result;
}

- (id)convertedAnalysisStringForFirstSyllable
{
  v4 = MecabraCandidateCopySyllableLengthArrayInAnalysisString(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6) && (v8 = objc_msgSend_objectAtIndex_(v4, v7, 0), v11 = objc_msgSend_intValue(v8, v9, v10), v14 = objc_msgSend_analysisString(self, v12, v13), objc_msgSend_length(v14, v15, v16) >= v11))
  {
    v20 = objc_msgSend_convertedAnalysisString(self, v17, v18);
    v23 = objc_msgSend_intValue(v8, v21, v22);
    v19 = objc_msgSend_substringToIndex_(v20, v24, v23);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)description
{
  v4 = objc_msgSend_rawCandidate(self, a2, v2);
  if (v4 && ((v7 = v4, (*(*v4 + 72))(v4) == 1) || (*(*v7 + 72))(v7) == 7))
  {
    v8 = objc_msgSend_rawCandidate(self, v5, v6);
    v9 = (*(*v8 + 392))(v8);
    v10 = MEMORY[0x29EDBA0F8];
    Surface = MecabraCandidateGetSurface(self, v11, v12);
    v16 = objc_msgSend_analysisString(self, v14, v15);
    v19 = objc_msgSend_convertedAnalysisString(self, v17, v18);
    v22 = objc_msgSend_dictionaryReading(self, v20, v21);
    v25 = objc_msgSend_rawCandidate(self, v23, v24);
    if (v25)
    {
      v25 = (*(*v25 + 112))(v25);
    }

    v27 = -1000.0;
    if (v9 != -1.79769313e308)
    {
      v27 = v9;
    }

    return objc_msgSend_stringWithFormat_(v10, v26, @"%@ (AS:%@ CAS:%@ DR:%@), %d, %f", Surface, v16, v19, v22, v25, *&v27);
  }

  else
  {
    v29 = MEMORY[0x29EDBA0F8];
    v30 = MecabraCandidateGetSurface(self, v5, v6);
    v33 = objc_msgSend_analysisString(self, v31, v32);
    v36 = objc_msgSend_convertedAnalysisString(self, v34, v35);
    v39 = objc_msgSend_dictionaryReading(self, v37, v38);
    v42 = objc_msgSend_rawCandidate(self, v40, v41);
    if (v42)
    {
      v42 = (*(*v42 + 112))(v42);
    }

    return objc_msgSend_stringWithFormat_(v29, v43, @"%@ (AS:%@ CAS:%@ DR:%@), %d", v30, v33, v36, v39, v42);
  }
}

- (BOOL)isEqual:(id)equal
{
  Surface = MecabraCandidateGetSurface(self, a2, equal);
  v8 = MecabraCandidateGetSurface(equal, v6, v7);
  if (!(Surface | v8) || (isEqualToString = objc_msgSend_isEqualToString_(Surface, v9, v8)) != 0)
  {
    v12 = objc_msgSend_analysisString(self, v9, v10);
    v15 = objc_msgSend_analysisString(equal, v13, v14);
    if (!(v12 | v15) || (isEqualToString = objc_msgSend_isEqualToString_(v12, v16, v15)) != 0)
    {
      v18 = objc_msgSend_convertedAnalysisString(self, v16, v17);
      v21 = objc_msgSend_convertedAnalysisString(equal, v19, v20);
      if (!(v18 | v21) || (isEqualToString = objc_msgSend_isEqualToString_(v18, v22, v21)) != 0)
      {
        v24 = objc_msgSend_dictionaryReading(self, v22, v23);
        v27 = objc_msgSend_dictionaryReading(equal, v25, v26);
        if (v24 | v27)
        {

          LOBYTE(isEqualToString) = objc_msgSend_isEqualToString_(v24, v28, v27);
        }

        else
        {
          LOBYTE(isEqualToString) = 1;
        }
      }
    }
  }

  return isEqualToString;
}

- (id)syllabifiedAnalysisString
{
  v3 = objc_msgSend_syllablesInAnalysisString(self, a2, v2);

  return objc_msgSend_componentsJoinedByString_(v3, v4, @"'");
}

- (id)syllabifiedConvertedAnalysisString
{
  v3 = objc_msgSend_syllablesInConvertedAnalysisString(self, a2, v2);

  return objc_msgSend_componentsJoinedByString_(v3, v4, @"'");
}

- (id)syllabifiedDictionaryReading
{
  v3 = objc_msgSend_syllablesInDictionaryReading(self, a2, v2);

  return objc_msgSend_componentsJoinedByString_(v3, v4, @"'");
}

- (id)syllablesInString:(id)string syllableLengths:(id)lengths
{
  v41 = *MEMORY[0x29EDCA608];
  v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(lengths, v7, &v36, v40, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v37;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(lengths);
        }

        v16 = objc_msgSend_unsignedIntegerValue(*(*(&v36 + 1) + 8 * v14), v9, v10);
        v19 = objc_msgSend_length(string, v17, v18);
        v12 = v16 + v15;
        if (v16 < 1 || v19 < v12)
        {
          v12 = v15;
          goto LABEL_13;
        }

        v21 = objc_msgSend_substringWithRange_(string, v9, v15, v16);
        objc_msgSend_addObject_(v6, v22, v21);
        ++v14;
        v15 += v16;
      }

      while (v11 != v14);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(lengths, v9, &v36, v40, 16);
    }

    while (v11);
LABEL_13:
    if (v12 > objc_msgSend_length(string, v9, v10))
    {
      objc_msgSend_addObject_(v6, v23, @"GARBAGE");
    }
  }

  else
  {
    objc_msgSend_length(string, v9, v10);
    v12 = 0;
  }

  if (v12 < objc_msgSend_length(string, v23, v24))
  {
    v27 = MEMORY[0x29EDBA0F8];
    v28 = objc_msgSend_length(string, v25, v26);
    v30 = objc_msgSend_substringWithRange_(string, v29, v12, v28 - v12);
    v32 = objc_msgSend_stringWithFormat_(v27, v31, @"(%@)", v30);
    objc_msgSend_addObject_(v6, v33, v32);
  }

  v34 = *MEMORY[0x29EDCA608];
  return v6;
}

- (id)syllablesInAnalysisString
{
  v4 = MecabraCandidateCopySyllableLengthArrayInAnalysisString(self, a2, v2);
  v7 = objc_msgSend_analysisString(self, v5, v6);
  v9 = objc_msgSend_syllablesInString_syllableLengths_(self, v8, v7, v4);

  return v9;
}

- (id)syllablesInConvertedAnalysisString
{
  v4 = MecabraCandidateCopySyllableLengthArrayInConvertedAnalysisString(self, a2, v2);
  v7 = objc_msgSend_convertedAnalysisString(self, v5, v6);
  v9 = objc_msgSend_syllablesInString_syllableLengths_(self, v8, v7, v4);

  return v9;
}

- (id)syllablesInDictionaryReading
{
  v4 = MecabraCandidateCopySyllableLengthArrayInDictionaryReading(self, a2, v2);
  v7 = objc_msgSend_dictionaryReading(self, v5, v6);
  v9 = objc_msgSend_syllablesInString_syllableLengths_(self, v8, v7, v4);

  return v9;
}

- (id)words
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v6 = objc_msgSend_rawCandidate(self, v4, v5);
  if ((*(*v6 + 48))(v6))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      WordLengthAtIndex = MecabraCandidateGetWordLengthAtIndex(self, v9, v7);
      Surface = MecabraCandidateGetSurface(self, v11, v12);
      v15 = objc_msgSend_substringWithRange_(Surface, v14, v8, WordLengthAtIndex);
      if (objc_msgSend_length(v15, v16, v17))
      {
        objc_msgSend_addObject_(v3, v18, v15);
      }

      v8 += WordLengthAtIndex;
      ++v9;
      v20 = objc_msgSend_rawCandidate(self, v18, v19);
    }

    while (v9 < (*(*v20 + 48))(v20));
  }

  return v3;
}

- (id)wordReadings
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v6 = objc_msgSend_rawCandidate(self, v4, v5);
  if ((*(*v6 + 48))(v6))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      WordReadingLengthAtIndex = MecabraCandidateGetWordReadingLengthAtIndex(self, v9, v7);
      v13 = objc_msgSend_analysisString(self, v11, v12);
      v15 = objc_msgSend_substringWithRange_(v13, v14, v8, WordReadingLengthAtIndex);
      if (objc_msgSend_length(v15, v16, v17))
      {
        objc_msgSend_addObject_(v3, v18, v15);
      }

      v8 += WordReadingLengthAtIndex;
      ++v9;
      v20 = objc_msgSend_rawCandidate(self, v18, v19);
    }

    while (v9 < (*(*v20 + 48))(v20));
  }

  return v3;
}

- (id)wordIDs
{
  v3 = objc_msgSend_rawCandidate(self, a2, v2);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  v7 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v4, v5);
  if ((*(*v6 + 48))(v6))
  {
    v8 = 0;
    do
    {
      v9 = (*(*v6 + 120))(v6, v8);
      v11 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v10, *(v9 + 8));
      objc_msgSend_addObject_(v7, v12, v11);
      ++v8;
    }

    while (v8 < (*(*v6 + 48))(v6));
  }

  return v7;
}

+ (id)syntheticCandidateFromWords:(id)words withLexicon:(Lexicon *)lexicon language:(int)language
{
  v32 = *MEMORY[0x29EDCA608];
  __src = 0;
  v29 = 0;
  v30 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(words, a2, &v24, v31, 16);
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(words);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (lexicon)
        {
          sub_299322050(lexicon, v10);
        }

        v11 = v29;
        if (v29 >= v30)
        {
          v13 = __src;
          v14 = v29 - __src;
          v15 = (v29 - __src) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            sub_299212A8C();
          }

          v17 = v30 - __src;
          if ((v30 - __src) >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
          v19 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v18)
          {
            v19 = v16;
          }

          if (v19)
          {
            sub_2992F86B0(&__src, v19);
          }

          v20 = (4 * v15);
          v21 = &v20[-((v29 - __src) >> 2)];
          *v20 = 0;
          v12 = (v20 + 1);
          memcpy(v21, v13, v14);
          v22 = __src;
          __src = v21;
          v29 = v12;
          v30 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v29 = 0;
          v12 = v11 + 4;
        }

        v29 = v12;
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(words, v10, &v24, v31, 16);
    }

    while (v7);
  }

  operator new();
}

@end