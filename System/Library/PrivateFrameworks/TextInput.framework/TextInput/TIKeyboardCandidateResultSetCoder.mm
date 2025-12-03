@interface TIKeyboardCandidateResultSetCoder
+ (Class)classFromCandidateType:(int)type;
+ (id)candidateTypeToClassNameMap;
+ (id)decodeWithData:(id)data;
+ (id)encodeWithCandidateResultSet:(id)set;
- (BOOL)isDecoding;
- (TIKeyboardCandidateResultSetCoder)initWithData:(id)data mutableData:(id)mutableData;
- (const)bytes;
- (double)decodeDouble;
- (id)candidateResultSet;
- (id)dataFromCandidateResultSet:(id)set;
- (id)decodeCandidate;
- (id)decodePointerValueArray;
- (id)decodeString;
- (id)decodeStringArray;
- (id)initForDecodingWithData:(id)data;
- (id)initForEncoding;
- (unint64_t)decodeUInt64;
- (unsigned)decodeByte;
- (unsigned)decodeShort;
- (unsigned)decodeUInt32;
- (void)encodeByte:(unsigned __int8)byte;
- (void)encodeDouble:(double)double;
- (void)encodePointerValueArray:(id)array;
- (void)encodeShort:(unsigned __int16)short;
- (void)encodeString:(id)string;
- (void)encodeStringArray:(id)array;
- (void)encodeUInt32:(unsigned int)int32;
- (void)encodeUInt64:(unint64_t)int64;
- (void)readNumberOfBytes:(unint64_t)bytes into:(void *)into;
- (void)setOffset:(unint64_t)offset;
@end

@implementation TIKeyboardCandidateResultSetCoder

- (id)candidateResultSet
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(TIKeyboardCandidateResultSet);
  data = [(TIKeyboardCandidateResultSetCoder *)self data];
  v5 = [data length];

  if (v5 <= 0x38)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "TIKeyboardCandidateResultSet cannot be decoded : size of header is bigger than the data being decoded";
      v8 = 2;
LABEL_59:
      _os_log_error_impl(&dword_1863F7000, v6, OS_LOG_TYPE_ERROR, v7, buf, v8);
      goto LABEL_70;
    }

    goto LABEL_70;
  }

  data2 = [(TIKeyboardCandidateResultSetCoder *)self data];
  bytes = [data2 bytes];

  if (*bytes == -1)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = *bytes;
  }

  [(TIKeyboardCandidateResultSet *)v3 setInitialSelectedIndex:v11];
  [(TIKeyboardCandidateResultSet *)v3 setGeneratedCandidateCount:*(bytes + 13)];
  [(TIKeyboardCandidateResultSet *)v3 setBatchCandidateLocation:*(bytes + 17)];
  if (*(bytes + 53) == -1)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = *(bytes + 53);
  }

  [(TIKeyboardCandidateResultSet *)v3 setSelectedDisambiguationCandidateIndex:v12];
  v13 = *(bytes + 33);
  if (v13 == -1)
  {
    v17 = 0;
    goto LABEL_21;
  }

  data3 = [(TIKeyboardCandidateResultSetCoder *)self data];
  v15 = [data3 length];

  if (v15 > v13)
  {
    [(TIKeyboardCandidateResultSetCoder *)self setOffset:*(bytes + 33)];
    v16 = *(bytes + 9);
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:v16];
    if (v16)
    {
      do
      {
        decodeCandidate = [(TIKeyboardCandidateResultSetCoder *)self decodeCandidate];
        if (decodeCandidate)
        {
          [v17 addObject:decodeCandidate];
        }

        --v16;
      }

      while (v16);
    }

    v19 = [v17 subarrayWithRange:{0, *(bytes + 5)}];
    [(TIKeyboardCandidateResultSet *)v3 setCandidates:v19];

    if (*(bytes + 25))
    {
      v20 = [v17 subarrayWithRange:*(bytes + 21)];
      [(TIKeyboardCandidateResultSet *)v3 setDisambiguationCandidates:v20];
    }

    if (*(bytes + 4))
    {
      lastObject = [v17 lastObject];
      [(TIKeyboardCandidateResultSet *)v3 setDefaultCandidate:lastObject];
    }

LABEL_21:
    v22 = *(bytes + 29);
    v77 = bytes;
    if (v22 != -1)
    {
      data4 = [(TIKeyboardCandidateResultSetCoder *)self data];
      v24 = [data4 length];

      if (v24 <= v22)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        v66 = *(bytes + 29);
        *buf = 67109120;
        v89 = v66;
        v67 = MEMORY[0x1E69E9C10];
        v68 = "TIKeyboardCandidateResultSet cannot be decoded : header sort method group offset [%d] is not within the bounds of the data being decoded";
        goto LABEL_68;
      }

      v73 = v3;
      [(TIKeyboardCandidateResultSetCoder *)self setOffset:*(bytes + 29)];
      v76 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(bytes + 37)];
      decodeStringArray = [(TIKeyboardCandidateResultSetCoder *)self decodeStringArray];
      if (*(bytes + 37))
      {
        v25 = 0;
        do
        {
          decodeUInt32 = [(TIKeyboardCandidateResultSetCoder *)self decodeUInt32];
          v27 = decodeUInt32;
          v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:decodeUInt32];
          if (decodeUInt32)
          {
            v29 = 0;
            do
            {
              v30 = objc_alloc_init(TIKeyboardCandidateGroup);
              decodeString = [(TIKeyboardCandidateResultSetCoder *)self decodeString];
              [(TIKeyboardCandidateGroup *)v30 setTitle:decodeString];

              decodeUInt322 = [(TIKeyboardCandidateResultSetCoder *)self decodeUInt32];
              if (decodeUInt322)
              {
                v33 = decodeUInt322;
                do
                {
                  v34 = [v17 objectAtIndex:{-[TIKeyboardCandidateResultSetCoder decodeShort](self, "decodeShort")}];
                  [(TIKeyboardCandidateGroup *)v30 addCandidate:v34];

                  --v33;
                }

                while (v33);
              }

              [v28 addObject:v30];

              ++v29;
            }

            while (v29 != v27);
          }

          v35 = [decodeStringArray objectAtIndex:v25];
          [v76 setObject:v28 forKey:v35];

          ++v25;
          bytes = v77;
        }

        while (v25 < *(v77 + 37));
      }

      v3 = v73;
      [(TIKeyboardCandidateResultSet *)v73 setSortMethodGroups:v76];
    }

    v36 = *(bytes + 41);
    if (v36 != -1)
    {
      data5 = [(TIKeyboardCandidateResultSetCoder *)self data];
      v38 = [data5 length];

      if (v38 <= v36)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        v69 = *(bytes + 41);
        *buf = 67109120;
        v89 = v69;
        v67 = MEMORY[0x1E69E9C10];
        v68 = "TIKeyboardCandidateResultSet cannot be decoded : header sort method offset [%d] is not within the bounds of the data being decoded";
        goto LABEL_68;
      }

      [(TIKeyboardCandidateResultSetCoder *)self setOffset:*(bytes + 41)];
      decodeStringArray2 = [(TIKeyboardCandidateResultSetCoder *)self decodeStringArray];
      [(TIKeyboardCandidateResultSet *)v3 setSortMethods:decodeStringArray2];
    }

    v40 = *(bytes + 45);
    if (v40 == -1)
    {
      goto LABEL_46;
    }

    data6 = [(TIKeyboardCandidateResultSetCoder *)self data];
    v42 = [data6 length];

    if (v42 > v40)
    {
      [(TIKeyboardCandidateResultSetCoder *)self setOffset:*(bytes + 45)];
      decodeStringArray3 = [(TIKeyboardCandidateResultSetCoder *)self decodeStringArray];
      v44 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(decodeStringArray3, "count")}];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v45 = decodeStringArray3;
      v46 = [v45 countByEnumeratingWithState:&v82 objects:v87 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v83;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v83 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v82 + 1) + 8 * i);
            decodeStringArray4 = [(TIKeyboardCandidateResultSetCoder *)self decodeStringArray];
            [v44 setObject:decodeStringArray4 forKey:v50];
          }

          v47 = [v45 countByEnumeratingWithState:&v82 objects:v87 count:16];
        }

        while (v47);
      }

      [(TIKeyboardCandidateResultSet *)v3 setIndexTitles:v44];
      bytes = v77;
LABEL_46:
      v52 = *(bytes + 49);
      if (v52 == -1)
      {
LABEL_56:
        v64 = v3;

        goto LABEL_71;
      }

      data7 = [(TIKeyboardCandidateResultSetCoder *)self data];
      v54 = [data7 length];

      if (v54 > v52)
      {
        v74 = v3;
        [(TIKeyboardCandidateResultSetCoder *)self setOffset:*(bytes + 49)];
        decodeStringArray5 = [(TIKeyboardCandidateResultSetCoder *)self decodeStringArray];
        v56 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(decodeStringArray5, "count")}];
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v57 = decodeStringArray5;
        v58 = [v57 countByEnumeratingWithState:&v78 objects:v86 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v79;
          do
          {
            for (j = 0; j != v59; ++j)
            {
              if (*v79 != v60)
              {
                objc_enumerationMutation(v57);
              }

              v62 = *(*(&v78 + 1) + 8 * j);
              v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[TIKeyboardCandidateResultSetCoder decodeByte](self, "decodeByte") != 0}];
              [v56 setObject:v63 forKey:v62];
            }

            v59 = [v57 countByEnumeratingWithState:&v78 objects:v86 count:16];
          }

          while (v59);
        }

        v3 = v74;
        [(TIKeyboardCandidateResultSet *)v74 setShowExtensionCandidates:v56];

        goto LABEL_56;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v71 = *(bytes + 49);
        *buf = 67109120;
        v89 = v71;
        v67 = MEMORY[0x1E69E9C10];
        v68 = "TIKeyboardCandidateResultSet cannot be decoded : show extension candidates offset [%d] is not within the bounds of the data being decoded";
        goto LABEL_68;
      }

LABEL_69:

      goto LABEL_70;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v70 = *(bytes + 45);
    *buf = 67109120;
    v89 = v70;
    v67 = MEMORY[0x1E69E9C10];
    v68 = "TIKeyboardCandidateResultSet cannot be decoded : index titles offset [%d] is not within the bounds of the data being decoded";
LABEL_68:
    _os_log_error_impl(&dword_1863F7000, v67, OS_LOG_TYPE_ERROR, v68, buf, 8u);
    goto LABEL_69;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v65 = *(bytes + 33);
    *buf = 67109120;
    v89 = v65;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "TIKeyboardCandidateResultSet cannot be decoded : header candidates offset [%d] is not within the bounds of the data being decoded";
    v8 = 8;
    goto LABEL_59;
  }

LABEL_70:
  v64 = 0;
LABEL_71:

  return v64;
}

- (id)dataFromCandidateResultSet:(id)set
{
  v151 = *MEMORY[0x1E69E9840];
  setCopy = set;
  if ([setCopy initialSelectedIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    initialSelectedIndex = -1;
  }

  else
  {
    initialSelectedIndex = [setCopy initialSelectedIndex];
  }

  defaultCandidate = [setCopy defaultCandidate];

  candidates = [setCopy candidates];
  v95 = [candidates count];

  generatedCandidateCount = [setCopy generatedCandidateCount];
  batchCandidateLocation = [setCopy batchCandidateLocation];
  disambiguationCandidates = [setCopy disambiguationCandidates];
  v98 = [disambiguationCandidates count];

  sortMethodGroups = [setCopy sortMethodGroups];
  v97 = [sortMethodGroups count];

  if ([setCopy selectedDisambiguationCandidateIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    selectedDisambiguationCandidateIndex = 0xFFFFFFFFLL;
  }

  else
  {
    selectedDisambiguationCandidateIndex = [setCopy selectedDisambiguationCandidateIndex];
  }

  v105 = setCopy;
  if (v97)
  {
    v8 = MEMORY[0x1E695DF70];
    candidates2 = [setCopy candidates];
    v114 = [v8 arrayWithArray:candidates2];

    candidates3 = [setCopy candidates];
    v11 = [candidates3 count];

    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v11];
    v13 = 0x1E696A000uLL;
    v14 = setCopy;
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{i, selectedDisambiguationCandidateIndex}];
        candidates4 = [v14 candidates];
        v18 = [candidates4 objectAtIndex:i];
        [v12 setObject:v16 forKey:v18];

        v13 = 0x1E696A000uLL;
      }
    }

    sortMethodGroups2 = [v14 sortMethodGroups];
    allKeys = [sortMethodGroups2 allKeys];

    [(TIKeyboardCandidateResultSetCoder *)self encodeStringArray:allKeys];
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = allKeys;
    setCopy = v14;
    v102 = [obj countByEnumeratingWithState:&v140 objects:v150 count:16];
    if (v102)
    {
      v101 = *v141;
      do
      {
        v21 = 0;
        do
        {
          if (*v141 != v101)
          {
            objc_enumerationMutation(obj);
          }

          v103 = v21;
          v22 = *(*(&v140 + 1) + 8 * v21);
          sortMethodGroups3 = [setCopy sortMethodGroups];
          v24 = [sortMethodGroups3 objectForKey:v22];

          -[TIKeyboardCandidateResultSetCoder encodeUInt32:](self, "encodeUInt32:", [v24 count]);
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v106 = v24;
          v110 = [v106 countByEnumeratingWithState:&v136 objects:v149 count:16];
          if (v110)
          {
            v108 = *v137;
            do
            {
              v25 = 0;
              do
              {
                if (*v137 != v108)
                {
                  objc_enumerationMutation(v106);
                }

                v112 = v25;
                v26 = *(*(&v136 + 1) + 8 * v25);
                title = [v26 title];
                [(TIKeyboardCandidateResultSetCoder *)self encodeString:title];

                candidates5 = [v26 candidates];
                -[TIKeyboardCandidateResultSetCoder encodeUInt32:](self, "encodeUInt32:", [candidates5 count]);

                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                candidates6 = [v26 candidates];
                v30 = [candidates6 countByEnumeratingWithState:&v132 objects:v148 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v133;
                  do
                  {
                    for (j = 0; j != v31; ++j)
                    {
                      if (*v133 != v32)
                      {
                        objc_enumerationMutation(candidates6);
                      }

                      v34 = *(*(&v132 + 1) + 8 * j);
                      v35 = [v12 objectForKey:v34];
                      integerValue = [v35 integerValue];
                      if (!v35)
                      {
                        [v114 addObject:v34];
                        v37 = [*(v13 + 3480) numberWithUnsignedInteger:v11];
                        [v12 setObject:v37 forKey:v34];

                        v13 = 0x1E696A000;
                        integerValue = v11++;
                      }

                      [(TIKeyboardCandidateResultSetCoder *)self encodeShort:integerValue];
                    }

                    v31 = [candidates6 countByEnumeratingWithState:&v132 objects:v148 count:16];
                  }

                  while (v31);
                }

                v25 = v112 + 1;
              }

              while (v112 + 1 != v110);
              v110 = [v106 countByEnumeratingWithState:&v136 objects:v149 count:16];
            }

            while (v110);
          }

          v21 = v103 + 1;
          setCopy = v105;
        }

        while (v103 + 1 != v102);
        v102 = [obj countByEnumeratingWithState:&v140 objects:v150 count:16];
      }

      while (v102);
    }

    if (v114)
    {
      candidates7 = v114;
      v115 = 57;
      v113 = candidates7;
      goto LABEL_39;
    }

    v39 = 57;
  }

  else
  {
    v39 = -1;
  }

  v115 = v39;
  candidates7 = [setCopy candidates];
  v113 = 0;
LABEL_39:
  v111 = [candidates7 count];
  v40 = v98 + [candidates7 count];
  if (defaultCandidate)
  {
    ++v40;
  }

  v109 = v40;
  if (v40)
  {
    mutableData = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
    v107 = [mutableData length];

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v42 = candidates7;
    v43 = [v42 countByEnumeratingWithState:&v128 objects:v147 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v129;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v129 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [*(*(&v128 + 1) + 8 * k) encodeWithCandidateResultSetCoder:self];
        }

        v44 = [v42 countByEnumeratingWithState:&v128 objects:v147 count:16];
      }

      while (v44);
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    disambiguationCandidates2 = [v105 disambiguationCandidates];
    v48 = [disambiguationCandidates2 countByEnumeratingWithState:&v124 objects:v146 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v125;
      do
      {
        for (m = 0; m != v49; ++m)
        {
          if (*v125 != v50)
          {
            objc_enumerationMutation(disambiguationCandidates2);
          }

          [*(*(&v124 + 1) + 8 * m) encodeWithCandidateResultSetCoder:self];
        }

        v49 = [disambiguationCandidates2 countByEnumeratingWithState:&v124 objects:v146 count:16];
      }

      while (v49);
    }

    setCopy = v105;
    defaultCandidate2 = [v105 defaultCandidate];

    if (defaultCandidate2)
    {
      defaultCandidate3 = [v105 defaultCandidate];
      [defaultCandidate3 encodeWithCandidateResultSetCoder:self];
    }
  }

  else
  {
    v107 = -1;
  }

  sortMethods = [setCopy sortMethods];
  v55 = setCopy;
  v56 = [sortMethods count];

  if (v56)
  {
    mutableData2 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
    v104 = [mutableData2 length];

    sortMethods2 = [v55 sortMethods];
    [(TIKeyboardCandidateResultSetCoder *)self encodeStringArray:sortMethods2];
  }

  else
  {
    v104 = -1;
  }

  v59 = v55;
  indexTitles = [v55 indexTitles];
  v61 = [indexTitles count];

  if (v61)
  {
    mutableData3 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
    v63 = [mutableData3 length];

    indexTitles2 = [v55 indexTitles];
    allKeys2 = [indexTitles2 allKeys];
    [(TIKeyboardCandidateResultSetCoder *)self encodeStringArray:allKeys2];

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    indexTitles3 = [v55 indexTitles];
    v67 = [indexTitles3 countByEnumeratingWithState:&v120 objects:v145 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v121;
      do
      {
        for (n = 0; n != v68; ++n)
        {
          if (*v121 != v69)
          {
            objc_enumerationMutation(indexTitles3);
          }

          v71 = *(*(&v120 + 1) + 8 * n);
          indexTitles4 = [v59 indexTitles];
          v73 = [indexTitles4 objectForKey:v71];

          [(TIKeyboardCandidateResultSetCoder *)self encodeStringArray:v73];
        }

        v68 = [indexTitles3 countByEnumeratingWithState:&v120 objects:v145 count:16];
      }

      while (v68);
    }
  }

  else
  {
    v63 = -1;
  }

  showExtensionCandidates = [v59 showExtensionCandidates];
  v75 = [showExtensionCandidates count];

  if (v75)
  {
    mutableData4 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
    v77 = [mutableData4 length];

    showExtensionCandidates2 = [v59 showExtensionCandidates];
    allKeys3 = [showExtensionCandidates2 allKeys];
    [(TIKeyboardCandidateResultSetCoder *)self encodeStringArray:allKeys3];

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    showExtensionCandidates3 = [v59 showExtensionCandidates];
    v81 = [showExtensionCandidates3 countByEnumeratingWithState:&v116 objects:v144 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v117;
      do
      {
        for (ii = 0; ii != v82; ++ii)
        {
          if (*v117 != v83)
          {
            objc_enumerationMutation(showExtensionCandidates3);
          }

          v85 = *(*(&v116 + 1) + 8 * ii);
          showExtensionCandidates4 = [v105 showExtensionCandidates];
          v87 = [showExtensionCandidates4 objectForKey:v85];

          -[TIKeyboardCandidateResultSetCoder encodeByte:](self, "encodeByte:", [v87 integerValue] != 0);
        }

        v82 = [showExtensionCandidates3 countByEnumeratingWithState:&v116 objects:v144 count:16];
      }

      while (v82);
    }

    v59 = v105;
  }

  else
  {
    v77 = -1;
  }

  mutableData5 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  bytes = [mutableData5 bytes];

  *bytes = initialSelectedIndex;
  *(bytes + 4) = defaultCandidate != 0;
  *(bytes + 5) = v95;
  *(bytes + 9) = v109;
  *(bytes + 13) = generatedCandidateCount;
  *(bytes + 17) = batchCandidateLocation;
  *(bytes + 21) = v111;
  *(bytes + 25) = v98;
  *(bytes + 29) = v115;
  *(bytes + 33) = v107;
  *(bytes + 37) = v97;
  *(bytes + 41) = v104;
  *(bytes + 45) = v63;
  *(bytes + 49) = v77;
  *(bytes + 53) = selectedDisambiguationCandidateIndex;
  mutableData6 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];

  return mutableData6;
}

- (id)decodePointerValueArray
{
  decodeUInt32 = [(TIKeyboardCandidateResultSetCoder *)self decodeUInt32];
  v4 = decodeUInt32;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:decodeUInt32];
  if (decodeUInt32)
  {
    do
    {
      decodeUInt64 = [(TIKeyboardCandidateResultSetCoder *)self decodeUInt64];
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:decodeUInt64];
      [v5 addObject:v7];

      --v4;
    }

    while (v4);
  }

  return v5;
}

- (void)encodePointerValueArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v15 = [arrayCopy count];
  mutableData = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [mutableData appendBytes:&v15 length:4];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        -[TIKeyboardCandidateResultSetCoder encodeUInt64:](self, "encodeUInt64:", [*(*(&v11 + 1) + 8 * v10++) unsignedLongLongValue]);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)decodeStringArray
{
  decodeUInt32 = [(TIKeyboardCandidateResultSetCoder *)self decodeUInt32];
  v4 = decodeUInt32;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:decodeUInt32];
  if (decodeUInt32)
  {
    do
    {
      decodeString = [(TIKeyboardCandidateResultSetCoder *)self decodeString];
      [v5 addObject:decodeString];

      --v4;
    }

    while (v4);
  }

  return v5;
}

- (void)encodeStringArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v15 = [arrayCopy count];
  mutableData = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [mutableData appendBytes:&v15 length:4];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(TIKeyboardCandidateResultSetCoder *)self encodeString:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)decodeString
{
  currentPosition = [(TIKeyboardCandidateResultSetCoder *)self currentPosition];
  [(TIKeyboardCandidateResultSetCoder *)self setOffset:strlen(currentPosition) + [(TIKeyboardCandidateResultSetCoder *)self offset]+ 1];
  if ([(TIKeyboardCandidateResultSetCoder *)self offsetHasPassedEndOfData])
  {
    v4 = &stru_1EF56D550;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:currentPosition];
  }

  return v4;
}

- (void)encodeString:(id)string
{
  stringCopy = string;
  uTF8String = [string UTF8String];
  if (uTF8String)
  {
    v7 = uTF8String;
  }

  else
  {
    v7 = "";
  }

  mutableData = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [mutableData appendBytes:v7 length:strlen(v7) + 1];
}

- (unint64_t)decodeUInt64
{
  v3 = 0;
  [(TIKeyboardCandidateResultSetCoder *)self readNumberOfBytes:8 into:&v3];
  return v3;
}

- (void)encodeUInt64:(unint64_t)int64
{
  int64Copy = int64;
  mutableData = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [mutableData appendBytes:&int64Copy length:8];
}

- (unsigned)decodeUInt32
{
  v3 = 0;
  [(TIKeyboardCandidateResultSetCoder *)self readNumberOfBytes:4 into:&v3];
  return v3;
}

- (void)encodeUInt32:(unsigned int)int32
{
  int32Copy = int32;
  mutableData = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [mutableData appendBytes:&int32Copy length:4];
}

- (double)decodeDouble
{
  v3 = 0.0;
  [(TIKeyboardCandidateResultSetCoder *)self readNumberOfBytes:8 into:&v3];
  return v3;
}

- (void)encodeDouble:(double)double
{
  doubleCopy = double;
  mutableData = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [mutableData appendBytes:&doubleCopy length:8];
}

- (unsigned)decodeShort
{
  v3 = 0;
  [(TIKeyboardCandidateResultSetCoder *)self readNumberOfBytes:2 into:&v3];
  return v3;
}

- (void)encodeShort:(unsigned __int16)short
{
  shortCopy = short;
  mutableData = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [mutableData appendBytes:&shortCopy length:2];
}

- (void)readNumberOfBytes:(unint64_t)bytes into:(void *)into
{
  if (bytes && into)
  {
    if ([(TIKeyboardCandidateResultSetCoder *)self offsetHasPassedEndOfData])
    {
      v7 = 0;
    }

    else
    {
      data = [(TIKeyboardCandidateResultSetCoder *)self data];
      v9 = [data length];
      v7 = (v9 - [(TIKeyboardCandidateResultSetCoder *)self offset]);
    }

    if (v7 >= bytes)
    {
      memcpy(into, [(TIKeyboardCandidateResultSetCoder *)self currentPosition], bytes);
      v10 = [(TIKeyboardCandidateResultSetCoder *)self offset]+ bytes;

      [(TIKeyboardCandidateResultSetCoder *)self setOffset:v10];
    }
  }
}

- (unsigned)decodeByte
{
  if ([(TIKeyboardCandidateResultSetCoder *)self offsetHasPassedEndOfData])
  {
    return 0;
  }

  v3 = *[(TIKeyboardCandidateResultSetCoder *)self currentPosition];
  [(TIKeyboardCandidateResultSetCoder *)self setOffset:[(TIKeyboardCandidateResultSetCoder *)self offset]+ 1];
  return v3;
}

- (void)encodeByte:(unsigned __int8)byte
{
  byteCopy = byte;
  mutableData = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [mutableData appendBytes:&byteCopy length:1];
}

- (id)decodeCandidate
{
  v3 = [objc_opt_class() classFromCandidateType:{-[TIKeyboardCandidateResultSetCoder bytes](self, "bytes")[-[TIKeyboardCandidateResultSetCoder offset](self, "offset")]}];
  if (v3)
  {
    v3 = [[v3 alloc] initWithCandidateResultSetCoder:self];
  }

  return v3;
}

- (const)bytes
{
  data = [(TIKeyboardCandidateResultSetCoder *)self data];
  bytes = [data bytes];

  return bytes;
}

- (BOOL)isDecoding
{
  data = [(TIKeyboardCandidateResultSetCoder *)self data];
  v3 = data != 0;

  return v3;
}

- (void)setOffset:(unint64_t)offset
{
  if ([(TIKeyboardCandidateResultSetCoder *)self isDecoding])
  {
    data = [(TIKeyboardCandidateResultSetCoder *)self data];
    v6 = [data length];

    if (v6)
    {
      data2 = [(TIKeyboardCandidateResultSetCoder *)self data];
      v8 = [data2 length];

      if (v8 <= offset)
      {
        [(TIKeyboardCandidateResultSetCoder *)self offsetHasPassedEndOfData];
        [(TIKeyboardCandidateResultSetCoder *)self setOffsetHasPassedEndOfData:1];
        data3 = [(TIKeyboardCandidateResultSetCoder *)self data];
        offset = [data3 length] - 1;
      }
    }

    else
    {
      [(TIKeyboardCandidateResultSetCoder *)self offsetHasPassedEndOfData];
      [(TIKeyboardCandidateResultSetCoder *)self setOffsetHasPassedEndOfData:1];
      offset = 0;
    }
  }

  self->_offset = offset;
}

- (TIKeyboardCandidateResultSetCoder)initWithData:(id)data mutableData:(id)mutableData
{
  dataCopy = data;
  mutableDataCopy = mutableData;
  v12.receiver = self;
  v12.super_class = TIKeyboardCandidateResultSetCoder;
  v9 = [(TIKeyboardCandidateResultSetCoder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_mutableData, mutableData);
    v10->_offset = 0;
    v10->_offsetHasPassedEndOfData = 0;
  }

  return v10;
}

- (id)initForDecodingWithData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    self = [(TIKeyboardCandidateResultSetCoder *)self initWithData:dataCopy mutableData:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v6 = selfCopy;

  return v6;
}

- (id)initForEncoding
{
  v3 = [MEMORY[0x1E695DF88] dataWithLength:57];
  v4 = [(TIKeyboardCandidateResultSetCoder *)self initWithData:0 mutableData:v3];

  return v4;
}

+ (id)decodeWithData:(id)data
{
  dataCopy = data;
  v4 = [[TIKeyboardCandidateResultSetCoder alloc] initForDecodingWithData:dataCopy];

  candidateResultSet = [v4 candidateResultSet];

  return candidateResultSet;
}

+ (id)encodeWithCandidateResultSet:(id)set
{
  setCopy = set;
  initForEncoding = [[TIKeyboardCandidateResultSetCoder alloc] initForEncoding];
  v5 = [initForEncoding dataFromCandidateResultSet:setCopy];

  return v5;
}

+ (Class)classFromCandidateType:(int)type
{
  v3 = *&type;
  v5 = classFromCandidateType____candidateTypeToClassMap;
  if (!classFromCandidateType____candidateTypeToClassMap)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = classFromCandidateType____candidateTypeToClassMap;
    classFromCandidateType____candidateTypeToClassMap = v6;

    v5 = classFromCandidateType____candidateTypeToClassMap;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v9 = [v5 objectForKey:v8];

  if (!v9)
  {
    candidateTypeToClassNameMap = [self candidateTypeToClassNameMap];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v12 = [candidateTypeToClassNameMap objectForKey:v11];

    if (v12)
    {
      v9 = NSClassFromString(v12);
      if (v9)
      {
        v13 = classFromCandidateType____candidateTypeToClassMap;
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
        [v13 setObject:v9 forKey:v14];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)candidateTypeToClassNameMap
{
  if (candidateTypeToClassNameMap___onceToken != -1)
  {
    dispatch_once(&candidateTypeToClassNameMap___onceToken, &__block_literal_global_4394);
  }

  v3 = candidateTypeToClassNameMap___candidateTypeToClassNameMap;

  return v3;
}

void __64__TIKeyboardCandidateResultSetCoder_candidateTypeToClassNameMap__block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1EF7DC320;
  v2[1] = &unk_1EF7DC338;
  v3[0] = @"TIKeyboardCandidate";
  v3[1] = @"TIKeyboardCandidateSingle";
  v2[2] = &unk_1EF7DC350;
  v2[3] = &unk_1EF7DC368;
  v3[2] = @"TIMecabraCandidate";
  v3[3] = @"TIPinyinDisambiguationCandidate";
  v2[4] = &unk_1EF7DC380;
  v2[5] = &unk_1EF7DC398;
  v3[4] = @"TIHandwritingCandidate";
  v3[5] = @"TIZephyrCandidate";
  v2[6] = &unk_1EF7DC3B0;
  v2[7] = &unk_1EF7DC3C8;
  v3[6] = @"TIShortcutConversionCandidate";
  v3[7] = @"TICompositeMecabraCandidate";
  v2[8] = &unk_1EF7DC3E0;
  v2[9] = &unk_1EF7DC3F8;
  v3[8] = @"TIMecabraFacemarkCandidate";
  v3[9] = @"TITextAnimationCandidate";
  v2[10] = &unk_1EF7DC410;
  v2[11] = &unk_1EF7DC428;
  v3[10] = @"TILiveConversionCandidate";
  v3[11] = @"TILabeledKeyboardCandidate";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = candidateTypeToClassNameMap___candidateTypeToClassNameMap;
  candidateTypeToClassNameMap___candidateTypeToClassNameMap = v0;
}

@end