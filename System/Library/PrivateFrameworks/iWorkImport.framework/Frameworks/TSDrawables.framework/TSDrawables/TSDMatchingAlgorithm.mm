@interface TSDMatchingAlgorithm
+ (id)bestMatchesFromArray:(id)a3;
- (BOOL)p_step4FindAZeroAndReturnRow:(int *)a3 column:(int *)a4;
- (id)p_bestMatchesFromArray:(id)a3;
- (int)p_doStep1;
- (int)p_doStep2;
- (int)p_doStep3;
- (int)p_doStep4;
- (int)p_doStep5;
- (int)p_doStep6;
- (int)p_step4IndexOfStarredZeroInRow:(int)a3;
- (void)p_allocateMatrices;
- (void)p_deallocateMatrices;
@end

@implementation TSDMatchingAlgorithm

- (void)p_allocateMatrices
{
  mMatrixDimension = self->mMatrixDimension;
  if (mMatrixDimension <= 0)
  {
    sub_276808A3C();
  }

  self->mCostMatrix = malloc_type_calloc(8uLL, mMatrixDimension * mMatrixDimension, 0x94A7E2F0uLL);
  self->mMaskMatrix = malloc_type_calloc(1uLL, self->mMatrixDimension * self->mMatrixDimension, 0x21888FE8uLL);
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_initWithCapacity_(v4, v5, self->mMatrixDimension * self->mMatrixDimension);
  mObjectMapping = self->mObjectMapping;
  self->mObjectMapping = v6;

  v9 = self->mMatrixDimension;
  if (v9 >= 1)
  {
    v10 = 0;
    for (i = 0; i < v9; ++i)
    {
      if (v9 >= 1)
      {
        for (j = 0; j < v9; ++j)
        {
          *(&self->mCostMatrix[j] + v10 * v9) = 0x3FFFFFFFFFFFFFFFLL;
          v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v8);
          objc_msgSend_setObject_atIndexedSubscript_(self->mObjectMapping, v14, v13, j + i * self->mMatrixDimension);

          v9 = self->mMatrixDimension;
        }
      }

      v10 += 8;
    }
  }

  self->mIsStarInColumn = malloc_type_calloc(1uLL, v9, 0xF4865374uLL);
  self->mIsStarInRow = malloc_type_calloc(1uLL, self->mMatrixDimension, 0xBB1BB694uLL);
  self->mIsColCovered = malloc_type_calloc(1uLL, self->mMatrixDimension, 0xCF1B1A24uLL);
  self->mIsRowCovered = malloc_type_calloc(1uLL, self->mMatrixDimension, 0x244EC1E3uLL);
}

- (void)p_deallocateMatrices
{
  free(self->mCostMatrix);
  free(self->mMaskMatrix);
  free(self->mIsStarInColumn);
  free(self->mIsStarInRow);
  free(self->mIsColCovered);
  mIsRowCovered = self->mIsRowCovered;

  free(mIsRowCovered);
}

- (int)p_doStep1
{
  mMatrixDimension = self->mMatrixDimension;
  if (mMatrixDimension >= 1)
  {
    v3 = 0;
    for (i = 0; i < mMatrixDimension; ++i)
    {
      if (mMatrixDimension)
      {
        v5 = 0;
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          v6 = self->mCostMatrix + mMatrixDimension * v3;
          if (v7 >= *&v6[8 * v5])
          {
            v7 = *&v6[8 * v5];
          }

          ++v5;
        }

        while (mMatrixDimension != v5);
        if (v7 >= 1 && mMatrixDimension >= 1)
        {
          v9 = 0;
          mCostMatrix = self->mCostMatrix;
          do
          {
            *(mCostMatrix + v3 * mMatrixDimension) -= v7;
            ++v9;
            mMatrixDimension = self->mMatrixDimension;
            ++mCostMatrix;
          }

          while (mMatrixDimension > v9);
        }
      }

      v3 += 8;
    }
  }

  return 2;
}

- (int)p_doStep2
{
  mMatrixDimension = self->mMatrixDimension;
  if (mMatrixDimension >= 1)
  {
    v3 = 0;
    v4 = 0;
    mIsStarInRow = self->mIsStarInRow;
    do
    {
      if (!mIsStarInRow[v4] && mMatrixDimension)
      {
        v6 = 0;
        while (self->mIsStarInColumn[v6] || *(&self->mCostMatrix[v6] + mMatrixDimension * v3))
        {
          if (mMatrixDimension == ++v6)
          {
            goto LABEL_11;
          }
        }

        self->mMaskMatrix[mMatrixDimension * v4 + v6] = 1;
        mIsStarInColumn = self->mIsStarInColumn;
        mIsStarInRow = self->mIsStarInRow;
        mIsStarInRow[v4] = 1;
        mIsStarInColumn[v6] = 1;
        mMatrixDimension = self->mMatrixDimension;
      }

LABEL_11:
      ++v4;
      v3 += 8;
    }

    while (mMatrixDimension > v4);
  }

  return 3;
}

- (int)p_doStep3
{
  mMatrixDimension = self->mMatrixDimension;
  if (mMatrixDimension < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    LODWORD(v4) = 0;
    mIsStarInColumn = self->mIsStarInColumn;
    do
    {
      if (mIsStarInColumn[v3])
      {
        self->mIsColCovered[v3] = 1;
        LODWORD(v4) = v4 + 1;
      }

      ++v3;
    }

    while (mMatrixDimension != v3);
    v4 = v4;
  }

  if (mMatrixDimension == v4)
  {
    return 7;
  }

  else
  {
    return 4;
  }
}

- (BOOL)p_step4FindAZeroAndReturnRow:(int *)a3 column:(int *)a4
{
  mMatrixDimension = self->mMatrixDimension;
  if (mMatrixDimension < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  while (self->mIsRowCovered[v6])
  {
LABEL_8:
    ++v6;
    v5 += mMatrixDimension;
    if (v6 == mMatrixDimension)
    {
      return 0;
    }
  }

  v7 = 0;
  while (self->mIsColCovered[v7] || self->mCostMatrix[v5 + v7])
  {
    if (mMatrixDimension == ++v7)
    {
      goto LABEL_8;
    }
  }

  *a3 = v6;
  *a4 = v7;
  return 1;
}

- (int)p_step4IndexOfStarredZeroInRow:(int)a3
{
  mMatrixDimension = self->mMatrixDimension;
  if (mMatrixDimension < 1)
  {
LABEL_5:
    LODWORD(v5) = -1;
  }

  else
  {
    v5 = 0;
    v6 = &self->mMaskMatrix[mMatrixDimension * a3];
    while (v6[v5] != 1)
    {
      if (mMatrixDimension == ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (int)p_doStep4
{
  v9 = 0;
  if (!objc_msgSend_p_step4FindAZeroAndReturnRow_column_(self, a2, &v9 + 4, &v9))
  {
    return 6;
  }

  while (1)
  {
    self->mMaskMatrix[self->mMatrixDimension * SHIDWORD(v9) + v9] = 2;
    v4 = objc_msgSend_p_step4IndexOfStarredZeroInRow_(self, v3, HIDWORD(v9));
    if (v4 == -1)
    {
      break;
    }

    mIsColCovered = self->mIsColCovered;
    self->mIsRowCovered[SHIDWORD(v9)] = 1;
    mIsColCovered[v4] = 0;
    if ((objc_msgSend_p_step4FindAZeroAndReturnRow_column_(self, v5, &v9 + 4, &v9) & 1) == 0)
    {
      return 6;
    }
  }

  v8 = v9;
  self->mZ0Row = SHIDWORD(v9);
  self->mZ0Col = v8;
  return 5;
}

- (int)p_doStep5
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277D812A8];
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, self->mZ0Row);
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, self->mZ0Col);
  v10 = objc_msgSend_pairWithFirst_second_(v4, v9, v6, v8);
  objc_msgSend_addObject_(v3, v11, v10);

  while (1)
  {
    v14 = objc_msgSend_lastObject(v3, v12, v13);
    v17 = objc_msgSend_second(v14, v15, v16);
    v20 = objc_msgSend_intValue(v17, v18, v19);

    if (!self->mIsStarInColumn[v20])
    {
      break;
    }

    mMatrixDimension = self->mMatrixDimension;
    if (mMatrixDimension < 1)
    {
LABEL_7:
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = 0;
      v24 = &self->mMaskMatrix[v20];
      while (*v24 != 1)
      {
        v24 += mMatrixDimension;
        if (mMatrixDimension == ++v23)
        {
          goto LABEL_7;
        }
      }
    }

    v25 = MEMORY[0x277D812A8];
    v26 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v21, v23);
    v28 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v27, v20);
    v30 = objc_msgSend_pairWithFirst_second_(v25, v29, v26, v28);
    objc_msgSend_addObject_(v3, v31, v30);

    v34 = objc_msgSend_lastObject(v3, v32, v33);
    v37 = objc_msgSend_first(v34, v35, v36);
    v40 = objc_msgSend_intValue(v37, v38, v39);

    v42 = self->mMatrixDimension;
    if (v42 < 1)
    {
LABEL_12:
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSDMatchingAlgorithm p_doStep5]");
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMatchingAlgorithm.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v48, v45, v47, 272, 0, "did not find prime in row!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
      v43 = 0xFFFFFFFFLL;
    }

    else
    {
      v43 = 0;
      while (self->mMaskMatrix[v42 * v40 + v43] != 2)
      {
        if (v42 == ++v43)
        {
          goto LABEL_12;
        }
      }
    }

    v51 = MEMORY[0x277D812A8];
    v52 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v41, v40);
    v54 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v53, v43);
    v56 = objc_msgSend_pairWithFirst_second_(v51, v55, v52, v54);
    objc_msgSend_addObject_(v3, v57, v56);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v58 = v3;
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v92, v96, 16);
  if (v60)
  {
    v63 = v60;
    v64 = *v93;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v93 != v64)
        {
          objc_enumerationMutation(v58);
        }

        v66 = *(*(&v92 + 1) + 8 * i);
        v67 = objc_msgSend_first(v66, v61, v62, v92);
        v70 = objc_msgSend_intValue(v67, v68, v69);

        v73 = objc_msgSend_second(v66, v71, v72);
        LODWORD(v67) = objc_msgSend_intValue(v73, v74, v75);

        v76 = &self->mMaskMatrix[self->mMatrixDimension * v70];
        v77 = v76[v67] != 1;
        v76[v67] = v77;
        mIsStarInColumn = self->mIsStarInColumn;
        self->mIsStarInRow[v70] = v77;
        mIsStarInColumn[v67] = v77;
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v92, v96, 16);
    }

    while (v63);
  }

  v79 = self->mMatrixDimension;
  if (v79 >= 1)
  {
    v80 = 0;
    v81 = 0;
    mIsStarInRow = self->mIsStarInRow;
    do
    {
      if (!mIsStarInRow[v81])
      {
        v83 = 0;
        while (self->mMaskMatrix[v80 + v83] != 1)
        {
          if (v79 == ++v83)
          {
            goto LABEL_29;
          }
        }

        mIsStarInRow[v81] = 1;
        self->mIsStarInColumn[v83] = 1;
      }

LABEL_29:
      ++v81;
      v80 += v79;
    }

    while (v81 != v79);
    v84 = 0;
    v85 = self->mIsStarInColumn;
    do
    {
      if (!v85[v84])
      {
        v86 = 0;
        mMaskMatrix = self->mMaskMatrix;
        while (mMaskMatrix[v84] != 1)
        {
          mMaskMatrix += v79;
          if (v79 == ++v86)
          {
            goto LABEL_37;
          }
        }

        self->mIsStarInRow[v86] = 1;
        v85[v84] = 1;
      }

LABEL_37:
      ++v84;
    }

    while (v84 != v79);
    bzero(self->mIsRowCovered, v79);
    bzero(self->mIsColCovered, v79);
    for (j = 0; j < v79; ++j)
    {
      if (v79 >= 1)
      {
        for (k = 0; k < v79; ++k)
        {
          v90 = &self->mMaskMatrix[j * v79];
          if (v90[k] == 2)
          {
            v90[k] = 0;
            v79 = self->mMatrixDimension;
          }
        }
      }
    }
  }

  return 3;
}

- (int)p_doStep6
{
  mMatrixDimension = self->mMatrixDimension;
  if (mMatrixDimension >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (!self->mIsRowCovered[v4])
      {
        mIsColCovered = self->mIsColCovered;
        v7 = self->mMatrixDimension;
        v8 = v3;
        do
        {
          v9 = *mIsColCovered++;
          if ((v9 & 1) == 0 && v5 >= *(self->mCostMatrix + v8))
          {
            v5 = *(self->mCostMatrix + v8);
          }

          v8 += 8;
          --v7;
        }

        while (v7);
      }

      ++v4;
      v3 += 8 * mMatrixDimension;
    }

    while (v4 != mMatrixDimension);
    v10 = 0;
    v11 = 0;
    while (mMatrixDimension < 1)
    {
LABEL_20:
      ++v11;
      v10 += 8;
      if (mMatrixDimension <= v11)
      {
        return 4;
      }
    }

    v12 = 0;
    v13 = self->mIsColCovered;
    v14 = self->mIsRowCovered[v11];
    while (1)
    {
      if (v14)
      {
        if (v13[v12])
        {
          v15 = self->mCostMatrix + v10 * mMatrixDimension;
          v16 = *&v15[8 * v12] + v5;
LABEL_18:
          *&v15[8 * v12] = v16;
        }
      }

      else if (!v13[v12])
      {
        v15 = self->mCostMatrix + v10 * mMatrixDimension;
        v16 = *&v15[8 * v12] - v5;
        goto LABEL_18;
      }

      ++v12;
      mMatrixDimension = self->mMatrixDimension;
      if (mMatrixDimension <= v12)
      {
        goto LABEL_20;
      }
    }
  }

  return 4;
}

- (id)p_bestMatchesFromArray:(id)a3
{
  v180 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6) > 1)
  {
    v157 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8);
    v12 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11);
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v149 = v4;
    obj = v4;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v172, v179, 16);
    if (v14)
    {
      v17 = v14;
      v18 = 0;
      v153 = 0;
      v155 = *v173;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v173 != v155)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v172 + 1) + 8 * i);
          v21 = objc_msgSend_outgoingMatchObject(v20, v15, v16);
          if (!v21 || (v24 = v21, objc_msgSend_incomingMatchObject(v20, v22, v23), v25 = objc_claimAutoreleasedReturnValue(), v25, v24, !v25))
          {
            v27 = MEMORY[0x277D81150];
            v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSDMatchingAlgorithm p_bestMatchesFromArray:]");
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMatchingAlgorithm.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 439, 0, "Match does not have both incoming and outgoing objects!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
          }

          v34 = objc_msgSend_outgoingMatchObject(v20, v22, v26);
          v36 = objc_msgSend_objectForKeyedSubscript_(v157, v35, v34);

          if (!v36)
          {
            v39 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v37, v18);
            v42 = objc_msgSend_outgoingMatchObject(v20, v40, v41);
            objc_msgSend_setObject_forKeyedSubscript_(v157, v43, v39, v42);

            ++v18;
          }

          v44 = objc_msgSend_incomingMatchObject(v20, v37, v38);
          v46 = objc_msgSend_objectForKeyedSubscript_(v12, v45, v44);

          if (!v46)
          {
            v48 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v47, v153);
            v51 = objc_msgSend_incomingMatchObject(v20, v49, v50);
            objc_msgSend_setObject_forKeyedSubscript_(v12, v52, v48, v51);

            ++v153;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v172, v179, 16);
      }

      while (v17);
    }

    v53 = v157;
    v58 = objc_msgSend_count(v157, v54, v55);
    if ((v58 & 0x8000000000000000) != 0)
    {
      sub_276808AE0();
      v58 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v59 = objc_msgSend_count(v12, v56, v57);
    if ((v59 & 0x8000000000000000) != 0)
    {
      sub_276808B64();
      v59 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v170[0] = MEMORY[0x277D85DD0];
    v170[1] = 3221225472;
    v170[2] = sub_2766CC9E0;
    v170[3] = &unk_27A6CCDB8;
    v60 = obj;
    v171 = v60;
    v61 = MEMORY[0x277C9C8B0](v170);
    v64 = v61;
    if (v58 == 1 || v59 == 1)
    {
      v141 = MEMORY[0x277CBEA60];
      v142 = v60;
      v143 = v64;
      v140 = objc_msgSend_sortedArrayUsingComparator_(v142, v62, v64);
      v124 = objc_msgSend_firstObject(v140, v144, v145);
      v9 = objc_msgSend_arrayWithObject_(v141, v146, v124);
      v4 = v149;
    }

    else
    {
      v148 = v61;
      if (v58 <= v59)
      {
        v65 = v59;
      }

      else
      {
        v65 = v58;
      }

      self->mMatrixDimension = v65;
      objc_msgSend_p_allocateMatrices(self, v62, v63);
      mMatrixDimension = self->mMatrixDimension;
      if (mMatrixDimension >= 1)
      {
        v67 = 0;
        for (j = 0; j < mMatrixDimension; ++j)
        {
          if (mMatrixDimension >= 1)
          {
            for (k = 0; k < mMatrixDimension; ++k)
            {
              if (j >= v58 || k >= v59)
              {
                *(&self->mCostMatrix[k] + v67 * mMatrixDimension) = 0;
                mMatrixDimension = self->mMatrixDimension;
              }
            }
          }

          v67 += 8;
        }
      }

      v154 = v12;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v150 = v60;
      v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v150, v70, &v166, v178, 16);
      if (v156)
      {
        obja = *v167;
        do
        {
          for (m = 0; m != v156; ++m)
          {
            if (*v167 != obja)
            {
              objc_enumerationMutation(v150);
            }

            v74 = *(*(&v166 + 1) + 8 * m);
            v75 = objc_msgSend_outgoingMatchObject(v74, v71, v72);
            v77 = objc_msgSend_objectForKeyedSubscript_(v53, v76, v75);
            v80 = objc_msgSend_integerValue(v77, v78, v79);

            v83 = objc_msgSend_incomingMatchObject(v74, v81, v82);
            v85 = objc_msgSend_objectForKeyedSubscript_(v154, v84, v83);
            v88 = objc_msgSend_integerValue(v85, v86, v87);

            v90 = objc_msgSend_objectAtIndexedSubscript_(self->mObjectMapping, v89, v88 + self->mMatrixDimension * v80);
            v93 = objc_msgSend_null(MEMORY[0x277CBEB68], v91, v92);

            if (v90 != v93)
            {
              v96 = MEMORY[0x277D81150];
              v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "[TSDMatchingAlgorithm p_bestMatchesFromArray:]");
              v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMatchingAlgorithm.m");
              v101 = objc_msgSend_objectAtIndexedSubscript_(self->mObjectMapping, v100, v88 + self->mMatrixDimension * v80);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v102, v97, v99, 501, 0, "Duplicate match between objects! (%@ is a duplicate of %@)", v74, v101);

              v53 = v157;
              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104);
            }

            self->mCostMatrix[self->mMatrixDimension * v80 + v88] = objc_msgSend_matchCost(v74, v94, v95);
            objc_msgSend_setObject_atIndexedSubscript_(self->mObjectMapping, v105, v74, v88 + self->mMatrixDimension * v80);
          }

          v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v150, v71, &v166, v178, 16);
        }

        while (v156);
      }

      v108 = 1;
      do
      {
        if (v108 > 3)
        {
          switch(v108)
          {
            case 4:
              v108 = objc_msgSend_p_doStep4(self, v106, v107);
              break;
            case 5:
              v108 = objc_msgSend_p_doStep5(self, v106, v107);
              break;
            case 6:
              v108 = objc_msgSend_p_doStep6(self, v106, v107);
              break;
            default:
              goto LABEL_58;
          }
        }

        else if (v108 == 1)
        {
          v108 = objc_msgSend_p_doStep1(self, v106, v107);
        }

        else if (v108 == 2)
        {
          v108 = objc_msgSend_p_doStep2(self, v106, v107);
        }

        else
        {
          v108 = objc_msgSend_p_doStep3(self, v106, v107);
        }
      }

      while (v108 > 0);
LABEL_58:
      v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v106, v107);
      v111 = self->mMatrixDimension;
      if (v111 >= 1)
      {
        for (n = 0; n < v111; ++n)
        {
          if (v111 >= 1)
          {
            for (ii = 0; ii < v111; ++ii)
            {
              if (self->mMaskMatrix[n * v111 + ii] == 1)
              {
                v114 = objc_msgSend_objectAtIndexedSubscript_(self->mObjectMapping, v109, ii + n * v111);
                v117 = objc_msgSend_null(MEMORY[0x277CBEB68], v115, v116);

                v111 = self->mMatrixDimension;
                if (v114 != v117)
                {
                  v118 = objc_msgSend_objectAtIndexedSubscript_(self->mObjectMapping, v109, ii + n * v111);
                  objc_msgSend_addObject_(v9, v119, v118);

                  v111 = self->mMatrixDimension;
                }
              }
            }
          }
        }
      }

      objc_msgSend_p_deallocateMatrices(self, v109, v110);
      v121 = objc_msgSend_sortedArrayUsingComparator_(v9, v120, v148);
      objc_msgSend_removeAllObjects(v9, v122, v123);
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v124 = v121;
      v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v162, v177, 16);
      if (v126)
      {
        v127 = v126;
        v128 = *v163;
        do
        {
          for (jj = 0; jj != v127; ++jj)
          {
            if (*v163 != v128)
            {
              objc_enumerationMutation(v124);
            }

            v130 = *(*(&v162 + 1) + 8 * jj);
            v158 = 0u;
            v159 = 0u;
            v160 = 0u;
            v161 = 0u;
            v131 = v9;
            v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v132, &v158, v176, 16);
            if (v133)
            {
              v135 = v133;
              v136 = *v159;
              while (2)
              {
                for (kk = 0; kk != v135; ++kk)
                {
                  if (*v159 != v136)
                  {
                    objc_enumerationMutation(v131);
                  }

                  if (objc_msgSend_conflictsWithMatch_(*(*(&v158 + 1) + 8 * kk), v134, v130))
                  {

                    goto LABEL_82;
                  }
                }

                v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v134, &v158, v176, 16);
                if (v135)
                {
                  continue;
                }

                break;
              }
            }

            objc_msgSend_addObject_(v131, v138, v130);
LABEL_82:
            ;
          }

          v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v139, &v162, v177, 16);
        }

        while (v127);
        v140 = v124;
        v9 = v131;
      }

      else
      {
        v140 = v124;
      }

      v143 = v148;
      v4 = v149;
      v12 = v154;
    }
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

+ (id)bestMatchesFromArray:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TSDMatchingAlgorithm);
  v6 = objc_msgSend_p_bestMatchesFromArray_(v4, v5, v3);

  return v6;
}

@end