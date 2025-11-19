@interface SSFuzzyMatchScoring
+ (BOOL)patternCanMatch:(id)a3 pattern:(id)a4;
+ (id)fuzzymatch:(id)a3 pattern:(id)a4;
+ (id)stringToUint32Array:(id)a3;
+ (int)bonusFor:(int)a3 charClass:(int)a4;
+ (int)charClass:(unsigned int)a3;
@end

@implementation SSFuzzyMatchScoring

+ (int)charClass:(unsigned int)a3
{
  if (a3 == 9608)
  {
    return 3;
  }

  if (u_islower(a3))
  {
    return 3;
  }

  if (u_isupper(a3))
  {
    return 4;
  }

  if (u_isspace(a3))
  {
    return 0;
  }

  if (u_ispunct(a3))
  {
    return 2;
  }

  if (u_isdigit(a3))
  {
    return 5;
  }

  return 1;
}

+ (int)bonusFor:(int)a3 charClass:(int)a4
{
  if (a4 < 2)
  {
    goto LABEL_9;
  }

  if (a3 < 3)
  {
    return dword_1DA0D5404[a3];
  }

  if (a3 == 3 && a4 == 4 || a3 != 5 && a4 == 5)
  {
    return 7;
  }

LABEL_9:
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 10;
  }

  if (a4 == 1)
  {
    return 8;
  }

  else
  {
    return v5;
  }
}

+ (BOOL)patternCanMatch:(id)a3 pattern:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    if (![v6 count])
    {
      v13 = 1;
      goto LABEL_11;
    }

    v7 = 0;
    v8 = 0;
    while (v8 < [v5 count])
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      v10 = [v9 unsignedIntValue];

      v11 = [v6 objectAtIndexedSubscript:v7];
      v12 = [v11 unsignedIntValue];

      ++v8;
      if (v10 != -1 && v10 == v12)
      {
        ++v7;
        v13 = 1;
        if (v7 >= [v6 count])
        {
          goto LABEL_11;
        }
      }
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)stringToUint32Array:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__SSFuzzyMatchScoring_stringToUint32Array___block_invoke;
  v10[3] = &unk_1E8595BE8;
  v11 = v5;
  v7 = v5;
  [v4 enumerateSubstringsInRange:0 options:v6 usingBlock:{2, v10}];

  v8 = [v7 copy];

  return v8;
}

void __43__SSFuzzyMatchScoring_stringToUint32Array___block_invoke(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = [a2 getBytes:&v6 maxLength:4 usedLength:0 encoding:2617245952 options:0 range:0 remainingRange:{1, 0}];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [v4 addObject:v5];
  }

  else
  {
    [v4 addObject:&unk_1F55B3A38];
  }
}

+ (id)fuzzymatch:(id)a3 pattern:(id)a4
{
  v140[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v19 = [[SSTermMatchResult alloc] initWithoutMatch:v7];
    goto LABEL_18;
  }

  v9 = [a1 stringToUint32Array:v6];
  v10 = [a1 stringToUint32Array:v8];
  v11 = [v9 count];
  v12 = [v10 count];
  if (!v12)
  {
    goto LABEL_16;
  }

  v136 = v12;
  v137 = a1;
  v129 = v10;
  v13 = [v10 objectAtIndexedSubscript:0];
  v14 = [v13 unsignedIntValue];

  if ([v9 count])
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = [v9 objectAtIndexedSubscript:v16];
      v18 = [v17 unsignedIntValue];

      if (v18 == v14)
      {
        break;
      }

      ++v16;
      v15 += 0x100000000;
      if (v16 >= [v9 count])
      {
        goto LABEL_14;
      }
    }

    if (v16 != -1)
    {
      v20 = v137;
      v10 = v129;
      if ([v137 patternCanMatch:v9 pattern:v129])
      {
        v115 = v113;
        v21 = (4 * v11 + 15) & 0x7FFFFFFF0;
        v134 = &v113[-v21];
        bzero(&v113[-v21], 4 * v11);
        v132 = &v113[-v21];
        bzero(&v113[-v21], 4 * v11);
        v128 = &v113[-v21];
        bzero(&v113[-v21], 4 * v11);
        v22 = v136;
        v23 = 4 * v136;
        v127 = &v113[-((v23 + 15) & 0x7FFFFFFF0)];
        bzero(v127, v23);
        v24 = [v10 objectAtIndexedSubscript:0];
        LODWORD(v133) = [v24 unsignedIntValue];

        v25 = [v10 objectAtIndexedSubscript:0];
        LODWORD(v135) = [v25 unsignedIntValue];

        if (v16 < 1)
        {
          v27 = 0;
        }

        else
        {
          v26 = [v9 objectAtIndexedSubscript:(v16 - 1)];
          v27 = [v20 charClass:{objc_msgSend(v26, "unsignedIntValue")}];
        }

        v116 = v8;
        v117 = v6;
        v139 = v9;
        if (v16 < [v9 count])
        {
          LODWORD(v138) = v27;
          v30 = 0;
          v31 = 0;
          LODWORD(v131) = 0;
          v124 = 0;
          LODWORD(v32) = 0;
          v33 = 0;
          LODWORD(v130) = v22 - 1;
          v34 = v15 >> 32;
          v35 = v139;
          while (1)
          {
            v36 = v138;
            v37 = [v35 objectAtIndexedSubscript:v34];
            v38 = [v37 unsignedIntValue];

            v39 = v137;
            LODWORD(v138) = [v137 charClass:v38];
            v40 = [v39 bonusFor:v36 charClass:?];
            *&v128[4 * v34] = v40;
            if (v38 == v135)
            {
              v41 = v131;
              if (v131 >= v136)
              {
                v124 = v16;
              }

              else
              {
                v127[v131] = v16;
                v42 = v41 + 1;
                if (v41 + 1 < v130)
                {
                  v43 = v41 + 1;
                }

                else
                {
                  v43 = v130;
                }

                v44 = [v129 objectAtIndexedSubscript:v43];
                LODWORD(v135) = [v44 unsignedIntValue];

                v124 = v16;
                LODWORD(v131) = v42;
              }
            }

            v45 = v38 != v133;
            if (v38 == v133)
            {
              v32 = (v40 + 16);
              *&v134[4 * v34] = v32;
              *&v132[4 * v34] = 1;
              if (v136 == 1 && v32 > v30)
              {
                if (v40 > 7)
                {
                  if (v131 != 1)
                  {
                    goto LABEL_119;
                  }

LABEL_52:
                  v51 = [SSTermMatchResult alloc];
                  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
                  v140[0] = v52;
                  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:1];
                  v8 = v116;
                  v19 = [(SSTermMatchResult *)v51 initWithMatch:v116 start:v16 end:(v16 + 1) score:v32 pos:v53];

                  goto LABEL_120;
                }

                v31 = v16;
                v30 = (v40 + 16);
              }
            }

            else
            {
              if (v32 <= 3)
              {
                v46 = 3;
              }

              else
              {
                v46 = v32;
              }

              v47 = v46 - 3;
              if (v32 <= 1)
              {
                v48 = 1;
              }

              else
              {
                v48 = v32;
              }

              v49 = v48 - 1;
              if (v33)
              {
                LODWORD(v32) = v49;
              }

              else
              {
                LODWORD(v32) = v47;
              }

              *&v134[4 * v34] = v32;
              *&v132[4 * v34] = 0;
            }

            ++v34;
            v35 = v139;
            v16 = (v16 + 1);
            v33 = v45;
            if (v34 >= [v139 count])
            {
              goto LABEL_49;
            }
          }
        }

        v124 = 0;
        LODWORD(v131) = 0;
        v31 = 0;
        v30 = 0;
LABEL_49:
        v50 = v136;
        if (v131 == v136)
        {
          if (v136 != 1)
          {
            v54 = *v127;
            v55 = v124;
            v123 = v124 - v54 + 1;
            v126 = (v123 * v136);
            v56 = 4 * v126;
            v57 = (4 * v126 + 15) & 0x7FFFFFFF0;
            v125 = &v113[-v57];
            bzero(&v113[-v57], 4 * v126);
            v133 = &v113[-v57];
            bzero(&v113[-v57], v56);
            v119 = v54;
            if (v55 >= v54)
            {
              v58 = 0;
              v59 = &v134[4 * v119];
              v60 = v123;
              v61 = &v132[4 * v119];
              do
              {
                if (v58 <= v55 - v54)
                {
                  *&v125[4 * v58] = *v59;
                  *&v133[4 * v58++] = *v61;
                }

                ++v59;
                ++v61;
                --v60;
              }

              while (v60);
            }

            v62 = (v50 - 1);
            v63 = v127;
            if (v50 > 1)
            {
              v118 = v50 & 0x7FFFFFFF;
              v64 = v124 - 2 * v119;
              v65 = ~v119;
              v66 = 1;
              v114 = v124 + 1;
              v122 = v124 + 1 - 2 * v119;
              v67 = v123;
              do
              {
                v68 = v63[v66];
                v69 = [v129 objectAtIndexedSubscript:v66];
                LODWORD(v138) = [v69 unsignedIntValue];

                v70 = v68;
                v71 = v125;
                *&v125[4 * (v67 * v66 - v119) - 4 + 4 * v68] = 0;
                v120 = v65;
                v121 = v64;
                if (v68 <= v124)
                {
                  v72 = 0;
                  v73 = 0;
                  v136 = &v71[4 * v70 + 4 * v64];
                  v137 = v70;
                  v131 = &v71[4 * v70 + 4 * v65];
                  v132 = &v128[4 * v70];
                  v135 = (v114 - v70);
                  v130 = &v133[4 * v70 + 4 * v65];
                  v134 = &v133[4 * v70 + 4 * v122];
                  v74 = &v71[4 * v70 + 4 * v122];
                  do
                  {
                    v75 = v70;
                    v76 = [v139 objectAtIndexedSubscript:v70 + v72];
                    v77 = [v76 unsignedIntValue];

                    if (v73)
                    {
                      v78 = -1;
                    }

                    else
                    {
                      v78 = -3;
                    }

                    v79 = *(v136 + 4 * v72) + v78;
                    if (v138 == v77)
                    {
                      v80 = *&v132[4 * v72];
                      v81 = *&v130[4 * v72];
                      v82 = v81 + 1;
                      if (v81 < 1)
                      {
                        v83 = *&v132[4 * v72];
                      }

                      else
                      {
                        v83 = *&v132[4 * v72 + 4 + -4 * v82];
                        v84 = v80 > v83;
                        if (v83 <= v80)
                        {
                          v83 = *&v132[4 * v72];
                        }

                        if (v83 <= 4)
                        {
                          v83 = 4;
                        }

                        if (v80 > 7 && v84)
                        {
                          v82 = 1;
                          v83 = *&v132[4 * v72];
                        }
                      }

                      v70 = v75;
                      v86 = *&v131[4 * v72] + 16;
                      v87 = v83 + v86;
                      v85 = v86 + v80;
                      if (v87 < v79)
                      {
                        v82 = 0;
                      }

                      else
                      {
                        v85 = v87;
                      }
                    }

                    else
                    {
                      v85 = 0;
                      v82 = 0;
                      v70 = v75;
                    }

                    v73 = v85 < v79;
                    if (v85 > v79)
                    {
                      v79 = v85;
                    }

                    v88 = v79 & ~(v79 >> 31);
                    if (v88 <= v30)
                    {
                      v89 = v30;
                    }

                    else
                    {
                      v89 = v88;
                    }

                    v90 = v88 > v30 && v66 == v62;
                    *&v134[4 * v72] = v82;
                    if (v90)
                    {
                      v31 = (v137 + v72);
                    }

                    else
                    {
                      v31 = v31;
                    }

                    if (v66 == v62)
                    {
                      v30 = v89;
                    }

                    else
                    {
                      v30 = v30;
                    }

                    *&v74[4 * v72++] = v88;
                  }

                  while (v135 != v72);
                }

                ++v66;
                v67 = v123;
                v64 = v121 + v123;
                v65 = v120 + v123;
                v122 += v123;
                v63 = v127;
              }

              while (v66 != v118);
            }

            v91 = [MEMORY[0x1E695DF70] array];
            v92 = v125;
            v137 = v91;
            v138 = v125 - 4;
            v93 = v123;
            v94 = v124 - 2 * v119 + 2;
            v95 = ~v124;
            v96 = -v119;
            v97 = 1;
            for (i = v31; ; i = (i - 1))
            {
              v99 = v62 * v93;
              if (v62 <= 0)
              {
                v101 = 0;
                v100 = v63[v62];
              }

              else
              {
                v100 = v63[v62];
                if (i >= v100)
                {
                  v101 = *&v138[4 * v95 + 4 * i + 4 * v99];
                }

                else
                {
                  v101 = 0;
                }
              }

              v102 = v96 + i + v99;
              v103 = &v92[4 * v102];
              if (i <= v100)
              {
                v104 = 0;
              }

              else
              {
                v104 = *(v103 - 1);
              }

              v105 = *v103;
              if (v105 > v101)
              {
                v106 = v105 == v104 && v97;
                if (v105 > v104 || v106 != 0)
                {
                  v108 = [MEMORY[0x1E696AD98] numberWithInt:i];
                  [v137 addObject:v108];

                  if (!v62)
                  {
                    v110 = [SSTermMatchResult alloc];
                    v8 = v116;
                    v111 = v137;
                    v19 = [(SSTermMatchResult *)v110 initWithMatch:v116 start:i end:(v31 + 1) score:v30 pos:v137];

                    goto LABEL_120;
                  }

                  LODWORD(v62) = v62 - 1;
                  v63 = v127;
                  v93 = v123;
                  v92 = v125;
                }
              }

              if (*&v133[4 * v102] <= 1)
              {
                v109 = v94 + i + v99;
                v97 = v109 < v126 && *&v133[4 * v109] > 0;
              }

              else
              {
                v97 = 1;
              }
            }
          }

          v16 = v31;
          v32 = v30;
          goto LABEL_52;
        }

LABEL_119:
        v112 = [SSTermMatchResult alloc];
        v8 = v116;
        v19 = [(SSTermMatchResult *)v112 initWithoutMatch:v116];
LABEL_120:
        v6 = v117;
        v9 = v139;
        goto LABEL_15;
      }

LABEL_16:
      v19 = [[SSTermMatchResult alloc] initWithoutMatch:v8];
      goto LABEL_17;
    }
  }

LABEL_14:
  v19 = [[SSTermMatchResult alloc] initWithoutMatch:v8];
LABEL_15:
  v10 = v129;
LABEL_17:

LABEL_18:
  v28 = *MEMORY[0x1E69E9840];

  return v19;
}

@end