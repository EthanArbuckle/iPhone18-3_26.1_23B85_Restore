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
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMatchingAlgorithm p_allocateMatrices]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMatchingAlgorithm.m"), 51, @"matrix dimension is 0!"}];
    mMatrixDimension = self->mMatrixDimension;
  }

  self->mCostMatrix = malloc_type_calloc(8uLL, mMatrixDimension * mMatrixDimension, 0x21888FE8uLL);
  self->mMaskMatrix = malloc_type_calloc(1uLL, self->mMatrixDimension * self->mMatrixDimension, 0x70DD6388uLL);
  self->mObjectMapping = malloc_type_calloc(8uLL, self->mMatrixDimension * self->mMatrixDimension, 0xAF84A605uLL);
  v6 = self->mMatrixDimension;
  if (v6 >= 1)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      if (v6 >= 1)
      {
        v9 = 0;
        mCostMatrix = self->mCostMatrix;
        do
        {
          *(mCostMatrix + v7 * v6) = 0x3FFFFFFFFFFFFFFFLL;
          ++v9;
          v6 = self->mMatrixDimension;
          ++mCostMatrix;
        }

        while (v6 > v9);
      }

      v7 += 8;
    }
  }

  self->mIsStarInColumn = malloc_type_calloc(1uLL, v6, 0xB41C452uLL);
  self->mIsStarInRow = malloc_type_calloc(1uLL, self->mMatrixDimension, 0xA1925D8AuLL);
  self->mIsColCovered = malloc_type_calloc(1uLL, self->mMatrixDimension, 0x4A7E28D6uLL);
  self->mIsRowCovered = malloc_type_calloc(1uLL, self->mMatrixDimension, 0x2917AC44uLL);
}

- (void)p_deallocateMatrices
{
  free(self->mCostMatrix);
  free(self->mMaskMatrix);
  free(self->mObjectMapping);
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
  v7 = 0;
  if (![(TSDMatchingAlgorithm *)self p_step4FindAZeroAndReturnRow:&v7 + 4 column:&v7])
  {
    return 6;
  }

  while (1)
  {
    self->mMaskMatrix[self->mMatrixDimension * SHIDWORD(v7) + v7] = 2;
    v3 = [(TSDMatchingAlgorithm *)self p_step4IndexOfStarredZeroInRow:HIDWORD(v7)];
    if (v3 == -1)
    {
      break;
    }

    mIsColCovered = self->mIsColCovered;
    self->mIsRowCovered[SHIDWORD(v7)] = 1;
    mIsColCovered[v3] = 0;
    if (![(TSDMatchingAlgorithm *)self p_step4FindAZeroAndReturnRow:&v7 + 4 column:&v7])
    {
      return 6;
    }
  }

  v6 = v7;
  self->mZ0Row = SHIDWORD(v7);
  self->mZ0Col = v6;
  return 5;
}

- (int)p_doStep5
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277D6C338];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->mZ0Row];
  [v3 addObject:{objc_msgSend(v4, "pairWithFirst:second:", v5, objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", self->mZ0Col))}];
  v6 = [objc_msgSend(objc_msgSend(v3 "lastObject")];
  if (self->mIsStarInColumn[v6])
  {
    v7 = v6;
    v8 = v6;
    do
    {
      mMatrixDimension = self->mMatrixDimension;
      if (mMatrixDimension < 1)
      {
LABEL_7:
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = 0;
        v11 = &self->mMaskMatrix[v7];
        while (*v11 != 1)
        {
          v11 += mMatrixDimension;
          if (mMatrixDimension == ++v10)
          {
            goto LABEL_7;
          }
        }
      }

      v12 = MEMORY[0x277D6C338];
      v13 = [MEMORY[0x277CCABB0] numberWithInt:v10];
      [v3 addObject:{objc_msgSend(v12, "pairWithFirst:second:", v13, objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v8))}];
      v14 = [objc_msgSend(objc_msgSend(v3 "lastObject")];
      v15 = v14;
      v16 = self->mMatrixDimension;
      if (v16 < 1)
      {
LABEL_12:
        v18 = [MEMORY[0x277D6C290] currentHandler];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMatchingAlgorithm p_doStep5]"];
        [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMatchingAlgorithm.m"), 271, @"did not find prime in row!"}];
        v17 = 0xFFFFFFFFLL;
      }

      else
      {
        v17 = 0;
        while (self->mMaskMatrix[v16 * v14 + v17] != 2)
        {
          if (v16 == ++v17)
          {
            goto LABEL_12;
          }
        }
      }

      v20 = MEMORY[0x277D6C338];
      v21 = [MEMORY[0x277CCABB0] numberWithInt:v15];
      [v3 addObject:{objc_msgSend(v20, "pairWithFirst:second:", v21, objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v17))}];
      v8 = [objc_msgSend(objc_msgSend(v3 "lastObject")];
      v7 = v8;
    }

    while (self->mIsStarInColumn[v8]);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v22 = [v3 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v46;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(v3);
        }

        v26 = *(*(&v45 + 1) + 8 * i);
        v27 = [objc_msgSend(v26 "first")];
        v28 = [objc_msgSend(v26 "second")];
        v29 = &self->mMaskMatrix[self->mMatrixDimension * v27];
        v30 = v29[v28] != 1;
        v29[v28] = v30;
        mIsStarInColumn = self->mIsStarInColumn;
        self->mIsStarInRow[v27] = v30;
        mIsStarInColumn[v28] = v30;
      }

      v23 = [v3 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v23);
  }

  v32 = self->mMatrixDimension;
  if (v32 >= 1)
  {
    v33 = 0;
    v34 = 0;
    mIsStarInRow = self->mIsStarInRow;
    do
    {
      if (!mIsStarInRow[v34])
      {
        v36 = 0;
        while (self->mMaskMatrix[v33 + v36] != 1)
        {
          if (v32 == ++v36)
          {
            goto LABEL_29;
          }
        }

        mIsStarInRow[v34] = 1;
        self->mIsStarInColumn[v36] = 1;
      }

LABEL_29:
      ++v34;
      v33 += v32;
    }

    while (v34 != v32);
    v37 = 0;
    v38 = self->mIsStarInColumn;
    do
    {
      if (!v38[v37])
      {
        v39 = 0;
        mMaskMatrix = self->mMaskMatrix;
        while (mMaskMatrix[v37] != 1)
        {
          mMaskMatrix += v32;
          if (v32 == ++v39)
          {
            goto LABEL_37;
          }
        }

        self->mIsStarInRow[v39] = 1;
        v38[v37] = 1;
      }

LABEL_37:
      ++v37;
    }

    while (v37 != v32);
    bzero(self->mIsRowCovered, v32);
    bzero(self->mIsColCovered, v32);
    for (j = 0; j < v32; ++j)
    {
      if (v32 >= 1)
      {
        for (k = 0; k < v32; ++k)
        {
          v43 = &self->mMaskMatrix[j * v32];
          if (v43[k] == 2)
          {
            v43[k] = 0;
            v32 = self->mMatrixDimension;
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
  v3 = a3;
  v76 = *MEMORY[0x277D85DE8];
  if ([a3 count] >= 2)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v54 = [MEMORY[0x277CBEB38] dictionary];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v68 objects:v75 count:16];
    v53 = v5;
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v51 = *v69;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v69 != v51)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v68 + 1) + 8 * i);
          if (![v11 outgoingMatchObject] || !objc_msgSend(v11, "incomingMatchObject"))
          {
            v12 = [MEMORY[0x277D6C290] currentHandler];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMatchingAlgorithm p_bestMatchesFromArray:]"];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMatchingAlgorithm.m"];
            v15 = v13;
            v5 = v53;
            [v12 handleFailureInFunction:v15 file:v14 lineNumber:440 description:@"Match does not have both incoming and outgoing objects!"];
          }

          if (![v5 objectForKeyedSubscript:{objc_msgSend(v11, "outgoingMatchObject")}])
          {
            [v5 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInteger:", v9++), objc_msgSend(v11, "outgoingMatchObject")}];
          }

          if (![v54 objectForKeyedSubscript:{objc_msgSend(v11, "incomingMatchObject")}])
          {
            [v54 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInteger:", v8++), objc_msgSend(v11, "incomingMatchObject")}];
          }
        }

        v7 = [v3 countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v7);
    }

    v16 = [v5 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      [TSDMatchingAlgorithm p_bestMatchesFromArray:];
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v17 = v54;
    v18 = [v54 count];
    if ((v18 & 0x8000000000000000) != 0)
    {
      [TSDMatchingAlgorithm p_bestMatchesFromArray:];
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __47__TSDMatchingAlgorithm_p_bestMatchesFromArray___block_invoke;
    v67[3] = &unk_279D49108;
    v67[4] = v3;
    if (v16 == 1 || v18 == 1)
    {
      return [MEMORY[0x277CBEA60] arrayWithObject:{objc_msgSend(objc_msgSend(v3, "sortedArrayUsingComparator:", v67), "firstObject")}];
    }

    else
    {
      if (v16 <= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v16;
      }

      self->mMatrixDimension = v19;
      [(TSDMatchingAlgorithm *)self p_allocateMatrices];
      mMatrixDimension = self->mMatrixDimension;
      if (mMatrixDimension >= 1)
      {
        v21 = 0;
        for (j = 0; j < mMatrixDimension; ++j)
        {
          if (mMatrixDimension >= 1)
          {
            for (k = 0; k < mMatrixDimension; ++k)
            {
              if (j >= v16 || k >= v18)
              {
                *(&self->mCostMatrix[k] + v21 * mMatrixDimension) = 0;
                mMatrixDimension = self->mMatrixDimension;
              }
            }
          }

          v21 += 8;
        }
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v24 = [v3 countByEnumeratingWithState:&v63 objects:v74 count:16];
      if (v24)
      {
        v25 = v24;
        v52 = *v64;
        do
        {
          for (m = 0; m != v25; ++m)
          {
            if (*v64 != v52)
            {
              objc_enumerationMutation(v3);
            }

            v27 = *(*(&v63 + 1) + 8 * m);
            v28 = [objc_msgSend(v5 objectForKeyedSubscript:{objc_msgSend(v27, "outgoingMatchObject")), "integerValue"}];
            v29 = [objc_msgSend(v17 objectForKeyedSubscript:{objc_msgSend(v27, "incomingMatchObject")), "integerValue"}];
            if (*(&self->mObjectMapping[self->mMatrixDimension * v28] + v29))
            {
              v30 = [MEMORY[0x277D6C290] currentHandler];
              v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMatchingAlgorithm p_bestMatchesFromArray:]"];
              v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMatchingAlgorithm.m"];
              v33 = v30;
              v17 = v54;
              [v33 handleFailureInFunction:v31 file:v32 lineNumber:502 description:{@"Duplicate match between objects! (%@ is a duplicate of %@)", v27, *(&self->mObjectMapping[self->mMatrixDimension * v28] + v29)}];
            }

            v34 = [v27 matchCost];
            mObjectMapping = self->mObjectMapping;
            self->mCostMatrix[self->mMatrixDimension * v28 + v29] = v34;
            *(&mObjectMapping[self->mMatrixDimension * v28] + v29) = v27;
            v5 = v53;
          }

          v25 = [v3 countByEnumeratingWithState:&v63 objects:v74 count:16];
        }

        while (v25);
      }

      v36 = 1;
      do
      {
        if (v36 > 3)
        {
          switch(v36)
          {
            case 4:
              v36 = [(TSDMatchingAlgorithm *)self p_doStep4];
              break;
            case 5:
              v36 = [(TSDMatchingAlgorithm *)self p_doStep5];
              break;
            case 6:
              v36 = [(TSDMatchingAlgorithm *)self p_doStep6];
              break;
            default:
              goto LABEL_57;
          }
        }

        else if (v36 == 1)
        {
          v36 = [(TSDMatchingAlgorithm *)self p_doStep1];
        }

        else if (v36 == 2)
        {
          v36 = [(TSDMatchingAlgorithm *)self p_doStep2];
        }

        else
        {
          v36 = [(TSDMatchingAlgorithm *)self p_doStep3];
        }
      }

      while (v36 > 0);
LABEL_57:
      v3 = [MEMORY[0x277CBEB18] array];
      v37 = self->mMatrixDimension;
      if (v37 >= 1)
      {
        for (n = 0; n < v37; ++n)
        {
          if (v37 >= 1)
          {
            for (ii = 0; ii < v37; ++ii)
            {
              if (self->mMaskMatrix[n * v37 + ii] == 1 && *(&self->mObjectMapping[ii] + n * v37))
              {
                [v3 addObject:?];
                v37 = self->mMatrixDimension;
              }
            }
          }
        }
      }

      [(TSDMatchingAlgorithm *)self p_deallocateMatrices];
      v40 = [v3 sortedArrayUsingComparator:v67];
      [v3 removeAllObjects];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v41 = [v40 countByEnumeratingWithState:&v59 objects:v73 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v60;
        do
        {
          for (jj = 0; jj != v42; ++jj)
          {
            if (*v60 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v59 + 1) + 8 * jj);
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v46 = [v3 countByEnumeratingWithState:&v55 objects:v72 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v56;
LABEL_73:
              v49 = 0;
              while (1)
              {
                if (*v56 != v48)
                {
                  objc_enumerationMutation(v3);
                }

                if ([*(*(&v55 + 1) + 8 * v49) conflictsWithMatch:v45])
                {
                  break;
                }

                if (v47 == ++v49)
                {
                  v47 = [v3 countByEnumeratingWithState:&v55 objects:v72 count:16];
                  if (v47)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_79;
                }
              }
            }

            else
            {
LABEL_79:
              [v3 addObject:v45];
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v59 objects:v73 count:16];
        }

        while (v42);
      }
    }
  }

  return v3;
}

uint64_t __47__TSDMatchingAlgorithm_p_bestMatchesFromArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 matchCost];
  if (v6 < [a3 matchCost])
  {
    return -1;
  }

  v8 = [a2 matchCost];
  if (v8 > [a3 matchCost])
  {
    return 1;
  }

  v9 = [*(a1 + 32) indexOfObject:a2];
  v10 = [*(a1 + 32) indexOfObject:a3];
  v11 = -1;
  if (v9 >= v10)
  {
    v11 = 1;
  }

  if (v9 == v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

+ (id)bestMatchesFromArray:(id)a3
{
  v4 = objc_alloc_init(TSDMatchingAlgorithm);
  v5 = [(TSDMatchingAlgorithm *)v4 p_bestMatchesFromArray:a3];

  return v5;
}

- (uint64_t)p_bestMatchesFromArray:.cold.1()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMatchingAlgorithm p_bestMatchesFromArray:]"];
  return [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMatchingAlgorithm.m"), 453, @"Out-of-bounds type assignment was clamped to max"}];
}

- (uint64_t)p_bestMatchesFromArray:.cold.2()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMatchingAlgorithm p_bestMatchesFromArray:]"];
  return [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMatchingAlgorithm.m"), 454, @"Out-of-bounds type assignment was clamped to max"}];
}

@end