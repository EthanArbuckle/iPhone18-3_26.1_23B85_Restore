@interface TSDMagicMoveTextureZOrderer
- (NSArray)flattenableAnimationMatches;
- (TSDMagicMoveTextureZOrderer)init;
- (TSDMagicMoveTextureZOrderer)initWithAnimationMatches:(id)a3;
- (id)p_debugDescription;
- (id)p_newArrayBySortingMatches:(id)a3 withInterpolatedPercent:(double)a4;
- (id)texturedRectanglesAtPercent:(double)a3;
- (unint64_t)p_bestZIndexForUnassignedMatch:(id)a3 inMatchArray:(id)a4;
- (unint64_t)p_zIntersectionsBetweenZOrdererMatches:(id)a3;
- (void)dealloc;
- (void)p_addFlattenableAnimationMatches:(id)a3 toArray:(id)a4;
- (void)p_addVisibleTexturesFromMatches:(id)a3 toArray:(id)a4 interpolatedPercent:(double)a5;
- (void)p_adjustZOrdererMatchesZIndexByTextureType:(id)a3;
- (void)p_calculateTextureArraysFromIntersections;
- (void)p_setupZOrderMatchesWithAnimationMatches:(id)a3;
@end

@implementation TSDMagicMoveTextureZOrderer

- (TSDMagicMoveTextureZOrderer)init
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrderer init]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 1113, @"Do not call method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Do not call method", "-[TSDMagicMoveTextureZOrderer init]"), 0}]);
}

- (TSDMagicMoveTextureZOrderer)initWithAnimationMatches:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSDMagicMoveTextureZOrderer;
  v4 = [(TSDMagicMoveTextureZOrderer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TSDMagicMoveTextureZOrderer *)v4 p_setupZOrderMatchesWithAnimationMatches:a3];
    [(TSDMagicMoveTextureZOrderer *)v5 p_calculateTextureArraysFromIntersections];
  }

  return v5;
}

- (void)dealloc
{
  free(self->_percentTexturesTimes);

  v3.receiver = self;
  v3.super_class = TSDMagicMoveTextureZOrderer;
  [(TSDMagicMoveTextureZOrderer *)&v3 dealloc];
}

- (id)texturedRectanglesAtPercent:(double)a3
{
  if (a3 == 0.0)
  {
    return self->_outgoingTexturesInZOrder;
  }

  if (a3 == 1.0)
  {
    return self->_incomingTexturesInZOrder;
  }

  v6 = [(NSArray *)self->_percentTextures count];
  if (v6 && (percentTexturesTimes = self->_percentTexturesTimes, *percentTexturesTimes <= a3))
  {
    v8 = v6 - 1;
    v10 = 1;
    while (v6 != v10)
    {
      v11 = percentTexturesTimes[v10++];
      if (v11 > a3)
      {
        v8 = v10 - 2;
        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  percentTextures = self->_percentTextures;

  return [(NSArray *)percentTextures objectAtIndexedSubscript:v8];
}

- (void)p_addVisibleTexturesFromMatches:(id)a3 toArray:(id)a4 interpolatedPercent:(double)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:a3];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__TSDMagicMoveTextureZOrderer_p_addVisibleTexturesFromMatches_toArray_interpolatedPercent___block_invoke;
  v21[3] = &__block_descriptor_40_e79_q24__0__TSDMagicMoveTextureZOrdererMatch_8__TSDMagicMoveTextureZOrdererMatch_16l;
  *&v21[4] = a5;
  [v7 sortUsingComparator:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = 0;
        v13 = *(*(&v17 + 1) + 8 * i);
        do
        {
          v14 = [objc_msgSend(v13 "outgoingTexture")];
          if (v14)
          {
            v15 = v14;
LABEL_10:
            [a4 addObject:v15];
            goto LABEL_11;
          }

          v15 = [objc_msgSend(v13 "incomingTexture")];
          if (v15)
          {
            goto LABEL_10;
          }

LABEL_11:
          if ([objc_msgSend(objc_msgSend(v15 "layer")])
          {
            v16 = [objc_msgSend(v13 "incomingTexture")];
            if (v16)
            {
              if (v16 != v15)
              {
                [a4 addObject:v16];
              }
            }
          }

          v12 = (v12 + 1);
        }

        while (v12 != 10);
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }
}

uint64_t __91__TSDMagicMoveTextureZOrderer_p_addVisibleTexturesFromMatches_toArray_interpolatedPercent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32) >= 0.5)
  {
    v8 = [a2 incomingZIndex];
    if (v8 != [a3 incomingZIndex])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = [a2 outgoingZIndex];
    if (v5 == [a3 outgoingZIndex])
    {
LABEL_3:
      v6 = [a2 incomingZIndex];
      v7 = [a3 incomingZIndex];
      goto LABEL_6;
    }
  }

  v6 = [a2 outgoingZIndex];
  v7 = [a3 outgoingZIndex];
LABEL_6:
  if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return v6 > v7;
  }
}

- (id)p_newArrayBySortingMatches:(id)a3 withInterpolatedPercent:(double)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:a3];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__TSDMagicMoveTextureZOrderer_p_newArrayBySortingMatches_withInterpolatedPercent___block_invoke;
  v22[3] = &__block_descriptor_40_e79_q24__0__TSDMagicMoveTextureZOrdererMatch_8__TSDMagicMoveTextureZOrdererMatch_16l;
  *&v22[4] = a4;
  [v6 sortUsingComparator:v22];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if ([v8 count])
        {
          [objc_msgSend(v8 "lastObject")];
          v15 = v14;
          [v13 interpolatedZIndexAtPercent:a4];
          if (vabdd_f64(v15, v16) >= 0.00999999978)
          {
            [(TSDMagicMoveTextureZOrderer *)self p_addVisibleTexturesFromMatches:v8 toArray:v7 interpolatedPercent:a4];
            [v8 removeAllObjects];
          }
        }

        [v8 addObject:v13];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }

  [(TSDMagicMoveTextureZOrderer *)self p_addVisibleTexturesFromMatches:v8 toArray:v7 interpolatedPercent:a4];

  return v7;
}

uint64_t __82__TSDMagicMoveTextureZOrderer_p_newArrayBySortingMatches_withInterpolatedPercent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 interpolatedZIndexAtPercent:*(a1 + 32)];
  v6 = v5;
  [a3 interpolatedZIndexAtPercent:*(a1 + 32)];
  if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return v6 > v7;
  }
}

- (void)p_adjustZOrdererMatchesZIndexByTextureType:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v43 = objc_opt_new();
  v3 = 1;
  v4 = 0x277CCA000uLL;
  do
  {
    v5 = v3;
    [v43 removeAllObjects];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v59 objects:v66 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v60;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v60 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = *(*(&v59 + 1) + 8 * i);
          if (v5)
          {
            v11 = [v10 outgoingZIndex];
          }

          else
          {
            v11 = [v10 incomingZIndex];
          }

          v12 = v11;
          if (v11 != -1)
          {
            v13 = [v43 objectForKey:{objc_msgSend(*(v4 + 2992), "numberWithInteger:", v11)}];
            if (!v13)
            {
              v13 = objc_opt_new();
              [v43 setObject:v13 forKey:{objc_msgSend(*(v4 + 2992), "numberWithInteger:", v12)}];
            }

            [v13 addObject:v10];
          }
        }

        v7 = [a3 countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v7);
    }

    v14 = [MEMORY[0x277CBEB40] orderedSet];
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:{objc_msgSend(v43, "allKeys")}];
    [v15 sortUsingSelector:sel_compare_];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v40 = v15;
    v42 = [v15 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v42)
    {
      v46 = 0;
      v41 = *v56;
      do
      {
        v16 = 0;
        do
        {
          if (*v56 != v41)
          {
            objc_enumerationMutation(v40);
          }

          v44 = v16;
          v17 = [v43 objectForKey:*(*(&v55 + 1) + 8 * v16)];
          [v14 removeAllObjects];
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v51 objects:v64 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v52;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v52 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v51 + 1) + 8 * j);
                if ((v5 & 1) == 0)
                {
                  v23 = [v22 incomingTexture];
                  if (!v23)
                  {
                    continue;
                  }

LABEL_30:
                  [v14 addObject:{objc_msgSend(*(v4 + 2992), "numberWithUnsignedInt:", objc_msgSend(objc_msgSend(objc_msgSend(v23, "visibleTextures"), "firstObject"), "textureType"))}];
                  continue;
                }

                v23 = [v22 outgoingTexture];
                if (v23)
                {
                  goto LABEL_30;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v51 objects:v64 count:16];
            }

            while (v19);
          }

          [v14 sortUsingComparator:&__block_literal_global_433];
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v24 = [v17 countByEnumeratingWithState:&v47 objects:v63 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v48;
            v45 = *v48;
            do
            {
              for (k = 0; k != v25; ++k)
              {
                if (*v48 != v26)
                {
                  objc_enumerationMutation(v17);
                }

                v28 = *(*(&v47 + 1) + 8 * k);
                if (v5)
                {
                  v29 = [v28 outgoingTexture];
                }

                else
                {
                  v29 = [v28 incomingTexture];
                }

                v30 = [v14 indexOfObject:{objc_msgSend(*(v4 + 2992), "numberWithUnsignedInt:", objc_msgSend(objc_msgSend(objc_msgSend(v29, "visibleTextures"), "firstObject"), "textureType"))}];
                if (v30 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v31 = v17;
                  v32 = v5;
                  v33 = v14;
                  v34 = v4;
                  v35 = [MEMORY[0x277D6C290] currentHandler];
                  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrderer p_adjustZOrdererMatchesZIndexByTextureType:]"];
                  v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"];
                  v38 = v35;
                  v4 = v34;
                  v14 = v33;
                  v5 = v32;
                  v17 = v31;
                  v26 = v45;
                  [v38 handleFailureInFunction:v36 file:v37 lineNumber:1274 description:@"Couldn't find texture type!"];
                }

                if (v5)
                {
                  if (([v28 isOutgoingZIndexUnmatched] & 1) == 0)
                  {
                    [v28 setOutgoingZIndex:{v30 + v46 + objc_msgSend(v28, "outgoingZIndex")}];
                  }
                }

                else if (([v28 isIncomingZIndexUnmatched] & 1) == 0)
                {
                  [v28 setIncomingZIndex:{v30 + v46 + objc_msgSend(v28, "incomingZIndex")}];
                }
              }

              v25 = [v17 countByEnumeratingWithState:&v47 objects:v63 count:16];
            }

            while (v25);
          }

          v46 = v46 + [v14 count] - 1;
          v16 = v44 + 1;
        }

        while (v44 + 1 != v42);
        v42 = [v40 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v42);
    }

    v3 = 0;
  }

  while ((v5 & 1) != 0);
}

- (void)p_setupZOrderMatchesWithAnimationMatches:(id)a3
{
  v102 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v90 objects:v101 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v91;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v91 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [[TSDMagicMoveTextureZOrdererMatch alloc] initWithAnimationMatch:*(*(&v90 + 1) + 8 * i)];
        [(NSArray *)v4 addObject:v9];
      }

      v6 = [a3 countByEnumeratingWithState:&v90 objects:v101 count:16];
    }

    while (v6);
  }

  [(TSDMagicMoveTextureZOrderer *)self p_adjustZOrdererMatchesZIndexByTextureType:v4];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v10 = [(NSArray *)v4 countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = *v87;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v87 != v14)
        {
          objc_enumerationMutation(v4);
        }

        v16 = *(*(&v86 + 1) + 8 * j);
        if (v13 <= [v16 outgoingZIndex])
        {
          v13 = [v16 outgoingZIndex];
        }

        if (v12 <= [v16 incomingZIndex])
        {
          v12 = [v16 incomingZIndex];
        }
      }

      v11 = [(NSArray *)v4 countByEnumeratingWithState:&v86 objects:v100 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v55 = objc_opt_new();
  v54 = objc_opt_new();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    do
    {
      v18 = objc_opt_new();
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v19 = [(NSArray *)v4 countByEnumeratingWithState:&v82 objects:v99 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v83;
        do
        {
          for (k = 0; k != v20; ++k)
          {
            if (*v83 != v21)
            {
              objc_enumerationMutation(v4);
            }

            v23 = *(*(&v82 + 1) + 8 * k);
            if ([v23 outgoingZIndex] == v17 && objc_msgSend(v23, "incomingZIndex") == -1)
            {
              [v18 addObject:v23];
            }
          }

          v20 = [(NSArray *)v4 countByEnumeratingWithState:&v82 objects:v99 count:16];
        }

        while (v20);
      }

      if ([v18 count] >= 2)
      {
        [v55 addObject:v18];
      }

      v24 = v17++ == v13;
    }

    while (!v24);
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    do
    {
      v26 = objc_opt_new();
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v27 = [(NSArray *)v4 countByEnumeratingWithState:&v78 objects:v98 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v79;
        do
        {
          for (m = 0; m != v28; ++m)
          {
            if (*v79 != v29)
            {
              objc_enumerationMutation(v4);
            }

            v31 = *(*(&v78 + 1) + 8 * m);
            if ([v31 incomingZIndex] == v25 && objc_msgSend(v31, "outgoingZIndex") == -1)
            {
              [v26 addObject:v31];
            }
          }

          v28 = [(NSArray *)v4 countByEnumeratingWithState:&v78 objects:v98 count:16];
        }

        while (v28);
      }

      if ([v26 count] >= 2)
      {
        [v54 addObject:v26];
      }

      v24 = v25++ == v12;
    }

    while (!v24);
  }

  v32 = 1;
  v59 = v4;
  do
  {
    v33 = v32;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v58 = [(NSArray *)v4 countByEnumeratingWithState:&v74 objects:v97 count:16, v54];
    if (v58)
    {
      v57 = *v75;
      do
      {
        v34 = 0;
        do
        {
          if (*v75 != v57)
          {
            objc_enumerationMutation(v4);
          }

          v35 = *(*(&v74 + 1) + 8 * v34);
          v60 = v34;
          if (v33)
          {
            v36 = [v35 outgoingZIndex];
          }

          else
          {
            v36 = [v35 incomingZIndex];
          }

          if (v36 == -1)
          {
            v61 = v35;
            v37 = [(TSDMagicMoveTextureZOrderer *)self p_bestZIndexForUnassignedMatch:v35 inMatchArray:v59];
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v38 = [(NSArray *)v59 countByEnumeratingWithState:&v70 objects:v96 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v71;
              do
              {
                for (n = 0; n != v39; ++n)
                {
                  if (*v71 != v40)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v42 = *(*(&v70 + 1) + 8 * n);
                  if (v33)
                  {
                    if ([v42 outgoingZIndex] >= v37)
                    {
                      [v42 setOutgoingZIndex:{objc_msgSend(v42, "outgoingZIndex") + 1}];
                    }
                  }

                  else if ([v42 incomingZIndex] >= v37)
                  {
                    [v42 setIncomingZIndex:{objc_msgSend(v42, "incomingZIndex") + 1}];
                  }
                }

                v39 = [(NSArray *)v59 countByEnumeratingWithState:&v70 objects:v96 count:16];
              }

              while (v39);
            }

            if (v33)
            {
              [v35 setOutgoingZIndex:v37];
              v43 = v54;
            }

            else
            {
              [v35 setIncomingZIndex:v37];
              v43 = v55;
            }

            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v44 = [v43 countByEnumeratingWithState:&v66 objects:v95 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v67;
              do
              {
                for (ii = 0; ii != v45; ++ii)
                {
                  if (*v67 != v46)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v48 = *(*(&v66 + 1) + 8 * ii);
                  if ([v48 containsObject:v35])
                  {
                    v64 = 0u;
                    v65 = 0u;
                    v62 = 0u;
                    v63 = 0u;
                    v49 = [v48 countByEnumeratingWithState:&v62 objects:v94 count:16];
                    if (v49)
                    {
                      v50 = v49;
                      v51 = *v63;
                      do
                      {
                        for (jj = 0; jj != v50; ++jj)
                        {
                          if (*v63 != v51)
                          {
                            objc_enumerationMutation(v48);
                          }

                          v53 = *(*(&v62 + 1) + 8 * jj);
                          if (v33)
                          {
                            [v53 setOutgoingZIndex:v37];
                          }

                          else
                          {
                            [v53 setIncomingZIndex:v37];
                          }
                        }

                        v50 = [v48 countByEnumeratingWithState:&v62 objects:v94 count:16];
                      }

                      while (v50);
                    }
                  }

                  v35 = v61;
                }

                v45 = [v43 countByEnumeratingWithState:&v66 objects:v95 count:16];
              }

              while (v45);
            }
          }

          v4 = v59;
          v34 = v60 + 1;
        }

        while (v60 + 1 != v58);
        v58 = [(NSArray *)v59 countByEnumeratingWithState:&v74 objects:v97 count:16];
      }

      while (v58);
    }

    v32 = 0;
  }

  while ((v33 & 1) != 0);

  self->_zOrderMatches = v4;
  self->_outgoingTexturesInZOrder = [(TSDMagicMoveTextureZOrderer *)self p_newArrayBySortingMatches:v4 withInterpolatedPercent:0.0];
  self->_incomingTexturesInZOrder = [(TSDMagicMoveTextureZOrderer *)self p_newArrayBySortingMatches:v4 withInterpolatedPercent:1.0];
}

- (unint64_t)p_zIntersectionsBetweenZOrdererMatches:(id)a3
{
  v4 = [a3 count];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = [a3 objectAtIndexedSubscript:v7++];
    if (v7 < v5)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v6 += [v9 intersectsZOrdererMatch:{objc_msgSend(a3, "objectAtIndexedSubscript:", v10++)}];
      }

      while (v5 != v10);
    }
  }

  while (v7 != v5);
  return v6;
}

- (id)p_debugDescription
{
  v71 = *MEMORY[0x277D85DE8];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v3 = [(NSArray *)self->_percentTextures objectAtIndexedSubscript:0];
  v4 = [v3 countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v64;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v64 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v63 + 1) + 8 * i);
        v10 = -[__CFString length](TSDStringFromTextureType([v9 textureType]), "length");
        v11 = [v9 textureType];
        v12 = v10 + 5;
        if (v11 != 6)
        {
          v12 = v10;
        }

        if (v6 <= v12)
        {
          v6 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = [MEMORY[0x277CCAB68] stringWithString:@"Texture Z Orders:"];
  if ([-[NSArray objectAtIndexedSubscript:](self->_percentTextures objectAtIndexedSubscript:{0), "count"}] >= 1)
  {
    v14 = 0;
    v41 = v13;
    v42 = v6;
    do
    {
      [v13 appendString:@"\n"];
      v15 = TSDStringFromTextureType([objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_percentTextures objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", v14), "textureType"}]);
      v16 = [objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_percentTextures objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", v14), "text"}];
      if (v16)
      {
        v17 = v16;
        if ([v16 length] <= 3)
        {
          v18 = [v17 length];
        }

        else
        {
          v18 = 3;
        }

        v15 = -[__CFString stringByAppendingFormat:](v15, "stringByAppendingFormat:", @"%@", [v17 substringWithRange:{0, v18}]);
      }

      if ([(__CFString *)v15 length]< v6)
      {
        v19 = 0;
        do
        {
          [v13 appendString:@" "];
          ++v19;
        }

        while (v19 < v6 - [(__CFString *)v15 length]);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = self->_zOrderMatches;
      v46 = [(NSArray *)obj countByEnumeratingWithState:&v59 objects:v69 count:16];
      v43 = v15;
      v20 = 0;
      if (v46)
      {
        v45 = *v60;
        do
        {
          v21 = 0;
          do
          {
            if (*v60 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v59 + 1) + 8 * v21);
            v23 = objc_opt_new();
            if ([v22 outgoingTexture])
            {
              [v23 addObject:{objc_msgSend(v22, "outgoingTexture")}];
            }

            v47 = v21;
            if ([v22 incomingTexture])
            {
              [v23 addObject:{objc_msgSend(v22, "incomingTexture")}];
            }

            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v48 = v23;
            v24 = [v23 countByEnumeratingWithState:&v55 objects:v68 count:16];
            if (v24)
            {
              v25 = v24;
              v49 = v22;
              v50 = *v56;
LABEL_35:
              v26 = 0;
              while (1)
              {
                if (*v56 != v50)
                {
                  objc_enumerationMutation(v48);
                }

                v27 = *(*(&v55 + 1) + 8 * v26);
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v28 = [v27 visibleTextures];
                v29 = [v28 countByEnumeratingWithState:&v51 objects:v67 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v52;
                  while (2)
                  {
                    for (j = 0; j != v30; ++j)
                    {
                      if (*v52 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = *(*(&v51 + 1) + 8 * j);
                      if (v33 == [-[NSArray objectAtIndexedSubscript:](self->_percentTextures objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", v14}])
                      {
                        v20 = v49;
                        goto LABEL_48;
                      }
                    }

                    v30 = [v28 countByEnumeratingWithState:&v51 objects:v67 count:16];
                    if (v30)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_48:
                if (v20)
                {
                  break;
                }

                if (++v26 == v25)
                {
                  v25 = [v48 countByEnumeratingWithState:&v55 objects:v68 count:16];
                  v20 = 0;
                  if (v25)
                  {
                    goto LABEL_35;
                  }

                  break;
                }
              }
            }

            v21 = v47 + 1;
          }

          while (v47 + 1 != v46);
          v46 = [(NSArray *)obj countByEnumeratingWithState:&v59 objects:v69 count:16];
        }

        while (v46);
      }

      v34 = [v20 outgoingZIndex];
      if ([v20 isOutgoingZIndexUnmatched])
      {
        v35 = @"*";
      }

      else
      {
        v35 = @" ";
      }

      v36 = [v20 incomingZIndex];
      if ([v20 isIncomingZIndexUnmatched])
      {
        v37 = @"*";
      }

      else
      {
        v37 = @" ";
      }

      v40 = v35;
      v13 = v41;
      [v41 appendFormat:@"%@ %2d(z:%2d%@->%2d%@):", v43, v14, v34, v40, v36, v37];
      if ([(NSArray *)self->_percentTextures count]>= 1)
      {
        v38 = 0;
        do
        {
          [v41 appendFormat:@"  %2d", objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_percentTextures, "objectAtIndexedSubscript:", 0), "indexOfObject:", objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_percentTextures, "objectAtIndexedSubscript:", v38++), "objectAtIndexedSubscript:", v14))];
        }

        while (v38 < [(NSArray *)self->_percentTextures count]);
      }

      ++v14;
      v6 = v42;
    }

    while (v14 < [-[NSArray objectAtIndexedSubscript:](self->_percentTextures objectAtIndexedSubscript:{0), "count"}]);
  }

  return v13;
}

- (unint64_t)p_bestZIndexForUnassignedMatch:(id)a3 inMatchArray:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  if ([a3 outgoingZIndex] != -1 && objc_msgSend(a3, "incomingZIndex") != -1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrderer p_bestZIndexForUnassignedMatch:inMatchArray:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 1507, @"This match is already assigned!"}];
  }

  v8 = [a3 outgoingZIndex];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [a4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v33;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(a4);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        if (v8 == -1)
        {
          if (v11 > [v14 outgoingZIndex])
          {
            continue;
          }

          v15 = [v14 outgoingZIndex];
        }

        else
        {
          if (v11 > [v14 incomingZIndex])
          {
            continue;
          }

          v15 = [v14 incomingZIndex];
        }

        v11 = v15;
      }

      v10 = [a4 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (!v10)
      {
        v16 = v11 + 1;
        goto LABEL_19;
      }
    }
  }

  v16 = 1;
LABEL_19:
  v17 = [a4 count];
  v18 = [objc_msgSend(a3 "outgoingTexture")];
  v19 = v18 == 0;
  if (__PAIR128__(v16, v18) >= 1)
  {
    v20 = -1;
    do
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v21 = [a4 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = 0;
        v24 = *v29;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(a4);
            }

            v23 += [a3 intersectsZOrdererMatch:*(*(&v28 + 1) + 8 * j) withAttemptedZIndex:v16];
          }

          v22 = [a4 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v22);
      }

      else
      {
        v23 = 0;
      }

      if (v23 < v20)
      {
        v20 = v23;
        v17 = v16;
      }
    }

    while (v16-- > v19);
  }

  return v17;
}

- (void)p_calculateTextureArraysFromIntersections
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(NSArray *)self->_zOrderMatches count];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    v6 = v4;
    v7 = 0;
    do
    {
      v8 = v7;
      v9 = [(NSArray *)self->_zOrderMatches objectAtIndexedSubscript:v7++];
      v10 = v7;
      do
      {
        v11 = [(NSArray *)self->_zOrderMatches objectAtIndexedSubscript:v10];
        if ([v9 intersectsZOrdererMatch:v11])
        {
          [v9 intersectionPercentWithZOrdererMatch:v11];
          [v3 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", floor(v12 * 1000.0) / 1000.0)}];
        }

        ++v10;
      }

      while (v6 != v10);
    }

    while (v8 != v5);
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:{objc_msgSend(v3, "allObjects")}];
  [v13 sortUsingSelector:sel_compare_];
  if (![v13 count] || objc_msgSend(objc_msgSend(v13, "firstObject"), "intValue"))
  {
    [v13 insertObject:&unk_287DDD530 atIndex:0];
  }

  if ([objc_msgSend(v13 "lastObject")] != 1)
  {
    [v13 addObject:&unk_287DDD548];
  }

  v14 = [v13 count];
  v15 = objc_opt_new();
  v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_zOrderMatches];
  v16 = objc_opt_new();
  if (v14)
  {
    v17 = 0;
    v18 = 0.0;
    do
    {
      v19 = 1.0;
      if (v17 < [v13 count])
      {
        [objc_msgSend(v13 objectAtIndexedSubscript:{v17), "doubleValue"}];
        v19 = v20;
      }

      if (v19 == 1.0)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = (v18 + v19) * 0.5;
      }

      [v16 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v18)}];
      v22 = [(TSDMagicMoveTextureZOrderer *)self p_newArrayBySortingMatches:self->_zOrderMatches withInterpolatedPercent:v21];
      [(NSArray *)v15 addObject:v22];

      ++v17;
      v18 = v19;
    }

    while (v14 != v17);
  }

  if ([v16 count] != v14)
  {
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrderer p_calculateTextureArraysFromIntersections]"];
    [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 1593, @"percentTexturesTimes.count(%d) != percentTextureCount(%d)!", objc_msgSend(v16, "count"), v14}];
  }

  if ([(NSArray *)v15 count]!= v14)
  {
    v25 = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrderer p_calculateTextureArraysFromIntersections]"];
    [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 1594, @"percentTextures.count(%d) != percentTextureCount(%d)!", -[NSArray count](v15, "count"), v14}];
  }

  free(self->_percentTexturesTimes);
  if (v14 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v14;
  }

  self->_percentTexturesTimes = malloc_type_calloc(8uLL, v27, 0x8BF9BDB5uLL);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v28 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = *v37;
    do
    {
      v32 = 0;
      v33 = v30;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v36 + 1) + 8 * v32) doubleValue];
        v30 = v33 + 1;
        self->_percentTexturesTimes[v33] = v34;
        ++v32;
        ++v33;
      }

      while (v29 != v32);
      v29 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v29);
  }

  self->_percentTextures = v15;
  self->_zOrderIntersectionsCount = [v13 count];
}

- (void)p_addFlattenableAnimationMatches:(id)a3 toArray:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  if ([a3 count] >= 2)
  {
    v42 = self;
    v7 = objc_opt_new();
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v61;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v61 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = *(*(&v60 + 1) + 8 * i);
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v13 = [objc_msgSend(v12 "outgoingTexture")];
          v14 = [v13 countByEnumeratingWithState:&v56 objects:v66 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v57;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v57 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [v7 addObject:*(*(&v56 + 1) + 8 * j)];
              }

              v15 = [v13 countByEnumeratingWithState:&v56 objects:v66 count:16];
            }

            while (v15);
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v60 objects:v67 count:16];
      }

      while (v9);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v18 = [v7 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v53;
      v41 = a4;
      while (2)
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(v7);
          }

          v22 = *(*(&v52 + 1) + 8 * k);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v23 = [v7 countByEnumeratingWithState:&v48 objects:v64 count:{16, v41}];
          if (v23)
          {
            v24 = v23;
            v25 = *v49;
LABEL_23:
            v26 = 0;
            while (1)
            {
              if (*v49 != v25)
              {
                objc_enumerationMutation(v7);
              }

              v27 = *(*(&v48 + 1) + 8 * v26);
              if (v22 != v27)
              {
                [v22 frameOnCanvas];
                v29 = v28;
                v31 = v30;
                v33 = v32;
                v35 = v34;
                [v27 frameOnCanvas];
                v70.origin.x = v36;
                v70.origin.y = v37;
                v70.size.width = v38;
                v70.size.height = v39;
                v69.origin.x = v29;
                v69.origin.y = v31;
                v69.size.width = v33;
                v69.size.height = v35;
                if (CGRectIntersectsRect(v69, v70))
                {
                  break;
                }
              }

              if (v24 == ++v26)
              {
                v24 = [v7 countByEnumeratingWithState:&v48 objects:v64 count:16];
                if (v24)
                {
                  goto LABEL_23;
                }

                goto LABEL_30;
              }
            }

            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __72__TSDMagicMoveTextureZOrderer_p_addFlattenableAnimationMatches_toArray___block_invoke;
            v47[3] = &unk_279D49108;
            v47[4] = v42;
            [v7 sortUsingComparator:v47];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v44 = __72__TSDMagicMoveTextureZOrderer_p_addFlattenableAnimationMatches_toArray___block_invoke_2;
            v45 = &unk_279D49130;
            v46 = v7;
            if ((__72__TSDMagicMoveTextureZOrderer_p_addFlattenableAnimationMatches_toArray___block_invoke_2(v43, v42->_outgoingTexturesInZOrder) & 1) == 0)
            {
              goto LABEL_36;
            }

            v40 = v44(v43, v42->_incomingTexturesInZOrder);

            if (v40)
            {
              [v41 addObject:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithArray:", objc_msgSend(a3, "array"))}];
            }

            return;
          }

LABEL_30:
          ;
        }

        v19 = [v7 countByEnumeratingWithState:&v52 objects:v65 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_36:
  }
}

uint64_t __72__TSDMagicMoveTextureZOrderer_p_addFlattenableAnimationMatches_toArray___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(*(a1 + 32) + 16) indexOfObject:a2];
  v6 = [*(*(a1 + 32) + 16) indexOfObject:a3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrderer p_addFlattenableAnimationMatches:toArray:]_block_invoke"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 1654, @"expected inequality between %s and %s", "obj1Index", "NSNotFound"}];
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrderer p_addFlattenableAnimationMatches:toArray:]_block_invoke"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 1655, @"expected inequality between %s and %s", "obj2Index", "NSNotFound"}];
  }

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

uint64_t __72__TSDMagicMoveTextureZOrderer_p_addFlattenableAnimationMatches_toArray___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a2 indexOfObject:{objc_msgSend(*(a1 + 32), "firstObject")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [*(a1 + 32) indexOfObject:v10];
        if (v11 != [a2 indexOfObject:v10] - v4)
        {
          return 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (NSArray)flattenableAnimationMatches
{
  v53 = *MEMORY[0x277D85DE8];
  v32 = objc_opt_new();
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = self->_outgoingTexturesInZOrder;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v4)
  {
    v5 = v4;
    v30 = *v46;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * i);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        zOrderMatches = self->_zOrderMatches;
        v9 = [(NSArray *)zOrderMatches countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v42;
LABEL_8:
          v12 = 0;
          while (1)
          {
            if (*v42 != v11)
            {
              objc_enumerationMutation(zOrderMatches);
            }

            v13 = *(*(&v41 + 1) + 8 * v12);
            if ([objc_msgSend(objc_msgSend(v13 "outgoingTexture")] & 1) != 0 || (objc_msgSend(objc_msgSend(objc_msgSend(v13, "incomingTexture"), "visibleTextures"), "containsObject:", v7))
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [(NSArray *)zOrderMatches countByEnumeratingWithState:&v41 objects:v51 count:16];
              if (v10)
              {
                goto LABEL_8;
              }

              goto LABEL_17;
            }
          }

          if (v13)
          {
            goto LABEL_18;
          }
        }

LABEL_17:
        v14 = [MEMORY[0x277D6C290] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrderer flattenableAnimationMatches]"];
        [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 1702, @"invalid nil value for '%s'", "zOrdererMatch"}];
        v13 = 0;
LABEL_18:
        if ([objc_msgSend(v13 "animationMatch")])
        {
          [(TSDMagicMoveTextureZOrderer *)self p_addFlattenableAnimationMatches:v3 toArray:v32];
          [v3 removeAllObjects];
        }

        else
        {
          if ([v3 count] && (objc_msgSend(objc_msgSend(objc_msgSend(v3, "firstObject"), "animationMatch"), "outgoingTexture") || objc_msgSend(objc_msgSend(v13, "animationMatch"), "outgoingTexture")) && (objc_msgSend(objc_msgSend(objc_msgSend(v3, "firstObject"), "animationMatch"), "incomingTexture") || objc_msgSend(objc_msgSend(v13, "animationMatch"), "incomingTexture")))
          {
            [(TSDMagicMoveTextureZOrderer *)self p_addFlattenableAnimationMatches:v3 toArray:v32];
            [v3 removeAllObjects];
          }

          [v3 addObject:v13];
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v5);
  }

  [(TSDMagicMoveTextureZOrderer *)self p_addFlattenableAnimationMatches:v3 toArray:v32];
  v31 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = [v32 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v38;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v32);
        }

        v20 = *(*(&v37 + 1) + 8 * j);
        v21 = [MEMORY[0x277CBEB18] array];
        [(TSDMagicMoveTextureZOrderer *)self p_addVisibleTexturesFromMatches:v20 toArray:v21 interpolatedPercent:0.0];
        v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v23 = [v20 countByEnumeratingWithState:&v33 objects:v49 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v34;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v34 != v25)
              {
                objc_enumerationMutation(v20);
              }

              [v22 addObject:{objc_msgSend(*(*(&v33 + 1) + 8 * k), "animationMatch")}];
            }

            v24 = [v20 countByEnumeratingWithState:&v33 objects:v49 count:16];
          }

          while (v24);
        }

        v27 = objc_opt_new();
        [v27 setAnimationMatches:v22];
        [v27 setTexturesInZOrder:v21];
        [(NSArray *)v31 addObject:v27];
      }

      v17 = [v32 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v17);
  }

  return v31;
}

@end