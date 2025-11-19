@interface MPWeighter
- (BOOL)itemAtIndex:(int64_t)a3 meetsContraints:(id)a4 oneMatch:(BOOL)a5;
- (MPWeighter)init;
- (id)constraintsForItem:(id)a3;
- (id)getRandomItemMeetingNumberOfFaceLandscapes:(int64_t)a3 facePortraits:(int64_t)a4 imageLandscapes:(int64_t)a5 imagePortraits:(int64_t)a6 vPanoramas:(int64_t)a7 hPanoramas:(int64_t)a8 movies:(int64_t)a9 fitsInExtraWide:(int64_t)a10 aspectRatios:(id)a11 previousTags:(id)a12;
- (id)imageCounts;
- (id)indicesEqualingConstraints:(id)a3;
- (id)indicesMeetingConstraints:(id)a3;
- (int64_t)getRandomIndex;
- (int64_t)getRandomIndexInSubset:(id)a3;
- (int64_t)getRandomIndexInSubset:(id)a3 withPreviousTags:(id)a4;
- (int64_t)getRandomIndexMeetingContraints:(id)a3 oneMatch:(BOOL)a4;
- (int64_t)getRandomIndexWithNoPanoramasForImageCount:(int64_t)a3;
- (int64_t)numberOfItemsWithImageCount:(int64_t)a3;
- (void)addItem:(id)a3 withWeight:(int64_t)a4 andContraints:(id)a5;
- (void)clearAllItems;
- (void)dealloc;
- (void)ignoreIndex:(int64_t)a3;
- (void)ignoreIndices:(id)a3;
- (void)increaseUsageCountOfObjectAtIndex:(int64_t)a3;
@end

@implementation MPWeighter

- (MPWeighter)init
{
  v4.receiver = self;
  v4.super_class = MPWeighter;
  v2 = [(MPWeighter *)&v4 init];
  if (v2)
  {
    v2->_weights = objc_alloc_init(NSMutableArray);
    v2->_items = objc_alloc_init(NSMutableArray);
    v2->_constraints = objc_alloc_init(NSMutableArray);
    v2->_usageCount = objc_alloc_init(NSMutableArray);
    v2->_ignoreIndices = objc_alloc_init(NSMutableIndexSet);
    v2->_totalWeight = 0;
    v2->_ignorePanoramas = 0;
  }

  return v2;
}

- (void)dealloc
{
  self->_usageCount = 0;

  self->_constraints = 0;
  self->_ignoreIndices = 0;

  self->_weights = 0;
  self->_items = 0;
  v3.receiver = self;
  v3.super_class = MPWeighter;
  [(MPWeighter *)&v3 dealloc];
}

- (void)addItem:(id)a3 withWeight:(int64_t)a4 andContraints:(id)a5
{
  [(NSMutableArray *)self->_items addObject:a3];
  [(NSMutableArray *)self->_constraints addObject:a5];
  [(NSMutableArray *)self->_weights addObject:[NSNumber numberWithInteger:a4]];
  [(NSMutableArray *)self->_usageCount addObject:[NSNumber numberWithInteger:0]];
  self->_totalWeight += a4;
}

- (int64_t)getRandomIndexMeetingContraints:(id)a3 oneMatch:(BOOL)a4
{
  v4 = a4;
  v7 = [(MPWeighter *)self count];
  v8 = +[NSMutableIndexSet indexSet];
  v9 = +[NSMutableIndexSet indexSet];
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if (([(NSMutableIndexSet *)self->_ignoreIndices containsIndex:i]& 1) == 0 && [(MPWeighter *)self itemAtIndex:i meetsContraints:a3 oneMatch:v4])
      {
        if (!self->_evenlyPickByID || (v11 = +[MPUtilities idOfCombinedID:](MPUtilities, "idOfCombinedID:", -[NSMutableArray objectAtIndex:](self->_items, "objectAtIndex:", i)), v12 = -[NSMutableIndexSet firstIndex](self->_ignoreIndices, "firstIndex"), v12 == 0x7FFFFFFFFFFFFFFFLL) || (v13 = [-[NSMutableArray objectAtIndex:](self->_items objectAtIndex:{v12), "hasPrefix:", v11}], v14 = v8, (v13 & 1) == 0))
        {
          v14 = v9;
        }

        [v14 addIndex:i];
      }
    }
  }

  if (![v9 count] && objc_msgSend(v8, "count"))
  {
    v9 = v8;
  }

  if (![v9 count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(MPWeighter *)self getRandomIndexInSubset:v9];
}

- (int64_t)getRandomIndexWithNoPanoramasForImageCount:(int64_t)a3
{
  v5 = [(MPWeighter *)self count];
  v6 = +[NSMutableIndexSet indexSet];
  v7 = +[NSMutableIndexSet indexSet];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v9 = [(NSMutableArray *)self->_constraints objectAtIndex:i];
      v11 = v9[10];
      v10 = v9[11];
      v12 = v9[15];
      if (([(NSMutableIndexSet *)self->_ignoreIndices containsIndex:i]& 1) == 0)
      {
        v13 = *(v9 + 128) != 1 || v10 + v11 == -v12;
        if (v13 && v9[1] <= a3)
        {
          if (!self->_evenlyPickByID || (v14 = +[MPUtilities idOfCombinedID:](MPUtilities, "idOfCombinedID:", -[NSMutableArray objectAtIndex:](self->_items, "objectAtIndex:", i)), v15 = -[NSMutableIndexSet firstIndex](self->_ignoreIndices, "firstIndex"), v15 == 0x7FFFFFFFFFFFFFFFLL) || (v16 = [-[NSMutableArray objectAtIndex:](self->_items objectAtIndex:{v15), "hasPrefix:", v14}], v17 = v6, (v16 & 1) == 0))
          {
            v17 = v7;
          }

          [v17 addIndex:i];
        }
      }
    }
  }

  if (![v7 count] && objc_msgSend(v6, "count"))
  {
    v7 = v6;
  }

  if (![v7 count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(MPWeighter *)self getRandomIndexInSubset:v7];
}

- (id)getRandomItemMeetingNumberOfFaceLandscapes:(int64_t)a3 facePortraits:(int64_t)a4 imageLandscapes:(int64_t)a5 imagePortraits:(int64_t)a6 vPanoramas:(int64_t)a7 hPanoramas:(int64_t)a8 movies:(int64_t)a9 fitsInExtraWide:(int64_t)a10 aspectRatios:(id)a11 previousTags:(id)a12
{
  v118 = objc_alloc_init(NSMutableIndexSet);
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v127 = self;
  obj = self->_constraints;
  v128 = [(NSMutableArray *)obj countByEnumeratingWithState:&v184 objects:v196 count:16];
  if (v128)
  {
    v140 = 0;
    v124 = *v185;
    v16 = a7 > 0 || a8 > 0;
    v119 = a8 + a7;
    v129 = a4 + a3;
    v120 = !v16;
    v125 = a7;
    v126 = a8;
    do
    {
      v17 = 0;
      do
      {
        if (*v185 != v124)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v184 + 1) + 8 * v17);
        v130 = v18[2].i8[9];
        v131 = v18[2].u8[8];
        v20 = v18[5].i64[0];
        v19 = v18[5].i64[1];
        v21 = v18[6];
        v22 = v18[7];
        v23 = v18[9].i64[0];
        v143 = v18[8].i64[1];
        v138 = v18[3].i64[1];
        v139 = v17;
        v132 = v18[2].i64[0];
        v136 = v18[3].i64[0];
        v137 = v18[4].i64[1];
        v135 = v18[4].i64[0];
        v141 = v18[7].i64[1];
        if (a8 <= 0 && a7 <= 0)
        {
          v24 = v19 <= 0 && v20 <= 0;
          if (v24 && v22.i64[1] < 1)
          {
            goto LABEL_22;
          }
        }

        v27 = v120;
        if (v20)
        {
          v27 = 1;
        }

        if ((v27 & 1) == 0)
        {
          v28 = vaddvq_s32(vbicq_s8(xmmword_163850, vuzp1q_s32(vceqzq_s64(v21), vceqzq_s64(v22)))) & 0xF;
          if (!v19 && v28 == 0)
          {
            v134 = 0;
            goto LABEL_33;
          }
        }

        if (v22.i64[1] < 1)
        {
          v26 = a7 == v19 && a8 == v20;
          v109 = v21.i64[1] >= a7 && v21.i64[0] >= a8;
          if (v21.i64[1] > 0 || v21.i64[0] >= 1)
          {
            v26 = v109;
          }

          if (v22.i64[0] >= 1)
          {
            v26 = v119 <= v22.i64[0];
          }

          goto LABEL_23;
        }

        if (v119 == v22.i64[1] || ((v89 = a7 - v19, a7 == v19) ? (v90 = v22.i64[1] == a8) : (v90 = 0), v90 || (a8 == v20 ? (v91 = v22.i64[1] == a7) : (v91 = 0), v91 || (a8 > v20 ? (v92 = v119 - v20 == v22.i64[1]) : (v92 = 0), v92))))
        {
LABEL_22:
          v26 = 1;
        }

        else
        {
          v93 = v89 + a8;
          v94 = v89 + a8 == v22.i64[1];
          v95 = a8 - v20 + v89 == v22.i64[1];
          if (v93 == v22.i64[1])
          {
            v95 = v94;
          }

          if (a8 > v20)
          {
            v96 = v95;
          }

          else
          {
            v96 = v94;
          }

          v26 = a7 > v19 && v96;
        }

LABEL_23:
        v134 = v26;
LABEL_33:
        ignorePanoramas = v127->_ignorePanoramas;
        v30 = v143;
        v142 = v23;
        if (![v143 count])
        {
          goto LABEL_229;
        }

        v144 = [v143 mutableCopy];
        v150 = [a11 mutableCopy];
        v180 = 0u;
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v31 = [v143 countByEnumeratingWithState:&v180 objects:v195 count:16];
        if (v31)
        {
          v32 = v31;
          v146 = *v181;
          do
          {
            for (i = 0; i != v32; i = i + 1)
            {
              if (*v181 != v146)
              {
                objc_enumerationMutation(v143);
              }

              v34 = *(*(&v180 + 1) + 8 * i);
              [v34 floatValue];
              v36 = v35;
              v37 = [v150 copy];
              v176 = 0u;
              v177 = 0u;
              v178 = 0u;
              v179 = 0u;
              v38 = [v37 countByEnumeratingWithState:&v176 objects:v194 count:16];
              if (v38)
              {
                v39 = v38;
                v40 = *v177;
                while (2)
                {
                  for (j = 0; j != v39; j = j + 1)
                  {
                    if (*v177 != v40)
                    {
                      objc_enumerationMutation(v37);
                    }

                    v42 = *(*(&v176 + 1) + 8 * j);
                    [v42 floatValue];
                    v44 = v43 >= 1.0;
                    if (v36 >= 1.0)
                    {
                      v44 = 1;
                    }

                    if (v43 >= 1.0 && v36 >= 1.0)
                    {
                      v44 = 0;
                    }

                    if (v43 < v36 && !v44)
                    {
                      [v150 removeObject:v42];
                      [v144 removeObject:v34];
                      goto LABEL_57;
                    }
                  }

                  v39 = [v37 countByEnumeratingWithState:&v176 objects:v194 count:16];
                  if (v39)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_57:
            }

            v30 = v143;
            v32 = [v143 countByEnumeratingWithState:&v180 objects:v195 count:16];
          }

          while (v32);
        }

        if (v141 >= 1)
        {
          if ([v144 count])
          {
            v174 = 0u;
            v175 = 0u;
            v172 = 0u;
            v173 = 0u;
            v46 = [v30 countByEnumeratingWithState:&v172 objects:v193 count:16];
            if (v46)
            {
              v47 = v46;
              v147 = *v173;
              do
              {
                for (k = 0; k != v47; k = k + 1)
                {
                  if (*v173 != v147)
                  {
                    objc_enumerationMutation(v143);
                  }

                  v49 = *(*(&v172 + 1) + 8 * k);
                  [v49 floatValue];
                  v51 = v50;
                  v52 = [v150 copy];
                  v168 = 0u;
                  v169 = 0u;
                  v170 = 0u;
                  v171 = 0u;
                  v53 = [v52 countByEnumeratingWithState:&v168 objects:v192 count:16];
                  if (v53)
                  {
                    v54 = v53;
                    v55 = *v169;
                    while (2)
                    {
                      for (m = 0; m != v54; m = m + 1)
                      {
                        if (*v169 != v55)
                        {
                          objc_enumerationMutation(v52);
                        }

                        v57 = *(*(&v168 + 1) + 8 * m);
                        [v57 floatValue];
                        if (v58 < v51)
                        {
                          [v150 removeObject:v57];
                          [v144 removeObject:v49];
                          goto LABEL_76;
                        }
                      }

                      v54 = [v52 countByEnumeratingWithState:&v168 objects:v192 count:16];
                      if (v54)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_76:
                }

                v47 = [v143 countByEnumeratingWithState:&v172 objects:v193 count:16];
              }

              while (v47);
            }
          }
        }

        v59 = [v144 count];

        v23 = v142;
        if (v59)
        {
          v60 = 1;
        }

        else
        {
LABEL_229:
          if ([v23 count])
          {
            v145 = [v23 mutableCopy];
            v151 = [a11 mutableCopy];
            v164 = 0u;
            v165 = 0u;
            v166 = 0u;
            v167 = 0u;
            v61 = [v23 countByEnumeratingWithState:&v164 objects:v191 count:16];
            if (v61)
            {
              v62 = v61;
              v148 = *v165;
              do
              {
                for (n = 0; n != v62; n = n + 1)
                {
                  if (*v165 != v148)
                  {
                    objc_enumerationMutation(v142);
                  }

                  v64 = *(*(&v164 + 1) + 8 * n);
                  [v64 floatValue];
                  v66 = v65;
                  v67 = [v151 copy];
                  v160 = 0u;
                  v161 = 0u;
                  v162 = 0u;
                  v163 = 0u;
                  v68 = [a11 countByEnumeratingWithState:&v160 objects:v190 count:16];
                  if (v68)
                  {
                    v69 = v68;
                    v70 = *v161;
                    while (2)
                    {
                      for (ii = 0; ii != v69; ii = ii + 1)
                      {
                        if (*v161 != v70)
                        {
                          objc_enumerationMutation(a11);
                        }

                        v72 = *(*(&v160 + 1) + 8 * ii);
                        [v72 floatValue];
                        v74 = v73 >= 1.0;
                        if (v66 >= 1.0)
                        {
                          v74 = 1;
                        }

                        if (v73 >= 1.0 && v66 >= 1.0)
                        {
                          v74 = 0;
                        }

                        if (v73 > v66 && !v74)
                        {
                          [v151 removeObject:v72];
                          [v145 removeObject:v64];
                          goto LABEL_104;
                        }
                      }

                      v69 = [a11 countByEnumeratingWithState:&v160 objects:v190 count:16];
                      if (v69)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_104:
                }

                v23 = v142;
                v62 = [v142 countByEnumeratingWithState:&v164 objects:v191 count:16];
              }

              while (v62);
            }

            if (v141 >= 1)
            {
              if ([v145 count])
              {
                v158 = 0u;
                v159 = 0u;
                v156 = 0u;
                v157 = 0u;
                v76 = [v23 countByEnumeratingWithState:&v156 objects:v189 count:16];
                if (v76)
                {
                  v77 = v76;
                  v149 = *v157;
                  do
                  {
                    for (jj = 0; jj != v77; jj = jj + 1)
                    {
                      if (*v157 != v149)
                      {
                        objc_enumerationMutation(v142);
                      }

                      v79 = *(*(&v156 + 1) + 8 * jj);
                      [v79 floatValue];
                      v81 = v80;
                      v82 = [v151 copy];
                      v152 = 0u;
                      v153 = 0u;
                      v154 = 0u;
                      v155 = 0u;
                      v83 = [a11 countByEnumeratingWithState:&v152 objects:v188 count:16];
                      if (v83)
                      {
                        v84 = v83;
                        v85 = *v153;
                        while (2)
                        {
                          for (kk = 0; kk != v84; kk = kk + 1)
                          {
                            if (*v153 != v85)
                            {
                              objc_enumerationMutation(a11);
                            }

                            v87 = *(*(&v152 + 1) + 8 * kk);
                            [v87 floatValue];
                            if (v88 > v81)
                            {
                              [v151 removeObject:v87];
                              [v145 removeObject:v79];
                              goto LABEL_123;
                            }
                          }

                          v84 = [a11 countByEnumeratingWithState:&v152 objects:v188 count:16];
                          if (v84)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_123:
                    }

                    v77 = [v142 countByEnumeratingWithState:&v156 objects:v189 count:16];
                  }

                  while (v77);
                }
              }
            }

            v60 = [v145 count] != 0;
          }

          else
          {
            v60 = 0;
          }
        }

        v97 = v135 + v136;
        v98 = v135 + v136 + v138;
        a8 = v126;
        if (v129 == v98 + v137 && v136 <= a10 && (ignorePanoramas || v134) && !v60)
        {
          v99 = v97 == a3 && v137 == a4;
          v100 = v99;
          if (!v99 && v138)
          {
            v100 = v138 == a3 && v137 == a4 || v138 == a4 && v97 == a3 || v138 == v129 || v137 + v138 == a4 || v98 == a3;
          }

          if (a9 == 0 && v100)
          {
            v105 = (v131 ^ 1) & (v100 ^ v100 & (a9 > 0) & v130);
          }

          else
          {
            v105 = v100 ^ v100 & (a9 > 0) & v130;
          }

          if (v132 < a9)
          {
            v106 = v105;
          }

          else
          {
            v106 = 0;
          }

          if ((v106 & 1) == 0 && v105)
          {
            [v118 addIndex:v140];
          }
        }

        ++v140;
        v17 = v139 + 1;
        a7 = v125;
      }

      while ((v139 + 1) != v128);
      v111 = [(NSMutableArray *)obj countByEnumeratingWithState:&v184 objects:v196 count:16];
      v128 = v111;
    }

    while (v111);
  }

  if (![v118 count])
  {

    return 0;
  }

  if ([v118 count] >= 2)
  {
    v112 = [v118 firstIndex];
    if (v112 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v113 = v112;
      do
      {
        if ([v118 count] <= 1)
        {
          v113 = [v118 indexGreaterThanIndex:v113];
        }

        else
        {
          v114 = [(NSMutableIndexSet *)v127->_ignoreIndices containsIndex:v113];
          v113 = [v118 indexGreaterThanIndex:v113];
          if (v114)
          {
            [v118 removeIndex:{objc_msgSend(v118, "indexLessThanIndex:", v113)}];
          }
        }
      }

      while (v113 != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  if (!a12 || (v115 = [(MPWeighter *)v127 getRandomIndexInSubset:v118 withPreviousTags:a12], v115 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v116 = [(MPWeighter *)v127 getRandomIndexInSubset:v118];

    if (v116 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return [(NSMutableArray *)v127->_items objectAtIndex:v116];
    }

    return 0;
  }

  v116 = v115;

  return [(NSMutableArray *)v127->_items objectAtIndex:v116];
}

- (int64_t)getRandomIndexInSubset:(id)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (!self->_totalWeight)
  {
    return v3;
  }

  v6 = [a3 firstIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      if (([(NSMutableIndexSet *)self->_ignoreIndices containsIndex:v7]& 1) == 0)
      {
        v8 += [-[NSMutableArray objectAtIndex:](self->_weights objectAtIndex:{v7), "integerValue"}];
      }

      v7 = [a3 indexGreaterThanIndex:v7];
    }

    while (v7 != 0x7FFFFFFFFFFFFFFFLL);
    if (v8)
    {
      v9 = random();
      v10 = [a3 firstIndex];
      v3 = 0x7FFFFFFFFFFFFFFFLL;
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v9 % v8;
        v3 = v10;
        while (1)
        {
          v12 = [-[NSMutableArray objectAtIndex:](self->_weights objectAtIndex:{v3), "integerValue"}];
          v13 = v11 < v12;
          v11 -= v12;
          if (v13 && ![(NSMutableIndexSet *)self->_ignoreIndices containsIndex:v3])
          {
            break;
          }

          v3 = [a3 indexGreaterThanIndex:v3];
          if (v3 == 0x7FFFFFFFFFFFFFFFLL)
          {
            return 0x7FFFFFFFFFFFFFFFLL;
          }
        }
      }

      return v3;
    }
  }

  v15 = random();
  v16 = v15 % [a3 count];

  return [a3 indexAtIndex:v16];
}

- (int64_t)getRandomIndexInSubset:(id)a3 withPreviousTags:(id)a4
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (self->_totalWeight)
  {
    v6 = a3;
    v7 = self;
    v8 = [a3 firstIndex];
    v9 = [v6 mutableCopy];
    v10 = v9;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = v6;
      v26 = v7;
      v24 = v9;
      do
      {
        if (([(NSMutableIndexSet *)v7->_ignoreIndices containsIndex:v8]& 1) != 0)
        {
          goto LABEL_5;
        }

        if (![(MPWeighter *)v7 itemAtIndex:v8 meetsContraints:[NSDictionary oneMatch:"dictionaryWithObjectsAndKeys:" dictionaryWithObjectsAndKeys:a4, @"tags", 0], 0])
        {
          v11 = [a4 mutableCopy];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v12 = [a4 countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v32;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(a4);
                }

                v16 = *(*(&v31 + 1) + 8 * i);
                if (([v16 hasPrefix:@"X"] & 1) == 0)
                {
                  [v11 removeObject:v16];
                }
              }

              v13 = [a4 countByEnumeratingWithState:&v31 objects:v36 count:16];
            }

            while (v13);
          }

          v17 = [a4 mutableCopy];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v18 = [a4 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v28;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v28 != v20)
                {
                  objc_enumerationMutation(a4);
                }

                v22 = *(*(&v27 + 1) + 8 * j);
                if (([v22 hasPrefix:@"Y"] & 1) == 0)
                {
                  [v17 removeObject:v22];
                }
              }

              v19 = [a4 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v19);
          }

          v6 = v25;
          v7 = v26;
          v10 = v24;
          if ((![v11 count] || !-[MPWeighter itemAtIndex:meetsContraints:oneMatch:](v26, "itemAtIndex:meetsContraints:oneMatch:", v8, +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v11, @"tags", 0), 0)) && (!objc_msgSend(v17, "count") || !-[MPWeighter itemAtIndex:meetsContraints:oneMatch:](v26, "itemAtIndex:meetsContraints:oneMatch:", v8, +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v17, @"tags", 0), 0)) && (!objc_msgSend(v11, "count") || !-[MPWeighter itemAtIndex:meetsContraints:oneMatch:](v26, "itemAtIndex:meetsContraints:oneMatch:", v8, +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v11, @"tags", 0), 1)) && (!objc_msgSend(v17, "count") || !-[MPWeighter itemAtIndex:meetsContraints:oneMatch:](v26, "itemAtIndex:meetsContraints:oneMatch:", v8, +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v17, @"tags", 0), 1)))
          {
LABEL_5:
            [v10 removeIndex:v8];
          }
        }

        v8 = [v6 indexGreaterThanIndex:v8];
      }

      while (v8 != 0x7FFFFFFFFFFFFFFFLL);
    }

    if ([v10 count])
    {
      return [(MPWeighter *)v7 getRandomIndexInSubset:v10];
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v4;
}

- (int64_t)getRandomIndex
{
  totalWeight = self->_totalWeight;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (totalWeight)
  {
    v5 = [(NSMutableIndexSet *)self->_ignoreIndices firstIndex];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v5; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSMutableIndexSet *)self->_ignoreIndices indexGreaterThanIndex:i])
      {
        totalWeight -= [-[NSMutableArray objectAtIndex:](self->_weights objectAtIndex:{i), "integerValue"}];
      }
    }

    v7 = objc_alloc_init(NSMutableIndexSet);
    v8 = random();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    weights = self->_weights;
    v10 = [(NSMutableArray *)weights countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v3 = 0;
      v12 = v8 % totalWeight;
      v13 = *v21;
      do
      {
        for (j = 0; j != v11; j = j + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(weights);
          }

          v15 = [*(*(&v20 + 1) + 8 * j) integerValue];
          v16 = v12 < v15;
          v12 -= v15;
          if (v16 && ([(NSMutableIndexSet *)self->_ignoreIndices containsIndex:v3]& 1) == 0)
          {
            if (!self->_evenlyPickByID)
            {
              goto LABEL_22;
            }

            v17 = [MPUtilities idOfCombinedID:[(NSMutableArray *)self->_items objectAtIndex:v3]];
            v18 = [(NSMutableIndexSet *)self->_ignoreIndices firstIndex];
            if (v18 == 0x7FFFFFFFFFFFFFFFLL || ![-[NSMutableArray objectAtIndex:](self->_items objectAtIndex:{v18), "hasPrefix:", v17}])
            {
              goto LABEL_22;
            }

            [v7 addIndex:v3];
          }

          ++v3;
        }

        v11 = [(NSMutableArray *)weights countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    if ([v7 count])
    {
      v3 = [v7 indexAtIndex:{random() % objc_msgSend(v7, "count")}];
    }

    else
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_22:
  }

  return v3;
}

- (BOOL)itemAtIndex:(int64_t)a3 meetsContraints:(id)a4 oneMatch:(BOOL)a5
{
  v5 = a5;
  v24 = [(NSMutableArray *)self->_constraints objectAtIndex:a3];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [a4 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v23 = *v30;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(a4);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v24 valueForKey:{v10, v23}];
        v12 = [a4 objectForKey:v10];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        if (NSStringHasSuffix(v14, "Number"))
        {
          if ([v11 compare:v12] == &dword_0 + 1)
          {
            goto LABEL_35;
          }
        }

        else if (NSStringHasSuffix(v14, "Boolean"))
        {
          v15 = [v12 BOOLValue];
          if (v15 != [v11 BOOLValue])
          {
            goto LABEL_35;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v5)
            {
              v16 = [v12 count];
              if (v16 != [v11 count])
              {
                goto LABEL_35;
              }
            }

            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v17 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (!v17)
            {
              return v17;
            }

            v18 = v17;
            v19 = 0;
            v20 = *v26;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v26 != v20)
                {
                  objc_enumerationMutation(v12);
                }

                LODWORD(v17) = [v11 containsObject:*(*(&v25 + 1) + 8 * j)];
                if (v5)
                {
                  if (v17)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {
                  if (!v17)
                  {
                    return v17;
                  }

                  v19 = 1;
                }
              }

              v18 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v18);
            if ((v19 & 1) == 0)
            {
LABEL_35:
              LOBYTE(v17) = 0;
              return v17;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 isEqualToString:v11] & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

LABEL_31:
        ;
      }

      v8 = [a4 countByEnumeratingWithState:&v29 objects:v34 count:16];
      LOBYTE(v17) = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v17) = 1;
  }

  return v17;
}

- (void)increaseUsageCountOfObjectAtIndex:(int64_t)a3
{
  v5 = [-[NSMutableArray objectAtIndex:](self->_usageCount "objectAtIndex:"integerValue"")];
  usageCount = self->_usageCount;
  v7 = [NSNumber numberWithInteger:v5 + 1];

  [(NSMutableArray *)usageCount replaceObjectAtIndex:a3 withObject:v7];
}

- (id)indicesMeetingConstraints:(id)a3
{
  v5 = [(MPWeighter *)self count];
  v6 = +[NSMutableIndexSet indexSet];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ([(MPWeighter *)self itemAtIndex:i meetsContraints:a3])
      {
        [v6 addIndex:i];
      }
    }
  }

  return v6;
}

- (id)indicesEqualingConstraints:(id)a3
{
  v4 = +[NSMutableIndexSet indexSet];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [a3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v14 = *v22;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(a3);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        constraints = self->_constraints;
        v8 = [(NSMutableArray *)constraints countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v18;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(constraints);
              }

              if (![objc_msgSend(*(*(&v17 + 1) + 8 * j) valueForKey:{v6), "compare:", objc_msgSend(a3, "objectForKey:", v6)}])
              {
                [v4 addIndex:v10];
              }

              ++v10;
            }

            v9 = [(NSMutableArray *)constraints countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v9);
        }
      }

      v16 = [a3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }

  return v4;
}

- (int64_t)numberOfItemsWithImageCount:(int64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  constraints = self->_constraints;
  v5 = [(NSMutableArray *)constraints countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v12;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(constraints);
      }

      if (*(*(*(&v11 + 1) + 8 * i) + 8) == a3)
      {
        ++v7;
      }
    }

    v6 = [(NSMutableArray *)constraints countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v6);
  return v7;
}

- (id)imageCounts
{
  v3 = +[NSMutableIndexSet indexSet];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  constraints = self->_constraints;
  v5 = [(NSMutableArray *)constraints countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(constraints);
        }

        [v3 addIndex:*(*(*(&v10 + 1) + 8 * v8) + 8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)constraints countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)ignoreIndex:(int64_t)a3
{
  [(NSMutableIndexSet *)self->_ignoreIndices removeAllIndexes];
  ignoreIndices = self->_ignoreIndices;

  [(NSMutableIndexSet *)ignoreIndices addIndex:a3];
}

- (void)ignoreIndices:(id)a3
{
  [(NSMutableIndexSet *)self->_ignoreIndices removeAllIndexes];
  ignoreIndices = self->_ignoreIndices;

  [(NSMutableIndexSet *)ignoreIndices addIndexes:a3];
}

- (id)constraintsForItem:(id)a3
{
  if ([(NSMutableArray *)self->_items indexOfObject:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  constraints = self->_constraints;
  v7 = [(NSMutableArray *)self->_items indexOfObject:a3];

  return [(NSMutableArray *)constraints objectAtIndex:v7];
}

- (void)clearAllItems
{
  [(NSMutableArray *)self->_weights removeAllObjects];
  [(NSMutableArray *)self->_items removeAllObjects];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  [(NSMutableArray *)self->_usageCount removeAllObjects];
  [(NSMutableIndexSet *)self->_ignoreIndices removeAllIndexes];
  self->_totalWeight = 0;
  self->_evenlyPickByID = 0;
}

@end