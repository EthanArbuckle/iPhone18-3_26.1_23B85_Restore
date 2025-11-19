@interface TSTMutableStrokeLayer
- (BOOL)hasStrokeInRange:(TSTSimpleRange)a3;
- (void)applyStroke:(id)a3 atIndexes:(id)a4 order:(int)a5 applyStroke:(id)a6 atIndexes:(id)a7 order:(int)a8 applyStroke:(id)a9 atIndexes:(id)a10 order:(int)a11 applyStroke:(id)a12 atIndexes:(id)a13 order:(int)a14 applyStroke:(id)a15 atIndexes:(id)a16 order:(int)a17;
- (void)moveRange:(_NSRange)a3 toIndex:(int64_t)a4;
- (void)swapSegmentAtIndex:(int64_t)a3 withSegmentAtIndex:(int64_t)a4;
@end

@implementation TSTMutableStrokeLayer

- (BOOL)hasStrokeInRange:(TSTSimpleRange)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213FEA5C;
  v5[3] = &unk_278463910;
  v5[4] = &v6;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, a2, a3.origin, a3.length, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)swapSegmentAtIndex:(int64_t)a3 withSegmentAtIndex:(int64_t)a4
{
  v38 = objc_msgSend_findStrokeAndRangeAtIndex_(self, a2, a3, a4, v4);
  v15 = objc_msgSend_findStrokeAndRangeAtIndex_(self, v8, a4, v9, v10);
  if (!v38)
  {
    goto LABEL_7;
  }

  v16 = objc_msgSend_range(v38, v11, v12, v13, v14);
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || !v11 || v16 > a3 || &v11[v16 - 1] < a3)
  {

LABEL_7:
    v38 = 0;
  }

  if (v15)
  {
    v17 = objc_msgSend_range(v15, v11, v12, v13, v14);
    if (a4 == 0x7FFFFFFFFFFFFFFFLL || !v11 || v17 > a4 || &v11[v17 - 1] < a4)
    {

      v15 = 0;
    }
  }

  objc_msgSend_invalidateRange_(self, v11, a3, 1, v14);
  objc_msgSend_invalidateRange_(self, v18, a4, 1, v19);
  if (v38)
  {
    v24 = objc_msgSend_stroke(v38, v20, v21, v22, v23);
    v29 = objc_msgSend_order(v38, v25, v26, v27, v28);
    objc_msgSend_setStroke_inRange_order_(self, v30, v24, a4, 1, v29);
  }

  if (v15)
  {
    v31 = objc_msgSend_stroke(v15, v20, v21, v22, v23);
    v36 = objc_msgSend_order(v15, v32, v33, v34, v35);
    objc_msgSend_setStroke_inRange_order_(self, v37, v31, a3, 1, v36);
  }
}

- (void)moveRange:(_NSRange)a3 toIndex:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v8 = a3.location + a3.length;
  if (a3.location >= a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3.length;
  }

  if (a3.location >= a4)
  {
    v10 = a3.location + a3.length;
  }

  else
  {
    v10 = a3.location;
  }

  v11 = objc_msgSend_findStrokeAndRangeAtIndex_(self, a2, a3.location, a3.length, a4);
  v51 = v10;
  v52 = v9 + a4;
  if (v11)
  {
    v16 = v9 + a4 - location;
    v50 = v11;
    v17 = v11;
    while (1)
    {
      v18 = objc_msgSend_range(v17, v12, v13, v14, v15, v50);
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v18 != 0x7FFFFFFFFFFFFFFFLL && length && v12)
      {
        if (location <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = location;
        }

        v22 = &v12[v18];
        if (v8 < &v12[v18])
        {
          v22 = v8;
        }

        if (v22 > v21)
        {
          v23 = objc_msgSend_range(v17, v12, v19, v20, v15);
          if (location <= v23)
          {
            v28 = v23;
          }

          else
          {
            v28 = location;
          }

          v29 = &v24[v23];
          if (v8 < &v24[v23])
          {
            v29 = v8;
          }

          v30 = v29 < v28;
          v31 = &v29[-v28];
          if (v30)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
            v31 = 0;
          }

          if (!v24)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
            v31 = 0;
          }

          v32 = v23 == 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v28;
          v33 = v23 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v31;
          v34 = objc_msgSend_stroke(v17, v24, v25, v26, v27);
          v39 = objc_msgSend_order(v17, v35, v36, v37, v38);
          sub_2213FFC6C(v53, v34, v16 + v32, v33, v39);
          sub_2213FD474(&v54, v53);

          v43 = objc_msgSend_nextStrokeAndRange_(self, v40, v17, v41, v42);

          v17 = v43;
          if (v43)
          {
            continue;
          }
        }
      }

      goto LABEL_38;
    }

    v17 = v50;
  }

  else
  {
    v17 = 0;
  }

LABEL_38:
  objc_msgSend_insertSpaceAtRange_(self, v12, v52, length, v15);
  v46 = v54;
  v47 = v55;
  while (v46 != v47)
  {
    v48 = *v46;
    objc_msgSend_setStroke_inRange_order_(self, v49, v48, *(v46 + 8), *(v46 + 16), *(v46 + 24));

    v46 += 32;
  }

  objc_msgSend_removeRange_(self, v44, v51, length, v45);

  v53[0] = &v54;
  sub_221400634(v53);
}

- (void)applyStroke:(id)a3 atIndexes:(id)a4 order:(int)a5 applyStroke:(id)a6 atIndexes:(id)a7 order:(int)a8 applyStroke:(id)a9 atIndexes:(id)a10 order:(int)a11 applyStroke:(id)a12 atIndexes:(id)a13 order:(int)a14 applyStroke:(id)a15 atIndexes:(id)a16 order:(int)a17
{
  v173 = a3;
  v177 = a4;
  v172 = a6;
  v179 = a7;
  v175 = a9;
  v21 = a10;
  v176 = a12;
  v22 = a13;
  v174 = a15;
  v178 = a16;
  p_strokeRuns = &self->super._strokeRuns;
  if ((p_strokeRuns->__end_ - p_strokeRuns->__begin_) >= 0x80)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTMutableStrokeLayer applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:]", v25, v26);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayer.mm", v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 792, 0, "this interface can't be used on complex stroke layers");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  v204 = 0;
  v205 = &v204;
  v206 = 0x4812000000;
  v207 = sub_2213FF890;
  v208 = sub_2213FF8B4;
  v209 = &unk_22188E88F;
  memset(v210, 0, sizeof(v210));
  v39 = v172;
  if (objc_msgSend_count(v178, v23, v24, v25, v26) && objc_msgSend_count(v22, v40, v41, v42, v43) && sub_2213FC7C4(v174, v176))
  {
    v44 = objc_msgSend_tsu_indexSetByAddingIndexes_(v22, v40, v178, v42, v43);

    v178 = 0;
    v22 = v44;
  }

  if (objc_msgSend_count(v22, v40, v41, v42, v43) && objc_msgSend_count(v21, v45, v46, v47, v48) && sub_2213FC7C4(v176, v175))
  {
    v49 = objc_msgSend_tsu_indexSetByAddingIndexes_(v21, v45, v22, v47, v48);

    v22 = 0;
    v21 = v49;
  }

  if (objc_msgSend_count(v21, v45, v46, v47, v48) && objc_msgSend_count(v179, v50, v51, v52, v53) && sub_2213FC7C4(v175, v172))
  {
    v54 = objc_msgSend_tsu_indexSetByAddingIndexes_(v179, v50, v21, v52, v53);

    v21 = 0;
    v179 = v54;
  }

  if (objc_msgSend_count(v179, v50, v51, v52, v53) && objc_msgSend_count(v177, v55, v56, v57, v58) && sub_2213FC7C4(v172, v173))
  {
    v59 = objc_msgSend_tsu_indexSetByAddingIndexes_(v177, v55, v179, v57, v58);

    v179 = 0;
    v177 = v59;
  }

  Index = objc_msgSend_firstIndex(v177, v55, v56, v57, v58);
  begin = p_strokeRuns->__begin_;
  v65 = p_strokeRuns->__end_ - p_strokeRuns->__begin_;
  if (!v65)
  {
LABEL_33:
    v73 = 0;
    v169 = 1;
LABEL_34:
    v74 = MEMORY[0x277D81150];
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "[TSTMutableStrokeLayer applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:applyStroke:atIndexes:order:]", v62, v63);
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayer.mm", v77, v78);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v75, v79, 840, 0, "invalid nil value for '%{public}s'", "bodyIndexes");

    v81 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
    goto LABEL_35;
  }

  v66 = 0;
  v67 = v65 >> 5;
  if (v67 <= 1)
  {
    v67 = 1;
  }

  v68 = 32;
  while (1)
  {
    v69 = *(begin + v68 - 24);
    v70 = *(begin + v68 - 16);
    v71 = Index == 0x7FFFFFFFFFFFFFFFLL || v70 == 0;
    v72 = !v71 && v69 <= Index;
    if (v72 && v69 + v70 - 1 >= Index)
    {
      break;
    }

    ++v66;
    v68 += 32;
    if (v67 == v66)
    {
      goto LABEL_33;
    }
  }

  v73 = *(begin + v68 - 32);
  v108 = p_strokeRuns->__begin_ + v68;
  v169 = *(v108 - 2);
  v81 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v109, *(v108 - 3), *(v108 - 2), v110);
  if (v66)
  {
    sub_2213FF8E0(v205 + 6, p_strokeRuns->__begin_ + v68 - 64);
  }

  if (v66 < ((p_strokeRuns->__end_ - p_strokeRuns->__begin_) >> 5) - 1)
  {
    sub_2213FF8E0(v205 + 6, p_strokeRuns->__begin_ + v68);
  }

  objc_msgSend_removeIndexes_(v81, v111, v178, v112, v113);
  objc_msgSend_removeIndexes_(v81, v114, v22, v115, v116);
  objc_msgSend_removeIndexes_(v81, v117, v21, v118, v119);
  objc_msgSend_removeIndexes_(v81, v120, v179, v121, v122);
  objc_msgSend_removeIndexes_(v81, v123, v177, v124, v125);
  if (!v81)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (!objc_msgSend_count(v81, v61, v86, v62, v63))
  {
    goto LABEL_64;
  }

  if (objc_msgSend_count(v178, v87, v88, v89, v90))
  {
    if (sub_2213FC7C4(v174, v73))
    {
      v98 = objc_msgSend_tsu_indexSetByAddingIndexes_(v178, v95, v81, v96, v97);
      v99 = v178;
      v178 = v98;
LABEL_57:

      v81 = 0;
    }
  }

  else if (objc_msgSend_count(v22, v91, v92, v93, v94))
  {
    if (sub_2213FC7C4(v176, v73))
    {
      v107 = objc_msgSend_tsu_indexSetByAddingIndexes_(v22, v104, v81, v105, v106);
      v99 = v22;
      v22 = v107;
      goto LABEL_57;
    }
  }

  else if (objc_msgSend_count(v21, v100, v101, v102, v103))
  {
    if (sub_2213FC7C4(v175, v73))
    {
      v133 = objc_msgSend_tsu_indexSetByAddingIndexes_(v21, v130, v81, v131, v132);
      v99 = v21;
      v21 = v133;
      goto LABEL_57;
    }
  }

  else if (objc_msgSend_count(v179, v126, v127, v128, v129))
  {
    if (sub_2213FC7C4(v172, v73))
    {
      v141 = objc_msgSend_tsu_indexSetByAddingIndexes_(v179, v138, v81, v139, v140);
      v99 = v179;
      v179 = v141;
      goto LABEL_57;
    }
  }

  else if (objc_msgSend_count(v177, v134, v135, v136, v137) && sub_2213FC7C4(v173, v73))
  {
    v145 = objc_msgSend_tsu_indexSetByAddingIndexes_(v177, v142, v81, v143, v144);
    v99 = v177;
    v177 = v145;
    goto LABEL_57;
  }

  v200[0] = MEMORY[0x277D85DD0];
  v200[1] = 3221225472;
  v200[2] = sub_2213FF9FC;
  v200[3] = &unk_2784649D0;
  v202 = &v204;
  v201 = v173;
  v203 = a5;
  objc_msgSend_enumerateRangesUsingBlock_(v177, v146, v200, v147, v148);
  v196[0] = MEMORY[0x277D85DD0];
  v196[1] = 3221225472;
  v196[2] = sub_2213FFA64;
  v196[3] = &unk_2784649D0;
  v198 = &v204;
  v197 = v172;
  v199 = a8;
  objc_msgSend_enumerateRangesUsingBlock_(v179, v149, v196, v150, v151);
  v192[0] = MEMORY[0x277D85DD0];
  v192[1] = 3221225472;
  v192[2] = sub_2213FFACC;
  v192[3] = &unk_2784649D0;
  v194 = &v204;
  v193 = v175;
  v195 = a11;
  objc_msgSend_enumerateRangesUsingBlock_(v21, v152, v192, v153, v154);
  v188[0] = MEMORY[0x277D85DD0];
  v188[1] = 3221225472;
  v188[2] = sub_2213FFB34;
  v188[3] = &unk_2784649D0;
  v190 = &v204;
  v189 = v176;
  v191 = a14;
  objc_msgSend_enumerateRangesUsingBlock_(v22, v155, v188, v156, v157);
  v184[0] = MEMORY[0x277D85DD0];
  v184[1] = 3221225472;
  v184[2] = sub_2213FFB9C;
  v184[3] = &unk_2784649D0;
  v186 = &v204;
  v185 = v174;
  v187 = a17;
  objc_msgSend_enumerateRangesUsingBlock_(v178, v158, v184, v159, v160);
  v180[0] = MEMORY[0x277D85DD0];
  v180[1] = 3221225472;
  v180[2] = sub_2213FFC04;
  v180[3] = &unk_2784649D0;
  v182 = &v204;
  v181 = v73;
  v183 = v169;
  v39 = v172;
  objc_msgSend_enumerateRangesUsingBlock_(v81, v161, v180, v162, v163);
  v165 = v205[6];
  v166 = v205[7];
  v167 = 126 - 2 * __clz((v166 - v165) >> 5);
  v211 = sub_2213FC7B0;
  if (v166 == v165)
  {
    v168 = 0;
  }

  else
  {
    v168 = v167;
  }

  sub_2214006B4(v165, v166, &v211, v168, 1, v164);
  if (p_strokeRuns != (v205 + 6))
  {
    sub_2213FFCEC(p_strokeRuns, v205[6], v205[7], (v205[7] - v205[6]) >> 5);
  }

LABEL_64:
  _Block_object_dispose(&v204, 8);
  v212 = v210;
  sub_221400634(&v212);
}

@end