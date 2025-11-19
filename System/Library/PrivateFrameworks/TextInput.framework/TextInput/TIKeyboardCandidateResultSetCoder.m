@interface TIKeyboardCandidateResultSetCoder
+ (Class)classFromCandidateType:(int)a3;
+ (id)candidateTypeToClassNameMap;
+ (id)decodeWithData:(id)a3;
+ (id)encodeWithCandidateResultSet:(id)a3;
- (BOOL)isDecoding;
- (TIKeyboardCandidateResultSetCoder)initWithData:(id)a3 mutableData:(id)a4;
- (const)bytes;
- (double)decodeDouble;
- (id)candidateResultSet;
- (id)dataFromCandidateResultSet:(id)a3;
- (id)decodeCandidate;
- (id)decodePointerValueArray;
- (id)decodeString;
- (id)decodeStringArray;
- (id)initForDecodingWithData:(id)a3;
- (id)initForEncoding;
- (unint64_t)decodeUInt64;
- (unsigned)decodeByte;
- (unsigned)decodeShort;
- (unsigned)decodeUInt32;
- (void)encodeByte:(unsigned __int8)a3;
- (void)encodeDouble:(double)a3;
- (void)encodePointerValueArray:(id)a3;
- (void)encodeShort:(unsigned __int16)a3;
- (void)encodeString:(id)a3;
- (void)encodeStringArray:(id)a3;
- (void)encodeUInt32:(unsigned int)a3;
- (void)encodeUInt64:(unint64_t)a3;
- (void)readNumberOfBytes:(unint64_t)a3 into:(void *)a4;
- (void)setOffset:(unint64_t)a3;
@end

@implementation TIKeyboardCandidateResultSetCoder

- (id)candidateResultSet
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(TIKeyboardCandidateResultSet);
  v4 = [(TIKeyboardCandidateResultSetCoder *)self data];
  v5 = [v4 length];

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

  v9 = [(TIKeyboardCandidateResultSetCoder *)self data];
  v10 = [v9 bytes];

  if (*v10 == -1)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = *v10;
  }

  [(TIKeyboardCandidateResultSet *)v3 setInitialSelectedIndex:v11];
  [(TIKeyboardCandidateResultSet *)v3 setGeneratedCandidateCount:*(v10 + 13)];
  [(TIKeyboardCandidateResultSet *)v3 setBatchCandidateLocation:*(v10 + 17)];
  if (*(v10 + 53) == -1)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = *(v10 + 53);
  }

  [(TIKeyboardCandidateResultSet *)v3 setSelectedDisambiguationCandidateIndex:v12];
  v13 = *(v10 + 33);
  if (v13 == -1)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v14 = [(TIKeyboardCandidateResultSetCoder *)self data];
  v15 = [v14 length];

  if (v15 > v13)
  {
    [(TIKeyboardCandidateResultSetCoder *)self setOffset:*(v10 + 33)];
    v16 = *(v10 + 9);
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:v16];
    if (v16)
    {
      do
      {
        v18 = [(TIKeyboardCandidateResultSetCoder *)self decodeCandidate];
        if (v18)
        {
          [v17 addObject:v18];
        }

        --v16;
      }

      while (v16);
    }

    v19 = [v17 subarrayWithRange:{0, *(v10 + 5)}];
    [(TIKeyboardCandidateResultSet *)v3 setCandidates:v19];

    if (*(v10 + 25))
    {
      v20 = [v17 subarrayWithRange:*(v10 + 21)];
      [(TIKeyboardCandidateResultSet *)v3 setDisambiguationCandidates:v20];
    }

    if (*(v10 + 4))
    {
      v21 = [v17 lastObject];
      [(TIKeyboardCandidateResultSet *)v3 setDefaultCandidate:v21];
    }

LABEL_21:
    v22 = *(v10 + 29);
    v77 = v10;
    if (v22 != -1)
    {
      v23 = [(TIKeyboardCandidateResultSetCoder *)self data];
      v24 = [v23 length];

      if (v24 <= v22)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        v66 = *(v10 + 29);
        *buf = 67109120;
        v89 = v66;
        v67 = MEMORY[0x1E69E9C10];
        v68 = "TIKeyboardCandidateResultSet cannot be decoded : header sort method group offset [%d] is not within the bounds of the data being decoded";
        goto LABEL_68;
      }

      v73 = v3;
      [(TIKeyboardCandidateResultSetCoder *)self setOffset:*(v10 + 29)];
      v76 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(v10 + 37)];
      v75 = [(TIKeyboardCandidateResultSetCoder *)self decodeStringArray];
      if (*(v10 + 37))
      {
        v25 = 0;
        do
        {
          v26 = [(TIKeyboardCandidateResultSetCoder *)self decodeUInt32];
          v27 = v26;
          v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:v26];
          if (v26)
          {
            v29 = 0;
            do
            {
              v30 = objc_alloc_init(TIKeyboardCandidateGroup);
              v31 = [(TIKeyboardCandidateResultSetCoder *)self decodeString];
              [(TIKeyboardCandidateGroup *)v30 setTitle:v31];

              v32 = [(TIKeyboardCandidateResultSetCoder *)self decodeUInt32];
              if (v32)
              {
                v33 = v32;
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

          v35 = [v75 objectAtIndex:v25];
          [v76 setObject:v28 forKey:v35];

          ++v25;
          v10 = v77;
        }

        while (v25 < *(v77 + 37));
      }

      v3 = v73;
      [(TIKeyboardCandidateResultSet *)v73 setSortMethodGroups:v76];
    }

    v36 = *(v10 + 41);
    if (v36 != -1)
    {
      v37 = [(TIKeyboardCandidateResultSetCoder *)self data];
      v38 = [v37 length];

      if (v38 <= v36)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        v69 = *(v10 + 41);
        *buf = 67109120;
        v89 = v69;
        v67 = MEMORY[0x1E69E9C10];
        v68 = "TIKeyboardCandidateResultSet cannot be decoded : header sort method offset [%d] is not within the bounds of the data being decoded";
        goto LABEL_68;
      }

      [(TIKeyboardCandidateResultSetCoder *)self setOffset:*(v10 + 41)];
      v39 = [(TIKeyboardCandidateResultSetCoder *)self decodeStringArray];
      [(TIKeyboardCandidateResultSet *)v3 setSortMethods:v39];
    }

    v40 = *(v10 + 45);
    if (v40 == -1)
    {
      goto LABEL_46;
    }

    v41 = [(TIKeyboardCandidateResultSetCoder *)self data];
    v42 = [v41 length];

    if (v42 > v40)
    {
      [(TIKeyboardCandidateResultSetCoder *)self setOffset:*(v10 + 45)];
      v43 = [(TIKeyboardCandidateResultSetCoder *)self decodeStringArray];
      v44 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v43, "count")}];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v45 = v43;
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
            v51 = [(TIKeyboardCandidateResultSetCoder *)self decodeStringArray];
            [v44 setObject:v51 forKey:v50];
          }

          v47 = [v45 countByEnumeratingWithState:&v82 objects:v87 count:16];
        }

        while (v47);
      }

      [(TIKeyboardCandidateResultSet *)v3 setIndexTitles:v44];
      v10 = v77;
LABEL_46:
      v52 = *(v10 + 49);
      if (v52 == -1)
      {
LABEL_56:
        v64 = v3;

        goto LABEL_71;
      }

      v53 = [(TIKeyboardCandidateResultSetCoder *)self data];
      v54 = [v53 length];

      if (v54 > v52)
      {
        v74 = v3;
        [(TIKeyboardCandidateResultSetCoder *)self setOffset:*(v10 + 49)];
        v55 = [(TIKeyboardCandidateResultSetCoder *)self decodeStringArray];
        v56 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v55, "count")}];
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v57 = v55;
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
        v71 = *(v10 + 49);
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

    v70 = *(v10 + 45);
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
    v65 = *(v10 + 33);
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

- (id)dataFromCandidateResultSet:(id)a3
{
  v151 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 initialSelectedIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v96 = -1;
  }

  else
  {
    v96 = [v4 initialSelectedIndex];
  }

  v99 = [v4 defaultCandidate];

  v5 = [v4 candidates];
  v95 = [v5 count];

  v94 = [v4 generatedCandidateCount];
  v93 = [v4 batchCandidateLocation];
  v6 = [v4 disambiguationCandidates];
  v98 = [v6 count];

  v7 = [v4 sortMethodGroups];
  v97 = [v7 count];

  if ([v4 selectedDisambiguationCandidateIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v92 = 0xFFFFFFFFLL;
  }

  else
  {
    v92 = [v4 selectedDisambiguationCandidateIndex];
  }

  v105 = v4;
  if (v97)
  {
    v8 = MEMORY[0x1E695DF70];
    v9 = [v4 candidates];
    v114 = [v8 arrayWithArray:v9];

    v10 = [v4 candidates];
    v11 = [v10 count];

    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v11];
    v13 = 0x1E696A000uLL;
    v14 = v4;
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{i, v92}];
        v17 = [v14 candidates];
        v18 = [v17 objectAtIndex:i];
        [v12 setObject:v16 forKey:v18];

        v13 = 0x1E696A000uLL;
      }
    }

    v19 = [v14 sortMethodGroups];
    v20 = [v19 allKeys];

    [(TIKeyboardCandidateResultSetCoder *)self encodeStringArray:v20];
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = v20;
    v4 = v14;
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
          v23 = [v4 sortMethodGroups];
          v24 = [v23 objectForKey:v22];

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
                v27 = [v26 title];
                [(TIKeyboardCandidateResultSetCoder *)self encodeString:v27];

                v28 = [v26 candidates];
                -[TIKeyboardCandidateResultSetCoder encodeUInt32:](self, "encodeUInt32:", [v28 count]);

                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v29 = [v26 candidates];
                v30 = [v29 countByEnumeratingWithState:&v132 objects:v148 count:16];
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
                        objc_enumerationMutation(v29);
                      }

                      v34 = *(*(&v132 + 1) + 8 * j);
                      v35 = [v12 objectForKey:v34];
                      v36 = [v35 integerValue];
                      if (!v35)
                      {
                        [v114 addObject:v34];
                        v37 = [*(v13 + 3480) numberWithUnsignedInteger:v11];
                        [v12 setObject:v37 forKey:v34];

                        v13 = 0x1E696A000;
                        v36 = v11++;
                      }

                      [(TIKeyboardCandidateResultSetCoder *)self encodeShort:v36];
                    }

                    v31 = [v29 countByEnumeratingWithState:&v132 objects:v148 count:16];
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
          v4 = v105;
        }

        while (v103 + 1 != v102);
        v102 = [obj countByEnumeratingWithState:&v140 objects:v150 count:16];
      }

      while (v102);
    }

    if (v114)
    {
      v38 = v114;
      v115 = 57;
      v113 = v38;
      goto LABEL_39;
    }

    v39 = 57;
  }

  else
  {
    v39 = -1;
  }

  v115 = v39;
  v38 = [v4 candidates];
  v113 = 0;
LABEL_39:
  v111 = [v38 count];
  v40 = v98 + [v38 count];
  if (v99)
  {
    ++v40;
  }

  v109 = v40;
  if (v40)
  {
    v41 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
    v107 = [v41 length];

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v42 = v38;
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
    v47 = [v105 disambiguationCandidates];
    v48 = [v47 countByEnumeratingWithState:&v124 objects:v146 count:16];
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
            objc_enumerationMutation(v47);
          }

          [*(*(&v124 + 1) + 8 * m) encodeWithCandidateResultSetCoder:self];
        }

        v49 = [v47 countByEnumeratingWithState:&v124 objects:v146 count:16];
      }

      while (v49);
    }

    v4 = v105;
    v52 = [v105 defaultCandidate];

    if (v52)
    {
      v53 = [v105 defaultCandidate];
      [v53 encodeWithCandidateResultSetCoder:self];
    }
  }

  else
  {
    v107 = -1;
  }

  v54 = [v4 sortMethods];
  v55 = v4;
  v56 = [v54 count];

  if (v56)
  {
    v57 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
    v104 = [v57 length];

    v58 = [v55 sortMethods];
    [(TIKeyboardCandidateResultSetCoder *)self encodeStringArray:v58];
  }

  else
  {
    v104 = -1;
  }

  v59 = v55;
  v60 = [v55 indexTitles];
  v61 = [v60 count];

  if (v61)
  {
    v62 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
    v63 = [v62 length];

    v64 = [v55 indexTitles];
    v65 = [v64 allKeys];
    [(TIKeyboardCandidateResultSetCoder *)self encodeStringArray:v65];

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v66 = [v55 indexTitles];
    v67 = [v66 countByEnumeratingWithState:&v120 objects:v145 count:16];
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
            objc_enumerationMutation(v66);
          }

          v71 = *(*(&v120 + 1) + 8 * n);
          v72 = [v59 indexTitles];
          v73 = [v72 objectForKey:v71];

          [(TIKeyboardCandidateResultSetCoder *)self encodeStringArray:v73];
        }

        v68 = [v66 countByEnumeratingWithState:&v120 objects:v145 count:16];
      }

      while (v68);
    }
  }

  else
  {
    v63 = -1;
  }

  v74 = [v59 showExtensionCandidates];
  v75 = [v74 count];

  if (v75)
  {
    v76 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
    v77 = [v76 length];

    v78 = [v59 showExtensionCandidates];
    v79 = [v78 allKeys];
    [(TIKeyboardCandidateResultSetCoder *)self encodeStringArray:v79];

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v80 = [v59 showExtensionCandidates];
    v81 = [v80 countByEnumeratingWithState:&v116 objects:v144 count:16];
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
            objc_enumerationMutation(v80);
          }

          v85 = *(*(&v116 + 1) + 8 * ii);
          v86 = [v105 showExtensionCandidates];
          v87 = [v86 objectForKey:v85];

          -[TIKeyboardCandidateResultSetCoder encodeByte:](self, "encodeByte:", [v87 integerValue] != 0);
        }

        v82 = [v80 countByEnumeratingWithState:&v116 objects:v144 count:16];
      }

      while (v82);
    }

    v59 = v105;
  }

  else
  {
    v77 = -1;
  }

  v88 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  v89 = [v88 bytes];

  *v89 = v96;
  *(v89 + 4) = v99 != 0;
  *(v89 + 5) = v95;
  *(v89 + 9) = v109;
  *(v89 + 13) = v94;
  *(v89 + 17) = v93;
  *(v89 + 21) = v111;
  *(v89 + 25) = v98;
  *(v89 + 29) = v115;
  *(v89 + 33) = v107;
  *(v89 + 37) = v97;
  *(v89 + 41) = v104;
  *(v89 + 45) = v63;
  *(v89 + 49) = v77;
  *(v89 + 53) = v92;
  v90 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];

  return v90;
}

- (id)decodePointerValueArray
{
  v3 = [(TIKeyboardCandidateResultSetCoder *)self decodeUInt32];
  v4 = v3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  if (v3)
  {
    do
    {
      v6 = [(TIKeyboardCandidateResultSetCoder *)self decodeUInt64];
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
      [v5 addObject:v7];

      --v4;
    }

    while (v4);
  }

  return v5;
}

- (void)encodePointerValueArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = [v4 count];
  v5 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [v5 appendBytes:&v15 length:4];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
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
  v3 = [(TIKeyboardCandidateResultSetCoder *)self decodeUInt32];
  v4 = v3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  if (v3)
  {
    do
    {
      v6 = [(TIKeyboardCandidateResultSetCoder *)self decodeString];
      [v5 addObject:v6];

      --v4;
    }

    while (v4);
  }

  return v5;
}

- (void)encodeStringArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = [v4 count];
  v5 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [v5 appendBytes:&v15 length:4];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
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
  v3 = [(TIKeyboardCandidateResultSetCoder *)self currentPosition];
  [(TIKeyboardCandidateResultSetCoder *)self setOffset:strlen(v3) + [(TIKeyboardCandidateResultSetCoder *)self offset]+ 1];
  if ([(TIKeyboardCandidateResultSetCoder *)self offsetHasPassedEndOfData])
  {
    v4 = &stru_1EF56D550;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  return v4;
}

- (void)encodeString:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  v8 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [v8 appendBytes:v7 length:strlen(v7) + 1];
}

- (unint64_t)decodeUInt64
{
  v3 = 0;
  [(TIKeyboardCandidateResultSetCoder *)self readNumberOfBytes:8 into:&v3];
  return v3;
}

- (void)encodeUInt64:(unint64_t)a3
{
  v4 = a3;
  v3 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [v3 appendBytes:&v4 length:8];
}

- (unsigned)decodeUInt32
{
  v3 = 0;
  [(TIKeyboardCandidateResultSetCoder *)self readNumberOfBytes:4 into:&v3];
  return v3;
}

- (void)encodeUInt32:(unsigned int)a3
{
  v4 = a3;
  v3 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [v3 appendBytes:&v4 length:4];
}

- (double)decodeDouble
{
  v3 = 0.0;
  [(TIKeyboardCandidateResultSetCoder *)self readNumberOfBytes:8 into:&v3];
  return v3;
}

- (void)encodeDouble:(double)a3
{
  v4 = a3;
  v3 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [v3 appendBytes:&v4 length:8];
}

- (unsigned)decodeShort
{
  v3 = 0;
  [(TIKeyboardCandidateResultSetCoder *)self readNumberOfBytes:2 into:&v3];
  return v3;
}

- (void)encodeShort:(unsigned __int16)a3
{
  v4 = a3;
  v3 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [v3 appendBytes:&v4 length:2];
}

- (void)readNumberOfBytes:(unint64_t)a3 into:(void *)a4
{
  if (a3 && a4)
  {
    if ([(TIKeyboardCandidateResultSetCoder *)self offsetHasPassedEndOfData])
    {
      v7 = 0;
    }

    else
    {
      v8 = [(TIKeyboardCandidateResultSetCoder *)self data];
      v9 = [v8 length];
      v7 = (v9 - [(TIKeyboardCandidateResultSetCoder *)self offset]);
    }

    if (v7 >= a3)
    {
      memcpy(a4, [(TIKeyboardCandidateResultSetCoder *)self currentPosition], a3);
      v10 = [(TIKeyboardCandidateResultSetCoder *)self offset]+ a3;

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

- (void)encodeByte:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TIKeyboardCandidateResultSetCoder *)self mutableData];
  [v3 appendBytes:&v4 length:1];
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
  v2 = [(TIKeyboardCandidateResultSetCoder *)self data];
  v3 = [v2 bytes];

  return v3;
}

- (BOOL)isDecoding
{
  v2 = [(TIKeyboardCandidateResultSetCoder *)self data];
  v3 = v2 != 0;

  return v3;
}

- (void)setOffset:(unint64_t)a3
{
  if ([(TIKeyboardCandidateResultSetCoder *)self isDecoding])
  {
    v5 = [(TIKeyboardCandidateResultSetCoder *)self data];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [(TIKeyboardCandidateResultSetCoder *)self data];
      v8 = [v7 length];

      if (v8 <= a3)
      {
        [(TIKeyboardCandidateResultSetCoder *)self offsetHasPassedEndOfData];
        [(TIKeyboardCandidateResultSetCoder *)self setOffsetHasPassedEndOfData:1];
        v9 = [(TIKeyboardCandidateResultSetCoder *)self data];
        a3 = [v9 length] - 1;
      }
    }

    else
    {
      [(TIKeyboardCandidateResultSetCoder *)self offsetHasPassedEndOfData];
      [(TIKeyboardCandidateResultSetCoder *)self setOffsetHasPassedEndOfData:1];
      a3 = 0;
    }
  }

  self->_offset = a3;
}

- (TIKeyboardCandidateResultSetCoder)initWithData:(id)a3 mutableData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TIKeyboardCandidateResultSetCoder;
  v9 = [(TIKeyboardCandidateResultSetCoder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_mutableData, a4);
    v10->_offset = 0;
    v10->_offsetHasPassedEndOfData = 0;
  }

  return v10;
}

- (id)initForDecodingWithData:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    self = [(TIKeyboardCandidateResultSetCoder *)self initWithData:v4 mutableData:0];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

- (id)initForEncoding
{
  v3 = [MEMORY[0x1E695DF88] dataWithLength:57];
  v4 = [(TIKeyboardCandidateResultSetCoder *)self initWithData:0 mutableData:v3];

  return v4;
}

+ (id)decodeWithData:(id)a3
{
  v3 = a3;
  v4 = [[TIKeyboardCandidateResultSetCoder alloc] initForDecodingWithData:v3];

  v5 = [v4 candidateResultSet];

  return v5;
}

+ (id)encodeWithCandidateResultSet:(id)a3
{
  v3 = a3;
  v4 = [[TIKeyboardCandidateResultSetCoder alloc] initForEncoding];
  v5 = [v4 dataFromCandidateResultSet:v3];

  return v5;
}

+ (Class)classFromCandidateType:(int)a3
{
  v3 = *&a3;
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
    v10 = [a1 candidateTypeToClassNameMap];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v12 = [v10 objectForKey:v11];

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