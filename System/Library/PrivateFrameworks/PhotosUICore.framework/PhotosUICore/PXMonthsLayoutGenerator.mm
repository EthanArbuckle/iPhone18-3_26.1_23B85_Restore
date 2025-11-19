@interface PXMonthsLayoutGenerator
- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4 itemKinds:(int64_t *)a5 zPositions:(float *)a6;
@end

@implementation PXMonthsLayoutGenerator

- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4 itemKinds:(int64_t *)a5 zPositions:(float *)a6
{
  v10 = [(PXMonthsLayoutGenerator *)self itemCount];
  v166 = [(PXMonthsLayoutGenerator *)self itemLayoutInfoBlock];
  v161 = self;
  v11 = [(PXMonthsLayoutGenerator *)self metrics];
  v12 = [v11 layoutStyle];
  [v11 referenceSize];
  v147 = v13;
  v14 = +[PXCuratedLibrarySettings sharedInstance];
  v162 = [v14 allowsModularLayoutForZoomLevel:2 sizeClass:objc_msgSend(v11 orientation:"sizeClass") layoutStyle:{objc_msgSend(v11, "orientation"), objc_msgSend(v11, "layoutStyle")}];

  v15 = [v11 orientation];
  v165 = v11;
  v150 = v15;
  v17 = [v11 sizeClass] == 1 && v15 == 2;
  v163 = v17;
  v148 = v12;
  if (v12 == 1)
  {
    v18 = +[PXLemonadeSettings sharedInstance];
    v158 = [v18 enableMonthHeroPromotion];

    v19 = 1.5;
  }

  else
  {
    v19 = 1.0;
    v158 = 1;
  }

  [v11 padding];
  v21 = v20;
  v23 = v22;
  v145 = v24;
  v26 = v25;
  [v11 chapterHeaderPadding];
  v28 = v27;
  v30 = v29;
  v153 = v31;
  v164 = v32;
  [v11 interitemSpacing];
  v154 = v33;
  v167 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v35 = v166[2](v166, i);
      [v35 weight];
      v37 = v36;

      if (v37 == -1.0)
      {
        [v167 addIndex:i];
      }
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PXMonthsLayoutGenerator_updateContentSize_itemRects_itemKinds_zPositions___block_invoke;
  aBlock[3] = &unk_1E7735C90;
  aBlock[4] = v161;
  aBlock[5] = v10;
  aBlock[6] = a2;
  aBlock[7] = a4;
  aBlock[8] = a5;
  v38 = _Block_copy(aBlock);
  v39 = v147 - (v23 + v26);
  v196 = 0;
  v197 = &v196;
  v198 = 0x2020000000;
  v199 = 0;
  v151 = v38;
  if (v10 > 0)
  {
    v40 = 0;
    v155 = 0;
    v41 = v150 == 2;
    if (v150 == 2)
    {
      v42 = 1.33333333;
    }

    else
    {
      v42 = 1.0;
    }

    v43 = v154;
    v44 = (v39 + v154 * -2.0) / 3.0;
    v127 = v44 / v42;
    v45 = v154 + v44 / v42 * 2.0;
    v117 = v154 + v44 / v42;
    v120 = v42 * v45;
    v121 = v45;
    v141 = v154 + v45;
    v144 = v154 + v44;
    v132 = v144 + v144;
    v108 = v154 + v42 * v45;
    v46 = (v39 - v154) * 0.5;
    v133 = v46 / 1.77777778;
    v109 = v39 / 1.77777778 + v154 * 2.0 + v46 / 1.77777778;
    v47 = (v39 + v154 * -3.0) * 0.25;
    v48 = v154 + v47 * 2.0;
    v105 = v47 + v48 + v154 * 2.0;
    if (v150 == 2)
    {
      v49 = 1.77777778;
    }

    else
    {
      v49 = v19;
    }

    v50 = 1.5;
    if (v12 != 1)
    {
      v50 = 1.33333333;
    }

    v51 = v39 / v50;
    v52 = (v39 + v154 * -3.66666667) / 3.25;
    v114 = v154 + v154 + v52 / 1.77777778 * 3.0;
    if (v12 == 1)
    {
      v41 = 1;
    }

    v139 = v41;
    v135 = v46 / 1.33333333;
    v53 = (v39 - (v42 + 1.0) * v154) / ((v42 + v42) / v42 + 1.0);
    v54 = v53 / v42;
    v119 = v154 + v53 / v42 * 2.0;
    v55 = v42 * v119;
    v102 = v39 / v19;
    v56 = v30 + v164;
    v57 = v23 + v30;
    v58 = (v39 + v154 * -2.0) / 3.0;
    v156 = v39 - v56;
    v157 = v57;
    v59 = 0x7FFFFFFFFFFFFFFFLL;
    v138 = v39 / v49;
    v130 = v154 + v39 / 1.77777778;
    v131 = v39 / 1.77777778;
    v146 = (v39 - v154) * 0.5;
    v111 = v154 + v47 * 2.0;
    v112 = v154 + v44 * 2.0;
    v129 = v154 + v112;
    v125 = v51;
    v126 = (v39 + v154 * -3.0) * 0.25;
    v140 = v154 + v47;
    v107 = v154 + v48;
    v142 = v154 + v51;
    v143 = v154 + v46;
    v123 = v52 / 1.77777778;
    v124 = (v39 + v154 * -3.66666667) / 3.25;
    v116 = v154 + v52 / 1.77777778;
    v110 = v116 + v116;
    v113 = v114 * 1.33333333;
    v128 = v154 + v114 * 1.33333333;
    v122 = v39 / 1.33333333;
    v134 = v154 + v39 / 1.33333333;
    v136 = v54;
    v137 = v53;
    v115 = v154 + v54;
    v103 = v154 + v52;
    v104 = v154 + v53;
    v118 = v55;
    v106 = v154 + v55;
    v60 = a3;
    v149 = v28;
    v152 = v39;
    while ([v167 containsIndex:v40])
    {
      [v165 chapterHeaderHeight];
      v62 = v61;
      v63 = v197;
      v64 = v197[3];
      v65 = &a4[v64];
      v67 = v156;
      v66 = v157;
      v65->origin.x = v157;
      v65->origin.y = v21;
      v65->size.width = v156;
      v65->size.height = v62;
      a5[v64] = 0;
      v59 = v63[3];
      a6[v59] = 0.0;
      if (v163)
      {
        v68 = v59;
      }

      else
      {
        v76 = v21;
        v21 = v153 + CGRectGetMaxY(*&v66);
        v63 = v197;
        v68 = v197[3];
      }

      v40 = v68 + 1;
      v63[3] = v68 + 1;
LABEL_108:
      if (v40 >= v10)
      {
        goto LABEL_111;
      }
    }

    v69 = v197[3];
    v70 = [v167 indexGreaterThanIndex:v69];
    if (v70 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v71 = v10;
    }

    else
    {
      v71 = v70;
    }

    v192 = 0;
    v193 = &v192;
    v194 = 0x2020000000;
    v195 = 0x7FFFFFFFFFFFFFFFLL;
    v188 = 0;
    v189 = &v188;
    v190 = 0x2020000000;
    v191 = 0x7FFFFFFFFFFFFFFFLL;
    v187[0] = 0;
    v187[1] = v187;
    v187[2] = 0x2020000000;
    v187[3] = 0;
    v183 = 0;
    v184 = &v183;
    v185 = 0x2020000000;
    v186 = v21;
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = __76__PXMonthsLayoutGenerator_updateContentSize_itemRects_itemKinds_zPositions___block_invoke_2;
    v168[3] = &unk_1E7735CB8;
    v175 = v23;
    v176 = v21;
    v177 = v10;
    v178 = a2;
    v170 = &v196;
    v168[4] = v161;
    v179 = a4;
    v180 = a5;
    v181 = a6;
    v182 = v158;
    v169 = v166;
    v171 = v187;
    v172 = &v188;
    v173 = &v192;
    v174 = &v183;
    v72 = _Block_copy(v168);
    v73 = v72;
    if (v162)
    {
      v74 = v71 + ~v69;
      if (v74 > 2)
      {
        if (v74 == 3)
        {
          if (v150 == 2)
          {
            v78 = *(v72 + 2);
            if (v155)
            {
              v78(v72, 0, 0.0, 0.0, v124, v123);
              v73[2](v73, 0, 0.0, v116, v124, v123);
              v73[2](v73, 0, 0.0, v110, v124, v123);
              v73[2](v73, 2, v103, 0.0, v113, v114);
              goto LABEL_65;
            }

            v78(v72, 2, 0.0, 0.0, v113, v114);
            v73[2](v73, 0, v128, 0.0, v124, v123);
            v73[2](v73, 0, v128, v116, v124, v123);
            v73[2](v73, 0, v128, v110, v124, v123);
            goto LABEL_73;
          }

          (*(v72 + 2))(v72, 2, 0.0, 0.0, v39, v125);
          v73[2](v73, 0, 0.0, v142, v58, v58);
          v73[2](v73, 0, v144, v142, v58, v58);
          v73[2](v73, 0, v132, v142, v58, v58);
        }

        else
        {
          if (v74 == 4)
          {
            if (v150 == 2)
            {
              v80 = *(v72 + 2);
              if (v155)
              {
                v81 = v126;
                v80(v72, 0, 0.0, 0.0, v126, v126);
                v73[2](v73, 0, 0.0, v140, v81, v81);
                v73[2](v73, 0, v140, 0.0, v81, v81);
                v73[2](v73, 0, v140, v140, v81, v81);
                v73[2](v73, 2, v140 + v140, 0.0, v111, v111);
                goto LABEL_65;
              }

              v80(v72, 2, 0.0, 0.0, v111, v111);
              v83 = v126;
              v73[2](v73, 0, v107, 0.0, v126, v126);
              v73[2](v73, 0, v107, v140, v83, v83);
              v73[2](v73, 0, v105, 0.0, v83, v83);
              v73[2](v73, 0, v105, v140, v83, v83);
            }

            else
            {
              if (v148 != 1)
              {
                (*(v72 + 2))(v72, 2, 0.0, 0.0, v39, v131);
                v73[2](v73, 0, 0.0, v130, v146, v133);
                v73[2](v73, 0, v143, v130, v146, v133);
                v73[2](v73, 0, 0.0, v109, v146, v133);
                v73[2](v73, 0, v143, v109, v146, v133);
                goto LABEL_74;
              }

              v82 = *(v72 + 2);
              if (v155)
              {
                v82(v72, 0, 0.0, 0.0, v58, v58);
                v73[2](v73, 0, 0.0, v144, v58, v58);
                v73[2](v73, 2, v144, 0.0, v112, v112);
                v73[2](v73, 0, 0.0, v129, v58, v58);
                v73[2](v73, 0, v144, v129, v112, v58);
                goto LABEL_65;
              }

              v82(v72, 2, 0.0, 0.0, v112, v112);
              v73[2](v73, 0, v129, 0.0, v58, v58);
              v73[2](v73, 0, v129, v144, v58, v58);
              v73[2](v73, 0, 0.0, v129, v112, v58);
              v73[2](v73, 0, v129, v129, v58, v58);
            }

            goto LABEL_73;
          }

          if (v74 == 5 && v148 == 1)
          {
            v77 = *(v72 + 2);
            if (v155)
            {
              v77(v72, 0, 0.0, 0.0, v58, v127);
              v73[2](v73, 0, 0.0, v117, v58, v127);
              v73[2](v73, 2, v144, 0.0, v120, v121);
              v73[2](v73, 0, 0.0, v141, v58, v127);
              v73[2](v73, 0, v144, v141, v58, v127);
              v73[2](v73, 0, v132, v141, v58, v127);
              goto LABEL_65;
            }

            v77(v72, 2, 0.0, 0.0, v120, v121);
            v73[2](v73, 0, v108, 0.0, v58, v127);
            v73[2](v73, 0, v108, v117, v58, v127);
            v73[2](v73, 0, 0.0, v141, v58, v127);
            v73[2](v73, 0, v144, v141, v58, v127);
            v73[2](v73, 0, v132, v141, v58, v127);
LABEL_73:
            v155 = 2;
          }
        }
      }

      else
      {
        switch(v74)
        {
          case 0:
            (*(v72 + 2))(v72, 1, 0.0, 0.0, v39, v138);
            goto LABEL_65;
          case 1:
            v79 = *(v72 + 2);
            if (v150 == 2)
            {
              v79(v72, 1, 0.0, 0.0, v146, v146);
              v73[2](v73, 1, v143, 0.0, v146, v146);
            }

            else
            {
              if (v148 != 1)
              {
                v79(v72, 1, 0.0, 0.0, v39, v131);
                v73[2](v73, 1, 0.0, v130, v39, v131);
                break;
              }

              v79(v72, 1, 0.0, 0.0, v146, v102);
              v73[2](v73, 1, v143, 0.0, v146, v102);
            }

            goto LABEL_65;
          case 2:
            if (v139)
            {
              v75 = *(v72 + 2);
              if (v155)
              {
                v75(v72, 0, 0.0, 0.0, v137, v136);
                v73[2](v73, 0, 0.0, v115, v137, v136);
                v73[2](v73, 2, v104, 0.0, v118, v119);
LABEL_65:
                v155 = 0;
                break;
              }

              v75(v72, 2, 0.0, 0.0, v118, v119);
              v73[2](v73, 0, v106, 0.0, v137, v136);
              v73[2](v73, 0, v106, v115, v137, v136);
              goto LABEL_73;
            }

            (*(v72 + 2))(v72, 2, 0.0, 0.0, v39, v122);
            v73[2](v73, 0, 0.0, v134, v146, v135);
            v73[2](v73, 0, v143, v134, v146, v135);
            break;
        }
      }
    }

LABEL_74:
    if (v197[3] == v69)
    {
      [v165 defaultSectionAspectRatio];
      v85 = v39 / v84;
      v86 = v197 + 3;
      for (j = v197[3]; j < v71; v197[3] = j)
      {
        v88 = &a4[j];
        v88->origin.x = v23;
        v88->origin.y = v21;
        v88->size.width = v39;
        v88->size.height = v85;
        a5[j] = 0;
        a6[*v86] = 0.0;
        v201.origin.x = v23;
        v201.origin.y = v21;
        v201.size.width = v39;
        v201.size.height = v85;
        v21 = v43 + CGRectGetMaxY(v201);
        v86 = v197 + 3;
        j = v197[3] + 1;
      }

      v202.origin.x = v23;
      v202.origin.y = v21;
      v202.size.width = v39;
      v202.size.height = v85;
      v155 = 0;
      v89 = CGRectGetMinY(v202) - v43;
      v184[3] = v89;
    }

    else
    {
      v89 = v184[3];
    }

    if (v193[3] != 0x7FFFFFFFFFFFFFFFLL && v189[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v151[2]();
    }

    if ([v165 displaceTopLeadingCardTitle])
    {
      v90 = v193[3];
      if (v90 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v91 = v189[3];
        if (v91 != 0x7FFFFFFFFFFFFFFFLL && v91 != v90)
        {
          if (v69 == v91)
          {
            v93 = v69 + 1;
          }

          else
          {
            v93 = v69;
          }

          if (v69 == v90)
          {
            v69 = v189[3];
          }

          else
          {
            v69 = v93;
          }
        }
      }

      a5[v69] |= 8uLL;
    }

    if (v59 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v94 = v58;
      v95 = &a4[v59];
      y = v95->origin.y;
      if (v163)
      {
        height = v184[3] - y;
        a5[v59] = 2;
        x = 0.0;
        width = v23;
      }

      else
      {
        x = v95->origin.x;
        width = v95->size.width;
        height = v95->size.height;
        if (!v162 || [v165 displaceTopLeadingCardTitle])
        {
          v100 = v184[3];
          v101 = [v165 displaceTopLeadingCardTitle];
          if (height < v100 - y)
          {
            height = v100 - y;
          }

          if (v101)
          {
            y = y + 30.0;
          }
        }

        v28 = v149;
      }

      v95->origin.x = x;
      v95->origin.y = y;
      v95->size.width = width;
      v95->size.height = height;
      v43 = v154;
      v58 = v94;
      v39 = v152;
    }

    v21 = v28 + v89;

    _Block_object_dispose(&v183, 8);
    _Block_object_dispose(v187, 8);
    _Block_object_dispose(&v188, 8);
    _Block_object_dispose(&v192, 8);
    v40 = v197[3];
    v59 = 0x7FFFFFFFFFFFFFFFLL;
    v60 = a3;
    goto LABEL_108;
  }

  v60 = a3;
LABEL_111:
  v203.size.height = *(MEMORY[0x1E695F058] + 24);
  v60->width = v147;
  v203.origin.x = v23;
  v203.origin.y = v21;
  v203.size.width = v39;
  v60->height = v145 + CGRectGetMinY(v203) - v28;
  v161->_presentedSingleColumn = v162 ^ 1;
  _Block_object_dispose(&v196, 8);
}

__n128 __76__PXMonthsLayoutGenerator_updateContentSize_itemRects_itemKinds_zPositions___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a2 < 0 || a1[5] <= a2)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a1[6] object:a1[4] file:@"PXMonthsLayoutGenerator.m" lineNumber:124 description:{@"fromIndex %li out of bounds 0..%li", a2, a1[5]}];

    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_4:
      if (a1[5] > v3)
      {
        goto LABEL_5;
      }
    }
  }

  else if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a1[6] object:a1[4] file:@"PXMonthsLayoutGenerator.m" lineNumber:125 description:{@"toIndex %li out of bounds 0..%li", v3, a1[5]}];

LABEL_5:
  v6 = (a1[7] + 32 * v3);
  v18 = *v6;
  v19 = v6[1];
  v7 = *(a1[8] + 8 * v3);
  if (v3 >= a2)
  {
    if (v3 > a2)
    {
      v11 = 32 * v3;
      do
      {
        v12 = (a1[7] + v11);
        v13 = *(v12 - 1);
        *v12 = *(v12 - 2);
        v12[1] = v13;
        *(a1[8] + 8 * v3) = *(a1[8] + 8 * v3 - 8);
        v11 -= 32;
        --v3;
      }

      while (v3 > a2);
    }
  }

  else
  {
    v8 = 32 * v3;
    do
    {
      v9 = (a1[7] + v8);
      v10 = v9[3];
      *v9 = v9[2];
      v9[1] = v10;
      *(a1[8] + 8 * v3) = *(a1[8] + 8 * v3 + 8);
      v8 += 32;
      ++v3;
    }

    while (a2 != v3);
  }

  v14 = (a1[7] + 32 * a2);
  result = v18;
  *v14 = v18;
  v14[1] = v19;
  *(a1[8] + 8 * a2) = v7;
  return result;
}

void __76__PXMonthsLayoutGenerator_updateContentSize_itemRects_itemKinds_zPositions___block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, CGFloat a5, CGFloat a6)
{
  v10 = *(a1 + 88) + a3;
  v11 = *(a1 + 96) + a4;
  v12 = *(*(*(a1 + 48) + 8) + 24);
  if (v12 < 0 || v12 >= *(a1 + 104))
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:*(a1 + 112) object:*(a1 + 32) file:@"PXMonthsLayoutGenerator.m" lineNumber:183 description:{@"index %li out of bounds 0..%li", *(*(*(a1 + 48) + 8) + 24), *(a1 + 104)}];

    v12 = *(*(*(a1 + 48) + 8) + 24);
  }

  v13 = *(a1 + 128);
  v14 = (*(a1 + 120) + 32 * v12);
  *v14 = v10;
  v14[1] = v11;
  v14[2] = a5;
  v14[3] = a6;
  v15 = 4 * (a2 == 2);
  if (!a2)
  {
    v15 = 1;
  }

  *(v13 + 8 * *(*(*(a1 + 48) + 8) + 24)) = v15;
  *(*(a1 + 136) + 4 * *(*(*(a1 + 48) + 8) + 24)) = 0;
  if (*(a1 + 144) == 1)
  {
    v16 = (*(*(a1 + 40) + 16))();
    [v16 weight];
    v18 = v17;

    if (v18 > *(*(*(a1 + 56) + 8) + 24))
    {
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      *(*(*(a1 + 56) + 8) + 24) = v18;
    }
  }

  if (a2 == 2)
  {
    *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
  }

  v19 = *(*(*(a1 + 80) + 8) + 24);
  v22.origin.x = v10;
  v22.origin.y = v11;
  v22.size.width = a5;
  v22.size.height = a6;
  MaxY = CGRectGetMaxY(v22);
  if (v19 >= MaxY)
  {
    MaxY = v19;
  }

  *(*(*(a1 + 80) + 8) + 24) = MaxY;
  ++*(*(*(a1 + 48) + 8) + 24);
}

@end